# Agentic Brief: Anzen V2

## Project Overview

- **Project:** Anzen V2 (anzen-finance)
- **Website:** anzen.finance
- **Category:** RWA
- **Chains (topography):** 1, 8453, 42161, 81457
- **Chains (DeFiLlama):** 1, 169, 8453, 42161, 81457
- **TVL:** $39,879,226 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Anzen V2 has 24 deployed contract rows in current topography. This brief renders the 24 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 24 contracts across 4 chains. 3 have TP audit coverage (12.5%); 21 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| GnosisSafeProxy | proxy | proxy | unmatched | [0x20b15e...eb3b](https://etherscan.io/address/0x20b15ee712b3c368af48ea5a59430be93a71eb3b) |
| SPCTPool | vault_pool | vault_pool | audited (TP) | [0xf30a29...0d29](https://etherscan.io/address/0xf30a29f1c540724fd8c5c4be1af604a6c6800d29) |
| SUSDz | core | core | unmatched | [0x547213...7fd7](https://etherscan.io/address/0x547213367cfb08ab418e7b54d7883b2c2aa27fd7) |
| sUSDzUSDzExchangeRateChainlinkAdapter | router | router | unmatched | [0x8047f6...1869](https://etherscan.io/address/0x8047f61e4d8bd15f3a8ad0bf30b7882219c31869) |
| TokenManagerProxy | proxy | proxy | unmatched | [0xf6f0a0...0a5c](https://etherscan.io/address/0xf6f0a051e4de63d9118a6bc948463a9d08e40a5c) |
| USDz | core | core | unmatched | [0xa469b7...0067](https://etherscan.io/address/0xa469b7ee9ee773642b3e93e842e5d9b5baa10067) |
| unnamed | unknown | unknown | unmatched | [0x8832f0...2a9e](https://etherscan.io/address/0x8832f0381707bb29756edecf42580800207f2a9e) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AnzenToken | token | token | unmatched | [0xd8a8f0...8652](https://basescan.org/address/0xd8a8f0f13300e81bf366bd87d972d3521ad48652) |
| ChildsUSDzV2 | core | core | unmatched | [0xe31ee1...f0cf](https://basescan.org/address/0xe31ee12bdfdd0573d634124611e85338e2cbf0cf) |
| ChildUSDz | core | core | audited (TP) | [0x04d5dd...1938](https://basescan.org/address/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938) |
| EACAggregatorProxy | proxy | proxy | unmatched | [0xd89c7f...7582](https://basescan.org/address/0xd89c7ffb39c44b17eaecd8717a75a36c19c07582) |
| EACAggregatorProxy | proxy | proxy | unmatched | [0xe25969...0b48](https://basescan.org/address/0xe25969e2fa633a0c027fab8f30fc9c6a90d60b48) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x18b7d4...d582](https://basescan.org/address/0x18b7d4d572ffbf644cfc2659ed5d2a420e2ad582) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xeec468...4ca3](https://basescan.org/address/0xeec468333ccc16d4bf1cef497a56cf8c0aae4ca3) |
| Vault | vault_pool | vault_pool | likely in scope | [0xd4cd16...baac](https://basescan.org/address/0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AnzenLayerZeroAdapter | adapter | adapter | unmatched | [0xdd2161...d58e](https://arbiscan.io/address/0xdd216101d84d513a12cb7bfb109f7abcf330d58e) |
| AnzenLayerZeroAdapter | adapter | adapter | unmatched | [0xe563ec...ac32](https://arbiscan.io/address/0xe563eccd6790a42f9872e6a94b173810cfddac32) |
| VaultV2 | vault_pool | vault_pool | likely in scope | [0x73d23f...a7e4](https://arbiscan.io/address/0x73d23f3778a90be8846e172354a115543df2a7e4) |
| unnamed | unknown | unknown | unmatched | [0x1b2c29...879d](https://arbiscan.io/address/0x1b2c29e3897b8f9170c98440a483e90e715c879d) |
| unnamed | unknown | unknown | unmatched | [0x501860...b94f](https://arbiscan.io/address/0x5018609ab477cc502e170a5accf5312b86a4b94f) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ChildUSDzV2 | core | core | audited (TP) | [0x52056e...e8c6](https://blastscan.io/address/0x52056ed29fe015f4ba2e3b079d10c0b87f46e8c6) |
| SafeProxy | proxy | proxy | unmatched | [0x08fccc...b354](https://blastscan.io/address/0x08fccc6213cb3843f8d270c4eefc7a09eb32b354) |
| VaultV2 | vault_pool | vault_pool | likely in scope | [0xf3588e...fe09](https://blastscan.io/address/0xf3588ea537b66ea59e9a0b0337abbd39d00cfe09) |
| unnamed | unknown | unknown | unmatched | [0x5a1b8c...a129](https://blastscan.io/address/0x5a1b8c0e9fe27b9db4913df6b361dea5e96ea129) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 3 proxies on 1, 8453. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x82e099...3337, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 24 | 3 | 21 | 12.5% |
| **Total** | 24 | 3 | 21 | 12.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-05-21 | Zellic | Anzen Finance Smart Contract Security Assessment | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/Anzen%20Finance%20-%20Zellic%20Audit%20Report.pdf) |
| unknown | discovery-ingest-placeholder | Gudchain%20 %20Smart%20Contract%20Audit%20Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FgekUuU3OoggR8PP1p0A5%2FAnzen%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=4037cc27-8b1d-46e0-81f2-b4d414dd1cc7](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FgekUuU3OoggR8PP1p0A5%2FAnzen%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=4037cc27-8b1d-46e0-81f2-b4d414dd1cc7) - audit_report_link
- [https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FkzYadNTHkZGdzuF8PTzj%2FAnzen%20-%20PeckShield%20Audit%20Report.pdf?alt=media&token=66a47e49-7581-48db-9290-a1b2b3c4e169](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FkzYadNTHkZGdzuF8PTzj%2FAnzen%20-%20PeckShield%20Audit%20Report.pdf?alt=media&token=66a47e49-7581-48db-9290-a1b2b3c4e169) - audit_report_link
- [https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FNcAASiVYTOLTj4qZjNKO%2FAnzen%20-%20Halborn%20Audit%20Report.pdf?alt=media&token=0359c056-deb1-4527-baa4-84e064d52374](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FNcAASiVYTOLTj4qZjNKO%2FAnzen%20-%20Halborn%20Audit%20Report.pdf?alt=media&token=0359c056-deb1-4527-baa4-84e064d52374) - audit_report_link
- [https://cdn.gudchain.com/documents/Gudchain%20-%20Smart%20Contract%20Audit%20Report.pdf](https://cdn.gudchain.com/documents/Gudchain%20-%20Smart%20Contract%20Audit%20Report.pdf) - audit_report_link
- [https://docs.anzen.finance/developer-resources/audits.md](https://docs.anzen.finance/developer-resources/audits.md) - audit_report_link
- [https://docs.anzen.finance/files/46jp0x8PzsHJNqVYWltO](https://docs.anzen.finance/files/46jp0x8PzsHJNqVYWltO) - audit_report_link
- [https://docs.anzen.finance/files/b1xdAFgekSBRJ8B5O6JB](https://docs.anzen.finance/files/b1xdAFgekSBRJ8B5O6JB) - audit_report_link
- [https://docs.anzen.finance/files/BCOy9JZD16rUU5QoYwy6](https://docs.anzen.finance/files/BCOy9JZD16rUU5QoYwy6) - audit_report_link
- [https://docs.anzen.finance/files/bmOY5SaRY2FyuN5fJEuo](https://docs.anzen.finance/files/bmOY5SaRY2FyuN5fJEuo) - audit_report_link
- [https://docs.anzen.finance/files/BRWeE2LMZmYBV2ufTUjT](https://docs.anzen.finance/files/BRWeE2LMZmYBV2ufTUjT) - audit_report_link
- [https://docs.anzen.finance/files/BUuD8NzpvCGmvaRdVlVH](https://docs.anzen.finance/files/BUuD8NzpvCGmvaRdVlVH) - audit_report_link
- [https://docs.anzen.finance/files/kXoNgzgIWGGMDqQOR4SS](https://docs.anzen.finance/files/kXoNgzgIWGGMDqQOR4SS) - audit_report_link
- [https://docs.anzen.finance/files/NYaAl9aE9WfEOo4ex6gw](https://docs.anzen.finance/files/NYaAl9aE9WfEOo4ex6gw) - audit_report_link
- [https://docs.anzen.finance/files/pXS3tXdvAqBukYLgAvBT](https://docs.anzen.finance/files/pXS3tXdvAqBukYLgAvBT) - audit_report_link
- [https://docs.anzen.finance/files/s30oBXc49fGMQG3NLGdk](https://docs.anzen.finance/files/s30oBXc49fGMQG3NLGdk) - audit_report_link
- [https://docs.anzen.finance/files/tyJgEVYiOzDvpTSRfN4Y](https://docs.anzen.finance/files/tyJgEVYiOzDvpTSRfN4Y) - audit_report_link
- [https://docs.anzen.finance/files/XDvZi4eP0tSZs7JGnXs1](https://docs.anzen.finance/files/XDvZi4eP0tSZs7JGnXs1) - audit_report_link
- [https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing](https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing) - audit_report_link
- [https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Anzen-Finance/audits/blob/master/README.md](https://github.com/Anzen-Finance/audits/blob/master/README.md) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Anzen%2520and%2520protocol-v2%2520-%2520Zellic%2520Audit%2520Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%2520and%2520protocol-v2%2520-%2520Zellic%2520Audit%2520Report.pdf) - audit_report_link
- [https://www.zellic.io/services](https://www.zellic.io/services) - audit_report_link

### Audit Reports (full list)

- 2024-05-21 - Zellic - Anzen Finance Smart Contract Security Assessment - https://github.com/Zellic/publications/blob/master/Anzen%20Finance%20-%20Zellic%20Audit%20Report.pdf
- unknown - discovery-ingest-placeholder - Gudchain%20 %20Smart%20Contract%20Audit%20Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/anzen-finance.json
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
- **Per-contract TVL:** not persisted; protocol-level TVL only.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:41:54.835Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
