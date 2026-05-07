# Agentic Brief: Pickle

## Project Overview

- **Project:** Pickle (pickle)
- **Website:** pickle.finance
- **Category:** Yield Aggregator
- **Chains (topography):** 1, 137, 42161
- **Chains (DeFiLlama):** 1, 10, 25, 137, 1088, 1284, 1285, 2222, 42161, 1313161554, 1666600000
- **TVL:** $52,687,984 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Pickle has 55 deployed contract rows in current topography. This brief renders the 54 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 54 contracts across 3 chains. 2 have TP audit coverage (3.7%); 52 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AlchemixToken | token | token | unmatched | [0xdbdb4d...c8df](https://etherscan.io/address/0xdbdb4d16eda451d0503b854cf79d55697f90c8df) |
| MasterChef | core | core | audited (TP) | [0xbd17b1...4b0d](https://etherscan.io/address/0xbd17b1ce622d73bd438b9e658aca5996dc394b0d) |
| PickleToken | token | token | unmatched | [0x429881...1ca5](https://etherscan.io/address/0x429881672b9ae42b8eba0e26cd9c73711b891ca5) |
| Spell | core | core | unmatched | [0x090185...e5f6](https://etherscan.io/address/0x090185f2135308bad17527004364ebcc2d37e5f6) |
| StrategyBasisBacDaiLpV2 | strategy | strategy | likely in scope | [0xe2376e...9cf7](https://etherscan.io/address/0xe2376eee927354e681b09819e621093c2b529cf7) |
| StrategyBasisBasDaiLpV2 | strategy | strategy | likely in scope | [0x4f8aac...422d](https://etherscan.io/address/0x4f8aac798111e212cf403ce8c464c51e270c422d) |
| StrategyCmpdDaiV2 | strategy | strategy | audited (TP) | [0xcd892a...829d](https://etherscan.io/address/0xcd892a97951d46615484359355e3ed88131f829d) |
| StrategyCurve3CRVv2 | strategy | strategy | likely in scope | [0x8f01bb...7042](https://etherscan.io/address/0x8f01bb820bcd0b0b7d873862c531a88822747042) |
| StrategyCurveSCRVv3_2 | strategy | strategy | likely in scope | [0x8e1ed8...3c1c](https://etherscan.io/address/0x8e1ed86c27e1861d044c27b66574d6a0249a3c1c) |
| StrategyCurveSteCRV | strategy | strategy | likely in scope | [0x350c4f...8259](https://etherscan.io/address/0x350c4f7a669dc263ec1838fa105172e1d96e8259) |
| StrategyMirrorAaplUstLp | strategy | strategy | likely in scope | [0x58635c...7aa6](https://etherscan.io/address/0x58635ce31677f99437d84e39724d2bc47ec57aa6) |
| StrategyMirrorBabaUstLp | strategy | strategy | likely in scope | [0xa28217...201d](https://etherscan.io/address/0xa28217d2242aa23bcd8211a520a96515815d201d) |
| StrategyMirrorMirUstLp | strategy | strategy | likely in scope | [0x66006c...e595](https://etherscan.io/address/0x66006cda4c7aa92a5ca586d799829916dcb6e595) |
| StrategyMirrorQqqUstLp | strategy | strategy | likely in scope | [0x0e5a5b...d32a](https://etherscan.io/address/0x0e5a5b89e2529c52d7cdea1a6db9dc7933d8d32a) |
| StrategyMirrorSlvUstLp | strategy | strategy | likely in scope | [0xce0248...a767](https://etherscan.io/address/0xce0248d6a290a1a455646f9afe43b145eabda767) |
| StrategyMirrorTslaUstLp | strategy | strategy | likely in scope | [0xf78f8f...8514](https://etherscan.io/address/0xf78f8f92cc2f8cd104c279d7ed99cbb5f9058514) |
| StrategyMithMisUsdtLp | strategy | strategy | likely in scope | [0xc931c4...a369](https://etherscan.io/address/0xc931c4e90e07a1a9ec6f5ee3d24ddda29c8da369) |
| StrategySushiEthAlcxLp | strategy | strategy | likely in scope | [0x4d787c...04ef](https://etherscan.io/address/0x4d787c7d124721cd22a5f124bbb06d965fde04ef) |
| StrategySushiEthDaiLp | strategy | strategy | likely in scope | [0x8e4e4c...49e1](https://etherscan.io/address/0x8e4e4cfca2ff1db24708dfae8c97385cc63149e1) |
| StrategySushiEthUsdcLp | strategy | strategy | likely in scope | [0xaa430e...0690](https://etherscan.io/address/0xaa430e7886b60a925ac77e79e91924ce544b0690) |
| StrategySushiEthWBtcLp | strategy | strategy | likely in scope | [0xced8ee...9f26](https://etherscan.io/address/0xced8eed93677bcf0100f05a38d5b0b2761b09f26) |
| StrategySushiEthYfiLp | strategy | strategy | likely in scope | [0x8785a5...0043](https://etherscan.io/address/0x8785a589237a8699afaaf5deb407010db0950043) |
| StrategySushiEthYvBoostLp | strategy | strategy | likely in scope | [0x9e7f57...fd85](https://etherscan.io/address/0x9e7f57f3c3b147d234d38f9071b7d53b08c7fd85) |
| StrategySushiEthYVeCrvLp | strategy | strategy | likely in scope | [0x580742...2711](https://etherscan.io/address/0x5807424c47ea796d4c6be03b840ccc8c8a642711) |
| StrategyUniEthDaiLpV4 | strategy | strategy | likely in scope | [0x0697d0...2912](https://etherscan.io/address/0x0697d05738b456bcc8f06023219da351ae252912) |
| StrategyUniEthUsdcLpV4 | strategy | strategy | likely in scope | [0xb48b92...7727](https://etherscan.io/address/0xb48b92f8962f880d2f072f4e5fdfc748ceda7727) |
| StrategyUniEthWBtcLpV2 | strategy | strategy | likely in scope | [0xd8de54...74d6](https://etherscan.io/address/0xd8de542d2140eecc49ffdf056e51aa9261f974d6) |
| Timelock | governance | governance | likely in scope | [0x0040e0...8416](https://etherscan.io/address/0x0040e05ce9a5fc9c0abf89889f7b60c2fc278416) |
| Tribe | core | core | unmatched | [0xc7283b...212b](https://etherscan.io/address/0xc7283b66eb1eb5fb86327f08e1b5816b0720212b) |
| UniswapV2Pair | router | router | likely in scope | [0x06da0f...4553](https://etherscan.io/address/0x06da0fd433c1a5d7a4faa01111c044910a184553) |
| UniswapV2Pair | router | router | likely in scope | [0x088ee5...4d0c](https://etherscan.io/address/0x088ee5007c98a9677165d78dd2109ae4a3d04d0c) |
| UniswapV2Pair | router | router | likely in scope | [0x397ff1...aca0](https://etherscan.io/address/0x397ff1542f962076d0bfe58ea045ffa2d347aca0) |
| UniswapV2Pair | router | router | likely in scope | [0x470e8d...f08c](https://etherscan.io/address/0x470e8de2ebaef52014a47cb5e6af86884947f08c) |
| UniswapV2Pair | router | router | likely in scope | [0x523334...a50c](https://etherscan.io/address/0x5233349957586a8207c52693a959483f9aeaa50c) |
| UniswapV2Pair | router | router | likely in scope | [0x676ce8...b363](https://etherscan.io/address/0x676ce85f66adb8d7b8323aeefe17087a3b8cb363) |
| UniswapV2Pair | router | router | likely in scope | [0x795065...1fb0](https://etherscan.io/address/0x795065dcc9f64b5614c407a6efdc400da6221fb0) |
| UniswapV2Pair | router | router | likely in scope | [0x860425...4fae](https://etherscan.io/address/0x860425be6ad1345dc7a3e287facbf32b18bc4fae) |
| UniswapV2Pair | router | router | likely in scope | [0x9928e4...590a](https://etherscan.io/address/0x9928e4046d7c6513326ccea028cd3e7a91c7590a) |
| UniswapV2Pair | router | router | likely in scope | [0xb022e0...953b](https://etherscan.io/address/0xb022e08adc8ba2de6ba4fecb59c6d502f66e953b) |
| UniswapV2Pair | router | router | likely in scope | [0xb5de0c...6d4e](https://etherscan.io/address/0xb5de0c3753b6e1b4dba616db82767f17513e6d4e) |
| UniswapV2Pair | router | router | likely in scope | [0xc3f279...91a8](https://etherscan.io/address/0xc3f279090a47e80990fe3a9c30d24cb117ef91a8) |
| Vyper_contract | core | core | unmatched | [0x5a6a4d...f41b](https://etherscan.io/address/0x5a6a4d54456819380173272a5e8e9b9904bdf41b) |
| Vyper_contract | core | core | unmatched | [0x9d409a...ab9a](https://etherscan.io/address/0x9d409a0a012cfba9b15f6d4b36ac57a46966ab9a) |
| Vyper_contract | core | core | unmatched | [0xa456b5...ea5e](https://etherscan.io/address/0xa456b515303b2ce344e9d2601f91270f8c2fea5e) |
| unnamed | unknown | unknown | unmatched | [0x357779...d80d](https://etherscan.io/address/0x3577797668c6fe415b21bf85ba44df34318dd80d) |
| unnamed | unknown | unknown | unmatched | [0x439bd6...1654](https://etherscan.io/address/0x439bd63b5b8bfd3a51579a532c42e62bc1be1654) |
| unnamed | unknown | unknown | unmatched | [0x87da82...4c88](https://etherscan.io/address/0x87da823b6fc8eb8575a235a824690fda94674c88) |
| unnamed | unknown | unknown | unmatched | [0xc3d03e...882f](https://etherscan.io/address/0xc3d03e4f041fd4cd388c549ee2a29a9e5075882f) |
| unnamed | unknown | unknown | unmatched | [0xd92c7f...a0d3](https://etherscan.io/address/0xd92c7faa0ca0e6ae4918f3a83d9832d9caeaa0d3) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Token | token | token | unmatched | [0x580a84...1ff4](https://polygonscan.com/address/0x580a84c73811e1839f75d86d75d88cca0c241ff4) |
| UChildERC20Proxy | proxy | proxy | unmatched | [0xaa9654...d394](https://polygonscan.com/address/0xaa9654becca45b5bdfa5ac646c939c62b527d394) |
| unnamed | unknown | unknown | unmatched | [0x9c78ee...288f](https://polygonscan.com/address/0x9c78ee466d6cb57a4d01fd887d2b5dfb2d46288f) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ClonableBeaconProxy | proxy | proxy | unmatched | [0x3e6648...d2af](https://arbiscan.io/address/0x3e6648c5a70a150a88bce65f4ad4d506fe15d2af) |
| StandardArbERC20 | token | token | unmatched | [0x3f770a...ad46](https://arbiscan.io/address/0x3f770ac673856f105b586bb393d122721265ad46) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 137, 42161. 0 follow EIP-1967 / UUPS patterns; 1 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x63ec57...7313, 0xb4b8b6...1ffd. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 54 | 2 | 52 | 3.7% |
| **Total** | 54 | 2 | 52 | 3.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | Haechi Audit | unspecified | direct | not available |
| unknown | MixBytes | Pickle Finance All Strategies Security Audit Report | unspecified | direct | [report](https://github.com/mixbytes/audits_public/blob/master/Pickle%20Finance/All%20Strategies/Pickle%20Finance%20All%20Stratagies%20Security%20Audit%20Report.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.pickle.finance/security/audits-and-timelock.md](https://docs.pickle.finance/security/audits-and-timelock.md) - audit_report_link
- [https://docs.pickle.finance/security/audits-and-timelock/smart-contract-audits.md](https://docs.pickle.finance/security/audits-and-timelock/smart-contract-audits.md) - audit_report_link
- [https://docs.pickle.finance/security/audits-and-timelock/timelocks-and-multisig.md](https://docs.pickle.finance/security/audits-and-timelock/timelocks-and-multisig.md) - audit_report_link
- [https://github.com/pickle-finance/protocol/blob/master/audits/Haechi_Audit.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/Haechi_Audit.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_All_Strategies.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_All_Strategies.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_Curve_Strategy.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_Curve_Strategy.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/blob/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/commits/master/audits/Haechi_Audit.pdf](https://github.com/pickle-finance/protocol/commits/master/audits/Haechi_Audit.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/commits/master/audits/MixBytes_Audit_All_Strategies.pdf](https://github.com/pickle-finance/protocol/commits/master/audits/MixBytes_Audit_All_Strategies.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/commits/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf](https://github.com/pickle-finance/protocol/commits/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf) - audit_report_link
- [https://github.com/pickle-finance/protocol/raw/master/audits/Haechi_Audit.pdf](https://github.com/pickle-finance/protocol/raw/master/audits/Haechi_Audit.pdf) - audit_report_link
- [https://github.com/rmsams/stablecoins/blob/master/paper.pdf](https://github.com/rmsams/stablecoins/blob/master/paper.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - Haechi Audit
- unknown - MixBytes - Pickle Finance All Strategies Security Audit Report - https://github.com/mixbytes/audits_public/blob/master/Pickle%20Finance/All%20Strategies/Pickle%20Finance%20All%20Stratagies%20Security%20Audit%20Report.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/pickle.json
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

- **Generated at:** 2026-05-05T20:42:54.685Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
