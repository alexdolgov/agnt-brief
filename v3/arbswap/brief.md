# Agentic Audit Brief: Arbswap

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

- Project: Arbswap (`arbswap`)
- Website: [https://arbswap.io](https://arbswap.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-nova, chain-421613
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $199,099.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Arbswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, arbitrum-nova, chain-421613. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (4), erc165 (1), erc20 (1), pausable (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 24 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dd7d0...5e9b6d` | ⚠️ Unaudited |
| ArbsProxyOFT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-226960 | `0x406822...3d844a` | ⚠️ Unaudited |
| ArbswapAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ceefa...13d3c3` | ⚠️ Unaudited |
| ArbswapSmartRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4aef9d...88f2e9` | ⚠️ Unaudited |
| ArbswapStableSwapFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-226959 | `0x3a52e9...2c099d` | ⚠️ Unaudited |
| ArbswapStableSwapLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bbebd...3718f1` | ⚠️ Unaudited |
| ArbswapStableSwapThreePoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1b418...125e67` | ⚠️ Unaudited |
| ArbswapStableSwapTwoPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b23bb...69507c` | ⚠️ Unaudited |
| ArbswapStableSwapTwoPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa50d3...770d7f` | ⚠️ Unaudited |
| ArbswapStableSwapWBNBHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x318080...5283ab` | ⚠️ Unaudited |
| ArbswapStableSwapWETHHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bf212...b71029` | ⚠️ Unaudited |
| ArbswapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5f09e...29a099` | ⚠️ Unaudited |
| IFODeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85855c...148a6f` | ⚠️ Unaudited |
| MasterChefV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-226961 | `0x41210a...7eb0b0` | ⚠️ Unaudited |
| MirrorARBS | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-226962 | `0xa04c34...089d36` | ⚠️ Unaudited |
| MockNovaFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x278235...c2531b` | ⚠️ Unaudited |
| RealArbsian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x700794...272932` | ⚠️ Unaudited |
| TestVM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7de026...0eafa4` | ⚠️ Unaudited |
| VestingMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-226958 | `0x2b84f4...f06735` | ⚠️ Unaudited |
| XARBSPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d6e38...f6a222` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6947a4...d07d62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd01319...b3e551` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd394e9...850f1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf50874...38458f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0x11f620...706f18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0x5175be...320b86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0x67844f...e4655e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0x7a8f5a...46e2da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0x898531...367dfa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0xd8eae1...25823a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0xee01c0...06f36f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum-nova | n/a | `0xf62394...4242fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0x3e9c5b...a40ec0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0x7b2cde...c1854e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0x7df7d7...662a48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0x81cd91...51d18c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0x8cbe91...063c44` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0xac53fd...448d90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-421613 | n/a | `0xbe737d...025bf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Arbswap-MasterChef-w:-locked staking.pdf](https://github.com/Arbswap-Official/Audit-reports/blob/main/PeckShield-Audit-Report-Arbswap-MasterChef-w%3A-locked%20staking.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Arbswap-v1.0.pdf](https://github.com/Arbswap-Official/Audit-reports/blob/main/PeckShield-Audit-Report-Arbswap-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19459] PeckShield-Audit-Report-Arbswap-MasterChef-w:-locked staking.pdf — no match: Scope explicitly mentions contracts/MasterChefV3.sol and contracts/VestingMaster.sol. Audit date from cover page and version history.
- [19460] PeckShield-Audit-Report-Arbswap-v1.0.pdf — no match: Contracts extracted from findings targets and file references. Audit date from cover page and table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Arbswap-MasterChef-w:-locked staking.pdf | MasterChefV3 | unmatched — not counted | — | listed in scope: contracts/MasterChefV3.sol | no |
| PeckShield-Audit-Report-Arbswap-MasterChef-w:-locked staking.pdf | VestingMaster | unmatched — not counted | — | listed in scope: contracts/VestingMaster.sol | no |
| PeckShield-Audit-Report-Arbswap-v1.0.pdf | MirrorARBS | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Arbswap-v1.0.pdf | XARBSPool | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Arbswap-v1.0.pdf | MasterChef | unmatched — not counted | — | Target in findings PVE-003 and PVE-005 | no |
| PeckShield-Audit-Report-Arbswap-v1.0.pdf | ArbswapToken | unmatched — not counted | — | Referenced in finding PVE-004 as ArbswapToken.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [19459] PeckShield-Audit-Report-Arbswap-MasterChef-w:-locked staking.pdf
- [19460] PeckShield-Audit-Report-Arbswap-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
