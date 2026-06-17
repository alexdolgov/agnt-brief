# Agentic Audit Brief: Giza

⚠️ Lifecycle status: DECLINING - TVL dropped 99.9% over 90 days

## Project Overview

- Project: Giza (`giza`)
- Website: [https://www.gizatech.xyz/](https://www.gizatech.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:45.286Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, plasma
- Contract surface: 19 unique implementations (36 raw deployments)
- DeFi Llama TVL: $13,974.16
- On-chain TVL (included contracts): $140,583,772.84
- TVL by chain: Plasma $78,174,057.37 | Arbitrum $39,964,367.42 | Base $22,445,348.04

## Project Description

Giza is autonomous financial intelligence / AI-agent infrastructure for non-custodial DeFi strategy execution. Its agents can route and manage capital across DeFi venues and strategies, including lending markets such as Morpho or Compound where applicable, but Giza itself should not be described as a standalone decentralized lending and borrowing protocol.

### Architecture

The Giza family combines Compound-based lending markets (MErc20 tokens) with Morpho vaults (MetaMorpho) to optimize yield. Shared infrastructure includes data providers and a registry beacon proxy, while fTokens represent user positions across these markets.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 36 (22 live, 14 unknown).
- Excluded by liveness: 12 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 3/9 live.
- Detected codebases: compound-v2
- Dependencies extracted: 25; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 36
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $140,583,772.84
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $140,583,772.84 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| fToken | token | arbitrum | n/a | 3 deployments: base `0xf42f57...fd9169`; plasma `0x1dd4b1...2ed27b`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| MWethDelegate | token | base | unit-27367 | [`0x628ff6...09d457`](./contracts/base-8453/0x628ff693426583d9a7fb391e54366292f509d457/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | arbitrum | n/a | 5 deployments: arbitrum [`0x3362c1...74fa8d`](./contracts/arbitrum-42161/0x3362c1265a0522f321253708c9fb176f2274fa8d/); arbitrum `0x71fbf4...69ce9a`; arbitrum `0xab7f38...a04388`; arbitrum `0xc9bfc3...4c12d0`; arbitrum `0xd8d5fb...6cf1ec` | ⚠️ Unaudited |
| EVault | core_logic | arbitrum | unit-27372 (2 proxies) | 2 deployments: arbitrum [`0x05d28a...6160b3`](./contracts/arbitrum-42161/0x05d28a86e057364f6ad1a88944297e58fc6160b3/); arbitrum `0x0a1ecc...69b899` | ⚠️ Unaudited |
| EVault | core_logic | base | unit-27365 | [`0x0a1a3b...80ee16`](./contracts/base-8453/0x0a1a3b5f2041f33522c4efc754a7d096f880ee16/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | base | n/a | 2 deployments: base [`0xd82a47...2153ad`](./contracts/base-8453/0xd82a47fdebb5bf5329b09441c3dab4b5df2153ad/); plasma `0xf2d6e3...c7419f` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | n/a | [`0xa49d74...28dddb`](./contracts/base-8453/0xa49d748e0ecbdd8de5305bd1bd9c39f85e28dddb/) | ⚠️ Unaudited |
| BeaconProxy | registry | plasma | n/a | [`0xb0004a...930112`](./contracts/plasma-9745/0xb0004ad99f0e383cc413ba69acff7c229d930112/) | ⚠️ Unaudited |
| Bumpor | unknown | base | n/a | [`0x895407...e9bcb8`](./contracts/base-8453/0x895407f1ec37c46d8b5bca3884711172c8e9bcb8/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | unit-27369 | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | unit-27373 | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| EmissionDistributor | operational_periphery | base | n/a | [`0x6d1049...fbc742`](./contracts/base-8453/0x6d104968d1d64aecea5f16aa956a87d67ffbc742/) | ⚠️ Unaudited |
| GizaOFTAdapter | adapter | ethereum | n/a | [`0x0b0e00...ec97c3`](./contracts/ethereum-1/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3/) | ⚠️ Unaudited |
| GizaSideChain | unknown | base | n/a | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 3 deployments: base [`0xbeef01...228183`](./contracts/base-8453/0xbeef010f9cb27031ad51e3333f9af9c6b1228183/); base `0xc1256a...00a2ca`; base `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 7 deployments: base [`0x234792...753b5e`](./contracts/base-8453/0x23479229e52ab6aad312d0b03df9f33b46753b5e/); base `0x616a4e...273738`; base `0x7bfa7c...cbf34a`; base `0xbeefe9...cb83b2`; arbitrum `0x5c0c30...1563ba`; arbitrum `0x7c5741...a8b3ed`; arbitrum `0x7e97fa...201e65` | ⚠️ Unaudited |
| Staker | core_logic | base | n/a | [`0xe57663...6d8e18`](./contracts/base-8453/0xe576638a9f2ad99ee9dd6f4acbb83217566d8e18/) | ⚠️ Unaudited |
| TemporalGovernor | governance | base | n/a | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | ⚠️ Unaudited |
| WETHRouter | adapter | base | n/a | 2 deployments: base [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/); base `0x70778c...75d0c9` | ⚠️ Unaudited |

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
| ethereum | [`0x0b0e00...ec97c3`](./contracts/ethereum-1/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3/) | GizaOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | GizaSideChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe57663...6d8e18`](./contracts/base-8453/0xe576638a9f2ad99ee9dd6f4acbb83217566d8e18/) | Staker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/) | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 5 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
