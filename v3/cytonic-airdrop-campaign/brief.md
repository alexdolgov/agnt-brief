# Agentic Audit Brief: Cytonic Airdrop Campaign

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cytonic Airdrop Campaign (`cytonic-airdrop-campaign`)
- Website: [https://www.cytonic.com/](https://www.cytonic.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, manta-pacific, optimism, polygon
- Contract surface: 20 unique implementations (48 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $168,991.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Cytonic Airdrop Campaign in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xaea5bf79f1e3f2069a99a99928927988ec642e0b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 20 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 20
- Raw deployments: 48
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
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
| BatchTransfer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x0f813042a20697d121a18de2f1b4dd3cea686b74`; manta-pacific `0x26b16045b60b7dae6e7aed115649bc34843dde94` | ⚠️ Unaudited |
| DepositManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x97f62d9b3251d8013f0bef0d0eafeba25557a957`; manta-pacific `0xb82a6f1f16077ca92b6168b3d8d883e7f9ec41b2` | ⚠️ Unaudited |
| DepositManagerV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x9e7478b044ba9c27948f770e32aa00954e2ef15a`; manta-pacific `0xeab833511fd89045f6dddab931cdcd95dd26a5bd` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x2cf5900d1f47f49ce8d0d08718b88a84db075560`; manta-pacific `0x6523844d7720871bd7d6d82d6af6efc8b1f1fd0a` | ⚠️ Unaudited |
| MToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e` | ⚠️ Unaudited |
| MTokenDepositEntry | token | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc8693e492d1ec721a254daf3c075a440edd4018e` | ⚠️ Unaudited |
| MTokenStake | token | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x46df6ba8e85bb6147c241bf3904918a6c800f8a5`; manta-pacific `0x866fe5e7f158ce659051d0cbca58b98ff42e8fbc` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0172881051518db699cbbf5b8493d20a375819ae` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xefacdd72800324b3e5ff35edaa3de629d30412c9` | ⚠️ Unaudited |
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf951e335afb289353dc249e82926178eac7ded78` | ⚠️ Unaudited |
| SyncOApp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870` | ⚠️ Unaudited |
| SyncOAppV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e` | ⚠️ Unaudited |
| TokenDistributer | token | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x39944059395a387a8ec327b4fb5ab7c5f6d9858c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 23 deployments: manta-pacific `0x1468177dbcb2a772f3d182d2f1358d442b553089`; manta-pacific `0x1b9bcc6644cc9b5e1f89abaab66904f5a562d4a1`; manta-pacific `0x323446390012a5438bb32f5329d3ab3eef4ffc95`; manta-pacific `0x38e8381f38cfd313c9ed37190b427a98e1c951da`; manta-pacific `0x3acb6c0169a37885230852ed0ecf5126bbe8be8a`; manta-pacific `0x47aab167bcaa950fe61aaaee3b14e38c1315dca8`; manta-pacific `0x649d4524897ce85a864dc2a2d5a11adb3044f44a`; manta-pacific `0x6b8f1c84e1f8866532770951d12ba73bb161c624`; manta-pacific `0x79e41784e4f9db9323cca25ebb8d983d80263fa9`; manta-pacific `0x7c974aa30b2f47b9dcae24ab4a5142250f62dceb`; manta-pacific `0x87b88a619a4b3aaf24619426cc1404ac215bc31d`; manta-pacific `0x91f100fa1515198a1d2af9d14593f8dba44c3e0d`; manta-pacific `0xa18bb7a02593e9ea405aa312c28309415711de6d`; manta-pacific `0xa8c984ed3488a60b084e354082fc25fa9147f9f9`; manta-pacific `0xaccbc418a994a27a75644d8d591afc22faba594e`; manta-pacific `0xb0cbe3581570652d3b6148e213e45ed7efebe12c`; manta-pacific `0xc09ebbff9ac26025081fc57c6115b98d5a69201d`; manta-pacific `0xc0d14a4dc2f91cf0ea761e16474d6e46fa986ee4`; manta-pacific `0xce89622bf2b2b2ece5607c751645706b713cb923`; manta-pacific `0xd203ee18f414588e0a5faa5e30f978d037bdf0dc`; manta-pacific `0xea9d75c90c0879a50c814c6fd1d30c073b2e69d3`; manta-pacific `0xf6dc34f5cb10e7072015bfe181462ac77bf7ab01`; manta-pacific `0xfbd65ddfa27c3de44e9a84f2da9bf9f235b00495` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x09f21ae31fb70af04480b5f0811821cce9480931` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x37f1516de5425cdda58c20c6ac29ba775adfbeb0`; manta-pacific `0xf416488780361ba2ae6c3643bb84788610d1480a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeDepositor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-383629 | `0xaea5bf79f1e3f2069a99a99928927988ec642e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x776f71bece4434ef5be2736ef87885b4d514f15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xca69e3d8c2ca253b1fcf1fd1ef525a85a6718b9d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cytonic-fuzzland-report.pdf](https://file.cytonic.com/cytonic-fuzzland-report.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [ZellicAuditReport.pdf](https://file.cytonic.com/ZellicAuditReport.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12980] cytonic-fuzzland-report.pdf — no match: Scope section lists repositories and file patterns but not specific contract names. Contract names extracted from findings.
- [12981] ZellicAuditReport.pdf — no match: Only one Solidity contract (Depositor.sol) is explicitly in scope. The Solana program is also in scope but is not a Solidity contract; it is a Rust program. The report does not list individual Solana program file names beyond 'programs/depositor/**'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cytonic-fuzzland-report.pdf | Depositor | unmatched — not counted | — | mentioned in findings | no |
| cytonic-fuzzland-report.pdf | Migrate | unmatched — not counted | — | mentioned in findings | no |
| ZellicAuditReport.pdf | Depositor | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [12980] cytonic-fuzzland-report.pdf
- [12981] ZellicAuditReport.pdf

Fork inheritance lineage and inherited audits are included when available.
