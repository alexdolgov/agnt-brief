# Agentic Audit Brief: tprotocol

## Project Overview

- Project: tprotocol (`tprotocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.385Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 36 unique implementations (36 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 30 project-authored contract(s) across 1 chain(s); 11 ERC20 tokens, 1 ERC721 NFT, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (delayedupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **TermMax** (`termmax`) in the BullionNFT, STBT, STBTv2, StbtTimelockController, UpgradeableSTBT subsystem.
11 audits inherited from `termmax`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 36 (36 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/35 (14.3%)
- Deployed-live implementations: 36 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/36
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 11 (0 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 14.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 5 | 13.9% | 2025-12 |
| HashCloak | Tier 2 | 5 | 13.9% | n/a |
| Spearbit | Tier 1 | 5 | 13.9% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BullionNFT | unknown | ethereum | n/a | [`0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc`](./contracts/ethereum-1/0x52a6ddc1ccc00b69e6fdc6228b50f0fa6dd2f9dc/) | ✅ Audited |
| STBT | unknown | ethereum | n/a | [`0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948`](./contracts/ethereum-1/0x24f5b8e0e4a0a9ccdcc4fa05a9885a28140fc948/) | ✅ Audited |
| StbtTimelockController | unknown | ethereum | n/a | [`0x0eb8f11ec17c160b0d51586b0e420faff07b6f47`](./contracts/ethereum-1/0x0eb8f11ec17c160b0d51586b0e420faff07b6f47/) | ✅ Audited |
| STBTv2 | unknown | ethereum | n/a | [`0x3f0868fd7b0844e374277ebc9a3e4979465a37aa`](./contracts/ethereum-1/0x3f0868fd7b0844e374277ebc9a3e4979465a37aa/) | ✅ Audited |
| UpgradeableSTBT | unknown | ethereum | n/a | [`0x32a67bf4815b4f28e879fd09671ef74ebd60528f`](./contracts/ethereum-1/0x32a67bf4815b4f28e879fd09671ef74ebd60528f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowLooper | unknown | ethereum | n/a | [`0x22cdae9169c9b2ecea1a8147125c49b1b3069ca9`](./contracts/ethereum-1/0x22cdae9169c9b2ecea1a8147125c49b1b3069ca9/) | ⚠️ Unaudited |
| BullionEnumerableNFT | unknown | ethereum | n/a | [`0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c`](./contracts/ethereum-1/0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c/) | ⚠️ Unaudited |
| BullionMinter | unknown | ethereum | n/a | [`0x29646a077f9fbc3db930efe35d4e15b06e2776b4`](./contracts/ethereum-1/0x29646a077f9fbc3db930efe35d4e15b06e2776b4/) | ⚠️ Unaudited |
| CustomerManager | unknown | ethereum | n/a | [`0x0978aa6ed342ff8327e97415653f5af790e3f004`](./contracts/ethereum-1/0x0978aa6ed342ff8327e97415653f5af790e3f004/) | ⚠️ Unaudited |
| FallbackReserveFeed | unknown | ethereum | n/a | [`0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab`](./contracts/ethereum-1/0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab/) | ⚠️ Unaudited |
| InterestRateModel | unknown | ethereum | n/a | [`0xa8d1355868adb65543c90d25d79fc3d72a30906d`](./contracts/ethereum-1/0xa8d1355868adb65543c90d25d79fc3d72a30906d/) | ⚠️ Unaudited |
| iUSTP | unknown | ethereum | n/a | [`0x18629759e72eabbf53566263708e78ddf191ef46`](./contracts/ethereum-1/0x18629759e72eabbf53566263708e78ddf191ef46/) | ⚠️ Unaudited |
| LiquidatePool | unknown | ethereum | n/a | [`0x0b55c21e66e0d9d4e792f5b1324d387f7829ae28`](./contracts/ethereum-1/0x0b55c21e66e0d9d4e792f5b1324d387f7829ae28/) | ⚠️ Unaudited |
| migrator | unknown | ethereum | n/a | [`0x556a501537ca0bbcb34eb996dfc93f28fa004f16`](./contracts/ethereum-1/0x556a501537ca0bbcb34eb996dfc93f28fa004f16/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x344363f85a25837b154dd1c03117fef0341a0e2f`](./contracts/ethereum-1/0x344363f85a25837b154dd1c03117fef0341a0e2f/) | ⚠️ Unaudited |
| MTokenMain | unknown | ethereum | n/a | [`0x123ffe0a3c62878dcbee2742227dc8990058d9e1`](./contracts/ethereum-1/0x123ffe0a3c62878dcbee2742227dc8990058d9e1/) | ⚠️ Unaudited |
| MTokenMessager | unknown | ethereum | n/a | [`0x24ce2a00eb05b33b206b4057598f97ddc3028c7e`](./contracts/ethereum-1/0x24ce2a00eb05b33b206b4057598f97ddc3028c7e/) | ⚠️ Unaudited |
| MTokenMessagerV2 | unknown | ethereum | n/a | [`0x102874ca109a5a7e94a0385f1380cebc905fb878`](./contracts/ethereum-1/0x102874ca109a5a7e94a0385f1380cebc905fb878/) | ⚠️ Unaudited |
| MTokenMessenger | unknown | ethereum | n/a | [`0x0be91692750982b4ba92dabc3985c548098f68c5`](./contracts/ethereum-1/0x0be91692750982b4ba92dabc3985c548098f68c5/) | ⚠️ Unaudited |
| MTokenMessengerLZ | unknown | ethereum | n/a | [`0xb350d8decc3adf68c3856d46ab42976ca7a6386f`](./contracts/ethereum-1/0xb350d8decc3adf68c3856d46ab42976ca7a6386f/) | ⚠️ Unaudited |
| MTokenMinter | unknown | ethereum | n/a | [`0x5fd20e49239aaedb8490c07a622c129a39296cef`](./contracts/ethereum-1/0x5fd20e49239aaedb8490c07a622c129a39296cef/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xc804e2f150940081aca000ad0ff730c154fe82ce`](./contracts/ethereum-1/0xc804e2f150940081aca000ad0ff730c154fe82ce/) | ⚠️ Unaudited |
| rUSTPool | unknown | ethereum | n/a | [`0x38a1753aed353e58c64a55a3f3c750e919915537`](./contracts/ethereum-1/0x38a1753aed353e58c64a55a3f3c750e919915537/) | ⚠️ Unaudited |
| SwapRouter | unknown | ethereum | n/a | [`0xba2b09c8f0797d52603b7199f0f16ca216e0cb0b`](./contracts/ethereum-1/0xba2b09c8f0797d52603b7199f0f16ca216e0cb0b/) | ⚠️ Unaudited |
| TBT | unknown | ethereum | n/a | [`0x07ac55797d4f43f57ca92a49e65ca582cc287c27`](./contracts/ethereum-1/0x07ac55797d4f43f57ca92a49e65ca582cc287c27/) | ⚠️ Unaudited |
| TBTHelper | unknown | ethereum | n/a | [`0x0dae11d26fc32657b6a55192d15b936b4f50419a`](./contracts/ethereum-1/0x0dae11d26fc32657b6a55192d15b936b4f50419a/) | ⚠️ Unaudited |
| TERPOC | unknown | ethereum | n/a | [`0x2022be364c2c0b46bb693d154bfb8eb5476a877d`](./contracts/ethereum-1/0x2022be364c2c0b46bb693d154bfb8eb5476a877d/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x6d2d493616e9e8407509e77c6f21f5f5f52199d1`](./contracts/ethereum-1/0x6d2d493616e9e8407509e77c6f21f5f5f52199d1/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x51744764620dbc32ceab204ba0e11c4a4bf7bdd2`](./contracts/ethereum-1/0x51744764620dbc32ceab204ba0e11c4a4bf7bdd2/) | ⚠️ Unaudited |
| UniV3Manager | unknown | ethereum | n/a | [`0x9c27f7bb05ddf33f3e1004edc16f14d1402838cc`](./contracts/ethereum-1/0x9c27f7bb05ddf33f3e1004edc16f14d1402838cc/) | ⚠️ Unaudited |
| USTP | unknown | ethereum | n/a | [`0xa47e50e097c8af928769baa0aae7041d77903afc`](./contracts/ethereum-1/0xa47e50e097c8af928769baa0aae7041d77903afc/) | ⚠️ Unaudited |
| USTP_OFTV2 | unknown | ethereum | n/a | [`0xff5081216c0b1db852d8a1c4a0b7f7f9a03acf5c`](./contracts/ethereum-1/0xff5081216c0b1db852d8a1c4a0b7f7f9a03acf5c/) | ⚠️ Unaudited |
| USTPHelper | unknown | ethereum | n/a | [`0x8a3766dd21b5460519d2c32eb3a57248c6954e4e`](./contracts/ethereum-1/0x8a3766dd21b5460519d2c32eb3a57248c6954e4e/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x377f8ca183376b195e434f4720290b8921e709d4`](./contracts/ethereum-1/0x377f8ca183376b195e434f4720290b8921e709d4/) | ⚠️ Unaudited |
| WSTBT | unknown | ethereum | n/a | [`0x288a8005c53632d920045b7c7c2e54a3f1bc4c83`](./contracts/ethereum-1/0x288a8005c53632d920045b7c7c2e54a3f1bc4c83/) | ⚠️ Unaudited |
| wTBTPoolV2Permission | unknown | ethereum | n/a | [`0xc72386da1f13f291f02363d0619f4d575d3dcf20`](./contracts/ethereum-1/0xc72386da1f13f291f02363d0619f4d575d3dcf20/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Circom_v_1_0_20230829.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_20230829.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_Solidity_v_1_0_PartII_20230927.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/ABDK/ABDK_Term_Structure_Audit_Report_v_1_0_20240508.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Circom_20231020.pdf) | HashCloak | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf](https://github.com/term-structure/audits/blob/main/Term-Structure-protocol(sunset)/HashCloak/HashCloak_Term_Structure_Audit_Report_Solidity_20231020.pdf) | HashCloak | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [TermMax-ABDK-audit-report-Phase1-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase1-v2.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [TermMax-ABDK-audit-report-Phase2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase2.pdf) | ABDK | Audit | n/a | unknown | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [TermMax-ABDK-audit-report-TMX-v-1-0.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-TMX-v-1-0.pdf) | ABDK | Audit | 2025-12 | fresh | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [TermMax-ABDK-audit-report-Phase3-v2.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-ABDK-audit-report-Phase3-v2.pdf) | ABDK | Audit | 2025-10 | fresh | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |
| [TermMax-Cantina-competition-20250320.pdf](https://github.com/term-structure/audits/blob/main/TermMax/TermMax-Cantina-competition-20250320.pdf) | Spearbit | Audit | 2025-03 | aging | Inherited from TermMax — forked code, scoped to BullionNFT, STBT, StbtTimelockController, STBTv2, +1 more | inherited | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x22cdae9169c9b2ecea1a8147125c49b1b3069ca9`](./contracts/ethereum-1/0x22cdae9169c9b2ecea1a8147125c49b1b3069ca9/) | BorrowLooper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c`](./contracts/ethereum-1/0x62bee1bc8cf74fbbbd1f8444a39ca1db4acc368c/) | BullionEnumerableNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29646a077f9fbc3db930efe35d4e15b06e2776b4`](./contracts/ethereum-1/0x29646a077f9fbc3db930efe35d4e15b06e2776b4/) | BullionMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0978aa6ed342ff8327e97415653f5af790e3f004`](./contracts/ethereum-1/0x0978aa6ed342ff8327e97415653f5af790e3f004/) | CustomerManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab`](./contracts/ethereum-1/0x20377b5e38e0e992bbdcf3502ec72ded6a5e28ab/) | FallbackReserveFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d1355868adb65543c90d25d79fc3d72a30906d`](./contracts/ethereum-1/0xa8d1355868adb65543c90d25d79fc3d72a30906d/) | InterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18629759e72eabbf53566263708e78ddf191ef46`](./contracts/ethereum-1/0x18629759e72eabbf53566263708e78ddf191ef46/) | iUSTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b55c21e66e0d9d4e792f5b1324d387f7829ae28`](./contracts/ethereum-1/0x0b55c21e66e0d9d4e792f5b1324d387f7829ae28/) | LiquidatePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556a501537ca0bbcb34eb996dfc93f28fa004f16`](./contracts/ethereum-1/0x556a501537ca0bbcb34eb996dfc93f28fa004f16/) | migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x344363f85a25837b154dd1c03117fef0341a0e2f`](./contracts/ethereum-1/0x344363f85a25837b154dd1c03117fef0341a0e2f/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x123ffe0a3c62878dcbee2742227dc8990058d9e1`](./contracts/ethereum-1/0x123ffe0a3c62878dcbee2742227dc8990058d9e1/) | MTokenMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ce2a00eb05b33b206b4057598f97ddc3028c7e`](./contracts/ethereum-1/0x24ce2a00eb05b33b206b4057598f97ddc3028c7e/) | MTokenMessager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x102874ca109a5a7e94a0385f1380cebc905fb878`](./contracts/ethereum-1/0x102874ca109a5a7e94a0385f1380cebc905fb878/) | MTokenMessagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0be91692750982b4ba92dabc3985c548098f68c5`](./contracts/ethereum-1/0x0be91692750982b4ba92dabc3985c548098f68c5/) | MTokenMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb350d8decc3adf68c3856d46ab42976ca7a6386f`](./contracts/ethereum-1/0xb350d8decc3adf68c3856d46ab42976ca7a6386f/) | MTokenMessengerLZ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fd20e49239aaedb8490c07a622c129a39296cef`](./contracts/ethereum-1/0x5fd20e49239aaedb8490c07a622c129a39296cef/) | MTokenMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38a1753aed353e58c64a55a3f3c750e919915537`](./contracts/ethereum-1/0x38a1753aed353e58c64a55a3f3c750e919915537/) | rUSTPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba2b09c8f0797d52603b7199f0f16ca216e0cb0b`](./contracts/ethereum-1/0xba2b09c8f0797d52603b7199f0f16ca216e0cb0b/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ac55797d4f43f57ca92a49e65ca582cc287c27`](./contracts/ethereum-1/0x07ac55797d4f43f57ca92a49e65ca582cc287c27/) | TBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dae11d26fc32657b6a55192d15b936b4f50419a`](./contracts/ethereum-1/0x0dae11d26fc32657b6a55192d15b936b4f50419a/) | TBTHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2022be364c2c0b46bb693d154bfb8eb5476a877d`](./contracts/ethereum-1/0x2022be364c2c0b46bb693d154bfb8eb5476a877d/) | TERPOC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2d493616e9e8407509e77c6f21f5f5f52199d1`](./contracts/ethereum-1/0x6d2d493616e9e8407509e77c6f21f5f5f52199d1/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51744764620dbc32ceab204ba0e11c4a4bf7bdd2`](./contracts/ethereum-1/0x51744764620dbc32ceab204ba0e11c4a4bf7bdd2/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c27f7bb05ddf33f3e1004edc16f14d1402838cc`](./contracts/ethereum-1/0x9c27f7bb05ddf33f3e1004edc16f14d1402838cc/) | UniV3Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa47e50e097c8af928769baa0aae7041d77903afc`](./contracts/ethereum-1/0xa47e50e097c8af928769baa0aae7041d77903afc/) | USTP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff5081216c0b1db852d8a1c4a0b7f7f9a03acf5c`](./contracts/ethereum-1/0xff5081216c0b1db852d8a1c4a0b7f7f9a03acf5c/) | USTP_OFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a3766dd21b5460519d2c32eb3a57248c6954e4e`](./contracts/ethereum-1/0x8a3766dd21b5460519d2c32eb3a57248c6954e4e/) | USTPHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x377f8ca183376b195e434f4720290b8921e709d4`](./contracts/ethereum-1/0x377f8ca183376b195e434f4720290b8921e709d4/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288a8005c53632d920045b7c7c2e54a3f1bc4c83`](./contracts/ethereum-1/0x288a8005c53632d920045b7c7c2e54a3f1bc4c83/) | WSTBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc72386da1f13f291f02363d0619f4d575d3dcf20`](./contracts/ethereum-1/0xc72386da1f13f291f02363d0619f4d575d3dcf20/) | wTBTPoolV2Permission | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=55

Fork inheritance lineage and inherited audits are included when available.
