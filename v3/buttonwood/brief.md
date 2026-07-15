# Agentic Audit Brief: Buttonwood

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Buttonwood (`buttonwood`)
- Website: [https://www.button.finance](https://www.button.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 43 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $300,030.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Buttonwood in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 43
- Raw deployments: 71
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnkrETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bea94...12f9fc` | ⚠️ Unaudited |
| BondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d7a3...19cc04` | ⚠️ Unaudited |
| BondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x019fa3...b04ac0`; ethereum `0x17550f...91fd54` | ⚠️ Unaudited |
| ButtonswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75a92d...9ba64a` | ⚠️ Unaudited |
| ButtonswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x5c2539...fb1d6e`; ethereum `0x6cf6ac...f072be`; base `0x4322f6...d710f1`; base `0x8648e2...6529a5` | ⚠️ Unaudited |
| ButtonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x97040a...f4eac5`; ethereum `0x9af5c1...010fb3`; ethereum `0xab4691...53e9f9`; base `0x23aafb...daca85`; base `0x5f9348...ed4cc1` | ⚠️ Unaudited |
| ButtonTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x65bc95...3bc021`; ethereum `0x84d0f1...b51960`; ethereum `0xfa5914...54adc5`; base `0x5f5146...0373e1`; base `0x6a6bd9...57144a` | ⚠️ Unaudited |
| ButtonTokenWethRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08c5e...e80a0d` | ⚠️ Unaudited |
| ETHxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x18f4f8...5b62cf`; ethereum `0x6e2528...282f24` | ⚠️ Unaudited |
| GenericButtonswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xf4a25f...657071`; base `0xa6c9d0...ed2e2f` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c3fc...6ea1c1` | ⚠️ Unaudited |
| GeyserViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89776...c2777f` | ⚠️ Unaudited |
| InceptionTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e706...7187f4` | ⚠️ Unaudited |
| MarzMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea186...aefd64` | ⚠️ Unaudited |
| MarzResources | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a731...0d24c2` | ⚠️ Unaudited |
| MarzResources | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7532e3...1be5cb`; ethereum `0xc4a0a5...ae4d45` | ⚠️ Unaudited |
| MarzResources | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75376c...50b3fa`; ethereum `0xf77648...22fd30` | ⚠️ Unaudited |
| MevEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46f1a3...87663b` | ⚠️ Unaudited |
| MultiMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e938c...ef5006` | ⚠️ Unaudited |
| PairLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x026651...59d314`; ethereum `0xb0c0a7...5476e3`; ethereum `0xcabb66...1b9785`; ethereum `0xd1a59b...e7e0be`; ethereum `0xdced44...79e869` | ⚠️ Unaudited |
| PartyVaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1889f...cf2b0e` | ⚠️ Unaudited |
| Plot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de5a3...e2e493` | ⚠️ Unaudited |
| Plot | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6795ee...18519a`; ethereum `0xd0ba8b...d3142b` | ⚠️ Unaudited |
| Points2Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x9dd61f...5fe14b`; base `0x47d44e...136243`; base `0x814dbb...e596d0` | ⚠️ Unaudited |
| PointsVaultExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7c4ec8...da7f0c`; ethereum `0xaacc96...366145`; base `0xd16ec9...e6caa2` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812599...05a9e0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4229...d99652` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c0fe...f89bea` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8977...023ca9` | ⚠️ Unaudited |
| SDaiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb36ffe...88a9f1` | ⚠️ Unaudited |
| SwETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e9a0...69da17` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367874...6af137` | ⚠️ Unaudited |
| TrancheFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124e3c...067de9` | ⚠️ Unaudited |
| UnbuttonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a528...0165de` | ⚠️ Unaudited |
| UnbuttonTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ff64...fc8b8f` | ⚠️ Unaudited |
| UniETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6d95...542d6b` | ⚠️ Unaudited |
| UniV3LoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x154797...5f9468`; ethereum `0x26fa99...915464`; ethereum `0x5bdd08...4d253e`; ethereum `0xb482c2...afc73d` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ec9d...09f053` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc905e4...0ad2c9` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626e7d...6d5cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f639...508798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94fd1...571a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8a48c...771cd4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certik-2021-07-30.pdf](https://github.com/buttonwood-protocol/tranche/blob/main/audits/Certik-2021-07-30.pdf) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12877] Certik-2021-07-30.pdf — no match: Extracted from audit report header and findings sections. Audit scope table was not fully populated but file paths were inferred from findings locations.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Certik-2021-07-30.pdf | BondController | unmatched — not counted | — | listed in scope and findings | no |
| Certik-2021-07-30.pdf | BondFactory | unmatched — not counted | — | listed in findings | no |
| Certik-2021-07-30.pdf | ButtonToken | unmatched — not counted | — | listed in findings | no |
| Certik-2021-07-30.pdf | ChainlinkOracle | unmatched — not counted | — | listed in findings | no |
| Certik-2021-07-30.pdf | Tranche | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12877] Certik-2021-07-30.pdf

Fork inheritance lineage and inherited audits are included when available.
