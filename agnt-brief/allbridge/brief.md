# Agentic Brief: Allbridge Core

## Project Overview

- **Project:** Allbridge Core (allbridge)
- **Website:** allbridge.io
- **Category:** Bridge
- **Chains (topography):** 1, 10, 56, 137, 146, 8453, 42161, 42220, 43114
- **Chains (DeFiLlama):** 1, 10, 56, 101, 137, 146, 8453, 42161, 42220, 43114
- **TVL:** $231,420,552 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Allbridge Core has 24 deployed contract rows in current topography. This brief renders the 24 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 24 contracts across 9 chains. 1 have TP audit coverage (4.2%); 23 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0x7dbf07...135d](https://etherscan.io/address/0x7dbf07ad92ed4e26d5511b4f285508ebf174135d) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa7062b...7c4d](https://etherscan.io/address/0xa7062bba94c91d565ae33b893ab5dfaf1fc57c4d) |
| Pool | vault_pool | vault_pool | likely in scope | [0xcab34d...abad](https://etherscan.io/address/0xcab34d4d532a9c9929f4f96d239653646351abad) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0x3b96f8...f68f](https://optimistic.etherscan.io/address/0x3b96f88b2b9eb87964b852874d41b633e0f1f68f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb24a05...deea](https://optimistic.etherscan.io/address/0xb24a05d54fcacfe1fc00c59209470d4cafb0deea) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0x731822...9953](https://bscscan.com/address/0x731822532cbc1c7c48462c9e5dc0c04a1ff29953) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8033d5...8b10](https://bscscan.com/address/0x8033d5b454ee4758e4bd1d37a49009c1a81d8b10) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf833af...7811](https://bscscan.com/address/0xf833afa46fcd100e62365a0fdb0734b7c4537811) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0x0394c4...0791](https://polygonscan.com/address/0x0394c4f17738a10096510832beab89a9dd090791) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4c42df...b0a6](https://polygonscan.com/address/0x4c42dfdbb8ad654b42f66e0bd4dbdc71b52eb0a6) |
| Pool | vault_pool | vault_pool | likely in scope | [0x58cc62...37da](https://polygonscan.com/address/0x58cc621c62b0aa9babfae5651202a932279437da) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0xba2fba...94d7](https://sonicscan.org/address/0xba2fba24b0dd81a67bbdd95bb7a9d0336ea094d7) |
| unnamed | unknown | unknown | unmatched | [0xca0dc3...c71f](https://sonicscan.org/address/0xca0dc31bda6b7588590a742b2ae6a4f67b43c71f) |
| unnamed | unknown | unknown | unmatched | [0xd0a1ff...fce1](https://sonicscan.org/address/0xd0a1ff86c2f1c3522f183400fde355f6b3d9fce1) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Bridge | bridge | bridge | audited (TP) | [0x001e3f...def7](https://basescan.org/address/0x001e3f136c2f804854581da55ad7660a2b35def7) |
| Pool | vault_pool | vault_pool | likely in scope | [0xda6bb1...96d5](https://basescan.org/address/0xda6bb1ec3baba68b26bea0508d6f81c9ec5e96d5) |
| unnamed | unknown | unknown | unmatched | [0x1bb428...9752](https://basescan.org/address/0x1bb428a8bfca7eac7dd60eae9f5c434096249752) |
| unnamed | unknown | unknown | unmatched | [0x83d6f8...6466](https://basescan.org/address/0x83d6f864a6b0f16898376b486699aa6321eb6466) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0x2b5e5e...9d6d](https://arbiscan.io/address/0x2b5e5e6008742cd9d139c6add9cac57679c59d6d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x47235c...72c7](https://arbiscan.io/address/0x47235cb71107cc66b12af6f8b8a9260ea38472c7) |
| Pool | vault_pool | vault_pool | likely in scope | [0x690e66...21df](https://arbiscan.io/address/0x690e66fc0f8be8964d40e55ede6aebdfcb8a21df) |

### celo (chain_id 42220)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0xfb2c7c...b5af](https://celoscan.io/address/0xfb2c7c10e731ebe96dabdf4a96d656bfe8e2b5af) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Pool | vault_pool | vault_pool | likely in scope | [0x2d2f46...5784](https://snowtrace.io/address/0x2d2f460d7a1e7a4fcc4ddab599451480728b5784) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe82735...ec9f](https://snowtrace.io/address/0xe827352a0552ffc835c181ab5bf1d7794038ec9f) |

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
| No provenance | 24 | 1 | 23 | 4.2% |
| **Total** | 24 | 1 | 23 | 4.2% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | CoinFabrik | The audited files are from the git repository located at https://github.com/allbridge-io/bridge-stac | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | allbridge public audit contest report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://allbridge.io/assets/docs/reports/24-01-1500-REP-Allbridge%20Soroban%20Bridge-v1.2.pdf](https://allbridge.io/assets/docs/reports/24-01-1500-REP-Allbridge%20Soroban%20Bridge-v1.2.pdf) - audit_report_link
- [https://allbridge.io/assets/docs/reports/24-03-1573-REP-Allbridge-Estrela-Review-V1.1.pdf](https://allbridge.io/assets/docs/reports/24-03-1573-REP-Allbridge-Estrela-Review-V1.1.pdf) - audit_report_link
- [https://allbridge.io/assets/docs/reports/25-01-1969-REP-V1.1-allbridge-estrela-delta-audit.pdf](https://allbridge.io/assets/docs/reports/25-01-1969-REP-V1.1-allbridge-estrela-delta-audit.pdf) - audit_report_link
- [https://allbridge.io/assets/docs/reports/allbridge-public-audit-contest-report.pdf](https://allbridge.io/assets/docs/reports/allbridge-public-audit-contest-report.pdf) - audit_report_link
- [https://docs.allbridge.io/%3Chttps://bit.ly/3bEl76a&](https://docs.allbridge.io/%3Chttps://bit.ly/3bEl76a&) - audit_report_link
- [https://docs.allbridge.io/allbridge-overview/ecosystem-reports.md](https://docs.allbridge.io/allbridge-overview/ecosystem-reports.md) - audit_report_link
- [https://docs.allbridge.io/allbridge-overview/reports](https://docs.allbridge.io/allbridge-overview/reports) - audit_report_link
- [https://docs.allbridge.io/allbridge-overview/security.md](https://docs.allbridge.io/allbridge-overview/security.md) - audit_report_link
- [https://drive.google.com/file/d/1_X2r4QpoWlOFax3fZGy8X1IEphWNqU9-/view](https://drive.google.com/file/d/1_X2r4QpoWlOFax3fZGy8X1IEphWNqU9-/view) - audit_report_link
- [https://drive.google.com/file/d/14Dszas99WLgrVRXzgQ79rhtZLI1PU5VT/view?usp=sharing](https://drive.google.com/file/d/14Dszas99WLgrVRXzgQ79rhtZLI1PU5VT/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/17lbyLEA5scVkpW3c4eyiGfiUnd8IHUwg/view](https://drive.google.com/file/d/17lbyLEA5scVkpW3c4eyiGfiUnd8IHUwg/view) - audit_report_link
- [https://drive.google.com/file/d/19LOGJ2cvh8ymeFpUFiiV3JP1I1epv0ch/view](https://drive.google.com/file/d/19LOGJ2cvh8ymeFpUFiiV3JP1I1epv0ch/view) - audit_report_link
- [https://drive.google.com/file/d/1aPr2yb-MUVIh6DD7F6d3eU2R41_TIWjp/view](https://drive.google.com/file/d/1aPr2yb-MUVIh6DD7F6d3eU2R41_TIWjp/view) - audit_report_link
- [https://drive.google.com/file/d/1asIGjDM8sBcI4xr15uiDgBuL4R4OsXka/view](https://drive.google.com/file/d/1asIGjDM8sBcI4xr15uiDgBuL4R4OsXka/view) - audit_report_link
- [https://drive.google.com/file/d/1bQLQ9tabTu7zQTYlgER_4mJVirHvdoC-/view](https://drive.google.com/file/d/1bQLQ9tabTu7zQTYlgER_4mJVirHvdoC-/view) - audit_report_link
- [https://drive.google.com/file/d/1BuVUx0O0z8sVYiTxMzGOUU2DFkiWKJPT/view](https://drive.google.com/file/d/1BuVUx0O0z8sVYiTxMzGOUU2DFkiWKJPT/view) - audit_report_link
- [https://drive.google.com/file/d/1BXMBzh_sSZzGIEa9y5oBWl8MHT6cYuD_/view](https://drive.google.com/file/d/1BXMBzh_sSZzGIEa9y5oBWl8MHT6cYuD_/view) - audit_report_link
- [https://drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view](https://drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view) - audit_report_link
- [https://drive.google.com/file/d/1e09doc8JXEB3Y9M4QOo9c8Uk4aefkJ8Y/view](https://drive.google.com/file/d/1e09doc8JXEB3Y9M4QOo9c8Uk4aefkJ8Y/view) - audit_report_link
- [https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) - audit_report_link
- [https://drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view](https://drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view) - audit_report_link
- [https://drive.google.com/file/d/1Hlr270j5VkrCiW-0SEA02IvJGleCy6P4/view](https://drive.google.com/file/d/1Hlr270j5VkrCiW-0SEA02IvJGleCy6P4/view) - audit_report_link
- [https://drive.google.com/file/d/1IJ_A0gByOrhlCE3_1N8NlATjXIYFQpUf/view](https://drive.google.com/file/d/1IJ_A0gByOrhlCE3_1N8NlATjXIYFQpUf/view) - audit_report_link
- [https://drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view](https://drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view) - audit_report_link
- [https://drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view](https://drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view) - audit_report_link
- [https://drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view](https://drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view) - audit_report_link
- [https://drive.google.com/file/d/1l5XMZSRNAtPOkwVWeG77KRL1a-4azXb9/view](https://drive.google.com/file/d/1l5XMZSRNAtPOkwVWeG77KRL1a-4azXb9/view) - audit_report_link
- [https://drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view](https://drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view) - audit_report_link
- [https://drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view](https://drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view) - audit_report_link
- [https://drive.google.com/file/d/1mXVSesTrv8nOrgDPMf-gCvqmP4eY34Jm/view](https://drive.google.com/file/d/1mXVSesTrv8nOrgDPMf-gCvqmP4eY34Jm/view) - audit_report_link
- [https://drive.google.com/file/d/1N_1alLXnSnJdDDyUwslnI3_AMpGkXoS4/view](https://drive.google.com/file/d/1N_1alLXnSnJdDDyUwslnI3_AMpGkXoS4/view) - audit_report_link
- [https://drive.google.com/file/d/1n5MEGD7XKTEvai5Yt9yM-e2CVCwQ21aI/view](https://drive.google.com/file/d/1n5MEGD7XKTEvai5Yt9yM-e2CVCwQ21aI/view) - audit_report_link
- [https://drive.google.com/file/d/1PEWA7Lx2xe8KlvyOznWFLYfrR-45wW2W/view](https://drive.google.com/file/d/1PEWA7Lx2xe8KlvyOznWFLYfrR-45wW2W/view) - audit_report_link
- [https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view?usp=sharing](https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1QjRoEriFBov3a8CXZesRzYJxymUoFgu_/view](https://drive.google.com/file/d/1QjRoEriFBov3a8CXZesRzYJxymUoFgu_/view) - audit_report_link
- [https://drive.google.com/file/d/1QsjTXqsl8JOhV22J2mQJlmuSREwq84GO/view](https://drive.google.com/file/d/1QsjTXqsl8JOhV22J2mQJlmuSREwq84GO/view) - audit_report_link
- [https://drive.google.com/file/d/1ruRle8tuysuY4I0DN9D0b-bciNdxuQI0/view](https://drive.google.com/file/d/1ruRle8tuysuY4I0DN9D0b-bciNdxuQI0/view) - audit_report_link
- [https://drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view](https://drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view) - audit_report_link
- [https://drive.google.com/file/d/1TtPYmE5kwEpcLjChlDZDjicrxpJ8qOeM/view](https://drive.google.com/file/d/1TtPYmE5kwEpcLjChlDZDjicrxpJ8qOeM/view) - audit_report_link
- [https://drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view](https://drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view) - audit_report_link
- [https://drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view](https://drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view) - audit_report_link
- [https://drive.google.com/file/d/1VMGz8sGGp2uKWJ6GqEdDVQovsyc19BWY/view](https://drive.google.com/file/d/1VMGz8sGGp2uKWJ6GqEdDVQovsyc19BWY/view) - audit_report_link
- [https://drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view](https://drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view) - audit_report_link
- [https://drive.google.com/file/d/1z8QJmz9XxwMEQfGUpiBCOCuA2JWiDZB5/view](https://drive.google.com/file/d/1z8QJmz9XxwMEQfGUpiBCOCuA2JWiDZB5/view) - audit_report_link
- [https://drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view](https://drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view) - audit_report_link
- [https://drive.google.com/file/u/2/d/17bBA6ZqYCrnf-EaV1cxRo_BgKbjyjucS/view?usp=sharing](https://drive.google.com/file/u/2/d/17bBA6ZqYCrnf-EaV1cxRo_BgKbjyjucS/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/u/2/d/1aPkm2N5OCSmTrFSSadhS06CWMyu66oSm/view?usp=sharing](https://drive.google.com/file/u/2/d/1aPkm2N5OCSmTrFSSadhS06CWMyu66oSm/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/u/2/d/1CJa2cWyMwU2AMvsOBIx6fKb6UQYphjiR/view?usp=sharing](https://drive.google.com/file/u/2/d/1CJa2cWyMwU2AMvsOBIx6fKb6UQYphjiR/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/u/2/d/1e5UeUZKtEvHyW5UQO80fgbzWELVtKRYE/view?usp=sharing](https://drive.google.com/file/u/2/d/1e5UeUZKtEvHyW5UQO80fgbzWELVtKRYE/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/u/2/d/1oNRq0H62ih1cEkBUJa2Vg8JsqeZRTj3f/view?usp=sharing](https://drive.google.com/file/u/2/d/1oNRq0H62ih1cEkBUJa2Vg8JsqeZRTj3f/view?usp=sharing) - audit_report_link

### Audit Reports (full list)

- unknown - CoinFabrik - The audited files are from the git repository located at https://github.com/allbridge-io/bridge-stacks-contract-public. The audit is based on the commit cad07c5e1f46ce17f6bd3eee2bf268a4be58f85f. The fixes were checked on commit 21470cfd5aa70088a9bcbe8b281b8fab37c89b25
- unknown - discovery-ingest-placeholder - allbridge public audit contest report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/allbridge.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $12,078,756.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:38:48.504Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $12,078,756.
