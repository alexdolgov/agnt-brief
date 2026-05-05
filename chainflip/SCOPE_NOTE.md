# Agentic Brief: Chainflip

## Project Overview

- **Project:** Chainflip (chainflip)
- **Website:** chainflip.io
- **Category:** Dexs
- **Chains (topography):** 1, 42161
- **Chains (DeFiLlama):** 1
- **TVL:** $23,516,634 (2 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2025-01-27
- **Audit history:** 6 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

Chainflip has 25 deployed contract rows in current topography. This brief renders the 22 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 22 contracts across 2 chains. 2 have TP audit coverage (9.1%); 20 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressChecker | core | core | unmatched | [0x79001a...8920](https://etherscan.io/address/0x79001a5e762f3befc8e5871b42f6734e00498920) |
| FLIP | core | core | unmatched | [0x826180...678a](https://etherscan.io/address/0x826180541412d574cf1336d22c0c0a287822678a) |
| KeyManager | controller | controller | audited (TP) | [0xcd351d...08be](https://etherscan.io/address/0xcd351d3626dc244730796a3168d315168ebf08be) |
| StateChainGateway | core | core | unmatched | [0x6995ab...1dbd](https://etherscan.io/address/0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd) |
| Vault | vault_pool | vault_pool | likely in scope | [0xf5e103...2bcc](https://etherscan.io/address/0xf5e10380213880111522dd0efd3dbb45b9f62bcc) |
| WBTC | core | core | excluded (external) | [0x2260fa...c599](https://etherscan.io/address/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599) |
| unnamed | unknown | unknown | unmatched | [0x18195b...32fd](https://etherscan.io/address/0x18195b0e3c33eef3ca6423b1828e0fe0c03f32fd) |
| unnamed | unknown | unknown | unmatched | [0x1c7d4b...7238](https://etherscan.io/address/0x1c7d4b196cb0c7b01d743fbc6116a902379c7238) |
| unnamed | unknown | unknown | unmatched | [0x27cea6...f584](https://etherscan.io/address/0x27cea6eb8a21aae05eb29c91c5ca10592892f584) |
| unnamed | unknown | unknown | unmatched | [0x2bb150...27e3](https://etherscan.io/address/0x2bb150e6d4366a1bdbc4275d1f35892cd63f27e3) |
| unnamed | unknown | unknown | unmatched | [0x36ead7...1753](https://etherscan.io/address/0x36ead71325604dc15d35fae584d7b50646d81753) |
| unnamed | unknown | unknown | unmatched | [0x3dd1a7...35cb](https://etherscan.io/address/0x3dd1a7a99cfa2554da8b3483e6ed739120fc35cb) |
| unnamed | unknown | unknown | unmatched | [0x4981b1...9dff](https://etherscan.io/address/0x4981b1329f29e720642266fc6e172c3f78159dff) |
| unnamed | unknown | unknown | unmatched | [0x4f358e...ccf8](https://etherscan.io/address/0x4f358ec5bd58c994f74b317554d7472769a0ccf8) |
| unnamed | unknown | unknown | unmatched | [0x58eacd...f846](https://etherscan.io/address/0x58eacd5a40eebcbbcb660f178f9a46b1ad63f846) |
| unnamed | unknown | unknown | unmatched | [0x75faf1...aa4d](https://etherscan.io/address/0x75faf114eafb1bdbe2f0316df893fd58ce46aa4d) |
| unnamed | unknown | unknown | unmatched | [0xa34a96...d099](https://etherscan.io/address/0xa34a967197ee90bb7fb28e928388a573c5cfd099) |
| unnamed | unknown | unknown | unmatched | [0xaaf48b...9b49](https://etherscan.io/address/0xaaf48bd21155efeff9ca3699659c96bc86539b49) |
| unnamed | unknown | unknown | unmatched | [0xdc27c6...8086](https://etherscan.io/address/0xdc27c60956cb065d19f08bb69a707e37b36d8086) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressChecker | core | core | unmatched | [0xc1b129...5481](https://arbiscan.io/address/0xc1b12993f760b654897f0257573202fba13d5481) |
| KeyManager | controller | controller | audited (TP) | [0xbfe612...0275](https://arbiscan.io/address/0xbfe612c77c2807ac5a6a41f84436287578000275) |
| Vault | vault_pool | vault_pool | likely in scope | [0x79001a...8920](https://arbiscan.io/address/0x79001a5e762f3befc8e5871b42f6734e00498920) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x2ba937...61ec. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 22 | 2 | 20 | 9.1% |
| **Total** | 22 | 2 | 20 | 9.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-12-08 | Zellic | Chainflip Backend Substrate Pallet Security Assessment | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/Chainflip%20Backend%20-%20Zellic%20Audit%20Report.pdf) |
| 2022-08-31 | ABDK Consulting | We’ve been asked to review updates to 19 files in a GitHub repo. | unspecified | direct | [report](https://github.com/abdk-consulting/audits/blob/main/chainflip/ABDK_Chainflip_ChainFlip_v_2_0.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

1 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf) - audit_report_link
- [https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) - audit_report_link
- [https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf) - audit_report_link
- [https://github.com/chainflip-io/chainflip-backend/blob/main/SECURITY.md](https://github.com/chainflip-io/chainflip-backend/blob/main/SECURITY.md) - audit_report_link
- [https://github.com/chainflip-io/chainflip-backend/commits/main/audits/2023-04-TrailOfBits-securityreview.pdf](https://github.com/chainflip-io/chainflip-backend/commits/main/audits/2023-04-TrailOfBits-securityreview.pdf) - audit_report_link
- [https://github.com/chainflip-io/chainflip-backend/commits/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/commits/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) - audit_report_link
- [https://github.com/chainflip-io/chainflip-backend/commits/main/audits/Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/commits/main/audits/Multisig-Kudelski-Q1-2022.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-04-chainflip-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-chainflip-securityreview.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Chainflip%20Backend%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Chainflip%20Backend%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Chainflip%20Solana%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Chainflip%20Solana%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2023-12-08 - Zellic - Chainflip Backend Substrate Pallet Security Assessment - https://github.com/Zellic/publications/blob/master/Chainflip%20Backend%20-%20Zellic%20Audit%20Report.pdf
- 2022-08-31 - ABDK Consulting - We’ve been asked to review updates to 19 files in a GitHub repo. - https://github.com/abdk-consulting/audits/blob/main/chainflip/ABDK_Chainflip_ChainFlip_v_2_0.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/chainflip.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $14,625,519.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:41:00.997Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $14,625,519.
