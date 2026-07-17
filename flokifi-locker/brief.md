# Agentic Audit Brief: FlokiFi Locker

## Project Overview

- Project: FlokiFi Locker (`flokifi-locker`)
- Website: [https://flokifi.com](https://flokifi.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.386Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $8,886,132.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Token Locker. Structurally: 19 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (exchangepoolprocessor). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/19 (5.3%)
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/19
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 5.3% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlokiRewardToken | unknown | ethereum | n/a | [`0xf7756db83625e78d693ca90749e2d0869dfc099c`](./contracts/ethereum-1/0xf7756db83625e78d693ca90749e2d0869dfc099c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConstantMultiplier | unknown | ethereum | n/a | [`0xb254cc6c1d178c2de8182cede6113a986bb90721`](./contracts/ethereum-1/0xb254cc6c1d178c2de8182cede6113a986bb90721/) | ⚠️ Unaudited |
| DynamicTaxHandler | unknown | ethereum | n/a | [`0x834f96fd4fe9147a2a647d957fbbe67fec62b67b`](./contracts/ethereum-1/0x834f96fd4fe9147a2a647d957fbbe67fec62b67b/) | ⚠️ Unaudited |
| ExponentialTaxHandler | unknown | ethereum | n/a | [`0xa4ffccd34a129a2554db737b518b269b81d87dbe`](./contracts/ethereum-1/0xa4ffccd34a129a2554db737b518b269b81d87dbe/) | ⚠️ Unaudited |
| FLOKI | unknown | ethereum | n/a | [`0x43f11c02439e2736800433b4594994bd43cd066d`](./contracts/ethereum-1/0x43f11c02439e2736800433b4594994bd43cd066d/) | ⚠️ Unaudited |
| FlokiInuNFTReward | unknown | ethereum | n/a | [`0x064f9547a78bd5ba35a7aeb2221de69b86cd6307`](./contracts/ethereum-1/0x064f9547a78bd5ba35a7aeb2221de69b86cd6307/) | ⚠️ Unaudited |
| FlokiInuNFTRewardPickUp | unknown | ethereum | n/a | [`0x1b231f8e6f16ea0b5ca0d2f39eb595bec3e5db16`](./contracts/ethereum-1/0x1b231f8e6f16ea0b5ca0d2f39eb595bec3e5db16/) | ⚠️ Unaudited |
| FlokiInuNFTRubyRewardPickUp | unknown | ethereum | n/a | [`0x1b823442253556b4cb8d2586d8dc0fc01c2dc741`](./contracts/ethereum-1/0x1b823442253556b4cb8d2586d8dc0fc01c2dc741/) | ⚠️ Unaudited |
| FlokiStakingPool | unknown | ethereum | n/a | [`0xb8d2471e35ee033db509e0456c8efc4135f4ee43`](./contracts/ethereum-1/0xb8d2471e35ee033db509e0456c8efc4135f4ee43/) | ⚠️ Unaudited |
| Flokitar | unknown | ethereum | n/a | [`0x23051fe0eb93fabe7b314fd56a95f395058c83b9`](./contracts/ethereum-1/0x23051fe0eb93fabe7b314fd56a95f395058c83b9/) | ⚠️ Unaudited |
| GemstoneNFT | unknown | ethereum | n/a | [`0x0398947346144d39e1983c3d9a63248a2655ec00`](./contracts/ethereum-1/0x0398947346144d39e1983c3d9a63248a2655ec00/) | ⚠️ Unaudited |
| PenaltyFee | unknown | ethereum | n/a | [`0x4761295cb20bbf40952b3239bdc4fcd14021e30d`](./contracts/ethereum-1/0x4761295cb20bbf40952b3239bdc4fcd14021e30d/) | ⚠️ Unaudited |
| SpecialTaxHandler | unknown | ethereum | n/a | [`0x4b4cf7c7e189da2eddcfbf4430ca5ca9ce81baf0`](./contracts/ethereum-1/0x4b4cf7c7e189da2eddcfbf4430ca5ca9ce81baf0/) | ⚠️ Unaudited |
| StaticTaxHandler | unknown | ethereum | n/a | [`0x12e39cd22501eec967663b9b58946d02da2df74c`](./contracts/ethereum-1/0x12e39cd22501eec967663b9b58946d02da2df74c/) | ⚠️ Unaudited |
| StaticTaxHandlerWithMaximum | unknown | ethereum | n/a | [`0x162e54eb85dd85c3f1d27918d3fa950af1033bf7`](./contracts/ethereum-1/0x162e54eb85dd85c3f1d27918d3fa950af1033bf7/) | ⚠️ Unaudited |
| T1 | unknown | ethereum | n/a | [`0x4507cef57c46789ef8d1a19ea45f4216bae2b528`](./contracts/ethereum-1/0x4507cef57c46789ef8d1a19ea45f4216bae2b528/) | ⚠️ Unaudited |
| TreasuryHandlerAlpha | unknown | ethereum | n/a | [`0x35e6e44f97e3a112dbabf9eb47d6f84224024c24`](./contracts/ethereum-1/0x35e6e44f97e3a112dbabf9eb47d6f84224024c24/) | ⚠️ Unaudited |
| ZeroTaxHandler | unknown | ethereum | n/a | [`0x4491c4c1d1bf636057eab66cd986da08f619bd56`](./contracts/ethereum-1/0x4491c4c1d1bf636057eab66cd986da08f619bd56/) | ⚠️ Unaudited |
| ZeroTreasuryHandler | unknown | ethereum | n/a | [`0x2bd06f15bcb6ff028befc4a4dd21ed0f1028b0e2`](./contracts/ethereum-1/0x2bd06f15bcb6ff028befc4a4dd21ed0f1028b0e2/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/flokifi) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | 1 | medium |
| [Is FlokiFi Locker Secure and Audited?](https://flokifi.gitbook.io/flokifi-documentation/about-flokifi/is-flokifi-locker-secure-and-audited.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb254cc6c1d178c2de8182cede6113a986bb90721`](./contracts/ethereum-1/0xb254cc6c1d178c2de8182cede6113a986bb90721/) | ConstantMultiplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x834f96fd4fe9147a2a647d957fbbe67fec62b67b`](./contracts/ethereum-1/0x834f96fd4fe9147a2a647d957fbbe67fec62b67b/) | DynamicTaxHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ffccd34a129a2554db737b518b269b81d87dbe`](./contracts/ethereum-1/0xa4ffccd34a129a2554db737b518b269b81d87dbe/) | ExponentialTaxHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43f11c02439e2736800433b4594994bd43cd066d`](./contracts/ethereum-1/0x43f11c02439e2736800433b4594994bd43cd066d/) | FLOKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x064f9547a78bd5ba35a7aeb2221de69b86cd6307`](./contracts/ethereum-1/0x064f9547a78bd5ba35a7aeb2221de69b86cd6307/) | FlokiInuNFTReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b231f8e6f16ea0b5ca0d2f39eb595bec3e5db16`](./contracts/ethereum-1/0x1b231f8e6f16ea0b5ca0d2f39eb595bec3e5db16/) | FlokiInuNFTRewardPickUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b823442253556b4cb8d2586d8dc0fc01c2dc741`](./contracts/ethereum-1/0x1b823442253556b4cb8d2586d8dc0fc01c2dc741/) | FlokiInuNFTRubyRewardPickUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8d2471e35ee033db509e0456c8efc4135f4ee43`](./contracts/ethereum-1/0xb8d2471e35ee033db509e0456c8efc4135f4ee43/) | FlokiStakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23051fe0eb93fabe7b314fd56a95f395058c83b9`](./contracts/ethereum-1/0x23051fe0eb93fabe7b314fd56a95f395058c83b9/) | Flokitar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0398947346144d39e1983c3d9a63248a2655ec00`](./contracts/ethereum-1/0x0398947346144d39e1983c3d9a63248a2655ec00/) | GemstoneNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4761295cb20bbf40952b3239bdc4fcd14021e30d`](./contracts/ethereum-1/0x4761295cb20bbf40952b3239bdc4fcd14021e30d/) | PenaltyFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b4cf7c7e189da2eddcfbf4430ca5ca9ce81baf0`](./contracts/ethereum-1/0x4b4cf7c7e189da2eddcfbf4430ca5ca9ce81baf0/) | SpecialTaxHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12e39cd22501eec967663b9b58946d02da2df74c`](./contracts/ethereum-1/0x12e39cd22501eec967663b9b58946d02da2df74c/) | StaticTaxHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x162e54eb85dd85c3f1d27918d3fa950af1033bf7`](./contracts/ethereum-1/0x162e54eb85dd85c3f1d27918d3fa950af1033bf7/) | StaticTaxHandlerWithMaximum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4507cef57c46789ef8d1a19ea45f4216bae2b528`](./contracts/ethereum-1/0x4507cef57c46789ef8d1a19ea45f4216bae2b528/) | T1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35e6e44f97e3a112dbabf9eb47d6f84224024c24`](./contracts/ethereum-1/0x35e6e44f97e3a112dbabf9eb47d6f84224024c24/) | TreasuryHandlerAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4491c4c1d1bf636057eab66cd986da08f619bd56`](./contracts/ethereum-1/0x4491c4c1d1bf636057eab66cd986da08f619bd56/) | ZeroTaxHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bd06f15bcb6ff028befc4a4dd21ed0f1028b0e2`](./contracts/ethereum-1/0x2bd06f15bcb6ff028befc4a4dd21ed0f1028b0e2/) | ZeroTreasuryHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [20303] Is FlokiFi Locker Secure and Audited?

Fork inheritance lineage and inherited audits are included when available.
