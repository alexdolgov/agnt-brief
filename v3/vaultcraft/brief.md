# Agentic Audit Brief: VaultCraft

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: VaultCraft (`vaultcraft`)
- Website: [https://vaultcraft.io/](https://vaultcraft.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, optimism, polygon
- Contract surface: 20 unique implementations (21 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $542,645.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VaultCraft. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, bsc, ethereum, optimism, polygon. Structural roles: 6 core, 5 supporting, 2 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (6), supporting (5), unclassified (2)
- Contract kinds: contract (12), unclassified (1)
- Detected standards: erc20 (3), erc20permit (2), erc165 (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4), solmate (2)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x007318...412864`, chain 1)
- UnnamedContract (`0x47fd36...08655e`, chain 1)
- UnnamedContract (`0x6aa03e...48169a`, chain 1)
- UnnamedContract (`0xd57d8e...3eb1f4`, chain 1)
- UnnamedContract (`0x6f0fec...986394`, chain 10)
- UnnamedContract (`0xdd0d13...a6d23a`, chain 10)
- UnnamedContract (`0xe8647e...f52b5a`, chain 56)
- UnnamedContract (`0xb205e9...a7a6cc`, chain 42161)
- ClonableBeaconProxy (`0x59a696...94a230`, chain 42161)
- ClonableBeaconProxy (`0x68ead5...b885be`, chain 42161)
- FeeRecipientProxy (`0x74bb39...1afe3f`, chain 1)
- GnosisSafeProxy (`0xb85e0d...21f5da`, chain 1)
- MiniMeToken (`0xd0cd46...8a78c4`, chain 1)
- OptimismMintableERC20 (`0xd41d34...a1be45`, chain 10)
- OptionsToken (`0xafa52e...7c0ca2`, chain 1)
- UChildERC20Proxy (`0xc5b57e...7ee50c`, chain 137)
- VaultRouter (`0x4995f3...a243cd`, chain 1)
- VaultRouter (`0x382884...002919`, chain 10)
- VaultRouter (`0x48943f...1f777b`, chain 42161)
- Voting Escrow (`0x0ab4bc...819a1a`, chain 1)
- WeightedPool2Tokens (`0x577a7f...3f1920`, chain 1)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 20
- Raw deployments: 21
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 8.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeRecipientProxy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260605 | `0x74bb39...1afe3f` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-260627 | `0xb85e0d...21f5da` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260609 | `0xd0cd46...8a78c4` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-260617 | `0xd41d34...a1be45` | ⚠️ Unaudited |
| OptionsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260607 | `0xafa52e...7c0ca2` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 2 | arbitrum | unit-260631 (2 proxies) | 2 deployments: arbitrum `0x59a696...94a230`; arbitrum `0x68ead5...b885be` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-260629 | `0xc5b57e...7ee50c` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-260599 | `0x4995f3...a243cd` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-260613 | `0x382884...002919` | ⚠️ Unaudited |
| VaultRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-260621 | `0x48943f...1f777b` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260595 | `0x0ab4bc...819a1a` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260601 | `0x577a7f...3f1920` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260592 | `0x007318...412864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260597 | `0x47fd36...08655e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260603 | `0x6aa03e...48169a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260611 | `0xd57d8e...3eb1f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260615 | `0x6f0fec...986394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-260619 | `0xdd0d13...a6d23a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-260625 | `0xe8647e...f52b5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260623 | `0xb205e9...a7a6cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf](https://1854965950-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FgF4N9JVFD9kYVbxfqUOJ%2Fblocksec_popcorn_v1.0-signed.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)](https://gist.github.com/gjaldon/f3d1e2410f6e52370c8f19e72b98ea5c) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)](https://gist.github.com/gjaldon/8d2067cd7b382a347c5ca4a5d01aa7c2) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [code4rena.com/audits/2023-01-popcorn-contest](https://code4rena.com/audits/2023-01-popcorn-contest) | Code4rena | Contest | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)](https://gist.github.com/0xruhum/4252cee7e84da6bb5b0a19ed00b5e34e) | 0xRuhum | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FmBWIydyZzVeNBuK3u5an%2FZokyo%20Audit.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2F0NB6k44GVu1IW2B2mOcG%2FPopcornMay2022.pdf) | G0 Group | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14099] spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf — matched: Scope explicitly lists files in audit2/src folder. Contract names extracted from file paths and findings.
- [14100] f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) — no match: No explicit scope section found; contracts extracted from findings and file paths referenced in the report.
- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) — no match: The report is a gist with findings for Peapods Strategies. No explicit scope section; contracts are inferred from findings.
- [14102] code4rena.com/audits/2023-01-popcorn-contest — no match: The provided text is a leaderboard for a Code4rena contest, not an audit report. No contracts in scope or audit date are identifiable.
- [14103] 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) — no match: No reason recorded
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf — no match: The audit report explicitly lists two contracts in scope: HysiBatchZapper and HysiBatchInteraction. The audit date is given as 'Nov 1st, 2021' on the cover page.
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf — no match: Scope explicitly lists three Solidity files: AffiliateToken.sol, Vault.sol, VaultFeeController.sol. Audit date inferred from 'June 2022' in title and header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | EIP | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | MultiRewardEscrow | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | MultiRewardStaking | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | Owned | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | OwnedUpgradeable | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | AdminProxy | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | CloneFactory | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | CloneRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | DeploymentController | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | FeeRecipientProxy | own contract | FeeRecipientProxy (selected) `0x74bb39...1afe3f` — deployed 2023-04-18 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | PermissionRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | TemplateRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | Vault | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultController | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultRegistry | unmatched — not counted | — | listed in scope file list | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | VaultRouter | ambiguous — not counted | VaultRouter (alternative) `0x382884...002919` — deployed 2024-03-13 14:55:41+03 — liveness: live (current_address_book_code)<br>VaultRouter (alternative) `0x4995f3...a243cd` — deployed 2023-12-01 16:38:11+03 — liveness: live (current_address_book_code)<br>VaultRouter (alternative) `0x48943f...1f777b` — deployed 2024-03-13 14:56:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | AdapterBase | unmatched — not counted | — | mentioned in findings (Section 2.1.4, 2.3.1) | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf | BeefyAdapter | unmatched — not counted | — | mentioned in findings (Section 2.1.7) | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapter | unmatched — not counted | — | mentioned in findings H-01, H-02, H-03, M-04, M-05, L-02 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | AdapterBase | unmatched — not counted | — | mentioned in findings H-02, H-03 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapterBalancerCurveHarvest | unmatched — not counted | — | mentioned in findings M-01, M-03, L-01 | no |
| f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory) | PendleAdapterBalancerHarvest | unmatched — not counted | — | mentioned in findings M-03, L-01 | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | BaseUniV2LpCompounder | unmatched — not counted | — | Referenced in findings M-01, L-02, L-03 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | BaseBalancerLpCompounder | unmatched — not counted | — | Referenced in findings M-01, L-02, L-03 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsBalancerUniV2Compounder | unmatched — not counted | — | Mentioned in L-01 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsUniV2Compounder | unmatched — not counted | — | Mentioned in L-01 as a contract in scope. | no |
| 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory) | PeapodsBase | unmatched — not counted | — | Referenced in L-01 as __PeapodsBase_init(). | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AaveV2Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AaveV3Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | AdminProxy | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | CompoundV2Adapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | ConvexAdapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | DeploymentController | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MasterChefAdapter | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MultiRewardEscrow | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | MultiRewardStaking | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | Vault | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | VaultController | unmatched — not counted | — | — | no |
| 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory) | YearnAdapter | unmatched — not counted | — | — | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf | HysiBatchZapper | unmatched — not counted | — | Listed in scope: 'Contracts: HysiBatchZapper; HysiBatchInteraction.' | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf | HysiBatchInteraction | unmatched — not counted | — | Listed in scope: 'Contracts: HysiBatchZapper; HysiBatchInteraction.' | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | AffiliateToken | unmatched — not counted | — | listed in scope | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf | VaultFeeController | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd0cd46...8a78c4` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd41d34...a1be45` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafa52e...7c0ca2` | OptionsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x59a696...94a230` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc5b57e...7ee50c` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4995f3...a243cd` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x382884...002919` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x48943f...1f777b` | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ab4bc...819a1a` | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x577a7f...3f1920` | WeightedPool2Tokens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 42 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=2
- Match method counts: unique_name=1

Zero-match audit list:

- [14100] f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)
- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)
- [14102] code4rena.com/audits/2023-01-popcorn-contest
- [14103] 4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf

Fork inheritance lineage and inherited audits are included when available.
