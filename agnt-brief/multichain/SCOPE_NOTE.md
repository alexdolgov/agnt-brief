# Agentic Brief: Multichain

## Project Overview

- **Project:** Multichain (multichain)
- **Website:** multichain.org
- **Category:** Bridge
- **Chains (topography):** 1, 56, 137, 8453, 42161
- **Chains (DeFiLlama):** 1, 10, 25, 30, 56, 100, 122, 137, 250, 288, 592, 1088, 1101, 1284, 1285, 2020, 2222, 8217, 42161, 42220, 43114, 1313161554, 1666600000
- **TVL:** $1,031,778,393 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment unknown
- **Audit history:** 12 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

Multichain has 31 deployed contract rows in current topography. This brief renders the 29 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-c067f024; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 29 contracts across 5 chains. 7 have TP audit coverage (24.1%); 22 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AnyCallProxy | proxy | proxy | audited (TP) | [0x37414a...0a89](https://etherscan.io/address/0x37414a8662bc1d25be3ee51fb27c2686e2490a89) |
| AnycallV7Proxy | proxy | proxy | unmatched | [0x8efd01...4374](https://etherscan.io/address/0x8efd012977dd5c97e959b9e48c04ee5fcd604374) |
| AnyswapV6ERC20 | router | router | audited (TP) | [0x0615db...48b1](https://etherscan.io/address/0x0615dbba33fe61a31c7ed131bda6655ed76748b1) |
| AnyswapV6Router | router | router | audited (TP) | [0xba8da9...0705](https://etherscan.io/address/0xba8da9dcf11b50b03fd5284f164ef5cdef910705) |
| Erc20SwapAsset | router | router | likely in scope | [0xf99d58...b4d6](https://etherscan.io/address/0xf99d58e463a2e07e5692127302c20a191861b4d6) |
| MultichainToken | token | token | audited (TP) | [0x65ef70...2df4](https://etherscan.io/address/0x65ef703f5594d2573eb71aaf55bc0cb548492df4) |
| MultiDao | core | core | audited (TP) | [0x172280...d558](https://etherscan.io/address/0x1722800c0f1bfdf916ef948ef7790a861e90d558) |
| Reward | rewards | rewards | unmatched | [0x44529a...7db6](https://etherscan.io/address/0x44529a37a43bab8af2336698e31f2e4585ad7db6) |
| SwapTokens | router | router | audited (TP) | [0xaed047...ec60](https://etherscan.io/address/0xaed0472b498548b1354925d222b832b99bb2ec60) |
| TokenMintERC20Token | token | token | likely in scope | [0x95ad61...c4ce](https://etherscan.io/address/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce) |
| ve | core | core | unmatched | [0xbba411...ceba](https://etherscan.io/address/0xbba4115ecb1f811061ecb5a8dc8fcdee2748ceba) |
| unnamed | unknown | unknown | unmatched | [0x6b2553...6982](https://etherscan.io/address/0x6b25532e1060ce10cc3b0a99e5683b91bfde6982) |
| unnamed | unknown | unknown | unmatched | [0x818635...9880](https://etherscan.io/address/0x8186359af5f57fbb40c6b14a588d2a59c0c29880) |
| unnamed | unknown | unknown | unmatched | [0x85d4c0...fdfb](https://etherscan.io/address/0x85d4c01d9e0734080446f3143cc2a9c6516dfdfb) |
| unnamed | unknown | unknown | unmatched | [0xf05234...d3a9](https://etherscan.io/address/0xf0523452484491515686936beb976b41a45fd3a9) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AnyCallV6Proxy | proxy | proxy | unmatched | [0xc10ef9...c078](https://bscscan.com/address/0xc10ef9f491c9b59f936957026020c321651ac078) |
| AnycallV6senderBNBMainnet | core | core | unmatched | [0xa7ce20...a50a](https://bscscan.com/address/0xa7ce20b8254fcb2caa6c43315be470df3438a50a) |
| MultichainV7Router | router | router | audited (TP) | [0x400b97...34a6](https://bscscan.com/address/0x400b971099e0ebfda2c03a3063739cb5398734a6) |
| Reward | rewards | rewards | unmatched | [0x9db42b...c726](https://bscscan.com/address/0x9db42b603fe859d07656c579326f71e3ec80c726) |
| ve | core | core | unmatched | [0x3f6727...cac5](https://bscscan.com/address/0x3f6727defb15996d13b3461dae0ba7263ca3cac5) |
| unnamed | unknown | unknown | unmatched | [0x3ccb1f...7bca](https://bscscan.com/address/0x3ccb1f91ad66348ec5dd8676d1dd59372fd37bca) |
| unnamed | unknown | unknown | unmatched | [0x3e2347...e83d](https://bscscan.com/address/0x3e2347a6f93eac793c56dc508206e397ea11e83d) |
| unnamed | unknown | unknown | unmatched | [0x5f4f24...5254](https://bscscan.com/address/0x5f4f2486153aced0f3bca0d967836624cc715254) |
| unnamed | unknown | unknown | unmatched | [0x76c4f9...22c6](https://bscscan.com/address/0x76c4f9f132316dd2f86e936e0b0d5608faf322c6) |
| unnamed | unknown | unknown | unmatched | [0xfa7e03...f7cc](https://bscscan.com/address/0xfa7e030d2ac001c2ba147c0b147d468e4609f7cc) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x41dadc...ea44](https://polygonscan.com/address/0x41dadc279612965c142c1e37262d70652a30ea44) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd2e1d1...3601](https://basescan.org/address/0xd2e1d1bbbc963de56f27c4c078f9622f7a723601) |
| MtzPool | vault_pool | vault_pool | likely in scope | [0x4cc6fc...710b](https://basescan.org/address/0x4cc6fcb83b6c1915b0535932e45abcd23019710b) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x0a01b0...d6c7](https://arbiscan.io/address/0x0a01b006c471032b3ec816ede297c05c4459d6c7) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 4 proxies on 1, 8453, 42161. 2 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x0e25be...511e, 0x25f010...1fc3, 0x408f94...93df, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 29 | 7 | 22 | 24.1% |
| **Total** | 29 | 7 | 22 | 24.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | blocksec audit multichain routerv7 v1.0 signed | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | docs.multichain.org/getting-started/security/bug-bounty-immunefi | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report MultiChainV6 v1.0 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.multichain.org/getting-started/security/bug-bounty-alternative](https://docs.multichain.org/getting-started/security/bug-bounty-alternative) - audit_report_link
- [https://docs.multichain.org/getting-started/security/bug-bounty-alternative.md](https://docs.multichain.org/getting-started/security/bug-bounty-alternative.md) - audit_report_link
- [https://docs.multichain.org/getting-started/security/bug-bounty-immunefi](https://docs.multichain.org/getting-started/security/bug-bounty-immunefi) - audit_report_link
- [https://docs.multichain.org/getting-started/security/bug-bounty-immunefi.md](https://docs.multichain.org/getting-started/security/bug-bounty-immunefi.md) - audit_report_link
- [https://docs.multichain.org/security/bug-bounty](https://docs.multichain.org/security/bug-bounty) - audit_report_link
- [https://drive.google.com/file/d/1AcAwdIeI3-ALD4KBRc9EQCXW9GnNfHZV/view](https://drive.google.com/file/d/1AcAwdIeI3-ALD4KBRc9EQCXW9GnNfHZV/view) - audit_report_link
- [https://drive.google.com/file/d/1gdkpldTjBXKV6H7Duu4_m3XmLTQGcHmg/view](https://drive.google.com/file/d/1gdkpldTjBXKV6H7Duu4_m3XmLTQGcHmg/view) - audit_report_link
- [https://drive.google.com/file/d/1ibuHChcYcYCN6JelRAQPnM4rkaB9EgAM/view?usp=sharing](https://drive.google.com/file/d/1ibuHChcYcYCN6JelRAQPnM4rkaB9EgAM/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1NFFFecAjStbGMyvJVDez3xmsGSHYvNYv/view?usp=sharing](https://drive.google.com/file/d/1NFFFecAjStbGMyvJVDez3xmsGSHYvNYv/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1OudU8hOl24aFpcbefPbpv7r0s6zjMUqh/view?usp=sharing](https://drive.google.com/file/d/1OudU8hOl24aFpcbefPbpv7r0s6zjMUqh/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1tIjUsdncA2Hq-5DHeXXEfDjaee1usYnC/view](https://drive.google.com/file/d/1tIjUsdncA2Hq-5DHeXXEfDjaee1usYnC/view) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_routerv7_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_routerv7_v1.0-signed.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_v1.0-signed.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/Coinspect/Coinspect%20-%20Security%20Assessment%20-%20Multichain%20Stellar%20-%20V230330.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Coinspect/Coinspect%20-%20Security%20Assessment%20-%20Multichain%20Stellar%20-%20V230330.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/DEDAUB/Multichain%20Contract%20V6%20Audit%20Report%20by%20Dedaub.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/DEDAUB/Multichain%20Contract%20V6%20Audit%20Report%20by%20Dedaub.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/PeckShield/PeckShield-Audit-Report-MultiChainV6-v1.0.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/PeckShield/PeckShield-Audit-Report-MultiChainV6-v1.0.pdf) - audit_report_link
- [https://github.com/anyswap/Anyswap-Audit/blob/master/Verichain/Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Verichain/Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf) - audit_report_link
- [https://github.com/anyswap/chaindata/blob/main/deploy.md](https://github.com/anyswap/chaindata/blob/main/deploy.md) - audit_report_link
- [https://github.com/anyswap/CrossChain-Router/blob/main/tokens/README.md](https://github.com/anyswap/CrossChain-Router/blob/main/tokens/README.md) - audit_report_link
- [https://immunefi.com/bounty/multichain](https://immunefi.com/bounty/multichain) - audit_report_link
- [https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - blocksec audit multichain routerv7 v1.0 signed
- unknown - discovery-ingest-placeholder - docs.multichain.org/getting-started/security/bug-bounty-immunefi
- unknown - PeckShield - PeckShield Audit Report MultiChainV6 v1.0

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/multichain.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $4,857.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:37:27.219Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-c067f024
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $4,857.
