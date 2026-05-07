# Agentic Brief: Aspida Network

## Project Overview

- **Project:** Aspida Network (aspida)
- **Website:** not selected
- **Category:** Liquid Restaking
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $2,027,610 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2024-06-26
- **Audit history:** 1 audits; most recent 2024-01-31 (825 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Aspida Network has 24 deployed contract rows in current topography. This brief renders the 24 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** active. Source: default_fallback. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 24 contracts across 1 chains. 8 have TP audit coverage (33.3%); 16 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| aETH | core | core | audited (TP) | [0x5f898d...424b](https://etherscan.io/address/0x5f898dc62d699ecbed578e4a9bef46009ea8424b) |
| AspidaEscrowOFTAdapterUpgradeable | proxy | proxy | unmatched | [0x02a102...f2fd](https://etherscan.io/address/0x02a10246a0316a534ba2efe90535042e266ef2fd) |
| AspidaEscrowOFTAdapterUpgradeable | proxy | proxy | unmatched | [0x84b026...56f4](https://etherscan.io/address/0x84b026899eb6160131b1f1f3cd007366807056f4) |
| AspidaLimiterOFTAdapterUpgradeable | proxy | proxy | unmatched | [0x13a574...ce6a](https://etherscan.io/address/0x13a57452c777879d76a074eb4db3bdbbd5cbce6a) |
| AspidaLimiterOFTAdapterUpgradeable | proxy | proxy | unmatched | [0xecc8e6...c8c6](https://etherscan.io/address/0xecc8e61c44ff611cff54602ad4a5f63913e9c8c6) |
| CorePrimary | core | core | audited (TP) | [0x55b6af...3e24](https://etherscan.io/address/0x55b6af0e89ead974a80b70c5b30589b088113e24) |
| L1AspidaERC20Gateway | token | token | unmatched | [0x468297...6d1e](https://etherscan.io/address/0x46829739b6ff5d0869ff9d92e36409b2641a6d1e) |
| L1Escrow | core | core | unmatched | [0x209056...0eee](https://etherscan.io/address/0x209056e9f655be10d9c14b99b5005cbe84df0eee) |
| RewardOracle | oracle | oracle | audited (TP) | [0xd3afe5...dcca](https://etherscan.io/address/0xd3afe58031998eaf2b0ccee76dbd8ca50b19dcca) |
| saETH | core | core | unmatched | [0xc69809...de3d](https://etherscan.io/address/0xc69809947e6edaf21ff7f2e3784727a15a09de3d) |
| saETH | core | core | audited (TP) | [0xd9f64e...7a66](https://etherscan.io/address/0xd9f64ee3dd6f552c1bcfc8862dbd130bc6697a66) |
| StETHMinter | core | core | audited (TP) | [0x76a444...ddf9](https://etherscan.io/address/0x76a444fa85d8da2209d45c6f89d7f51b54fcddf9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x012ead...96ea](https://etherscan.io/address/0x012eade4c69d81e7064fc5766c5b86dd954c96ea) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x25a01d...bec5](https://etherscan.io/address/0x25a01dbde45cc5bb7071eb3c3b2f983ea923bec5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2d45f0...d03e](https://etherscan.io/address/0x2d45f06d8ba814dd34304a336350ef1314fed03e) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x534186...117e](https://etherscan.io/address/0x5341864d99b50155f782c562bd15ac4a0a3c117e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6e808d...0f76](https://etherscan.io/address/0x6e808d5f92799b6a1e8142d5facae510559a0f76) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xbe62fd...a854](https://etherscan.io/address/0xbe62fda93f41717c3ec4b9ce077b09b44b52a854) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0xd691b1...edac](https://etherscan.io/address/0xd691b1c47a578f51ada825a8565cafceb401edac) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe678df...889b](https://etherscan.io/address/0xe678df3f76b5763975cccac1babc33cbfd8a889b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xea7a38...32e3](https://etherscan.io/address/0xea7a38ca7c6688fb46f72e6b8bef7456605432e3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xfc8775...5b39](https://etherscan.io/address/0xfc87753df5ef5c368b5fba8d4c5043b77e8c5b39) |
| unnamed | unknown | unknown | unmatched | [0xb330dd...5c33](https://etherscan.io/address/0xb330dd1c06cf0c1f3841814e62e1c18d77b45c33) |
| unnamed | unknown | unknown | unmatched | [0xf82172...02d4](https://etherscan.io/address/0xf821720a953ad570db5cb0455be0480862d502d4) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 10 proxies on 1. 10 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x71e278...c333, 0x9fcaa8...b843. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 24 | 8 | 16 | 33.3% |
| **Total** | 24 | 8 | 16 | 33.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-01-31 | MixBytes | The audit covered the following files: CorePrimary.sol, aETH.sol, dETH.sol (renamed to aETH.sol duri | unspecified | direct | [report](https://github.com/mixbytes/audits_public/blob/master/Aspida%20Network/Aspida%20Network%20Contracts%20Security%20Audit%20Report.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 825 days ago.

15 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

No docs extraction references recorded for this project.

### Audit Reports (full list)

- 2024-01-31 - MixBytes - The audit covered the following files: CorePrimary.sol, aETH.sol, dETH.sol (renamed to aETH.sol during the re-audit), RewardOracle.sol, saETH.sol, sdETH.sol (renamed to saETH.sol during the re-audit), core/ActionControl.sol, core/CoreStrategy.sol, core/CoreTreasury.sol, core/StakingModel.sol, core/Submit.sol, core/WithdrawalQueue.sol, library/Manable.sol, library/Minter.sol, library/PauseGuardian.sol. - https://github.com/mixbytes/audits_public/blob/master/Aspida%20Network/Aspida%20Network%20Contracts%20Security%20Audit%20Report.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/aspida.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $2,915.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:45:20.054Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $2,915.
