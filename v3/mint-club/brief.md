# Agentic Audit Brief: Mint Club

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mint Club (`mint-club`)
- Website: [https://mint.club](https://mint.club)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, kaia, optimism, polygon, unichain, zora
- Contract surface: 41 unique implementations (155 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $592,959.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Mint Club in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 41
- Raw deployments: 155
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 19 deployments: ethereum `0x621c33...628681`; ethereum `0xf44939...593e33`; optimism `0x3fd5b4...4ccfd1`; optimism `0xa4021a...0f6798`; bsc `0x3fd5b4...4ccfd1`; bsc `0xa4021a...0f6798`; unichain `0x1349a9...8213a4`; polygon `0x29b0e6...10c724`; polygon `0x621c33...628681`; base `0x29b0e6...10c724`; base `0x3fd5b4...4ccfd1`; base `0x95bda9...57aab7`; base `0xf7e2cd...c1afbc`; arbitrum `0x29b0e6...10c724`; arbitrum `0x841a2b...d2db09`; avalanche `0x3a8a4b...9f251b`; avalanche `0x9a176d...d7818d`; blast `0x9a176d...d7818d`; blast `0xf18764...9a2a65` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0xa3dcf3...dc9ab6`; optimism `0xa3dcf3...dc9ab6`; bsc `0xa3dcf3...dc9ab6`; unichain `0xa3dcf3...dc9ab6`; polygon `0xa3dcf3...dc9ab6`; base `0xa3dcf3...dc9ab6`; arbitrum `0xa3dcf3...dc9ab6`; avalanche `0x5b64ce...c77a17` | ⚠️ Unaudited |
| MCV1_Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29b0e6...10c724` | ⚠️ Unaudited |
| MCV2_Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0xc5a076...7faa27`; optimism `0xc5a076...7faa27`; bsc `0xc5a076...7faa27`; unichain `0xc5a076...7faa27`; polygon `0xc5a076...7faa27`; base `0xc5a076...7faa27`; arbitrum `0xc5a076...7faa27` | ⚠️ Unaudited |
| MCV2_BondPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: ethereum `0x7b09b7...7fe633`; optimism `0x841a2b...d2db09`; bsc `0x364e0f...bb86c1`; unichain `0x621c33...628681`; polygon `0x6c0e6c...9846f1`; base `0x4328e5...df48da`; base `0x492c41...1473a3`; base `0x4ccc69...2e7eb8`; base `0x683e89...8c2f42`; base `0x8eb28b...7cd4cf`; base `0xa3dfa8...02f22f`; base `0xaaa223...b60d74`; base `0xad4f45...922863`; arbitrum `0x5fbdc7...be1eb7`; avalanche `0x5dff49...9c5687`; blast `0x5dff49...9c5687` | ⚠️ Unaudited |
| MCV2_MultiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x6c6191...f6120a`; optimism `0x6c6191...f6120a`; bsc `0x6c6191...f6120a`; unichain `0x6c6191...f6120a`; polygon `0x6c6191...f6120a`; base `0x6c6191...f6120a`; arbitrum `0x6c6191...f6120a` | ⚠️ Unaudited |
| MCV2_NFTDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b64ce...c77a17` | ⚠️ Unaudited |
| MCV2_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0xaa70bc...4b79df`; optimism `0xaa70bc...4b79df`; bsc `0xaa70bc...4b79df`; unichain `0xaa70bc...4b79df`; polygon `0xaa70bc...4b79df`; base `0xaa70bc...4b79df`; base `0xff4516...b57a7e`; arbitrum `0xaa70bc...4b79df` | ⚠️ Unaudited |
| MCV2_ZapV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x91523b...e251fa`; optimism `0x91523b...e251fa`; bsc `0x91523b...e251fa`; unichain `0x91523b...e251fa`; polygon `0x91523b...e251fa`; base `0x91523b...e251fa`; arbitrum `0x91523b...e251fa` | ⚠️ Unaudited |
| MCV2_ZapV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d9998...a559cd` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x1349a9...8213a4`; ethereum `0x3bc6b6...3b150b`; optimism `0x1349a9...8213a4`; optimism `0x3bc6b6...3b150b`; bsc `0x1349a9...8213a4`; bsc `0x3bc6b6...3b150b`; unichain `0x3bc6b6...3b150b`; polygon `0x1349a9...8213a4`; polygon `0x3bc6b6...3b150b`; base `0x1349a9...8213a4`; base `0x3bc6b6...3b150b`; arbitrum `0x1349a9...8213a4`; arbitrum `0x3bc6b6...3b150b`; avalanche `0x841a2b...d2db09`; avalanche `0xf18764...9a2a65` | ⚠️ Unaudited |
| MintClubBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8bbac0...f19975`; bsc `0xc6f6e7...65bbe9` | ⚠️ Unaudited |
| MintClubToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x191287...11e4eb`; bsc `0x1f3af0...fc5915` | ⚠️ Unaudited |
| Stake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 29 deployments: ethereum `0x5b64ce...c77a17`; ethereum `0x841a2b...d2db09`; ethereum `0xf18764...9a2a65`; optimism `0x29b0e6...10c724`; optimism `0x5b64ce...c77a17`; optimism `0xf18764...9a2a65`; bsc `0x5b64ce...c77a17`; bsc `0x7b09b7...7fe633`; bsc `0x841a2b...d2db09`; bsc `0xf18764...9a2a65`; unichain `0x5dae94...a9ac2a`; unichain `0xa4021a...0f6798`; unichain `0xf44939...593e33`; polygon `0x5b64ce...c77a17`; polygon `0x95bda9...57aab7`; polygon `0xf18764...9a2a65`; base `0x3460e2...cf3399`; base `0x364e0f...bb86c1`; base `0x68f54a...353413`; base `0x9ab05e...76e802`; arbitrum `0x7b09b7...7fe633`; arbitrum `0x9a176d...d7818d`; arbitrum `0xf7e2cd...c1afbc`; avalanche `0x364e0f...bb86c1`; avalanche `0x68f54a...353413`; avalanche `0x95bda9...57aab7`; blast `0x364e0f...bb86c1`; blast `0x68f54a...353413`; blast `0x95bda9...57aab7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dae94...a9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 6 deployments: kaia `0x29b0e6...10c724`; kaia `0x3fd5b4...4ccfd1`; kaia `0xa4021a...0f6798`; kaia `0xc5a076...7faa27`; zora `0x3fd5b4...4ccfd1`; zora `0xc5a076...7faa27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa14120...f7530f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06fd26...93030c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x621c33...628681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1349a9...8213a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29b0e6...10c724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bc6b6...3b150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fd5b4...4ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5dae94...a9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x621c33...628681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91523b...e251fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf987e...4ee12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb54da...8e5387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf44939...593e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x06fd26...93030c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1349a9...8213a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x29b0e6...10c724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3bc6b6...3b150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3fd5b4...4ccfd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5dae94...a9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x621c33...628681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6c6191...f6120a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x91523b...e251fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3dcf3...dc9ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaa70bc...4b79df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc5a076...7faa27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK-20240118.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-20240118.pdf) | CertiK | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [COMMUNITY_AUDIT.md](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/COMMUNITY_AUDIT.md) | Community | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [CertiK-Staking Investigation Report.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking%20Investigation%20Report.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [CertiK-Staking-20250812.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250812.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [CertiK-Staking-20250830.pdf](https://github.com/Steemhunt/mint.club-v2-contract/blob/main/security-audits/CertiK-Staking-20250830.pdf) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [skynet.certik.com/projects/mint-club](https://skynet.certik.com/projects/mint-club) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [[EN] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BEN%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [[KO] Security Assessment By Sooho.pdf](https://github.com/Steemhunt/mint.club-contract/blob/main/audits/%5BKO%5D%20Security%20Assessment%20By%20Sooho.pdf) | Sooho | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13502] CertiK-20240118.pdf — no match: No reason recorded
- [13503] COMMUNITY_AUDIT.md — no match: The document is a community audit announcement, not an audit report. It does not list specific contracts in scope, only a repository URL.
- [13504] CertiK-Staking Investigation Report.pdf — no match: No reason recorded
- [13505] CertiK-Staking-20250812.pdf — no match: No reason recorded
- [13506] CertiK-Staking-20250830.pdf — no match: No reason recorded
- [13507] skynet.certik.com/projects/mint-club — no match: No reason recorded
- [16445] [EN] Security Assessment By Sooho.pdf — no match: No reason recorded
- [16446] [KO] Security Assessment By Sooho.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK-20240118.pdf | ERC1155Initializable | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | ERC20Initializable | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | Locker | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV1_Wrapper | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_Bond | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_MultiToken | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_Royalty | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_Token | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MCV2_ZapV1 | unmatched — not counted | — | — | no |
| CertiK-20240118.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| CertiK-Staking Investigation Report.pdf | Stake | unmatched — not counted | — | — | no |
| CertiK-Staking-20250812.pdf | Stake | unmatched — not counted | — | — | no |
| CertiK-Staking-20250830.pdf | Stake | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mint-club | MCV2_Bond | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mint-club | MCV2_ZapV1 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mint-club | MerkleDistributor | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | ERC20Initializable | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | Math | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubBond | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubFactory | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubFactoryMock | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintClubToken | unmatched — not counted | — | — | no |
| [EN] Security Assessment By Sooho.pdf | MintToken | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | ERC20Initializable | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | Math | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubBond | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubFactory | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubFactoryMock | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintClubToken | unmatched — not counted | — | — | no |
| [KO] Security Assessment By Sooho.pdf | MintToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 30 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13502] CertiK-20240118.pdf
- [13503] COMMUNITY_AUDIT.md
- [13504] CertiK-Staking Investigation Report.pdf
- [13505] CertiK-Staking-20250812.pdf
- [13506] CertiK-Staking-20250830.pdf
- [13507] skynet.certik.com/projects/mint-club
- [16445] [EN] Security Assessment By Sooho.pdf
- [16446] [KO] Security Assessment By Sooho.pdf

Fork inheritance lineage and inherited audits are included when available.
