# Agentic Brief: satlayer

## Project Overview

- **Project:** satlayer (satlayer)
- **Website:** satlayer.xyz
- **Category:** Anchor BTC
- **Chains (topography):** 1, 56, 8453
- **Chains (DeFiLlama):** 1, 56, 8453, 80094
- **TVL:** $8,845,507 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2025-08-08
- **Audit history:** 17 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

satlayer has 71 deployed contract rows in current topography. This brief renders the 66 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-720c81c2; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2025-08-08 (270 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 66 contracts across 3 chains. 18 have TP audit coverage (27.3%); 48 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BeaconProxy | proxy | proxy | unmatched | [0xd9d920...9def](https://etherscan.io/address/0xd9d920aa40f578ab794426f5c90f6c731d159def) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x51477a...5147](https://etherscan.io/address/0x51477a3002ee04b7542adfe63ccdb50c00ee5147) |
| FBTC | core | core | unmatched | [0xc96de2...c364](https://etherscan.io/address/0xc96de26018a54d51c097160568752c4e3bd6c364) |
| ProxyAdmin | proxy | proxy | unmatched | [0xc3827a...6e90](https://etherscan.io/address/0xc3827a4bc8224ee2d116637023b124ced6db6e90) |
| PumpToken | token | token | likely in scope | [0xf469fb...012e](https://etherscan.io/address/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e) |
| ReceiptToken | token | token | audited (TP) | [0x067e11...152f](https://etherscan.io/address/0x067e11ac5471c853aea205b3c1933a5f6367152f) |
| ReceiptToken | token | token | audited (TP) | [0x0c4dd6...30c7](https://etherscan.io/address/0x0c4dd69705d16d91bc9c0534cc926966f23430c7) |
| ReceiptToken | token | token | audited (TP) | [0x17140b...24ff](https://etherscan.io/address/0x17140b69ffadff9e87bf1d86d99119ee10ad24ff) |
| ReceiptToken | token | token | audited (TP) | [0x69223b...c566](https://etherscan.io/address/0x69223b5b36a785ec08e5f685fd7961399982c566) |
| ReceiptToken | token | token | audited (TP) | [0xe2c675...12dc](https://etherscan.io/address/0xe2c6755c10d0b61d8b11dd2851ae8266cea912dc) |
| ReceiptToken | token | token | audited (TP) | [0xf7de2b...076e](https://etherscan.io/address/0xf7de2b7afdb07aa5dd143180ed758165821e076e) |
| ReceiptToken | token | token | audited (TP) | [0xff2858...ee5b](https://etherscan.io/address/0xff2858cc8227aa45a51c8961598edc2d44b5ee5b) |
| SatlayerPool | vault_pool | vault_pool | audited (TP) | [0x42a856...2819](https://etherscan.io/address/0x42a856dbebb97abc1269eab32f3bb40c15102819) |
| SatLayerPoolV2 | vault_pool | vault_pool | audited (TP) | [0x32fd8e...fb83](https://etherscan.io/address/0x32fd8e43114fb0a292ca3127eaf4d1d69739fb83) |
| SatLayerPoolV2 | vault_pool | vault_pool | audited (TP) | [0x6f88e8...703c](https://etherscan.io/address/0x6f88e80f8e82dbfdb7c7f93f0b5238934858703c) |
| SLAYToken | token | token | audited (TP) | [0xa5d4c3...1da0](https://etherscan.io/address/0xa5d4c37d688cbba2ca71481c5a1d00a4e1971da0) |
| stBTC | core | core | unmatched | [0xf6718b...b8a3](https://etherscan.io/address/0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x004e9c...0568](https://etherscan.io/address/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1fcca6...4e1e](https://etherscan.io/address/0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x659397...d8a4](https://etherscan.io/address/0x65939777a9dc5a370707bb6b44b1ad0bc9e2d8a4) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x76f318...4364](https://etherscan.io/address/0x76f31800efde39a5f98189447c7a514d974f4364) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8236a8...4494](https://etherscan.io/address/0x8236a87084f8b84306f72007f36f2618a5634494) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xecac9c...11c1](https://etherscan.io/address/0xecac9c5f704e954931349da37f60e39f515c11c1) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xf80361...73b0](https://etherscan.io/address/0xf80361e9f6b5f75b3e9be82bd1b3c87938e773b0) |
| Vault | vault_pool | vault_pool | likely in scope | [0x64c5a4...dec0](https://etherscan.io/address/0x64c5a40659d7babce3d8d773f9386bf416d1dec0) |
| waBTC | core | core | unmatched | [0x09def5...e34b](https://etherscan.io/address/0x09def5abc67e967d54e8233a4b5ebbc1b3fbe34b) |
| WBTC | core | core | excluded (external) | [0x2260fa...c599](https://etherscan.io/address/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599) |
| unnamed | unknown | unknown | unmatched | [0x0f6f33...8f3b](https://etherscan.io/address/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b) |
| unnamed | unknown | unknown | unmatched | [0x236f8c...3894](https://etherscan.io/address/0x236f8c0a61da474db21b693fb2ea7aab0c803894) |
| unnamed | unknown | unknown | unmatched | [0x2a5fc0...15c9](https://etherscan.io/address/0x2a5fc05f71cfc54ddcad19457cee79e3aaf415c9) |
| unnamed | unknown | unknown | unmatched | [0x2e3c78...9a1c](https://etherscan.io/address/0x2e3c78576735802ed94e52b7e71830e9e44a9a1c) |
| unnamed | unknown | unknown | unmatched | [0x4cbe83...aa09](https://etherscan.io/address/0x4cbe838e2bd3b46247f80519b6ac79363298aa09) |
| unnamed | unknown | unknown | unmatched | [0x4fdb05...b8b6](https://etherscan.io/address/0x4fdb0511f1e5c6c215596570f855cb1f9924b8b6) |
| unnamed | unknown | unknown | unmatched | [0x50198b...c99d](https://etherscan.io/address/0x50198b5e1330753f167f6e0544e4c8af829bc99d) |
| unnamed | unknown | unknown | unmatched | [0x7b4dc4...705c](https://etherscan.io/address/0x7b4dc4067251b4b5efd653527d6c26a02c85705c) |
| unnamed | unknown | unknown | unmatched | [0x939197...593e](https://etherscan.io/address/0x93919784c523f39cacaa98ee0a9d96c3f32b593e) |
| unnamed | unknown | unknown | unmatched | [0x93f4d0...1116](https://etherscan.io/address/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116) |
| unnamed | unknown | unknown | unmatched | [0x961395...b763](https://etherscan.io/address/0x961395ed9960fe5e281585beaa730b99af3ab763) |
| unnamed | unknown | unknown | unmatched | [0xa1f499...7673](https://etherscan.io/address/0xa1f49994e5459628a3a5960c5b29d8dcc7557673) |
| unnamed | unknown | unknown | unmatched | [0xad9f7d...4ec8](https://etherscan.io/address/0xad9f7d8a79ab96c10ed94d49463c2ff0f5ca4ec8) |
| unnamed | unknown | unknown | unmatched | [0xcc0966...9a8c](https://etherscan.io/address/0xcc0966d8418d412c599a6421b760a847eb169a8c) |
| unnamed | unknown | unknown | unmatched | [0xd23557...abc2](https://etherscan.io/address/0xd235571526170e7d167040166aae59cb8627abc2) |
| unnamed | unknown | unknown | unmatched | [0xe70419...b126](https://etherscan.io/address/0xe7041941e9e4f3d12d9eb6d9b228d3781548b126) |
| unnamed | unknown | unknown | unmatched | [0xf97750...ab18](https://etherscan.io/address/0xf9775085d726e782e83585033b58606f7731ab18) |
| unnamed | unknown | unknown | unmatched | [0xff204e...fc5f](https://etherscan.io/address/0xff204e2681a6fa0e2c3fade68a1b28fb90e4fc5f) |
| unnamed | unknown | unknown | unmatched | [0xff21f4...db9b](https://etherscan.io/address/0xff21f46bc9d78125705eef6efca62f9420cfdb9b) |
| unnamed | unknown | unknown | unmatched | [0xff6166...72a1](https://etherscan.io/address/0xff61668cfccd9a29460136d36372f36c8c6b72a1) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BeaconProxy | proxy | proxy | unmatched | [0x1346b6...46a5](https://bscscan.com/address/0x1346b618dc92810ec74163e4c27004c921d446a5) |
| BEP20Token | token | token | likely in scope | [0x7130d2...ad9c](https://bscscan.com/address/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c) |
| ReceiptToken | token | token | audited (TP) | [0x067e11...152f](https://bscscan.com/address/0x067e11ac5471c853aea205b3c1933a5f6367152f) |
| ReceiptToken | token | token | audited (TP) | [0x17140b...24ff](https://bscscan.com/address/0x17140b69ffadff9e87bf1d86d99119ee10ad24ff) |
| ReceiptToken | token | token | audited (TP) | [0xe2c675...12dc](https://bscscan.com/address/0xe2c6755c10d0b61d8b11dd2851ae8266cea912dc) |
| SatLayer | core | core | unmatched | [0x880f62...d7ef](https://bscscan.com/address/0x880f629cbfd99896f722d6109ab3b8da9443d7ef) |
| SatlayerPool | vault_pool | vault_pool | audited (TP) | [0x42a856...2819](https://bscscan.com/address/0x42a856dbebb97abc1269eab32f3bb40c15102819) |
| SolvBTCYieldTokenV3_1 | strategy | strategy | unmatched | [0xa45716...acf8](https://bscscan.com/address/0xa45716a26274d4c5f12ced534fb6b1fa9ef7acf8) |
| stBTC | core | core | unmatched | [0xf6718b...b8a3](https://bscscan.com/address/0xf6718b2701d4a6498ef77d7c152b2137ab28b8a3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xfc5a74...d834](https://bscscan.com/address/0xfc5a743271672e91d77f0176e5cea581fbd5d834) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FiatTokenProxy | proxy | proxy | likely in scope | [0xcbb7c0...33bf](https://basescan.org/address/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf) |
| FiatTokenV2_1 | token | token | likely in scope | [0x7458bf...aa72](https://basescan.org/address/0x7458bfdc30034eb860b265e6068121d18fa5aa72) |
| ReceiptToken | token | token | audited (TP) | [0x422d6c...9802](https://basescan.org/address/0x422d6c77ee640fd4dd87bbacc2bad64e427f9802) |
| ReceiptToken | token | token | audited (TP) | [0x9ed4b1...5add](https://basescan.org/address/0x9ed4b12eddcf7ba4325d7d09e00dfa31d4165add) |
| SatLayer | core | core | unmatched | [0x9efdfc...eacf](https://basescan.org/address/0x9efdfc72c1bc90b36f8aae35247e62310c58eacf) |
| SatlayerPool | vault_pool | vault_pool | audited (TP) | [0xb57752...b9b3](https://basescan.org/address/0xb57752ddc2ec2defe9edbb1fdb99db1ca9b0b9b3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3e248a...1db1](https://basescan.org/address/0x3e248ab4554cfdec8fc4f18f569fe6f46de61db1) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x939197...593e](https://basescan.org/address/0x93919784c523f39cacaa98ee0a9d96c3f32b593e) |
| uniBTC | core | core | unmatched | [0x552b0c...fa05](https://basescan.org/address/0x552b0c6688fcae5cf0164f27fd129b882a42fa05) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 13 proxies on 1, 56, 8453. 10 follow EIP-1967 / UUPS patterns; 2 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 5 distinct deployer addresses: 0x0c9665...0b4e, 0x3f6bf1...a079, 0x55c097...013e, 0x899c28...c94f, 0xee8b9e...36b2. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 66 | 18 | 48 | 27.3% |
| **Total** | 66 | 18 | 48 | 27.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-07-24 | Zellic | SatLayer Pool Smart Contract Security Assessment | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) |
| unknown | Dedaub | satlayer core phase 2 dedaub 20250620 | unspecified | direct | not available |
| unknown | Dedaub | satlayer token dedaub 20250616 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

5 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://audits.sherlock.xyz/bug-bounties/50](https://audits.sherlock.xyz/bug-bounties/50) - audit_report_link
- [https://docs.satlayer.xyz/security/audits.md](https://docs.satlayer.xyz/security/audits.md) - audit_report_link
- [https://docs.satlayer.xyz/security/audits/cube-by-satlayer.md](https://docs.satlayer.xyz/security/audits/cube-by-satlayer.md) - audit_report_link
- [https://docs.satlayer.xyz/security/audits/satlayer-core.md](https://docs.satlayer.xyz/security/audits/satlayer-core.md) - audit_report_link
- [https://docs.satlayer.xyz/security/audits/staking-app.md](https://docs.satlayer.xyz/security/audits/staking-app.md) - audit_report_link
- [https://drive.google.com/drive/folders/1TftkNS5Cdy-DO5kshX6DFNYIOiNz3mly](https://drive.google.com/drive/folders/1TftkNS5Cdy-DO5kshX6DFNYIOiNz3mly) - audit_report_link
- [https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf) - audit_report_link
- [https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf) - audit_report_link
- [https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf) - audit_report_link
- [https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf) - audit_report_link
- [https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%2520Pool%2520-%2520Zellic%2520Audit%2520Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%2520Pool%2520-%2520Zellic%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/satlayer/deposit-contract-public/commits/main/audits/Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/commits/main/audits/Satlayer_audit_report_2024-08-15.pdf) - audit_report_link
- [https://github.com/satlayer/deposit-contract-public/commits/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf](https://github.com/satlayer/deposit-contract-public/commits/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/assets/whitepaper.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/assets/whitepaper.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf) - audit_report_link
- [https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf) - audit_report_link

### Audit Reports (full list)

- 2024-07-24 - Zellic - SatLayer Pool Smart Contract Security Assessment - https://github.com/Zellic/publications/blob/master/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf
- unknown - Dedaub - satlayer core phase 2 dedaub 20250620
- unknown - Dedaub - satlayer token dedaub 20250616

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/satlayer.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $333,193.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:26.728Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-720c81c2
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $333,193.
