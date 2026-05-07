# Agentic Brief: Symbiosis Finance

## Project Overview

- **Project:** Symbiosis Finance (symbiosis)
- **Website:** symbiosis.finance
- **Category:** Cross Chain Bridge
- **Chains (topography):** 56, 42161, 59144
- **Chains (DeFiLlama):** 1, 10, 25, 30, 56, 100, 137, 146, 169, 204, 252, 288, 324, 1088, 1101, 1329, 2222, 5000, 8453, 34443, 42161, 43114, 59144, 80094, 81457, 167000, 534352, 1313161554
- **TVL:** $525,645,687 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 20 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 4 - thin_surface (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

Symbiosis Finance has 4 deployed contract rows in current topography. This brief renders the 3 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 3 contracts across 3 chains. 1 have TP audit coverage (33.3%); 2 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| SyntERC20 | token | token | audited (TP) | [0xf98b66...1835](https://bscscan.com/address/0xf98b660adf2ed7d9d9d9daacc2fb0cace4f21835) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x9e758b...7370](https://arbiscan.io/address/0x9e758b8a98a42d612b3d38b66a22074dc03d7370) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BeaconProxy | proxy | proxy | unmatched | [0x6ef95b...de0d](https://lineascan.build/address/0x6ef95b6f3b0f39508e3e04054be96d5ee39ede0d) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 59144. 0 follow EIP-1967 / UUPS patterns; 1 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x758c35...e134. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 3 | 1 | 2 | 33.3% |
| **Total** | 3 | 1 | 2 | 33.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Zokyo | Symbiosis%20Protocol%20MRv3%20Audit%20 %20Zokyo | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.symbiosis.finance/main-concepts/bug-bounty-program](https://docs.symbiosis.finance/main-concepts/bug-bounty-program) - audit_report_link
- [https://docs.symbiosis.finance/main-concepts/security-audits](https://docs.symbiosis.finance/main-concepts/security-audits) - audit_report_link
- [https://docs.symbiosis.finance/main-concepts/security-audits.md](https://docs.symbiosis.finance/main-concepts/security-audits.md) - audit_report_link
- [https://docs.symbiosis.finance/main-concepts/security-or-symbiosis](https://docs.symbiosis.finance/main-concepts/security-or-symbiosis) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/.gitignore](https://github.com/symbiosis-finance/audits/blob/master/.gitignore) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/README.md](https://github.com/symbiosis-finance/audits/blob/master/README.md) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Near/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Near/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) - audit_report_link
- [https://github.com/symbiosis-finance/audits/tree/master](https://github.com/symbiosis-finance/audits/tree/master) - audit_report_link
- [https://immunefi.com/bounty/symbiosis](https://immunefi.com/bounty/symbiosis) - audit_report_link
- [https://immunefi.com/bounty/symbiosis/](https://immunefi.com/bounty/symbiosis/) - audit_report_link
- [https://www.halborn.com/blog/post/explained-the-wormhole-hack-february-2022](https://www.halborn.com/blog/post/explained-the-wormhole-hack-february-2022) - audit_report_link

### Audit Reports (full list)

- unknown - Zokyo - Symbiosis%20Protocol%20MRv3%20Audit%20 %20Zokyo

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/symbiosis.json
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

- **Generated at:** 2026-05-05T20:41:41.399Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
