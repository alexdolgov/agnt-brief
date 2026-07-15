# Agentic Audit Brief: Interest Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Interest Protocol (`interest-protocol`)
- Website: [https://interestprotocol.io/#/](https://interestprotocol.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 85 unique implementations (85 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,181,379.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Interest Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 51 contract row(s) across ethereum, polygon. Structural roles: 41 unclassified, 5 core, 5 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 51
- Structural roles: unclassified (41), core (5), supporting (5)
- Contract kinds: contract (46), abstract (5)
- Detected standards: ownable (4), erc1967proxy (2), erc20 (2), pausable (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (5), foundry (2)
- Upgradeable-pattern rows: 5

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 51; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 85 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (53 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 85
- Raw deployments: 85
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242962 | `0x27fc40...3fc6ed` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242965 | `0x610d4d...6a1889` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242966 | `0x65da32...2f03a2` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242967 | `0x69f3d7...9bb04b` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242968 | `0x6db544...69eb70` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242969 | `0x730527...50677a` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242970 | `0x864991...62f908` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242971 | `0x8bfe7a...2879de` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242972 | `0x8e7d39...6f5326` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242973 | `0x93a341...e7ecf9` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242976 | `0xce5544...2b4e3b` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242977 | `0xef12fa...6e751e` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242979 | `0xf5e0e2...a428a4` | ⚠️ Unaudited |
| AnchoredViewRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242980 | `0xfde4c9...699bb2` | ⚠️ Unaudited |
| CappedERC4626 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242961 | `0x09fd32...831c7a` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242992 | `0x054985...8f8a85` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242995 | `0x5ac39e...1b9e61` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242991 | `0x64ea01...731f41` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242984 | `0x7c1caa...4ecde9` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242988 | `0x99bd1f...798fc3` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242994 | `0x9d878e...2822a8` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242974 | `0x9f86bf...ae88da` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242990 | `0xd3bd7a...135dd2` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242985 | `0xddb3bc...0e357a` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242989 | `0xdf6232...0ab6d2` | ⚠️ Unaudited |
| CappedGovToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242981 | `0xfb42f5...e03381` | ⚠️ Unaudited |
| GovernorCharlieDelegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242986 | `0x266d10...f8c4ca` | ⚠️ Unaudited |
| InterestProtocolTokenDelegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242983 | `0xd909c5...2efc3d` | ⚠️ Unaudited |
| OracleMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242978 | `0xf48188...a3d477` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242963 | `0x3d9d8c...c0d8c5` | ⚠️ Unaudited |
| StEthOracleRelay | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242975 | `0xaa2639...832fe8` | ⚠️ Unaudited |
| ThreeLines0_100 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242964 | `0x482855...e031ea` | ⚠️ Unaudited |
| Uni | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1f9840...01f984` | ⚠️ Unaudited |
| USDI | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-242993 | `0x2a54ba...761b58` | ⚠️ Unaudited |
| VaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242987 | `0x4aae98...d5cbe3` | ⚠️ Unaudited |
| VotingVaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-242982 | `0xae49dd...28cbe2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x195fc6...3b3a5d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1ea388...874344` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x38c5aa...ac967a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6e55a6...98d9c1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x706d1b...6ad429` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7fff15...b140d4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x81f661...9ffffa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x879078...3e22ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c8ae2...894189` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8cd06c...d89b5a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9128ba...4560db` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9816d7...9e8c75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9c3b60...3fea52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa8c7ea...e24363` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa9dd6f...44674f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xae7ab9...d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb549c8...b25f31` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca9e15...3f230c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcd17f6...04ea39` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xce1cb7...54aad0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcfae22...8cd4a7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd38d3b...db9ed1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd829ad...a5ccd0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdd011f...5d4fda` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe53b24...95387f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfc6b55...851d94` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfd76d7...fa71b6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfe1cb3...e2f3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3389d2...78088f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x3c92f9...1b278e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x45dda9...f50608` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x4fdc91...9589ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x74d3c8...0e7604` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0x847b64...fa0ee5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x8afbfe...506a20` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x90a972...e49110` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xa2b184...bcd741` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xa8a6d7...4c9cc9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbab395...2b32c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xbc53c5...1567b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xbeed11...cba939` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xd8cd58...921293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xde31f8...d78ae6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xdf0fb4...86e13c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xe8504e...9dd10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | n/a | `0xf9680d...205945` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [GFX_IP_Protocol_Audit_Report.pdf](https://gfx.cafe/ip/contracts/-/blob/master/audit/GFX_IP_Protocol_Audit_Report.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/gfx-labs/ip-contracts/blob/master/audit/Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13289] GFX_IP_Protocol_Audit_Report.pdf — no match: Extracted contract names from findings and advisory sections. The report does not have a formal scope table but mentions contracts by name in findings.
- [13291] Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| GFX_IP_Protocol_Audit_Report.pdf | VaultController | unmatched — not counted | — | mentioned in findings and scope | no |
| GFX_IP_Protocol_Audit_Report.pdf | Vault | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | UFragments | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | TokenDelegate | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | GovernorDelegate | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | CurveMaster | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | ChainlinkOracleRelay | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | UniswapV3OracleRelay | unmatched — not counted | — | mentioned in findings | no |
| GFX_IP_Protocol_Audit_Report.pdf | OracleMaster | unmatched — not counted | — | mentioned in findings | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | CappedFeeOnTransferToken | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | CappedGovToken | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | GovernorDelegate | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | SlowRoll | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | ThreeLines0_100 | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | TokenDelegate | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | UFragments | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | USDI | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | Vault | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VaultController | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VotingVault | unmatched — not counted | — | — | no |
| Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf | VotingVaultController | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13289] GFX_IP_Protocol_Audit_Report.pdf
- [13291] Sigma_Prime_-_Interest_Protocol_Smart_Contract_Security_Assessment_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
