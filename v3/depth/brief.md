# Agentic Audit Brief: Depth

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Depth (`depth`)
- Website: [https://www.depthsoul.com/](https://www.depthsoul.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: abstract, bsc, heco
- Contract surface: 16 unique implementations (31 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,142,204.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Depth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across abstract, bsc, heco. Structural roles: 2 core, 2 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (2)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (2), ownable (2), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5e2d57b022f0905d4981f0803560e23cde322ce2`, chain 2741)
- UnnamedContract (`0x7c0bab11b67ac041c2ff870ef2f7807428ae4cb2`, chain 2741)
- UnnamedContract (`0xd9f34cda3667e0b5be4b6fba55d854cfb2ed0694`, chain 2741)
- UnnamedContract (`0xf3d2e788c24497e395197329c82117bb8d663175`, chain 2741)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 16 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 16
- Raw deployments: 31
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BDepMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x65256c5125bc5c802bac37dc37769fc7e041f11a`; bsc `0x8b89fa9b1cb1aaad496f597964f1c83fed7217cf`; bsc `0xb4329919f74d841e4a552b6cb0487b5c451e11db`; bsc `0xbb1edaa1c11b18f2122e8268b71d670556ef6c5f` | ⚠️ Unaudited |
| BDepToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x16f99577b259b069a2d1d166e70d349b11b1d325`; bsc `0x185e734a600165d8501a7a35add07ef13ede24c3` | ⚠️ Unaudited |
| dCowVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0b28a55dbbd6c5ddd4d1d7157361e9d6d0ccefc0`; bsc `0x9f4198c4a73c103bc9b1c34d1f680d4e43d901af`; bsc `0xcd8ef3e3a7b25741ce5b8c728f582cf748b60b1a` | ⚠️ Unaudited |
| dDepAlphaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x024f05c70f203fb77f27b00422534cc33e1fb69d`; bsc `0xaf996b5e33007ed5eb33eaae817ad8e1310ccebc`; bsc `0xcb08da2339d562b66b314d2bbfb580cb87ffbd76` | ⚠️ Unaudited |
| dDepVenusVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2e128eb2ee787428307a7b246d02c1801788e1a6`; bsc `0x3253041f27416c975ffb0100b08734187f82c8a2` | ⚠️ Unaudited |
| FundingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0c5770a0c98a8488e0f23d6e63142d6c2a50ffef`; bsc `0x810c7945895a63d63f79e0c0c95bb9f773689c17`; bsc `0xb9902fe39e95ff1d724672393c220e927568e7f4` | ⚠️ Unaudited |
| reduceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77677168f8759ef464d53e5d8a7752a51a6d4183` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | abstract | unit-384155 | `0x5e2d57b022f0905d4981f0803560e23cde322ce2` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | abstract | unit-384157 | `0x7c0bab11b67ac041c2ff870ef2f7807428ae4cb2` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | abstract | unit-384159 | `0xd9f34cda3667e0b5be4b6fba55d854cfb2ed0694` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | abstract | unit-384161 | `0xf3d2e788c24497e395197329c82117bb8d663175` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x40eded89bb6c94bdb2ededbfb194b2e29c1fcc9a`; bsc `0xc57220b65dd9200562aa73b850c06be7bd632b57`; bsc `0xc63b2a40ff8180023534b676647a9915f9962b5a`; bsc `0xf89f86ed7c8eca694ba85e94a9b89ee1583f107f`; bsc `0xfb42eaf5e623e83013d5aa33033966a62ff51670` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x179e1f2a75ab37f297aa825e0b05187fa195b7b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | `0x48c859531254f25e57d1c1a8e030ef0b1c895c27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | abstract | unit-384151 | `0x31aa824a1bbb60d0e1789268ba521b68c6e7757a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | abstract | unit-384153 | `0x4221a226e6c6a3afb8312722d146e04e55f88969` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 21
- Live contracts: 0
- Unknown liveness contracts: 21
- Source-verified contracts: 20
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=20, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | source verified unclassified | BDepMining<br>`0x65256c5125bc5c802bac37dc37769fc7e041f11a` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | BDepMining<br>`0x8b89fa9b1cb1aaad496f597964f1c83fed7217cf` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | BDepMining<br>`0xb4329919f74d841e4a552b6cb0487b5c451e11db` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | BDepMining<br>`0xbb1edaa1c11b18f2122e8268b71d670556ef6c5f` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | BDepToken<br>`0x16f99577b259b069a2d1d166e70d349b11b1d325` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | BDepToken<br>`0x185e734a600165d8501a7a35add07ef13ede24c3` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | dCowVault<br>`0x9f4198c4a73c103bc9b1c34d1f680d4e43d901af` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | dCowVault<br>`0xcd8ef3e3a7b25741ce5b8c728f582cf748b60b1a` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | dDepAlphaVault<br>`0xaf996b5e33007ed5eb33eaae817ad8e1310ccebc` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | dDepAlphaVault<br>`0xcb08da2339d562b66b314d2bbfb580cb87ffbd76` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | dDepVenusVault<br>`0x3253041f27416c975ffb0100b08734187f82c8a2` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | FundingManager<br>`0x0c5770a0c98a8488e0f23d6e63142d6c2a50ffef` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | FundingManager<br>`0x810c7945895a63d63f79e0c0c95bb9f773689c17` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | FundingManager<br>`0xb9902fe39e95ff1d724672393c220e927568e7f4` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | reduceToken<br>`0x77677168f8759ef464d53e5d8a7752a51a6d4183` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | Vyper_contract<br>`0x40eded89bb6c94bdb2ededbfb194b2e29c1fcc9a` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | Vyper_contract<br>`0xc57220b65dd9200562aa73b850c06be7bd632b57` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | Vyper_contract<br>`0xc63b2a40ff8180023534b676647a9915f9962b5a` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | Vyper_contract<br>`0xf89f86ed7c8eca694ba85e94a9b89ee1583f107f` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | source verified unclassified | Vyper_contract<br>`0xfb42eaf5e623e83013d5aa33033966a62ff51670` | non_address_book | unknown | unknown | verified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |
| bsc | unverified unclassified | UnnamedContract<br>`0x179e1f2a75ab37f297aa825e0b05187fa195b7b2` | non_address_book | unknown | unknown | unverified | n/a | `0x3f7f7904976a56facf493c96868efaf4d7fba543` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/depth-token](https://skynet.certik.com/projects/depth-token) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.certik.com/projects/depth-token](https://www.certik.com/projects/depth-token) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Depth-Report-022721.6c156aca.pdf](https://depth.fi/static/media/Depth-Report-022721.6c156aca.pdf) | unnamed (Depth 'Audit Firm #01') | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Depth-Report2-EN.69622836.pdf](https://www.depth.fi/static/media/Depth-Report2-EN.69622836.pdf) | unnamed (Depth 'Audit Firm #02') | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21349] skynet.certik.com/projects/depth-token — no match: Extracted from 'Audited Files/SHA256' section listing IVault.sol and handleLHB-HUSD-USDT.sol. Audit date from 'Last Audit was delivered on 7/12/2021'.
- [21350] www.certik.com/projects/depth-token — no match: Extracted from 'Audited Files/SHA256' section listing two files.
- [21351] Depth-Report-022721.6c156aca.pdf — no match: The provided text is not an audit report; it is a domain sales page for depth.fi. No contracts or audit information are present.
- [21352] Depth-Report2-EN.69622836.pdf — no match: The provided text is a domain sales page, not an audit report. No contracts or audit information found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/depth-token | IVault | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/depth-token | handleLHB-HUSD-USDT | unmatched — not counted | — | listed in audited files | no |
| www.certik.com/projects/depth-token | IVault | unmatched — not counted | — | listed in audited files | no |
| www.certik.com/projects/depth-token | handleLHB-HUSD-USDT | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [21349] skynet.certik.com/projects/depth-token
- [21350] www.certik.com/projects/depth-token
- [21351] Depth-Report-022721.6c156aca.pdf
- [21352] Depth-Report2-EN.69622836.pdf

Fork inheritance lineage and inherited audits are included when available.
