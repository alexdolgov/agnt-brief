# Agentic Brief: Extra Finance Leverage Farming

## Project Overview

- **Project:** Extra Finance Leverage Farming (extra-finance)
- **Website:** extrafi.io
- **Category:** Leveraged Farming
- **Chains (topography):** 10, 8453
- **Chains (DeFiLlama):** 10, 8453, 80094
- **TVL:** $87,799,239 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Extra Finance Leverage Farming has 5 deployed contract rows in current topography. This brief renders the 5 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 5 contracts across 2 chains. 2 have TP audit coverage (40.0%); 3 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| LendingPool | vault_pool | vault_pool | audited (TP) | [0xbb505c...1cbd](https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) |
| RewardDistributor | rewards | rewards | unmatched | [0xb7d861...322a](https://optimistic.etherscan.io/address/0xb7d8613728efcfbb18bcd63deec06f64441d322a) |
| VeloPositionManager | controller | controller | audited (TP) | [0xf9cfb8...7055](https://optimistic.etherscan.io/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) |
| VeToken | token | token | unmatched | [0xe0bec4...1466](https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| EXTRAoft | core | core | unmatched | [0x2dad3a...38f8](https://basescan.org/address/0x2dad3a13ef0c6366220f989157009e501e7938f8) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

No proxy or upgrade architecture detected.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 5 | 2 | 3 | 40.0% |
| **Total** | 5 | 2 | 3 | 40.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-12-01 | Sherlock | 2024.12.01 - Final - Extra Finance Audit Report | unspecified | direct | not available |
| unknown | BlockSec | spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FuBnl6CYbGImtkx9N9iDP%2Fblocksec extrafinance v1.0 signed | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FcuHasqCbUeVSTz53smRl%2FPeckShield-Audit-Report-ExtraFi-v1.0.pdf?alt=media&token=016c515c-edef-420c-a64a-3ab7e203aa5c](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FcuHasqCbUeVSTz53smRl%2FPeckShield-Audit-Report-ExtraFi-v1.0.pdf?alt=media&token=016c515c-edef-420c-a64a-3ab7e203aa5c) - audit_report_link
- [https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2Fk1NX1zcl5i5vFn9IMMl9%2FExtra%20Finance%20Audit%20Report.pdf?alt=media&token=8e2af1b7-5612-459f-9348-e0236fbc0f5a](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2Fk1NX1zcl5i5vFn9IMMl9%2FExtra%20Finance%20Audit%20Report.pdf?alt=media&token=8e2af1b7-5612-459f-9348-e0236fbc0f5a) - audit_report_link
- [https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FuBnl6CYbGImtkx9N9iDP%2Fblocksec_extrafinance_v1.0-signed.pdf?alt=media&token=f36ff695-dd9b-48ac-bce3-74d6a506e893](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FuBnl6CYbGImtkx9N9iDP%2Fblocksec_extrafinance_v1.0-signed.pdf?alt=media&token=f36ff695-dd9b-48ac-bce3-74d6a506e893) - audit_report_link
- [https://docs.extrafi.io/extra_finance](https://docs.extrafi.io/extra_finance) - audit_report_link
- [https://docs.extrafi.io/extra_finance/academy](https://docs.extrafi.io/extra_finance/academy) - audit_report_link
- [https://docs.extrafi.io/extra_finance/audits-and-security](https://docs.extrafi.io/extra_finance/audits-and-security) - audit_report_link
- [https://docs.extrafi.io/extra_finance/audits-and-security.md](https://docs.extrafi.io/extra_finance/audits-and-security.md) - audit_report_link
- [https://docs.extrafi.io/extra_finance/bridge-extra](https://docs.extrafi.io/extra_finance/bridge-extra) - audit_report_link
- [https://docs.extrafi.io/extra_finance/contracts-and-transparency](https://docs.extrafi.io/extra_finance/contracts-and-transparency) - audit_report_link
- [https://docs.extrafi.io/extra_finance/faq](https://docs.extrafi.io/extra_finance/faq) - audit_report_link
- [https://docs.extrafi.io/extra_finance/getting-started](https://docs.extrafi.io/extra_finance/getting-started) - audit_report_link
- [https://docs.extrafi.io/extra_finance/getting-started/safe-multi-sig-wallet](https://docs.extrafi.io/extra_finance/getting-started/safe-multi-sig-wallet) - audit_report_link
- [https://docs.extrafi.io/extra_finance/lending/how-to-use](https://docs.extrafi.io/extra_finance/lending/how-to-use) - audit_report_link
- [https://docs.extrafi.io/extra_finance/lending/interest-rate-model](https://docs.extrafi.io/extra_finance/lending/interest-rate-model) - audit_report_link
- [https://docs.extrafi.io/extra_finance/lending/introduction-to-lending](https://docs.extrafi.io/extra_finance/lending/introduction-to-lending) - audit_report_link
- [https://docs.extrafi.io/extra_finance/lending/pseudo-fixed-interest-rate-model](https://docs.extrafi.io/extra_finance/lending/pseudo-fixed-interest-rate-model) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/how-extra-finance-works](https://docs.extrafi.io/extra_finance/leverage-farming/how-extra-finance-works) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/how-to-use](https://docs.extrafi.io/extra_finance/leverage-farming/how-to-use) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/impermanent-loss](https://docs.extrafi.io/extra_finance/leverage-farming/impermanent-loss) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/introduction-to-leveraged-yield-farming](https://docs.extrafi.io/extra_finance/leverage-farming/introduction-to-leveraged-yield-farming) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/liquidation](https://docs.extrafi.io/extra_finance/leverage-farming/liquidation) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/pool-info](https://docs.extrafi.io/extra_finance/leverage-farming/pool-info) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/price-feed](https://docs.extrafi.io/extra_finance/leverage-farming/price-feed) - audit_report_link
- [https://docs.extrafi.io/extra_finance/leverage-farming/strategy](https://docs.extrafi.io/extra_finance/leverage-farming/strategy) - audit_report_link
- [https://docs.extrafi.io/extra_finance/overview](https://docs.extrafi.io/extra_finance/overview) - audit_report_link
- [https://docs.extrafi.io/extra_finance/resources/brand-assets](https://docs.extrafi.io/extra_finance/resources/brand-assets) - audit_report_link
- [https://drive.google.com/drive/folders/1PaGS9CzehLXhML0C5j2qNUSlQl3s-yFH?usp=drive_link](https://drive.google.com/drive/folders/1PaGS9CzehLXhML0C5j2qNUSlQl3s-yFH?usp=drive_link) - audit_report_link
- [https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.20%20-%20Final%20-%20Napier%20Finance%20-%20LST/LRT%20Integrations%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.20%20-%20Final%20-%20Napier%20Finance%20-%20LST/LRT%20Integrations%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%2520-%2520Final%2520-%2520Extra%2520Finance%2520Audit%2520Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%2520-%2520Final%2520-%2520Extra%2520Finance%2520Audit%2520Report.pdf) - audit_report_link
- [https://immunefi.com/bounty/extrafinance](https://immunefi.com/bounty/extrafinance) - audit_report_link

### Audit Reports (full list)

- 2024-12-01 - Sherlock - 2024.12.01 - Final - Extra Finance Audit Report
- unknown - BlockSec - spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FuBnl6CYbGImtkx9N9iDP%2Fblocksec extrafinance v1.0 signed

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/extra-finance.json
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

- **Generated at:** 2026-05-05T20:38:01.054Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
