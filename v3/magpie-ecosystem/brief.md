# Agentic Audit Brief: Magpie Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Magpie Ecosystem (`magpie-ecosystem`)
- Website: [https://link3.to/magpiexyz](https://link3.to/magpiexyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, hyperliquid, sonic
- Contract surface: 19 unique implementations (19 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $16,621,913.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Magpie Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, bsc, ethereum, hyperliquid, sonic. Structural roles: 5 infra, 1 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: infra (5), core (1)
- Contract kinds: contract (5), abstract (1)
- Detected standards: erc1967proxy (5), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6591c0...cb8591`, chain 1)
- UnnamedContract (`0x9c60db...83d65c`, chain 1)
- UnnamedContract (`0xbdf0b5...9b746b`, chain 1)
- UnnamedContract (`0x5ff002...83ddfe`, chain 56)
- UnnamedContract (`0x6dc8cc...9602de`, chain 56)
- UnnamedContract (`0x927093...cdbeaf`, chain 56)
- UnnamedContract (`0x94eb0e...b6b3ad`, chain 56)
- UnnamedContract (`0xa39d4d...f38c10`, chain 56)
- UnnamedContract (`0xf433c2...f41866`, chain 56)
- UnnamedContract (`0x4b68de...8bb9ea`, chain 146)
- UnnamedContract (`0x69fa01...4ca34a`, chain 999)
- UnnamedContract (`0xca27b9...308176`, chain 42161)
- UnnamedContract (`0xe868fd...132288`, chain 42161)
- BridgeToken (`0xa61f74...fa22a3`, chain 42161)
- MGP (`0xd06716...3b45fa`, chain 56)
- TransparentUpgradeableProxy (`0x9b69b0...eb32c6`, chain 56)
- TransparentUpgradeableProxy (`0xa3b615...26bd46`, chain 56)
- TransparentUpgradeableProxy (`0x536599...4786b9`, chain 42161)
- TransparentUpgradeableProxy (`0x664cc2...9db6e7`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterMagpie | unknown | project_anchor | own_supporting | 1 | bsc | unit-388772 | `0xa3b615...26bd46` | ⚠️ Unaudited |
| MasterMagpie | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388770 | `0x664cc2...9db6e7` | ⚠️ Unaudited |
| MGP | unknown | project_anchor | own_supporting | 0 | bsc | unit-388766 | `0xd06716...3b45fa` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | arbitrum | unit-388769 | `0xa61f74...fa22a3` | ⚠️ Unaudited |
| VLMGP | unknown | project_anchor | own_supporting | 1 | bsc | unit-388773 | `0x9b69b0...eb32c6` | ⚠️ Unaudited |
| VLMGP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388771 | `0x536599...4786b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388755 | `0x6591c0...cb8591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388756 | `0x9c60db...83d65c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388757 | `0xbdf0b5...9b746b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388761 | `0x5ff002...83ddfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388762 | `0x6dc8cc...9602de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388763 | `0x927093...cdbeaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388764 | `0x94eb0e...b6b3ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388765 | `0xa39d4d...f38c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388767 | `0xf433c2...f41866` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-388758 | `0x4b68de...8bb9ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388768 | `0x69fa01...4ca34a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388759 | `0xca27b9...308176` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388760 | `0xe868fd...132288` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Cakepie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Cakepie-v1.0.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_cakepie_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_cakepie_v1.0-signed.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Eigenpie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Eigenpie-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [PeckShield-Audit-Report-Magpie-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Magpie-v1.1.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3561] PeckShield-Audit-Report-Cakepie-v1.0.pdf — no match: Audit report explicitly lists excluded contracts (MasterCakepie.sol, CakeRush.sol, mCake.sol) and covers all other contracts in the repository. The five contracts named in findings are the ones explicitly assessed.
- [3562] blocksec_cakepie_v1.0-signed.pdf — no match: Scope section explicitly states only CakeRush.sol and PancakeStakingBNBChain.sol are in scope.
- [3563] PeckShield-Audit-Report-Eigenpie-v1.0.pdf — no match: Contracts explicitly named as targets in findings: EigenpieWithdrawManager, NodeDelegator, and EigenpieConfig (mentioned in trust issue). No file paths provided.
- [3564] PeckShield-Audit-Report-Magpie-v1.1.pdf — no match: Contracts extracted from findings targets and scope description. No explicit scope table, but contracts are clearly identified as audit targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | CakepieBribeRewardDistributor | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | PancakeV3Helper | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | RewardDistributor | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | PancakeStakingBaseUpg | unmatched — not counted | — | Example in finding PVE-004 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | TransparentUpgradeableproxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa3b615...26bd46` — deployed 2022-10-19 17:44:15+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9b69b0...eb32c6` — deployed 2022-10-29 14:48:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x536599...4786b9` — deployed 2023-04-03 05:54:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x664cc2...9db6e7` — deployed 2023-04-03 05:48:29+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_cakepie_v1.0-signed.pdf | CakeRush | unmatched — not counted | — | explicitly listed in scope section 1.1 | no |
| blocksec_cakepie_v1.0-signed.pdf | PancakeStakingBNBChain | unmatched — not counted | — | explicitly listed in scope section 1.1 | no |
| PeckShield-Audit-Report-Eigenpie-v1.0.pdf | EigenpieWithdrawManager | unmatched — not counted | — | Listed as target in findings PVE-001 and PVE-002 | no |
| PeckShield-Audit-Report-Eigenpie-v1.0.pdf | NodeDelegator | unmatched — not counted | — | Listed as target in finding PVE-003 | no |
| PeckShield-Audit-Report-Eigenpie-v1.0.pdf | EigenpieConfig | unmatched — not counted | — | Mentioned in finding PVE-004 as example of privileged operations | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | WombatStaking | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-006, PVE-007 | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | WombatPoolHelper | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | MasterMagpie | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa3b615...26bd46` — deployed 2022-10-19 17:44:15+03 — liveness: live (current_address_book_code)<br>0x6591c0… (alternative) `0x6591c0...cb8591` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x664cc2...9db6e7` — deployed 2023-04-03 05:48:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | VLMGP | ambiguous — not counted | 0x9c60db… (alternative) `0x9c60db...83d65c` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9b69b0...eb32c6` — deployed 2022-10-29 14:48:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x536599...4786b9` — deployed 2023-04-03 05:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | ManualCompound | unmatched — not counted | — | Target in finding PVE-007 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xa3b615...26bd46` | MasterMagpie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x664cc2...9db6e7` | MasterMagpie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd06716...3b45fa` | MGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa61f74...fa22a3` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9b69b0...eb32c6` | VLMGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x536599...4786b9` | VLMGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [3561] PeckShield-Audit-Report-Cakepie-v1.0.pdf
- [3562] blocksec_cakepie_v1.0-signed.pdf
- [3563] PeckShield-Audit-Report-Eigenpie-v1.0.pdf
- [3564] PeckShield-Audit-Report-Magpie-v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
