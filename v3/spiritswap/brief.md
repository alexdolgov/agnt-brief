# Agentic Audit Brief: SpiritSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SpiritSwap (`spiritswap`)
- Website: [https://www.spiritswap.finance/chain/ftm/swap](https://www.spiritswap.finance/chain/ftm/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 10 unique implementations (10 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $259,330.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SpiritSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across sonic. Structural roles: 5 supporting, 3 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: supporting (5), core (3), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: multicall (3), erc165 (2), accesscontrol (1), erc721 (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 9 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

**AlgebraEternalFarming** (`0xf5d228...4c0c08`, chain 146)
Origin: mantra-dao (`0x83d4a9...f93e7c`)
Containment: 95.8% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- incentiveKeys(address)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6f161b...af7382`, chain 146)
- AlgebraCommunityVault (`0x5be5f7...5870f7`, chain 146)
- AlgebraFactory (`0xb86020...4cda76`, chain 146)
- FarmingCenter (`0x967f26...7e51d6`, chain 146)
- NonfungiblePositionManager (`0x5084e9...572bb4`, chain 146)
- Quoter (`0xe11813...a09404`, chain 146)
- SwapRouter (`0x488219...5acd6b`, chain 146)
- TickLens (`0xe96c8f...404dae`, chain 146)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraCommunityVault | core_logic | project_anchor | own_supporting | 0 | sonic | unit-392847 | `0x5be5f7...5870f7` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | sonic | unit-392854 | `0xf5d228...4c0c08` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | sonic | unit-392851 | `0xb86020...4cda76` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | project_anchor | own_supporting | 0 | sonic | unit-392850 | `0x98af00...6c9a29` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | sonic | unit-392849 | `0x967f26...7e51d6` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | sonic | unit-392846 | `0x5084e9...572bb4` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | sonic | unit-392852 | `0xe11813...a09404` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-392845 | `0x488219...5acd6b` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-392853 | `0xe96c8f...404dae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392848 | `0x6f161b...af7382` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SpiritSwap-Core Security Audit Report.pdf](https://github.com/Layer3Org/spiritswap-core/blob/main/SpiritSwap-Core%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Zokyo SpiritSwap V2 Audit.pdf](https://github.com/Spirit-DAO/spiritswap-contract/blob/main/Zokyo%20SpiritSwap%20V2%20Audit.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [PeckShield-Audit-Report-SpiritV2-v1.0.pdf](https://github.com/Spirit-DAO/spiritswap-contract/blob/main/PeckShield-Audit-Report-SpiritV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [audits.md](https://docs.silverswap.io/silverswap/technical-details/audits.md) | Hashlock | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hashlock.com/audits/silverswap](https://hashlock.com/audits/silverswap) | Hashlock | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13882] SpiritSwap-Core Security Audit Report.pdf — no match: Contracts listed in FILES LISTING section of the audit report.
- [13883] Zokyo SpiritSwap V2 Audit.pdf — no match: Contracts explicitly listed in scope section on page 3.
- [13884] PeckShield-Audit-Report-SpiritV2-v1.0.pdf — no match: Extracted contract names from findings targets and report body. Audit date from cover page and version history.
- [13885] audits.md — no match: The provided text is a documentation index page with a link to an external audit report. No contract names, file paths, or audit date are present in the text.
- [13886] hashlock.com/audits/silverswap — no match: The provided text is a webpage listing multiple audit reports (SilverDCA, LSW, Tokenomics, DCA v2, DCA) but does not contain the actual audit report content with scope details or contract names.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SpiritSwap-Core Security Audit Report.pdf | SPIRITMasterChef | unmatched — not counted | — | listed in files listing | no |
| SpiritSwap-Core Security Audit Report.pdf | SPIRITToken | unmatched — not counted | — | listed in files listing | no |
| SpiritSwap-Core Security Audit Report.pdf | SpiritFactory | unmatched — not counted | — | listed in files listing | no |
| SpiritSwap-Core Security Audit Report.pdf | SpiritMultiCall | unmatched — not counted | — | listed in files listing | no |
| SpiritSwap-Core Security Audit Report.pdf | SpiritRouter | unmatched — not counted | — | listed in files listing | no |
| Zokyo SpiritSwap V2 Audit.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | Bribe | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | BribeFactory | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | Gauge | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | ProtocolGovernance | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | MasterDill | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | GaugeProxy | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | VotingFeeNotifier | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | AdminGaugeProxy | unmatched — not counted | — | listed in scope | no |
| Zokyo SpiritSwap V2 Audit.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | SpiritToken | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | SpiritMasterChef | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | inSpirit | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | BaseV1Pair | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | BaseV1Factory | unmatched — not counted | — | Mentioned in finding PVE-006 (setStableFee/setVariableFee) | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | StableGaugeProxy | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | Gauge | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-SpiritV2-v1.0.pdf | AdminGaugeProxy | unmatched — not counted | — | Mentioned in finding PVE-003 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x5be5f7...5870f7` | AlgebraCommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xf5d228...4c0c08` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb86020...4cda76` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x98af00...6c9a29` | AlgebraPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x967f26...7e51d6` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5084e9...572bb4` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe11813...a09404` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x488219...5acd6b` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe96c8f...404dae` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: n/a

Zero-match audit list:

- [13882] SpiritSwap-Core Security Audit Report.pdf
- [13883] Zokyo SpiritSwap V2 Audit.pdf
- [13884] PeckShield-Audit-Report-SpiritV2-v1.0.pdf
- [13885] audits.md
- [13886] hashlock.com/audits/silverswap

Fork inheritance lineage and inherited audits are included when available.
