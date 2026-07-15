# Agentic Audit Brief: unshETH

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: unshETH (`unsheth`)
- Website: [https://unsheth.xyz](https://unsheth.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $125,636.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for unshETH. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum. Structural roles: 6 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), supporting (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9d1485...6c1a36`, chain 1)
- UnnamedContract (`0xd027ef...d407e4`, chain 1)
- UnnamedContract (`0xef1203...abd48e`, chain 1)
- LSDVault (`0x51a802...c05c74`, chain 1)
- RenouncedOwner (`0xb25021...ed52c3`, chain 1)
- unshETH (`0x0ae38f...a909ef`, chain 1)
- VDAMM (`0x35636b...9db14a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 22 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/22
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 3 | 13.6% | 2023-06 |
| CertiK | Tier 2 | 1 | 4.5% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LSDVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395329 | `0x51a802...c05c74` | ✅ Audited |
| unshETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395325 | `0x0ae38f...a909ef` | ✅ Audited |
| VDAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395328 | `0x35636b...9db14a` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommunalFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33890b...953cfc` | ⚠️ Unaudited |
| Darknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f131...e3cedc` | ⚠️ Unaudited |
| EuclideanFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954d50...ff3d7e` | ⚠️ Unaudited |
| GovernorsFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bb59...261832` | ⚠️ Unaudited |
| LSDRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2feaa5...bf1b7d` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2955c9...79bd3a` | ⚠️ Unaudited |
| RenouncedOwner | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395333 | `0xb25021...ed52c3` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395331 | `0x9d1485...6c1a36` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395335 | `0xd027ef...d407e4` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395337 | `0xef1203...abd48e` | ⚠️ Unaudited |
| unshETHProxyOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f899...b26457` | ⚠️ Unaudited |
| unshETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f0a29...7a55d3` | ⚠️ Unaudited |
| unshETHZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718c26...a91b4b` | ⚠️ Unaudited |
| unshETHZapv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x746109...becbc7` | ⚠️ Unaudited |
| USDTSGReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41d27...1c53ec` | ⚠️ Unaudited |
| USH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60779...70ec48` | ⚠️ Unaudited |
| USHFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46671b...4a8339` | ⚠️ Unaudited |
| USHProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8a40...7aad01` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d0db...1ce014` | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/unsheth) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Paladin](https://paladinsec.co/projects/unsheth) | Paladin | Audit | 2023-06 | stale | Direct | address | matched | 3 | 0 | 0 | 5 | high |
| [Certik](https://unsheth.xyz/v2-audit.pdf) | Paladin | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18433] DL audit link — matched: Extracted from audited files section; date from 'Last Audit was delivered on 4/4/2023'.
- [18434] Paladin — matched: Contracts audited listed in the 'Contracts Audited' section with addresses.
- [18435] Certik — matched: 7 files audited as per scope table; date from cover page 'Verified on Apr 4th, 2023'

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | LSDVault | own contract | LSDVault (selected) `0x51a802...c05c74` — deployed 2023-04-01 05:52:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | USH-OFT-BSC | unmatched — not counted | — | listed in audited files | no |
| Paladin | ERC20PermitPermissionedMint | unmatched — not counted | — | listed in scope | no |
| Paladin | unshETH | own contract | unshETH (selected) `0x0ae38f...a909ef` — deployed 2023-04-01 05:52:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin | Darknet | unmatched — not counted | — | listed in scope | no |
| Paladin | LSDVault | own contract | LSDVault (selected) `0x51a802...c05c74` — deployed 2023-04-01 05:52:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin | RenouncedOwner | unmatched — not counted | — | listed in scope | no |
| Paladin | unshETHZap | unmatched — not counted | — | listed in scope | no |
| Paladin | EvdAMM | own contract | VDAMM (selected) `0x35636b...9db14a` — deployed 2023-04-28 11:55:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin | OwnedDependency | unmatched — not counted | — | listed in scope | no |
| Certik | LSDVault | own contract | LSDVault (selected) `0x51a802...c05c74` — deployed 2023-04-01 05:52:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik | sgReciever | unmatched — not counted | — | listed in scope table | no |
| Certik | sgSender | unmatched — not counted | — | listed in scope table | no |
| Certik | USH-OFT-BSC | unmatched — not counted | — | listed in scope table | no |
| Certik | USH-Proxy-ETH | unmatched — not counted | — | listed in scope table | no |
| Certik | unshETH-OFT-BSC | unmatched — not counted | — | listed in scope table | no |
| Certik | unshETH-Proxy-ETH | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: address=3, unique_name=2

Fork inheritance lineage and inherited audits are included when available.
