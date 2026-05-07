# Agentic Brief: Decentralized Euro

## Project Overview

- **Project:** Decentralized Euro (decentralized-euro)
- **Website:** deuro.com
- **Category:** CDP
- **Chains (topography):** 1, 10, 137, 8453, 42161
- **Chains (DeFiLlama):** 1
- **TVL:** $1,985,302 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Decentralized Euro has 43 deployed contract rows in current topography. This brief renders the 41 rows present in scope-match run recovery-full-v6-post-filter-2026-05-05-303d7be6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 41 contracts across 5 chains. 17 have TP audit coverage (41.5%); 24 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0xc581b7...e491](https://etherscan.io/address/0xc581b735a1688071a1746c968e0798d642ede491) |
| CoinLendingGateway | vault_pool | vault_pool | unmatched | [0x1da37d...89d2](https://etherscan.io/address/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2) |
| DecentralizedEURO | core | core | audited (TP) | [0xba3f53...a3ea](https://etherscan.io/address/0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea) |
| DEPSWrapper | core | core | audited (TP) | [0x103747...a380](https://etherscan.io/address/0x103747924e74708139a9400e4ab4bea79fffa380) |
| Equity | core | core | audited (TP) | [0xc71104...8ee6](https://etherscan.io/address/0xc71104001a3ccda1bef1177d765831bd1bfe8ee6) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x888883...5e51](https://etherscan.io/address/0x888883b5f5d21fb10dfeb70e8f9722b9fb0e5e51) |
| EUR | core | core | unmatched | [0x3231cb...273f](https://etherscan.io/address/0x3231cb76718cdef2155fc47b5286d82e6eda273f) |
| EUROPToken | token | token | unmatched | [0xfbdaf9...ff43](https://etherscan.io/address/0xfbdaf9745da69f927bc14bd73860ffdba82cff43) |
| EURSToken | token | token | unmatched | [0x25d772...04ac](https://etherscan.io/address/0x25d772b21b0e5197f2dc8169e3aa976b16be04ac) |
| EURSToken | token | token | unmatched | [0xdb25f2...7ad8](https://etherscan.io/address/0xdb25f211ab05b1c97d595516f45794528a807ad8) |
| FrontendGateway | core | core | unmatched | [0x5c49c0...0994](https://etherscan.io/address/0x5c49c00f897bd970d964bfb8c3065ae65a180994) |
| HadronToken | token | token | unmatched | [0x8b98bc...4d0e](https://etherscan.io/address/0x8b98bcd9b1f8ae112fb2b58b45c3bc9a75cc4d0e) |
| MintingHub | core | core | audited (TP) | [0x66acc5...4f7b](https://etherscan.io/address/0x66acc54a0c64255137b8993cb4972b0901684f7b) |
| MintingHubGateway | core | core | unmatched | [0x8b3c41...4618](https://etherscan.io/address/0x8b3c41c649b9c7085c171cbb82337889b3604618) |
| PositionFactory | factory | factory | audited (TP) | [0x167144...e5a8](https://etherscan.io/address/0x167144d66ac1d02eaafca3649ef3305ea31ee5a8) |
| PositionFactory | factory | factory | audited (TP) | [0x3a3985...fe81](https://etherscan.io/address/0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81) |
| PositionRoller | core | core | audited (TP) | [0x4ce0ab...dc79](https://etherscan.io/address/0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79) |
| PositionRoller | core | core | audited (TP) | [0x5c22d5...c5cd](https://etherscan.io/address/0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd) |
| Savings | core | core | audited (TP) | [0x760233...d3d9](https://etherscan.io/address/0x760233b90e45d186a9a98e911b115f7f4b90d3d9) |
| SavingsGateway | core | core | unmatched | [0x073493...2303](https://etherscan.io/address/0x073493d73258c4beb6542e8dd3e1b2891c972303) |
| SavingsVaultDEURO | vault_pool | vault_pool | unmatched | [0x1e9f00...fa40](https://etherscan.io/address/0x1e9f008b1c538be32f190516735bf1c634b4fa40) |
| SavingsVaultDEURO | vault_pool | vault_pool | unmatched | [0x75beb3...2979](https://etherscan.io/address/0x75beb37a3c86ee4c38931e2a9319e078da612979) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0x05620f...1702](https://etherscan.io/address/0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0x20b0a1...f1a7](https://etherscan.io/address/0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0x2353d1...609f](https://etherscan.io/address/0x2353d16869f717bfcd22dabc0adbf4dca62c609f) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0x3ef3d0...0341](https://etherscan.io/address/0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0x4dfd46...13b1](https://etherscan.io/address/0x4dfd460d54854087af195906a2f260aa483a13b1) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0x73f38c...5897](https://etherscan.io/address/0x73f38ca06b27eaefb1612d062d885f58924f5897) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0xb4ff74...2fd1](https://etherscan.io/address/0xb4ff7412f08c22d7381885e8bda9ee9825092fd1) |
| StablecoinBridge | bridge | bridge | audited (TP) | [0xb66a40...9afe](https://etherscan.io/address/0xb66a40934a996373fa7602de9820c6bf3e8c9afe) |
| TetherToken | token | token | unmatched | [0xe6a2c1...47a1](https://etherscan.io/address/0xe6a2c1642455ce65d07abb417a461c6e1bed47a1) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x50753c...e408](https://etherscan.io/address/0x50753cfaf86c094925bf976f218d043f8791e408) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6ba75d...b5d3](https://etherscan.io/address/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x9d1a7a...bae7](https://etherscan.io/address/0x9d1a7a3191102e9f900faa10540837ba84dcbae7) |
| unnamed | unknown | unknown | unmatched | [0x76d8f5...692b](https://etherscan.io/address/0x76d8f514554a4a8e5d6103875f2dd7a67543692b) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgedDecentralizedEURO | bridge | bridge | likely in scope | [0x1b5f7f...a264](https://optimistic.etherscan.io/address/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| UChildERC20Proxy | proxy | proxy | unmatched | [0x9d74de...cacb](https://polygonscan.com/address/0x9d74de101e2a54ad42198f37bdcce0a0160acacb) |
| UChildERC20Proxy | proxy | proxy | unmatched | [0xc2ff25...4e47](https://polygonscan.com/address/0xc2ff25dd99e467d2589b2c26edd270f220f14e47) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgedDecentralizedEURO | bridge | bridge | likely in scope | [0x1b5f7f...a264](https://basescan.org/address/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264) |
| BridgedDEPS | bridge | bridge | likely in scope | [0x5f674b...2722](https://basescan.org/address/0x5f674bf6d559229bdd29d642d2e0978f1e282722) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ClonableBeaconProxy | proxy | proxy | unmatched | [0x5e85fa...d537](https://arbiscan.io/address/0x5e85faf503621830ca857a5f38b982e0cc57d537) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 6 proxies on 1, 137. 3 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 4 distinct deployer addresses: 0x463f64...162f, 0x587342...5de6, 0x7b0c15...9403, 0xe39978...d3c9, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 41 | 17 | 24 | 41.5% |
| **Total** | 41 | 17 | 24 | 41.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | deuro audit report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) - audit_report_link
- [https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) - audit_report_link
- [https://github.com/d-EURO/landingPage/blob/develop/documents/20250407%20_DFX_dEuro_MiCA_Public_Summary_v0.1.pdf](https://github.com/d-EURO/landingPage/blob/develop/documents/20250407%20_DFX_dEuro_MiCA_Public_Summary_v0.1.pdf) - audit_report_link
- [https://github.com/d-EURO/landingPage/blob/develop/documents/20250407%2520_DFX_dEuro_MiCA_Public_Summary_v0.1.pdf](https://github.com/d-EURO/landingPage/blob/develop/documents/20250407%2520_DFX_dEuro_MiCA_Public_Summary_v0.1.pdf) - audit_report_link
- [https://github.com/d-EURO/landingPage/commits/develop/audits/deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/commits/develop/audits/deuro_audit_report.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/papers/edhoc-euros%26P-2023.pdf](https://github.com/trailofbits/publications/blob/master/papers/edhoc-euros%26P-2023.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/papers/potato-eurollvm-poster.pdf](https://github.com/trailofbits/publications/blob/master/papers/potato-eurollvm-poster.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/papers/trailofbits-20220601-are-blockchain-decentralized-whitepaper.pdf](https://github.com/trailofbits/publications/blob/master/papers/trailofbits-20220601-are-blockchain-decentralized-whitepaper.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/papers/vast-eurollvm-poster.pdf](https://github.com/trailofbits/publications/blob/master/papers/vast-eurollvm-poster.pdf) - audit_report_link
- [https://www.chainsecurity.com/reports/DEURO/ChainSecurity_DEURO_DEURO_Audit.pdf](https://www.chainsecurity.com/reports/DEURO/ChainSecurity_DEURO_DEURO_Audit.pdf) - audit_report_link
- [https://www.chainsecurity.com/security-audit/deuro-smart-contracts](https://www.chainsecurity.com/security-audit/deuro-smart-contracts) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - deuro audit report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/decentralized-euro.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $2,351,360.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:45:33.520Z
- **Scope-match run_id:** recovery-full-v6-post-filter-2026-05-05-303d7be6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $2,351,360.
