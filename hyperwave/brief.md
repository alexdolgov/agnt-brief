# Agentic Audit Brief: HyperWave

## Project Overview

- Project: HyperWave (`hyperwave`)
- Website: [https://app.hyperwavefi.xyz/hyperfren/DEFILLAMA](https://app.hyperwavefi.xyz/hyperfren/DEFILLAMA)
- Lifecycle: active (Tier 0, 86.2% below peak)
- Generated: 2026-05-31T08:24:52.190Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base, ethereum, hyperliquid
- Contract surface: 12 unique implementations (29 raw deployments)
- DeFi Llama TVL: $6,383,775.03
- On-chain TVL (included contracts): $322,694,300.53
- TVL by chain: Ethereum $322,694,245.24 | Hyperliquid $55.30

## Project Description

HyperWave is a yield optimization protocol that aggregates user deposits into BoringVaults and MetaMorpho vaults, managed by accountants and tellers, to generate returns across multiple chains. It issues receipt tokens (AToken proxies) representing user shares in these strategies.

### Architecture

All product families share the BoringVault pattern for asset custody and rely on AccountantWithRateProviders for yield calculations, while the HyperWave family provides the AToken receipt tokens that represent user deposits across the other vaults. Governance is decentralized via separate RolesAuthority contracts per family, and MetaMorpho vaults in the HyperWave family serve as underlying yield sources for the AToken proxies.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 12
- Raw deployments: 29
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $322,694,300.53
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ATokenInstance | token | ethereum | 3 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x4f5923...12decf`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| BoringVault | core_logic | hyperliquid | 5 deployments: ethereum `0x9ba2ed...1bb160`; hyperliquid [`0x4de03c...2f5858`](./contracts/hyperliquid-999/0x4de03ca1f02591b717495cfa19913ad56a2f5858/); hyperliquid `0x855ced...f55c4f`; hyperliquid `0x9fd746...8d72d1`; hyperliquid `0xa2f8da...a4ff77` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | hyperliquid | 4 deployments: hyperliquid [`0x74f3b2...510e3b`](./contracts/hyperliquid-999/0x74f3b2edc56df9d2a7db9249d9bae6e346510e3b/); hyperliquid `0x78e3ac...d0b03e`; hyperliquid `0xa77f32...46055d`; hyperliquid `0xcf9be8...ee2a32` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | hyperliquid | 3 deployments: hyperliquid [`0xd0f20e...df11d2`](./contracts/hyperliquid-999/0xd0f20e410503fb2b5431bf802263f4671cdf11d2/); hyperliquid `0xe3d3b6...0d1cc1`; hyperliquid `0xf0cd28...1f1929` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | 3 deployments: ethereum [`0xbeef01...2a64cb`](./contracts/ethereum-1/0xbeef01735c132ada46aa9aa4c54623caa92a64cb/); ethereum `0xbeefff...86f5bc`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | [`0x616a4e...273738`](./contracts/base-8453/0x616a4e1db48e22028f6bbf20444cd3b8e3273738/) | ⚠️ Unaudited |
| RolesAuthority | governance | hyperliquid | 4 deployments: hyperliquid [`0x4d1cf3...9da917`](./contracts/hyperliquid-999/0x4d1cf31a919d62c65fa616185824fe78a09da917/); hyperliquid `0x5ed141...6ff4cc`; hyperliquid `0xce9dff...1e3b8f`; hyperliquid `0xe4b9c0...204b75` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | hyperliquid | 2 deployments: hyperliquid [`0x70cb1a...9b3dd5`](./contracts/hyperliquid-999/0x70cb1a1888afee738344dd879d818e1f369b3dd5/); hyperliquid `0xfa8035...d079d7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | `0x0e01e3...22e79d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfa9d7d...d24bc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfaf328...075c53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xffd5ff...03f170` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x4de03c...2f5858`](./contracts/hyperliquid-999/0x4de03ca1f02591b717495cfa19913ad56a2f5858/) | BoringVault | core_logic | $55.30 | Verified native implementation with $55.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4d1cf3...9da917`](./contracts/hyperliquid-999/0x4d1cf31a919d62c65fa616185824fe78a09da917/) | RolesAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x70cb1a...9b3dd5`](./contracts/hyperliquid-999/0x70cb1a1888afee738344dd879d818e1f369b3dd5/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
