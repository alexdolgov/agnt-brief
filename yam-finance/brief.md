# Agentic Audit Brief: Yam Finance

## Project Overview

- Project: Yam Finance (`yam-finance`)
- Website: [https://yam.finance/](https://yam.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.717Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- DeFi Llama TVL: $192,590.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 27 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (yamtokeninterface, yamtokenstorage, yamgovernancestorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/26 (0.0%)
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DualGovernorAlpha | unknown | ethereum | n/a | [`0x45f95c...dc9cc7`](./contracts/ethereum-1/0x45f95ceb85e22877cf0285059405c205ebdc9cc7/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x627023...ae0908`](./contracts/ethereum-1/0x62702387c2a26c903985e9d078d18c45acae0908/) | ⚠️ Unaudited |
| IndexStaking | unknown | ethereum | n/a | [`0x465a5b...b4642d`](./contracts/ethereum-1/0x465a5ba960173386a08505d178b8ca3e24b4642d/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x72cfed...6c811c`](./contracts/ethereum-1/0x72cfed9293cbfb2bfc7515c413048c697c6c811c/) | ⚠️ Unaudited |
| OTC | unknown | ethereum | n/a | [`0x92ab5c...ecb74c`](./contracts/ethereum-1/0x92ab5cce7af1605da2681458ae52a0bec4ecb74c/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x8b4f16...ea3ec5`](./contracts/ethereum-1/0x8b4f1616751117c38a0f84f9a146cca191ea3ec5/) | ⚠️ Unaudited |
| UmbrellaMetaPool | unknown | ethereum | n/a | [`0xc92ec8...a35379`](./contracts/ethereum-1/0xc92ec84423db017ee76354b786ac9c60bea35379/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x0f82e5...cb239c`](./contracts/ethereum-1/0x0f82e57804d0b1f6fab2370a43dcfad3c7cb239c/) | ⚠️ Unaudited |
| YAMAMPLPool | unknown | ethereum | n/a | [`0x9ebb67...90e663`](./contracts/ethereum-1/0x9ebb67687fee2d265d7b824714df13622d90e663/) | ⚠️ Unaudited |
| YAMCOMPPool | unknown | ethereum | n/a | [`0x8538e5...048c9e`](./contracts/ethereum-1/0x8538e5910c6f80419cd3170c26073ff238048c9e/) | ⚠️ Unaudited |
| YAMDelegate | unknown | ethereum | n/a | [`0x0e2298...55da16`](./contracts/ethereum-1/0x0e2298e3b3390e3b945a5456fbf59ecc3f55da16/) | ⚠️ Unaudited |
| YAMDelegate2 | unknown | ethereum | n/a | [`0x209ddd...2b2526`](./contracts/ethereum-1/0x209ddd6b50f748b6eaa25a2793341566492b2526/) | ⚠️ Unaudited |
| YAMDelegate3 | unknown | ethereum | n/a | [`0x0aacfb...0d8521`](./contracts/ethereum-1/0x0aacfbec6a24756c20d41914f2caba817c0d8521/) | ⚠️ Unaudited |
| YAMETHPool | unknown | ethereum | n/a | [`0x587a07...eb06f5`](./contracts/ethereum-1/0x587a07ce5c265a38dd6d42def1566ba73eeb06f5/) | ⚠️ Unaudited |
| YAMIncentivizer | unknown | ethereum | n/a | [`0x5b0501...32a0ed`](./contracts/ethereum-1/0x5b0501f7041120d36bc8c6dc3faea0b74b32a0ed/) | ⚠️ Unaudited |
| YAMIncentivizerWithVoting | unknown | ethereum | n/a | [`0x6ebf85...942ead`](./contracts/ethereum-1/0x6ebf85f830e7d5b3d01eb64e34a1003223942ead/) | ⚠️ Unaudited |
| YAMLENDPool | unknown | ethereum | n/a | [`0x6009a3...9be5fd`](./contracts/ethereum-1/0x6009a344c7f993b16eba2c673fefd2e07f9be5fd/) | ⚠️ Unaudited |
| YAMLINKPool | unknown | ethereum | n/a | [`0xf32f72...fd4e34`](./contracts/ethereum-1/0xf32f72ac09cb6c002d0954318bb548321ffd4e34/) | ⚠️ Unaudited |
| YAMMKRPool | unknown | ethereum | n/a | [`0x9a0846...7e4119`](./contracts/ethereum-1/0x9a0846911e2c6edb06bea20e6fef9bbbf37e4119/) | ⚠️ Unaudited |
| YAMRebaser | unknown | ethereum | n/a | [`0x1fb361...9a7b00`](./contracts/ethereum-1/0x1fb361f274f316d383b94d761832ab68099a7b00/) | ⚠️ Unaudited |
| YAMRebaser2 | unknown | ethereum | n/a | [`0xd93f40...5a1d55`](./contracts/ethereum-1/0xd93f403b432d39aa0f736c2021be6051d85a1d55/) | ⚠️ Unaudited |
| YAMReserves | unknown | ethereum | n/a | [`0xcf27ca...362087`](./contracts/ethereum-1/0xcf27ca116dd5c7b4201c75b46489d1c075362087/) | ⚠️ Unaudited |
| YAMReserves2 | unknown | ethereum | n/a | [`0x97990b...7dea17`](./contracts/ethereum-1/0x97990b693835da58a281636296d2bf02787dea17/) | ⚠️ Unaudited |
| YAMSNXPool | unknown | ethereum | n/a | [`0x6c3fc1...7f132d`](./contracts/ethereum-1/0x6c3fc1ffdb14d92394f40eec91d9ce8b807f132d/) | ⚠️ Unaudited |
| YAMv2 | unknown | ethereum | n/a | [`0xaba8ca...f6ad8a`](./contracts/ethereum-1/0xaba8cac6866b83ae4eec97dd07ed254282f6ad8a/) | ⚠️ Unaudited |
| YAMv2Migration | unknown | ethereum | n/a | [`0xf1d7c9...ffb1c1`](./contracts/ethereum-1/0xf1d7c9e4c57a5c1902f4a4ae2630d2da78ffb1c1/) | ⚠️ Unaudited |
| YAMYFIPool | unknown | ethereum | n/a | [`0x86ad8c...371275`](./contracts/ethereum-1/0x86ad8caa66c407d7485b05584b9ac9a7e2371275/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x45f95c...dc9cc7`](./contracts/ethereum-1/0x45f95ceb85e22877cf0285059405c205ebdc9cc7/) | DualGovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x627023...ae0908`](./contracts/ethereum-1/0x62702387c2a26c903985e9d078d18c45acae0908/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465a5b...b4642d`](./contracts/ethereum-1/0x465a5ba960173386a08505d178b8ca3e24b4642d/) | IndexStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72cfed...6c811c`](./contracts/ethereum-1/0x72cfed9293cbfb2bfc7515c413048c697c6c811c/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92ab5c...ecb74c`](./contracts/ethereum-1/0x92ab5cce7af1605da2681458ae52a0bec4ecb74c/) | OTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4f16...ea3ec5`](./contracts/ethereum-1/0x8b4f1616751117c38a0f84f9a146cca191ea3ec5/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc92ec8...a35379`](./contracts/ethereum-1/0xc92ec84423db017ee76354b786ac9c60bea35379/) | UmbrellaMetaPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ebb67...90e663`](./contracts/ethereum-1/0x9ebb67687fee2d265d7b824714df13622d90e663/) | YAMAMPLPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8538e5...048c9e`](./contracts/ethereum-1/0x8538e5910c6f80419cd3170c26073ff238048c9e/) | YAMCOMPPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2298...55da16`](./contracts/ethereum-1/0x0e2298e3b3390e3b945a5456fbf59ecc3f55da16/) | YAMDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x209ddd...2b2526`](./contracts/ethereum-1/0x209ddd6b50f748b6eaa25a2793341566492b2526/) | YAMDelegate2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aacfb...0d8521`](./contracts/ethereum-1/0x0aacfbec6a24756c20d41914f2caba817c0d8521/) | YAMDelegate3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x587a07...eb06f5`](./contracts/ethereum-1/0x587a07ce5c265a38dd6d42def1566ba73eeb06f5/) | YAMETHPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b0501...32a0ed`](./contracts/ethereum-1/0x5b0501f7041120d36bc8c6dc3faea0b74b32a0ed/) | YAMIncentivizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ebf85...942ead`](./contracts/ethereum-1/0x6ebf85f830e7d5b3d01eb64e34a1003223942ead/) | YAMIncentivizerWithVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6009a3...9be5fd`](./contracts/ethereum-1/0x6009a344c7f993b16eba2c673fefd2e07f9be5fd/) | YAMLENDPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf32f72...fd4e34`](./contracts/ethereum-1/0xf32f72ac09cb6c002d0954318bb548321ffd4e34/) | YAMLINKPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a0846...7e4119`](./contracts/ethereum-1/0x9a0846911e2c6edb06bea20e6fef9bbbf37e4119/) | YAMMKRPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb361...9a7b00`](./contracts/ethereum-1/0x1fb361f274f316d383b94d761832ab68099a7b00/) | YAMRebaser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd93f40...5a1d55`](./contracts/ethereum-1/0xd93f403b432d39aa0f736c2021be6051d85a1d55/) | YAMRebaser2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf27ca...362087`](./contracts/ethereum-1/0xcf27ca116dd5c7b4201c75b46489d1c075362087/) | YAMReserves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97990b...7dea17`](./contracts/ethereum-1/0x97990b693835da58a281636296d2bf02787dea17/) | YAMReserves2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c3fc1...7f132d`](./contracts/ethereum-1/0x6c3fc1ffdb14d92394f40eec91d9ce8b807f132d/) | YAMSNXPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaba8ca...f6ad8a`](./contracts/ethereum-1/0xaba8cac6866b83ae4eec97dd07ed254282f6ad8a/) | YAMv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1d7c9...ffb1c1`](./contracts/ethereum-1/0xf1d7c9e4c57a5c1902f4a4ae2630d2da78ffb1c1/) | YAMv2Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86ad8c...371275`](./contracts/ethereum-1/0x86ad8caa66c407d7485b05584b9ac9a7e2371275/) | YAMYFIPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
