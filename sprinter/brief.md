# Agentic Brief: Sprinter

## Project Overview

- **Project:** Sprinter (sprinter)
- **Website:** sprinter.tech
- **Category:** Yield
- **Chains (topography):** 8453
- **Chains (DeFiLlama):** 8453
- **TVL:** $1,688,404 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 7 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Sprinter has 16 deployed contract rows in current topography. This brief renders the 16 rows present in scope-match run recovery-bucket4-sourcify-v1-2026-05-05-b750682f; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 16 contracts across 1 chains. 5 have TP audit coverage (31.3%); 11 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FiatTokenV2_2 | token | token | unmatched | [0x2ce631...d779](https://basescan.org/address/0x2ce6311ddae708829bc0784c967b7d77d19fd779) |
| LiquidityHub | core | core | audited (TP) | [0x6bd380...998b](https://basescan.org/address/0x6bd380415cd045525f284b7c0e8a02030159998b) |
| LiquidityPool | vault_pool | vault_pool | audited (TP) | [0xb58bb9...c032](https://basescan.org/address/0xb58bb9643884abbbad64fa7ebc874c5481e5c032) |
| LiquidityPoolAave | vault_pool | vault_pool | audited (TP) | [0x7c2552...9f4b](https://basescan.org/address/0x7c255279c098fdf6c3116d2becd9978002c09f4b) |
| MetaMorpho | core | core | unmatched | [0xee8f4e...4b61](https://basescan.org/address/0xee8f4ec5672f09119b96ab6fb59c27e1b7e44b61) |
| SprinterLiquidityMining | core | core | audited (TP) | [0x479d15...3c21](https://basescan.org/address/0x479d158959b59328e89f0fbf7dfebb198c313c21) |
| StashCreditHub | core | core | audited (TP) | [0xfd49e0...b2d9](https://basescan.org/address/0xfd49e0b8be013925e0664bc1d525d1ac31b7b2d9) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xa593a9...9ff2](https://basescan.org/address/0xa593a9bbbc65be342ff610a01e96da2eb8539ff2) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb5cf2a...49f6](https://basescan.org/address/0xb5cf2a13e9aae413e780379667274626fa9d49f6) |
| unnamed | unknown | unknown | unmatched | [0x095ea7...ef12](https://basescan.org/address/0x095ea7b3000000000000000000000000abcdef12) |
| unnamed | unknown | unknown | unmatched | [0x123456...5678](https://basescan.org/address/0x1234567890abcdef1234567890abcdef12345678) |
| unnamed | unknown | unknown | unmatched | [0x2e1a7d...0000](https://basescan.org/address/0x2e1a7d4d00000000000000000000000000000000) |
| unnamed | unknown | unknown | unmatched | [0x742d35...bd18](https://basescan.org/address/0x742d35cc6634c0532925a3b844bc9e7595f2bd18) |
| unnamed | unknown | unknown | unmatched | [0x987654...5432](https://basescan.org/address/0x9876543210fedcba9876543210fedcba98765432) |
| unnamed | unknown | unknown | unmatched | [0xa9059c...0000](https://basescan.org/address/0xa9059cbb00000000000000000000000000000000) |
| unnamed | unknown | unknown | unmatched | [0xabcdef...ef12](https://basescan.org/address/0xabcdef1234567890abcdef1234567890abcdef12) |

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
| No provenance | 16 | 5 | 11 | 31.3% |
| **Total** | 16 | 5 | 11 | 31.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | Sprinter%20remote%20collateral%20security%20review%20Cantina%20 %20final | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | VAR Sygma labs Sprinter liquidity 250212 final | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | VAR Sygma labs Sprinter liquidity pool 250304 final | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01](https://cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01) - audit_report_link
- [https://cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58](https://cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58) - audit_report_link
- [https://cantina.xyz/welcome](https://cantina.xyz/welcome) - audit_report_link
- [https://docs.sprinter.tech/resources/audits.md](https://docs.sprinter.tech/resources/audits.md) - audit_report_link
- [https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/cantina_sprinter_may2025.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/cantina_sprinter_may2025.pdf) - audit_report_link
- [https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/Sprinter%20remote%20collateral%20security%20review%20Cantina%20-%20final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/Sprinter%20remote%20collateral%20security%20review%20Cantina%20-%20final.pdf) - audit_report_link
- [https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) - audit_report_link
- [https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - Sprinter%20remote%20collateral%20security%20review%20Cantina%20 %20final
- unknown - discovery-ingest-placeholder - VAR Sygma labs Sprinter liquidity 250212 final
- unknown - discovery-ingest-placeholder - VAR Sygma labs Sprinter liquidity pool 250304 final

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/sprinter.json
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

- **Generated at:** 2026-05-05T20:45:53.445Z
- **Scope-match run_id:** recovery-bucket4-sourcify-v1-2026-05-05-b750682f
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
