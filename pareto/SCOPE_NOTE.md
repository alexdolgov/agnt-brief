# Agentic Brief: Idle

## Project Overview

- **Project:** Idle (pareto)
- **Website:** idle.finance
- **Category:** Yield Aggregator
- **Chains (topography):** 1, 10, 137, 1101
- **Chains (DeFiLlama):** 1, 10, 137, 1101, 42161
- **TVL:** $23,915,472 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 5 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Idle has 47 deployed contract rows in current topography. This brief renders the 42 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 42 contracts across 4 chains. 13 have TP audit coverage (31.0%); 29 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0x28fac5...07b5](https://etherscan.io/address/0x28fac5334c9f7262b3a3fe707e250e01053e07b5) |
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0x3391bc...0d35](https://etherscan.io/address/0x3391bc034f2935ef0e1e41619445f998b2680d35) |
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0x3fe794...3bb4](https://etherscan.io/address/0x3fe7940616e5bc47b0775a0dccf6237893353bb4) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0x527489...797c](https://etherscan.io/address/0x5274891bec421b39d23760c04a6755ecb444797c) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0x5c960a...fabe](https://etherscan.io/address/0x5c960a3dcc01be8a0f49c02a8cebcacf5d07fabe) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0x8c8112...3151](https://etherscan.io/address/0x8c81121b15197fa0eeaee1dc75533419dcfd3151) |
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0xa14ea0...6a16](https://etherscan.io/address/0xa14ea0e11121e6e951e87c66afe460a00bcd6a16) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0xb2d5cb...95bc](https://etherscan.io/address/0xb2d5cb72a621493fe83c6885e4a776279be595bc) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0xc27804...d68c](https://etherscan.io/address/0xc278041fdd8249fe4c1aad1193876857eea3d68c) |
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0xc8e6ca...7f80](https://etherscan.io/address/0xc8e6ca6e96a326dc448307a5fde90a0b21fd7f80) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0xf34842...c2f8](https://etherscan.io/address/0xf34842d05a1c888ca02769a633df37177415c2f8) |
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0xf52cdc...fd3f](https://etherscan.io/address/0xf52cdcd458bf455aed77751743180ec4a595fd3f) |
| IdleCDOFactory | factory | factory | unmatched | [0x3c9916...a631](https://etherscan.io/address/0x3c9916bb9498f637e2fa86c2028e26275dc9a631) |
| IdleCDOTruefiVariant | core | core | unmatched | [0x8b39bb...d670](https://etherscan.io/address/0x8b39bbf63b8302ea75a08014b233c72127aad670) |
| IdleTokenFungible | token | token | likely in scope | [0xaeff59...7f16](https://etherscan.io/address/0xaeff59c091ac5db820b20f7a4447036d2ba77f16) |
| IdleTokenGovernance | token | token | audited (TP) | [0x577d96...924a](https://etherscan.io/address/0x577d963246d28dbe0dc579048adda421b054924a) |
| IdleTokenV3 | token | token | audited (TP) | [0x12b98c...3ca6](https://etherscan.io/address/0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6) |
| IdleTokenV3 | token | token | audited (TP) | [0x1846bd...99fb](https://etherscan.io/address/0x1846bdfdb6a0f5c473dec610144513bd071999fb) |
| IdleTokenV3 | token | token | audited (TP) | [0x78751b...7934](https://etherscan.io/address/0x78751b12da02728f467a44eac40f5cbc16bd7934) |
| IdleTokenV3 | token | token | audited (TP) | [0xcddb1b...ec6c](https://etherscan.io/address/0xcddb1bceb7a1979c6caa0229820707429dd3ec6c) |
| IdleTokenV3 | token | token | audited (TP) | [0xd6f279...ec55](https://etherscan.io/address/0xd6f279b7ccbcd70f8be439d25b9df93aeb60ec55) |
| IdleTokenV3SUSD | token | token | likely in scope | [0x51c776...eef1](https://etherscan.io/address/0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1) |
| IdleTokenV3SUSD | token | token | likely in scope | [0xe79e17...fc9b](https://etherscan.io/address/0xe79e177d2a5c7085027d7c64c8f271c81430fc9b) |
| IdleTokenV3USDT | token | token | likely in scope | [0x427406...862b](https://etherscan.io/address/0x42740698959761baf1b06baa51efbd88cb1d862b) |
| IdleTokenV3USDT | token | token | likely in scope | [0x63d27b...2f2d](https://etherscan.io/address/0x63d27b3da94a9e871222cb0a32232674b02d2f2d) |
| TrancheWrapper | core | core | unmatched | [0x79f05f...f048](https://etherscan.io/address/0x79f05f75df6c156b2b98ac1fbfb3637fc1e6f048) |
| TrancheWrapper | core | core | unmatched | [0xa35b7a...329a](https://etherscan.io/address/0xa35b7a9fe5dc4cd51ba47acdf67b0f41c893329a) |
| TrancheWrapper | core | core | unmatched | [0xcf96f4...e66d](https://etherscan.io/address/0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1f5a97...3c8e](https://etherscan.io/address/0x1f5a97fb665e295303d2f7215ba2160cc5313c8e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8e0a8a...fc37](https://etherscan.io/address/0x8e0a8a5c1e5b3ac0670ea5a613bb15724d51fc37) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd0dbcd...47bc](https://etherscan.io/address/0xd0dbcd556ca22d3f3c142e9a3220053fd7a247bc) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xdc7777...320e](https://etherscan.io/address/0xdc7777c771a6e4b3a82830781bdde4dbc78f320e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xdce26b...3b0e](https://etherscan.io/address/0xdce26b2c78609b983cf91cccd43e238353653b0e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf87ec7...a5b8](https://etherscan.io/address/0xf87ec7e1ee467d7d78862089b92dd40497cba5b8) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xfa3afc...aaad](https://etherscan.io/address/0xfa3afc9a194babd56e743fa3b7aa2ccbed3eaaad) |
| unnamed | unknown | unknown | unmatched | [0xa9f908...8ae4](https://etherscan.io/address/0xa9f908da2e3ec7475a743e97bb5b06081b688ae4) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| IdleCDOFactory | factory | factory | unmatched | [0x8aa137...35b8](https://optimistic.etherscan.io/address/0x8aa1379e46a8c1e9b7bb2160254813316b5f35b8) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0x8a999f...03ab](https://polygonscan.com/address/0x8a999f5a3546f8243205b2c0ecb0627cc10003ab) |
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0xfda25d...27c4](https://polygonscan.com/address/0xfda25d931258df948ffecb66b5518299df6527c4) |
| unnamed | unknown | unknown | unmatched | [0x1ee647...89a1](https://polygonscan.com/address/0x1ee6470cd75d5686d0b2b90c0305fa46fb0c89a1) |

### polygon-zkevm (chain_id 1101)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| IdleCDOFactory | factory | factory | unmatched | [0xba43de...fe38](https://zkevm.polygonscan.com/address/0xba43de746840ed16ee53d26af0675d8e6c24fe38) |
| unnamed | unknown | unknown | unmatched | [0x6b8a1e...b689](https://zkevm.polygonscan.com/address/0x6b8a1e78ac707f9b0b5eb4f34b02d9af84d2b689) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 15 proxies on 1, 137. 5 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 9 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x3cd072...a75c, 0x70dc4c...9a03, 0xe5dab8...e64b, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 42 | 13 | 29 | 31.0% |
| **Total** | 42 | 13 | 29 | 31.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Quantstamp | idle finance | unspecified | direct | not available |
| unknown | Quantstamp | idle governance | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://certificate.quantstamp.com/full/idle-finance](https://certificate.quantstamp.com/full/idle-finance) - audit_report_link
- [https://certificate.quantstamp.com/full/idle-finance.pdf](https://certificate.quantstamp.com/full/idle-finance.pdf) - audit_report_link
- [https://certificate.quantstamp.com/full/idle-goverance](https://certificate.quantstamp.com/full/idle-goverance) - audit_report_link
- [https://certificate.quantstamp.com/full/idle-governance.pdf](https://certificate.quantstamp.com/full/idle-governance.pdf) - audit_report_link
- [https://code4rena.com/@hansfriese](https://code4rena.com/@hansfriese) - audit_report_link
- [https://consensys.io/diligence](https://consensys.io/diligence) - audit_report_link
- [https://consensys.io/diligence/audits/2021/06/idle-finance](https://consensys.io/diligence/audits/2021/06/idle-finance) - audit_report_link
- [https://docs.idle.finance/developers/security/audits.md](https://docs.idle.finance/developers/security/audits.md) - audit_report_link
- [https://docs.idle.finance/developers/security/bug-bounty](https://docs.idle.finance/developers/security/bug-bounty) - audit_report_link
- [https://docs.idle.finance/developers/security/hats-finance-vault](https://docs.idle.finance/developers/security/hats-finance-vault) - audit_report_link
- [https://docs.idle.finance/developers/security/hypernative-monitoring](https://docs.idle.finance/developers/security/hypernative-monitoring) - audit_report_link
- [https://docs.idle.finance/developers/security/integration-standard-requirements](https://docs.idle.finance/developers/security/integration-standard-requirements) - audit_report_link
- [https://docs.idle.finance/developers/security/risk-framework](https://docs.idle.finance/developers/security/risk-framework) - audit_report_link
- [https://drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view?usp=sharing](https://drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view?usp=sharing](https://drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view?usp=sharing](https://drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view?usp=sharing](https://drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view?usp=sharing](https://drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view?usp=sharing](https://drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view?usp=sharing) - audit_report_link
- [https://gov.idle.finance/t/security-management-policy-update-and-hypernative-integration/1187](https://gov.idle.finance/t/security-management-policy-update-and-hypernative-integration/1187) - audit_report_link
- [https://immunefi.com/bounty/idlefinance](https://immunefi.com/bounty/idlefinance) - audit_report_link
- [https://skynet.certik.com/projects/idle-finance](https://skynet.certik.com/projects/idle-finance) - audit_report_link

### Audit Reports (full list)

- unknown - Quantstamp - idle finance
- unknown - Quantstamp - idle governance

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/pareto.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $582,900.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:43:01.362Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $582,900.
