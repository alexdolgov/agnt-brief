# Agentic Audit Brief: Buffer Finance

## Project Overview

- Project: Buffer Finance (`buffer-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.947Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum
- Contract surface: 14 unique implementations (115 raw deployments)
- DeFi Llama TVL: $178.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 25 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (governable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 115 (110 live, 5 unknown).
- Excluded by liveness: 63 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/9 (22.2%)
- Deployed-live implementations: 9 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 115
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 22.2% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 22.2% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BufferBinaryPool | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x6ec7b1...cd9c7e`](./contracts/arbitrum-42161/0x6ec7b10bf7331794adaaf235cb47a2a292cd9c7e/); arbitrum `0xae0628...123833`; arbitrum `0xfd9f88...debde1` | ✅ Audited |
| ReferralStorage | token | arbitrum | n/a | [`0xfea57b...6d9c29`](./contracts/arbitrum-42161/0xfea57b9548cd72d8705e4bb0fa83aa35966d9c29/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BFR | unknown | arbitrum | n/a | [`0x1a5b0a...982a6d`](./contracts/arbitrum-42161/0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d/) | ⚠️ Unaudited |
| BufferBinaryOptions | unknown | arbitrum | n/a | 50 deployments: arbitrum [`0x034ee8...ce371c`](./contracts/arbitrum-42161/0x034ee84703f165e3799377029f86f30925ce371c/); arbitrum `0x109b92...310d3d`; arbitrum `0x12d974...ed6bc3`; arbitrum `0x13779a...5f44e8`; arbitrum `0x175e5c...fc0562`; arbitrum `0x254f94...dcdc31`; arbitrum `0x2578a9...8d9970`; arbitrum `0x2700ea...38ad55`; arbitrum `0x32f6ba...fef3be`; arbitrum `0x37a42a...080358`; arbitrum `0x532321...1ec197`; arbitrum `0x54f0cc...954098`; arbitrum `0x5b58cc...f00ace`; arbitrum `0x5c61a8...57e468`; arbitrum `0x5d61fe...9aad09`; arbitrum `0x5d6f1d...42b814`; arbitrum `0x5ee235...2814fa`; arbitrum `0x5fc7b3...e1b4b5`; arbitrum `0x63e0af...dd27da`; arbitrum `0x65d015...58e946`; arbitrum `0x693596...fbb3ef`; arbitrum `0x6c42ce...f0465d`; arbitrum `0x7b5e6b...803cb0`; arbitrum `0x824f62...d3960e`; arbitrum `0x89dd9b...9d899d`; arbitrum `0x8cf369...54a3b3`; arbitrum `0x8d7a09...cd31fa`; arbitrum `0x9527de...9fa918`; arbitrum `0x99ce13...e9c2e9`; arbitrum `0xa15685...b9b438`; arbitrum `0xa51696...804234`; arbitrum `0xa5f3bd...b1fd8c`; arbitrum `0xa74201...66e734`; arbitrum `0xac5337...166c4b`; arbitrum `0xad6b3a...94efd9`; arbitrum `0xae10c1...d266ad`; arbitrum `0xb7d8f7...9072cd`; arbitrum `0xbcd52d...f66fd5`; arbitrum `0xbe4e89...662b27`; arbitrum `0xc17ba7...eda0a3`; arbitrum `0xcba232...a9e612`; arbitrum `0xd38413...88b21f`; arbitrum `0xdbedc2...25c084`; arbitrum `0xe155bd...4325ce`; arbitrum `0xeacaa1...e1a17c`; arbitrum `0xeec6d4...8c1a44`; arbitrum `0xef5d35...736d0c`; arbitrum `0xf15055...063600`; arbitrum `0xf2bef0...f088a9`; arbitrum `0xfe9fae...a5ba20` | ⚠️ Unaudited |
| BufferRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0e0a12...130305`](./contracts/arbitrum-42161/0x0e0a1241c9ce6649d5d30134a194ba3e24130305/); arbitrum `0xb25fe2...7ecebb` | ⚠️ Unaudited |
| ConfigFactory | unknown | arbitrum | n/a | [`0xf7dccf...a7bdb9`](./contracts/arbitrum-42161/0xf7dccf9dc93ee2c40ea054f1f7f3a6503da7bdb9/) | ⚠️ Unaudited |
| Controller | unknown | arbitrum | n/a | [`0xeb26c5...8cdd24`](./contracts/arbitrum-42161/0xeb26c551f606a9692c05fe06af885717db8cdd24/) | ⚠️ Unaudited |
| OptionsConfig | unknown | arbitrum | n/a | 50 deployments: arbitrum [`0x0341f9...4d3c97`](./contracts/arbitrum-42161/0x0341f977a2a60d2d88bf5cf13cbf5389814d3c97/); arbitrum `0x08d5e0...dae610`; arbitrum `0x09283f...1bf2a0`; arbitrum `0x0c0f15...a1ceda`; arbitrum `0x102dad...5e5f82`; arbitrum `0x131ee3...b43b18`; arbitrum `0x13610a...aa0180`; arbitrum `0x17cefd...e339aa`; arbitrum `0x1b5dcd...cefe64`; arbitrum `0x1c7ca4...cb7e2c`; arbitrum `0x224d74...200e13`; arbitrum `0x243ff9...7777f1`; arbitrum `0x264ffd...17ee67`; arbitrum `0x27535b...3303ae`; arbitrum `0x2ce1e8...c9d16f`; arbitrum `0x31be72...2bfe2d`; arbitrum `0x363bcc...41e731`; arbitrum `0x440c3d...68685b`; arbitrum `0x475fa4...eda27a`; arbitrum `0x486bd1...9ad803`; arbitrum `0x48d165...aea24f`; arbitrum `0x5c95bd...d60bc8`; arbitrum `0x6d5857...afb384`; arbitrum `0x86659a...591add`; arbitrum `0x8991a7...1a9af2`; arbitrum `0x8dac2e...e8cd9c`; arbitrum `0x92af4e...6a12e8`; arbitrum `0x9760d8...a06e0b`; arbitrum `0x98ff74...f6bd10`; arbitrum `0xab4d8f...6e9fe3`; arbitrum `0xb4d4a9...902300`; arbitrum `0xb90c35...ff2c2b`; arbitrum `0xb96cdf...9288cb`; arbitrum `0xbc7dbe...24125a`; arbitrum `0xbcbbf5...1437c7`; arbitrum `0xbe141b...1645eb`; arbitrum `0xc143db...2c880f`; arbitrum `0xc19254...6de67f`; arbitrum `0xcdeb27...34be49`; arbitrum `0xd27100...99491f`; arbitrum `0xdce9f7...ad094d`; arbitrum `0xe888ef...376734`; arbitrum `0xe8a40b...c1bcc8`; arbitrum `0xeadec1...d1dfeb`; arbitrum `0xee78f7...03da47`; arbitrum `0xef9222...ac3305`; arbitrum `0xf07475...04a4d4`; arbitrum `0xf09dad...12b0bc`; arbitrum `0xf2e6fd...2e1230`; arbitrum `0xf9594d...3fec18` | ⚠️ Unaudited |
| OptionsFactory | unknown | arbitrum | n/a | [`0xcc5bc2...0fbe80`](./contracts/arbitrum-42161/0xcc5bc26441f097a640f7aa12a4e5725d590fbe80/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x162c92...53dffc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x222da3...3c80ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ddd35...cca45b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x631385...9693c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb0fdc...d55018` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022.12.08 - Final - Buffer Finance Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2022-12 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x1a5b0a...982a6d`](./contracts/arbitrum-42161/0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d/) | BFR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x034ee8...ce371c`](./contracts/arbitrum-42161/0x034ee84703f165e3799377029f86f30925ce371c/) | BufferBinaryOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e0a12...130305`](./contracts/arbitrum-42161/0x0e0a1241c9ce6649d5d30134a194ba3e24130305/) | BufferRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf7dccf...a7bdb9`](./contracts/arbitrum-42161/0xf7dccf9dc93ee2c40ea054f1f7f3a6503da7bdb9/) | ConfigFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb26c5...8cdd24`](./contracts/arbitrum-42161/0xeb26c551f606a9692c05fe06af885717db8cdd24/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0341f9...4d3c97`](./contracts/arbitrum-42161/0x0341f977a2a60d2d88bf5cf13cbf5389814d3c97/) | OptionsConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcc5bc2...0fbe80`](./contracts/arbitrum-42161/0xcc5bc26441f097a640f7aa12a4e5725d590fbe80/) | OptionsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
