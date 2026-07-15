# Agentic Audit Brief: Eventum Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 48 unique implementations (64 raw deployments)
- Coverage basis: 4/23 confirmed own live verified implementations (17.4%); conservative 17.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,518,168.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Eventum Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, ethereum. Structural roles: 23 unclassified, 7 core, 7 supporting, 3 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (23), core (7), supporting (7), infra (3)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (9), ownable (1), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

1 of 41 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

**Storage** (`0xc7c194...a3ea0c`, chain 42161)
Origin: rocket-pool (`0x1d8f8f...e0fa46`)
Containment: 53.3% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- addUint(bytes32,uint256)
- confirmGuardian()
- confirmWithdrawalAddress(address)
- deleteBytes32(bytes32)
- getBytes32(bytes32)
- getDeployedStatus()
- getGuardian()
- getNodePendingWithdrawalAddress(address)
- getNodeWithdrawalAddress(address)
- setBytes32(bytes32,bytes32)
- setDeployedStatus()
- setGuardian(address)
- setWithdrawalAddress(address,address,bool)
- subUint(bytes32,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2880ab...c17b43`, chain 1)
- UnnamedContract (`0x02c07b...5908f1`, chain 42161)
- UnnamedContract (`0x071360...63be14`, chain 42161)
- UnnamedContract (`0x08e9dc...11f424`, chain 42161)
- UnnamedContract (`0x0977a7...93b39d`, chain 42161)
- UnnamedContract (`0x104177...b28ad0`, chain 42161)
- UnnamedContract (`0x13fb7b...8e8357`, chain 42161)
- UnnamedContract (`0x16a4f9...02c595`, chain 42161)
- UnnamedContract (`0x225a85...2f3594`, chain 42161)
- UnnamedContract (`0x22839d...586606`, chain 42161)
- UnnamedContract (`0x4e6826...41b116`, chain 42161)
- UnnamedContract (`0x58c6f3...b841ff`, chain 42161)
- UnnamedContract (`0x5bc15d...8abf68`, chain 42161)
- UnnamedContract (`0x62be54...1748a7`, chain 42161)
- UnnamedContract (`0x93244b...9e5a3c`, chain 42161)
- UnnamedContract (`0xaebf6c...e31969`, chain 42161)
- UnnamedContract (`0xb54d62...f7d6e8`, chain 42161)
- UnnamedContract (`0xb5e569...dab267`, chain 42161)
- UnnamedContract (`0xc9905e...ee38a7`, chain 42161)
- UnnamedContract (`0xdbb435...a645d9`, chain 42161)
- UnnamedContract (`0xe8b4c9...bfcbb6`, chain 42161)
- UnnamedContract (`0xf22a47...13f2a8`, chain 42161)
- UnnamedContract (`0xf911c3...2dac69`, chain 42161)
- UnnamedContract (`0xff1968...e114c3`, chain 42161)
- UnnamedContract (`0xff1a0f...12925c`, chain 42161)
- BridgeMiddlewareV2 (`0x4721ae...b251a9`, chain 42161)
- ClonableBeaconProxy (`0x2f2a25...fc5b0f`, chain 42161)
- FiatTokenProxy (`0xaf88d0...8e5831`, chain 42161)
- MinimalProxyFactory (`0x1ee981...fdd057`, chain 42161)
- MinimalProxyFactory (`0x99be07...52977a`, chain 42161)
- RollupProxy (`0xd226bd...1abbbc`, chain 42161)
- TransparentUpgradeableProxy (`0x1628ce...59e66a`, chain 42161)
- TransparentUpgradeableProxy (`0x2e8d8b...4ca8fe`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0x8696d3...6db025`, chain 42161)
- TransparentUpgradeableProxy (`0x8d21df...33d4b1`, chain 42161)
- TransparentUpgradeableProxy (`0xa0a1b4...a11296`, chain 42161)
- TransparentUpgradeableProxy (`0xad3026...086b38`, chain 42161)
- TransparentUpgradeableProxy (`0xec32bd...dbc040`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086b...9fcbb9`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (38 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/94 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/23 (17.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Deployed-live implementations: 47 of 48 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/23
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 48
- Raw deployments: 64
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 4 | 17.4% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BadgeV1 | unknown | project_anchor | own_supporting | 15 | arbitrum | unit-239762 (15 proxies) | 15 deployments: arbitrum `0x026968...3f9af8`; arbitrum `0x1fdf83...961c01`; arbitrum `0x21f69c...c404e5`; arbitrum `0x372a18...b7b3f8`; arbitrum `0x4b2f4f...13c2bf`; arbitrum `0x6a457a...7ca3a2`; arbitrum `0x6c015b...d812e0`; arbitrum `0x77075c...ff8a17`; arbitrum `0x86dc07...2e6197`; arbitrum `0x948c63...3530a2`; arbitrum `0xa4fbdd...7f6880`; arbitrum `0xc6bc0e...40ecfd`; arbitrum `0xdac651...c63dfd`; arbitrum `0xdb5ea5...f0586f`; arbitrum `0xdef2dd...c697de` | ✅ Audited |
| BurnRegistryV1 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239763 | `0xc7defc...1dc36c` | ✅ Audited |
| GovernorMultisig | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239744 | `0xeb71a9...291bf8` | ✅ Audited |
| TreasuryV1 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239760 | `0x0a9591...b5735a` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-239758 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-239754 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239710 | `0x254e69...35be16` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239711 | `0x26052f...5fa503` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-239714 | `0x4721ae...b251a9` | ⚠️ Unaudited |
| DepositManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239765 | `0x665842...f8a2d0` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-239757 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| Inbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239756 | `0xa0a1b4...a11296` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-239752 (2 proxies) | 3 deployments: arbitrum `0x08e9dc...11f424`; arbitrum `0x8d21df...33d4b1`; arbitrum `0xad3026...086b38` | ⚠️ Unaudited |
| L1GatewayRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-239759 | `0x1628ce...59e66a` | ⚠️ Unaudited |
| MinimalProxyFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-239707 | `0x1ee981...fdd057` | ⚠️ Unaudited |
| MinimalProxyFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-239728 | `0x99be07...52977a` | ⚠️ Unaudited |
| Outbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239753 | `0xec32bd...dbc040` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239766 | `0xd226bd...1abbbc` | ⚠️ Unaudited |
| SequencerInbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239751 | `0x8696d3...6db025` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-239755 | `0x2f2a25...fc5b0f` | ⚠️ Unaudited |
| Storage | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239737 | `0xc7c194...a3ea0c` | ⚠️ Unaudited |
| SwapManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239761 | `0xe575f5...75daa4` | ⚠️ Unaudited |
| VaultV1 | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-239764 | `0x2e8d8b...4ca8fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239679 | `0x2880ab...c17b43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239697 | `0x02c07b...5908f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239698 | `0x071360...63be14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239699 | `0x0977a7...93b39d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239700 | `0x104177...b28ad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239702 | `0x13fb7b...8e8357` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239703 | `0x16a4f9...02c595` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239708 | `0x225a85...2f3594` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239709 | `0x22839d...586606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239715 | `0x4e6826...41b116` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239719 | `0x58c6f3...b841ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239721 | `0x5bc15d...8abf68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239725 | `0x62be54...1748a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239727 | `0x93244b...9e5a3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239730 | `0xaebf6c...e31969` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239733 | `0xb54d62...f7d6e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239734 | `0xb5e569...dab267` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239738 | `0xc9905e...ee38a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239741 | `0xdbb435...a645d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239743 | `0xe8b4c9...bfcbb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239745 | `0xf22a47...13f2a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239747 | `0xf911c3...2dac69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239749 | `0xff1968...e114c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239750 | `0xff1a0f...12925c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | address | matched | 6 | 4 | 0 | 2 | high |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2788] hashex.org/audits/evedex — matched: Contracts extracted from the 'Contracts Checked' table in the audit report. Audit completed date is 11 Aug 2025.
- [2789] skynet.certik.com/projects/evedex — no match: Only one contract file explicitly listed in the audit report's 'Audited Files/SHA256' section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hashex.org/audits/evedex | EHMarketV2 | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/evedex | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/evedex | CashbackVaultV1Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x0a9591...b5735a` — deployed 2024-10-10 20:32:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | TreasuryV1 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x77075c...ff8a17` — deployed 2024-10-10 20:31:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | StorageConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x21f69c...c404e5` — deployed 2024-10-10 20:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | GovernorMultisigAuthorization | own contract | GovernorMultisig (selected) `0xeb71a9...291bf8` — deployed 2024-10-10 20:31:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | Multiownable | own contract | GovernorMultisig (selected) `0xeb71a9...291bf8` — deployed 2024-10-10 20:31:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | Multicall3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc7defc...1dc36c` — deployed 2024-10-10 20:32:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/evedex | OwnableValidator | unmatched — not counted | — | Listed under Audited Files/SHA256 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfd086b...9fcbb9` | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x254e69...35be16` | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x26052f...5fa503` | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4721ae...b251a9` | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x665842...f8a2d0` | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d0...8e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa0a1b4...a11296` | Inbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1628ce...59e66a` | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ee981...fdd057` | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x99be07...52977a` | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xec32bd...dbc040` | Outbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd226bd...1abbbc` | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8696d3...6db025` | SequencerInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a25...fc5b0f` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7c194...a3ea0c` | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe575f5...75daa4` | SwapManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e8d8b...4ca8fe` | VaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: address=5

Zero-match audit list:

- [2789] skynet.certik.com/projects/evedex

Fork inheritance lineage and inherited audits are included when available.
