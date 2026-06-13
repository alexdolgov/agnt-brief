# Agentic Audit Brief: Giza

⚠️ Lifecycle status: DECLINING - TVL dropped 99.9% over 90 days

## Project Overview

- Project: Giza (`giza`)
- Website: [https://www.gizatech.xyz/](https://www.gizatech.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-13T22:21:17.084Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-ab91
- Chains: arbitrum, base, ethereum, plasma
- Contract surface: 25 unique implementations (57 raw deployments)
- DeFi Llama TVL: $13,974.16
- On-chain TVL (included contracts): $159,171,094.52
- TVL by chain: Plasma $78,174,057.37 | Base $41,032,669.72 | Arbitrum $39,964,367.42

## Project Description

Giza is autonomous financial intelligence / AI-agent infrastructure for non-custodial DeFi strategy execution. Its agents can route and manage capital across DeFi venues and strategies, including lending markets such as Morpho or Compound where applicable, but Giza itself should not be described as a standalone decentralized lending and borrowing protocol.

### Architecture

The Giza family combines Compound-based lending markets (MErc20 tokens) with Morpho vaults (MetaMorpho) to optimize yield. Shared infrastructure includes data providers and a registry beacon proxy, while fTokens represent user positions across these markets.

## Audit Coverage Summary

- Verified implementations audited: 0/25 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 57
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $159,171,094.52
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $159,171,094.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| fToken | token | arbitrum | 3 deployments: base `0xf42f57...fd9169`; plasma `0x1dd4b1...2ed27b`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| MErc20Delegate | token | base | 5 deployments: base [`0x1fadff...da45b7`](./contracts/base-8453/0x1fadff493529c3fcc7ee04f1f15d19816dda45b7/); base `0x3bf937...09a5e5`; base `0x703843...065cc8`; base `0x73b06d...462417`; base `0xedc817...176c22` | ⚠️ Unaudited |
| MWethDelegate | token | base | [`0x628ff6...09d457`](./contracts/base-8453/0x628ff693426583d9a7fb391e54366292f509d457/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | arbitrum | 5 deployments: arbitrum [`0x3362c1...74fa8d`](./contracts/arbitrum-42161/0x3362c1265a0522f321253708c9fb176f2274fa8d/); arbitrum `0x71fbf4...69ce9a`; arbitrum `0xab7f38...a04388`; arbitrum `0xc9bfc3...4c12d0`; arbitrum `0xd8d5fb...6cf1ec` | ⚠️ Unaudited |
| EVault | core_logic | arbitrum | 3 deployments: base `0x0a1a3b...80ee16`; arbitrum [`0x05d28a...6160b3`](./contracts/arbitrum-42161/0x05d28a86e057364f6ad1a88944297e58fc6160b3/); arbitrum `0x0a1ecc...69b899` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | arbitrum | 3 deployments: base `0xd82a47...2153ad`; plasma `0xf2d6e3...c7419f`; arbitrum [`0x6b4e26...9ff93e`](./contracts/arbitrum-42161/0x6b4e260b765b3ca1514e618c0215a6b7839ff93e/) | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | [`0xa49d74...28dddb`](./contracts/base-8453/0xa49d748e0ecbdd8de5305bd1bd9c39f85e28dddb/) | ⚠️ Unaudited |
| BeaconProxy | registry | plasma | [`0xb0004a...930112`](./contracts/plasma-9745/0xb0004ad99f0e383cc413ba69acff7c229d930112/) | ⚠️ Unaudited |
| Bumpor | unknown | base | [`0x895407...e9bcb8`](./contracts/base-8453/0x895407f1ec37c46d8b5bca3884711172c8e9bcb8/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | 2 deployments: base `0xb125e6...15eb2f`; arbitrum [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| Comptroller | unknown | base | 2 deployments: base [`0x73d8a3...75d8fe`](./contracts/base-8453/0x73d8a3bf62aaca6690791e57ebaee4e1d875d8fe/); base `0xfbb21d...3ef26c` | ⚠️ Unaudited |
| EmissionDistributor | operational_periphery | base | [`0x6d1049...fbc742`](./contracts/base-8453/0x6d104968d1d64aecea5f16aa956a87d67ffbc742/) | ⚠️ Unaudited |
| GizaCouncil | governance | base | [`0xc98b51...d06027`](./contracts/base-8453/0xc98b51936af651c9eee4e5b9787258a144d06027/) | ⚠️ Unaudited |
| GizaOFTAdapter | adapter | ethereum | [`0x0b0e00...ec97c3`](./contracts/ethereum-1/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3/) | ⚠️ Unaudited |
| GizaSideChain | unknown | base | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | base | 6 deployments: base [`0x149940...217176`](./contracts/base-8453/0x14994008e5b7547d2dfe9decbb47456cea217176/); base `0x160317...3d138b`; base `0x523262...fb6696`; base `0x93aee5...62cdeb`; base `0x96bf78...f66de5`; base `0xbc93dd...0ab97d` | ⚠️ Unaudited |
| MErc20Delegator | token | base | [`0x2f903d...10bc6c`](./contracts/base-8453/0x2f903de0e30852f413a7cceae9ca45a66010bc6c/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | 3 deployments: base [`0xbeef01...228183`](./contracts/base-8453/0xbeef010f9cb27031ad51e3333f9af9c6b1228183/); base `0xc1256a...00a2ca`; base `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | 7 deployments: base [`0x234792...753b5e`](./contracts/base-8453/0x23479229e52ab6aad312d0b03df9f33b46753b5e/); base `0x616a4e...273738`; base `0x7bfa7c...cbf34a`; base `0xbeefe9...cb83b2`; arbitrum `0x5c0c30...1563ba`; arbitrum `0x7c5741...a8b3ed`; arbitrum `0x7e97fa...201e65` | ⚠️ Unaudited |
| MultiRewardDistributor | operational_periphery | base | 2 deployments: base [`0xdc649f...cfef0f`](./contracts/base-8453/0xdc649f4fa047a3c98e8705e85b8b1bafcbcfef0f/); base `0xe9005b...0ad9d2` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | [`0x8d7d22...69770f`](./contracts/base-8453/0x8d7d2230a2d195f023588edd13dbad56dd69770f/) | ⚠️ Unaudited |
| Staker | core_logic | base | [`0xe57663...6d8e18`](./contracts/base-8453/0xe576638a9f2ad99ee9dd6f4acbb83217566d8e18/) | ⚠️ Unaudited |
| TemporalGovernor | governance | base | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | ⚠️ Unaudited |
| Tw_EarningPowerCalculator | unknown | base | [`0x3e92f4...2abca1`](./contracts/base-8453/0x3e92f421b6641242fe65c280afa03cea492abca1/) | ⚠️ Unaudited |
| WETHRouter | adapter | base | 3 deployments: base [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/); base `0x70778c...75d0c9`; base `0xdafecc...7ad0d4` | ⚠️ Unaudited |

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
| arbitrum | [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | fToken | token | $128,622,308.82 | Verified native implementation with $128,622,308.82 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa49d74...28dddb`](./contracts/base-8453/0xa49d748e0ecbdd8de5305bd1bd9c39f85e28dddb/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x895407...e9bcb8`](./contracts/base-8453/0x895407f1ec37c46d8b5bca3884711172c8e9bcb8/) | Bumpor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d1049...fbc742`](./contracts/base-8453/0x6d104968d1d64aecea5f16aa956a87d67ffbc742/) | EmissionDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc98b51...d06027`](./contracts/base-8453/0xc98b51936af651c9eee4e5b9787258a144d06027/) | GizaCouncil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b0e00...ec97c3`](./contracts/ethereum-1/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3/) | GizaOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | GizaSideChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe57663...6d8e18`](./contracts/base-8453/0xe576638a9f2ad99ee9dd6f4acbb83217566d8e18/) | Staker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e92f4...2abca1`](./contracts/base-8453/0x3e92f421b6641242fe65c280afa03cea492abca1/) | Tw_EarningPowerCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/) | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 10 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
