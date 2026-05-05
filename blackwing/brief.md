# Agentic Brief: Blackwing

## Project Overview

- **Project:** Blackwing (blackwing)
- **Website:** blackwing.fi
- **Category:** Farm
- **Chains (topography):** 1, 42161
- **Chains (DeFiLlama):** 1, 56, 42161
- **TVL:** $6,568,515 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2024-07-13
- **Audit history:** 1 audits; most recent 2024-02-29 (796 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Blackwing has 19 deployed contract rows in current topography. This brief renders the 18 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2024-07-13 (661 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 18 contracts across 2 chains. 5 have TP audit coverage (27.8%); 13 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

9 core-logic or audit-scope-extra contracts identified. Inclusion is provenance-mechanical per role_mapping_v1.

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BlackwingNoopDeployer | factory | factory | unmatched | [0x3b7df0...c04f](https://arbiscan.io/address/0x3b7df0cd432c8f3b01b969ad8d2a2a1405b1c04f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x27ea06...46ec](https://arbiscan.io/address/0x27ea06f9e5e4deb9349187a39edadef9142a46ec) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x761b2c...b78f](https://arbiscan.io/address/0x761b2ccdd37ef1cac84f8728687a5248c9efb78f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x7ae943...7cc3](https://arbiscan.io/address/0x7ae9431fa62f5be2da7dcb05dcb1fc5fb2fe7cc3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb943bd...6c86](https://arbiscan.io/address/0xb943bd7da6948324363025e3fe789cd02c846c86) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc6ade8...dd09](https://arbiscan.io/address/0xc6ade8a68026d582ab37b879d188caf7e405dd09) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd18c3f...d778](https://arbiscan.io/address/0xd18c3fc06b42f053ed485f233eb90b06a4f3d778) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd2e23b...37b6](https://arbiscan.io/address/0xd2e23b76b44d568b77d65b64a2beff8439e437b6) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe83302...8218](https://arbiscan.io/address/0xe8330250d7b996cde78bce829779005e35e48218) |

---

## Scope - Operational Periphery

8 operational contracts identified via deployer-neighborhood, GitHub-declared, or related provenance. 5 appear in past audit scopes; 3 do not.

This is the commercial wedge: contracts that scope-limited manual audits typically exclude are surfaced here as first-class audit targets.

### arbitrum (chain_id 42161)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [BlackwingVault](https://arbiscan.io/address/0xa92299289361fdcbb4ce9acbb512a84bd5fab37d) | vault_pool | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [BlackwingVaultToken](https://arbiscan.io/address/0x39c973162f2af3dd7dc8bfbecc7fdc0b8602b979) | vault_pool | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [BlackwingVaultToken](https://arbiscan.io/address/0xa5e5c53edefe4ff90cf9f19edac730fff2b7ca27) | vault_pool | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [BlackwingVaultToken](https://arbiscan.io/address/0xd1783ebb2d47ae0b24a66ebac28a7e160da2abeb) | vault_pool | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [BlackwingVaultToken](https://arbiscan.io/address/0xf214afcb3d138bf9e96153dd76c89b7d025f2e80) | vault_pool | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [0x7273f0...e7e4](https://arbiscan.io/address/0x7273f0ecd087d1193c74cd121a62e19ff95ce7e4) | unknown | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,proxy_impl_enrichment_v1,sourci | unmatched |
| [0x9db97d...07ba](https://arbiscan.io/address/0x9db97df1e818cc4ada61daf45e1717d1359e07ba) | unknown | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,proxy_impl_enrichment_v1,sourci | unmatched |
| [0xcfd90e...ab9d](https://arbiscan.io/address/0xcfd90e3b89dcff2d357463f0aafdb175075eab9d) | unknown | deployer_neighborhood_docs_listed - creator=0x551d1f5a… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,proxy_impl_enrichment_v1,sourci | unmatched |

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 9 proxies on 1, 42161. 9 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x174ae6...1a08, 0x551d1f...7226. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

1 integration-surface rows detected from third-party enrichment provenance.

| Integration Target | Our Contract | Chain | Trust Assumption |
|---|---|---|---|
| defillama_adapter | [TransparentUpgradeableProxy](https://etherscan.io/address/0xfae103dc9cf190ed75350761e95403b7b8afa6c0) | ethereum | integration target not characterized; investigate |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| Integration surface | 1 | 0 | 1 | 0.0% |
| No provenance | 9 | 0 | 9 | 0.0% |
| Operational periphery | 8 | 5 | 3 | 62.5% |
| **Total** | 18 | 5 | 13 | 27.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-02-29 | Zellic | Blackwing Smart Contract Security Assessment | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 5 of 8 covered (62.5%). Last audit 796 days ago.

18 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2024-02-29 - Zellic - Blackwing Smart Contract Security Assessment - https://github.com/Zellic/publications/blob/master/Blackwing%20-%20Zellic%20Audit%20Report.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/blackwing.json
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

- **Provenance classification:** available.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $609,180.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:33.368Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Per-contract TVL snapshot available with total on-chain TVL $609,180.
