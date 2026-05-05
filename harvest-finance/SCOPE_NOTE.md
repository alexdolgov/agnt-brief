# Agentic Brief: Harvest Finance

## Project Overview

- **Project:** Harvest Finance (harvest-finance)
- **Website:** harvest.finance
- **Category:** Yield Aggregator
- **Chains (topography):** 1, 56, 137
- **Chains (DeFiLlama):** 1, 137, 324, 8453, 42161
- **TVL:** $60,788,053 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 7 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Harvest Finance has 18 deployed contract rows in current topography. This brief renders the 17 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 17 contracts across 3 chains. 3 have TP audit coverage (17.6%); 14 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| DelayMinter | core | core | audited (TP) | [0x284d72...f61d](https://etherscan.io/address/0x284d7200a0dabb05ee6de698da10d00df164f61d) |
| ExclusiveRewardPool | vault_pool | vault_pool | audited (TP) | [0x8f5adc...436c](https://etherscan.io/address/0x8f5adc58b32d4e5ca02eac0e293d35855999436c) |
| VaultDAI | vault_pool | vault_pool | audited (TP) | [0xe85c85...1dac](https://etherscan.io/address/0xe85c8581e60d7cd32bbfd86303d2a4fa6a951dac) |
| unnamed | unknown | unknown | unmatched | [0x008671...2236](https://etherscan.io/address/0x008671ca953ec3baa8c1b9af4623d38789ee2236) |
| unnamed | unknown | unknown | unmatched | [0x19762b...a57c](https://etherscan.io/address/0x19762b3b0fe9b4d4bd16efa242cd1f3bcd5fa57c) |
| unnamed | unknown | unknown | unmatched | [0x23b6c1...d670](https://etherscan.io/address/0x23b6c1f600111895cc4536d070eb35660500d670) |
| unnamed | unknown | unknown | unmatched | [0x25119c...5e8e](https://etherscan.io/address/0x25119cd54a4562aa427d9770af383512f9cb5e8e) |
| unnamed | unknown | unknown | unmatched | [0x26d3e0...4150](https://etherscan.io/address/0x26d3e02999beffaeb07af3a94438769df0ee4150) |
| unnamed | unknown | unknown | unmatched | [0x4482df...779a](https://etherscan.io/address/0x4482df10258c414853155be260ce4626a645779a) |
| unnamed | unknown | unknown | unmatched | [0x49d711...1c4d](https://etherscan.io/address/0x49d71131396f23f0bce31de80526d7c025981c4d) |
| unnamed | unknown | unknown | unmatched | [0x519acf...220e](https://etherscan.io/address/0x519acf0a0a71f944e2ae573740d399b77d60220e) |
| unnamed | unknown | unknown | unmatched | [0x9b68d4...42a9](https://etherscan.io/address/0x9b68d4559be71702b9b8084d2b410d241b9542a9) |
| unnamed | unknown | unknown | likely in scope | [0xc7ee21...9f2f](https://etherscan.io/address/0xc7ee21406bb581e741fbb8b21f213188433d9f2f) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AnyswapV3ERC20 | router | router | likely in scope | [0x4b5c23...3743](https://bscscan.com/address/0x4b5c23cac08a567ecf0c1ffca8372a45a5d33743) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| UChildERC20Proxy | proxy | proxy | unmatched | [0xab0b2d...bbff](https://polygonscan.com/address/0xab0b2ddb9c7e440fac8e140a89c0dbcbf2d7bbff) |
| unnamed | unknown | unknown | unmatched | [0x1571ed...f651](https://polygonscan.com/address/0x1571ed0bed4d987fe2b498ddbae7dfa19519f651) |
| unnamed | unknown | unknown | unmatched | [0x176f5a...f5b0](https://polygonscan.com/address/0x176f5ab638cf4ff3b6239ba609c3fadaa46ef5b0) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 137. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 17 | 3 | 14 | 17.6% |
| **Total** | 17 | 3 | 14 | 17.6% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Certik | CertiK Harvest | unspecified | direct | not available |
| unknown | Least Authority | LeastAuthority Harvest | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Harvest | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.harvest.finance/other/security/audites](https://docs.harvest.finance/other/security/audites) - audit_report_link
- [https://docs.harvest.finance/other/security/audites.md](https://docs.harvest.finance/other/security/audites.md) - audit_report_link
- [https://github.com/harvest-finance/harvest/blob/master/audits/CertiK-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/CertiK-Harvest.pdf) - audit_report_link
- [https://github.com/harvest-finance/harvest/blob/master/audits/Haechi-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/Haechi-Harvest.pdf) - audit_report_link
- [https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/LeastAuthority-Harvest.pdf) - audit_report_link
- [https://github.com/harvest-finance/harvest/blob/master/audits/PeckShield-Harvest.pdf](https://github.com/harvest-finance/harvest/blob/master/audits/PeckShield-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits](https://github.com/harvestfi/audits) - audit_report_link
- [https://github.com/harvestfi/audits/actions](https://github.com/harvestfi/audits/actions) - audit_report_link
- [https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/CertiK-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/Haechi-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf](https://github.com/harvestfi/audits/blob/main/Halborn-Harvest-2025.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/LeastAuthority-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf](https://github.com/harvestfi/audits/blob/main/PeckShield-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/blob/main/README.md](https://github.com/harvestfi/audits/blob/main/README.md) - audit_report_link
- [https://github.com/harvestfi/audits/commits/main/CertiK-Harvest.pdf](https://github.com/harvestfi/audits/commits/main/CertiK-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/commits/main/Haechi-Harvest.pdf](https://github.com/harvestfi/audits/commits/main/Haechi-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/commits/main/LeastAuthority-Harvest.pdf](https://github.com/harvestfi/audits/commits/main/LeastAuthority-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/commits/main/PeckShield-Harvest.pdf](https://github.com/harvestfi/audits/commits/main/PeckShield-Harvest.pdf) - audit_report_link
- [https://github.com/harvestfi/audits/issues](https://github.com/harvestfi/audits/issues) - audit_report_link
- [https://github.com/harvestfi/audits/projects](https://github.com/harvestfi/audits/projects) - audit_report_link
- [https://github.com/harvestfi/audits/pulls](https://github.com/harvestfi/audits/pulls) - audit_report_link
- [https://github.com/harvestfi/audits/pulse](https://github.com/harvestfi/audits/pulse) - audit_report_link
- [https://github.com/harvestfi/audits/security](https://github.com/harvestfi/audits/security) - audit_report_link
- [https://github.com/harvestfi/audits/tree/main](https://github.com/harvestfi/audits/tree/main) - audit_report_link
- [https://github.com/login?return_to=%2Fharvestfi%2Faudits](https://github.com/login?return_to=%2Fharvestfi%2Faudits) - audit_report_link
- [https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2Fharvestfi%2Faudits%2Fblob%2Fmain%2FHaechi-Harvest.pdf](https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2Fharvestfi%2Faudits%2Fblob%2Fmain%2FHaechi-Harvest.pdf) - audit_report_link
- [https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2Fharvestfi%2Faudits%2Fblob%2Fmain%2FLeastAuthority-Harvest.pdf](https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2Fharvestfi%2Faudits%2Fblob%2Fmain%2FLeastAuthority-Harvest.pdf) - audit_report_link
- [https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2Fharvestfi%2Faudits%2Fblob%2Fmain%2FPeckShield-Harvest.pdf](https://github.com/login?return_to=https%3A%2F%2Fgithub.com%2Fharvestfi%2Faudits%2Fblob%2Fmain%2FPeckShield-Harvest.pdf) - audit_report_link
- [https://github.com/security](https://github.com/security) - audit_report_link
- [https://github.com/security/advanced-security](https://github.com/security/advanced-security) - audit_report_link
- [https://github.com/security/advanced-security/code-security](https://github.com/security/advanced-security/code-security) - audit_report_link
- [https://github.com/security/advanced-security/secret-protection](https://github.com/security/advanced-security/secret-protection) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Certik - CertiK Harvest
- unknown - Least Authority - LeastAuthority Harvest
- unknown - PeckShield - PeckShield Harvest

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/harvest-finance.json
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

- **Generated at:** 2026-05-05T20:40:54.535Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
