# Agentic Brief: Beets DEX V3

## Project Overview

- **Project:** Beets DEX V3 (beethoven-x)
- **Website:** beets.fi
- **Category:** Dexs
- **Chains (topography):** 10, 146, 250
- **Chains (DeFiLlama):** 146
- **TVL:** $9,528,646 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 2 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Beets DEX V3 has 45 deployed contract rows in current topography. This brief renders the 45 rows present in scope-match run recovery-bucket2-v1-2026-05-05-e0e9f3e8; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 45 contracts across 3 chains. 11 have TP audit coverage (24.4%); 34 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Authorizer | core | core | audited (TP) | [0xa331d8...3ae6](https://optimistic.etherscan.io/address/0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6) |
| ChildChainGaugeFactory | factory | factory | audited (TP) | [0xa523f4...12dc](https://optimistic.etherscan.io/address/0xa523f47a933d5020b23629ddf689695aa94612dc) |
| ChildChainLiquidityGaugeFactory | factory | factory | likely in scope | [0x2e9606...2647](https://optimistic.etherscan.io/address/0x2e96068b3d5b5bae3d7515da4a1d2e52d08a2647) |
| MetaStablePoolFactory | factory | factory | audited (TP) | [0xb08e16...bfd2](https://optimistic.etherscan.io/address/0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2) |
| StablePoolFactory | factory | factory | audited (TP) | [0xeb1516...76c3](https://optimistic.etherscan.io/address/0xeb151668006cd04dadd098afd0a82e78f77076c3) |
| Vault | vault_pool | vault_pool | likely in scope | [0xba1222...f2c8](https://optimistic.etherscan.io/address/0xba12222222228d8ba445958a75a0704d566bf2c8) |
| WeightedPool2TokensFactory | factory | factory | audited (TP) | [0x0f3e0c...c54e](https://optimistic.etherscan.io/address/0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e) |
| WeightedPoolFactory | factory | factory | audited (TP) | [0xdae7e3...efca](https://optimistic.etherscan.io/address/0xdae7e32adc5d490a43ccba1f0c736033f2b4efca) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Authorizer | core | core | audited (TP) | [0xe39b5e...49d5](https://sonicscan.org/address/0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5) |
| Beets | core | core | unmatched | [0x2d0e08...e4f0](https://sonicscan.org/address/0x2d0e0814e62d80056181f5cd932274405966e4f0) |
| LoopedSonicVault | vault_pool | vault_pool | likely in scope | [0xc76995...38ee](https://sonicscan.org/address/0xc76995054ce51dfbbc954840d699b2f33d2538ee) |
| ProtocolFeeController | controller | controller | audited (TP) | [0xa731c2...7cc8](https://sonicscan.org/address/0xa731c23d7c95436baaae9d52782f966e1ed07cc8) |
| ProtocolFeesCollector | treasury | treasury | audited (TP) | [0xce8868...9f9f](https://sonicscan.org/address/0xce88686553686da562ce7cea497ce749da109f9f) |
| SonicBeetsMigrator | migration | migration | unmatched | [0x5f9a5c...e386](https://sonicscan.org/address/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386) |
| Vault | vault_pool | vault_pool | likely in scope | [0xba1333...9ba9](https://sonicscan.org/address/0xba1333333333a1ba1108e8412f11850a5c319ba9) |
| VaultExtension | vault_pool | vault_pool | likely in scope | [0x0e8b07...c9a9](https://sonicscan.org/address/0x0e8b07657d719b86e06bf0806d6729e3d528c9a9) |
| unnamed | unknown | unknown | unmatched | [0x7b52d5...0bb6](https://sonicscan.org/address/0x7b52d5ef006e59e3227629f97f182d6442380bb6) |
| unnamed | unknown | unknown | unmatched | [0x973670...1684](https://sonicscan.org/address/0x973670ce19594f857a7cd85ee834c7a74a941684) |
| unnamed | unknown | unknown | unmatched | [0xba1222...f2c8](https://sonicscan.org/address/0xba12222222228d8ba445958a75a0704d566bf2c8) |
| unnamed | unknown | unknown | unmatched | [0xe5da20...3955](https://sonicscan.org/address/0xe5da20f15420ad15de0fa650600afc998bbe3955) |

### fantom (chain_id 250)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BalancerRelayer | core | core | unmatched | [0x0faa25...1981](https://ftmscan.com/address/0x0faa25293a36241c214f3760c6ff443e1b731981) |
| BeetsBar | core | core | unmatched | [0xfcef8a...54b1](https://ftmscan.com/address/0xfcef8a994209d6916eb2c86cdd2afd60aa6f54b1) |
| ComposableStablePoolFactory | factory | factory | likely in scope | [0x23f03a...474f](https://ftmscan.com/address/0x23f03a4fb344d8b98833d2ace093cc305e03474f) |
| ComposableStablePoolFactory | factory | factory | likely in scope | [0x5c3094...9b19](https://ftmscan.com/address/0x5c3094982cf3c97a06b7d62a6f7669f14a199b19) |
| ComposableStablePoolFactory | factory | factory | likely in scope | [0x911566...7548](https://ftmscan.com/address/0x911566c808bf00acb200b418564440a2af177548) |
| CopperProxy | proxy | proxy | unmatched | [0xbc8a71...f93c](https://ftmscan.com/address/0xbc8a71c75ffbd2807c021f4f81a8832392def93c) |
| WeightedPoolFactory | factory | factory | audited (TP) | [0xb841df...5e15](https://ftmscan.com/address/0xb841df73861e65e6d61a80f503f095a91ce75e15) |
| WeightedPoolFactory | factory | factory | audited (TP) | [0xd678b6...7941](https://ftmscan.com/address/0xd678b6acd834cc969bb19ce82727f2a541fb7941) |
| unnamed | unknown | unknown | unmatched | [0x0e2afa...5bf4](https://ftmscan.com/address/0x0e2afa0b5f9174750d4e84bf9798f89b79bd5bf4) |
| unnamed | unknown | unknown | unmatched | [0x1ed641...d7ec](https://ftmscan.com/address/0x1ed6411670c709f4e163854654bd52c74e66d7ec) |
| unnamed | unknown | unknown | unmatched | [0x1f73ae...4a71](https://ftmscan.com/address/0x1f73ae6ed391a2b1e84ff988a1bb5394b78a4a71) |
| unnamed | unknown | unknown | unmatched | [0x20dd72...c9ce](https://ftmscan.com/address/0x20dd72ed959b6147912c2e529f0a0c651c33c9ce) |
| unnamed | unknown | unknown | unmatched | [0x2c7747...f473](https://ftmscan.com/address/0x2c774732c93ce393ec8125bda49fb3737ae6f473) |
| unnamed | unknown | unknown | unmatched | [0x5adaf6...a990](https://ftmscan.com/address/0x5adaf6509bcec3219455348ac45d6d3261b1a990) |
| unnamed | unknown | unknown | likely in scope | [0x60467c...cf53](https://ftmscan.com/address/0x60467cb225092ce0c989361934311175f437cf53) |
| unnamed | unknown | unknown | likely in scope | [0x70b55a...5554](https://ftmscan.com/address/0x70b55af71b29c5ca7e67bd1995250364c4be5554) |
| unnamed | unknown | unknown | unmatched | [0x816699...cfd3](https://ftmscan.com/address/0x8166994d9ebbe5829ec86bd81258149b87facfd3) |
| unnamed | unknown | unknown | unmatched | [0x8d038d...1b21](https://ftmscan.com/address/0x8d038da833b154ebcfb7965a9ee7c4ad72671b21) |
| unnamed | unknown | unknown | likely in scope | [0x92b377...0630](https://ftmscan.com/address/0x92b377187bccc6556fced2f1e6dad65850c20630) |
| unnamed | unknown | unknown | likely in scope | [0x974d3f...1ce9](https://ftmscan.com/address/0x974d3ff709d84ba44cde3257c0b5b0b14c081ce9) |
| unnamed | unknown | unknown | unmatched | [0xb2ed59...1fbb](https://ftmscan.com/address/0xb2ed595afc445b47db7043bec25e772bf0fa1fbb) |
| unnamed | unknown | unknown | unmatched | [0xb384a8...ea06](https://ftmscan.com/address/0xb384a86f2fd7788720db42f9daa60fc07ecbea06) |
| unnamed | unknown | unknown | unmatched | [0xb5caee...6471](https://ftmscan.com/address/0xb5caee3cd5d86c138f879b3abc5b1bebb63c6471) |
| unnamed | unknown | unknown | likely in scope | [0xc6920d...948f](https://ftmscan.com/address/0xc6920d3a369e7c8bd1a22dbe385e11d1f7af948f) |
| unnamed | unknown | unknown | unmatched | [0xf24bcf...ce1e](https://ftmscan.com/address/0xf24bcf4d1e507740041c9cfd2dddb29585adce1e) |

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
| No provenance | 45 | 11 | 34 | 24.4% |
| **Total** | 45 | 11 | 34 | 24.4% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2022-02-09 | Trail of Bits | Beethoven X Summary Report | unspecified | direct | [report](https://github.com/trailofbits/publications/blob/master/reviews/BeethovenXSummary.pdf) |
| 2022-02-09 | Trail of Bits | Beethoven X Summary Report | unspecified | direct | [report](https://github.com/trailofbits/publications/blob/master/reviews/BeethovenXSummary.pdf) |
| unknown | discovery-ingest-placeholder | immunefi.com/bug-bounty/balancer/scope | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/beethovenxfi/beethovenx-docs/blob/main/pages/beets-dex/security.en-US.mdx](https://github.com/beethovenxfi/beethovenx-docs/blob/main/pages/beets-dex/security.en-US.mdx) - audit_report_link
- [https://github.com/beethovenxfi/beethovenx-docs/blob/main/pages/sts/security.en-US.mdx](https://github.com/beethovenxfi/beethovenx-docs/blob/main/pages/sts/security.en-US.mdx) - audit_report_link
- [https://github.com/beethovenxfi/sonic-staking/blob/main/audits/2025-01-beethovenx-sonicstaking-securityreview.pdf](https://github.com/beethovenxfi/sonic-staking/blob/main/audits/2025-01-beethovenx-sonicstaking-securityreview.pdf) - audit_report_link
- [https://github.com/beethovenxfi/sonic-staking/blob/main/audits/report-cantinacode-sonic-1209.pdf](https://github.com/beethovenxfi/sonic-staking/blob/main/audits/report-cantinacode-sonic-1209.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Beethoven-Sonic-Staking-Spearbit-Security-Review-December-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Beethoven-Sonic-Staking-Spearbit-Security-Review-December-2024.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-beethovenx-sonicstaking-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-beethovenx-sonicstaking-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/BeethovenXSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/BeethovenXSummary.pdf) - audit_report_link
- [https://immunefi.com/bug-bounty/balancer/scope](https://immunefi.com/bug-bounty/balancer/scope) - audit_report_link
- [https://immunefi.com/bug-bounty/beets/information](https://immunefi.com/bug-bounty/beets/information) - audit_report_link

### Audit Reports (full list)

- 2022-02-09 - Trail of Bits - Beethoven X Summary Report - https://github.com/trailofbits/publications/blob/master/reviews/BeethovenXSummary.pdf
- 2022-02-09 - Trail of Bits - Beethoven X Summary Report - https://github.com/trailofbits/publications/blob/master/reviews/BeethovenXSummary.pdf
- unknown - discovery-ingest-placeholder - immunefi.com/bug-bounty/balancer/scope

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/beethoven-x.json
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

- **Generated at:** 2026-05-05T20:41:34.795Z
- **Scope-match run_id:** recovery-bucket2-v1-2026-05-05-e0e9f3e8
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
