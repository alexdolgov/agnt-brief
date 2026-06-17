# Agentic Audit Brief: HyperWave

## Project Overview

- Project: HyperWave (`hyperwave`)
- Website: [https://app.hyperwavefi.xyz](https://app.hyperwavefi.xyz)
- Lifecycle: active (Tier 0, 86.2% below peak)
- Generated: 2026-06-17T07:00:40.452Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum, hyperliquid
- Contract surface: 13 unique implementations (38 raw deployments)
- DeFi Llama TVL: $3,317,652.40
- On-chain TVL (included contracts): $499,873,407.55
- TVL by chain: Ethereum $322,695,046.97 | Base $177,178,305.28 | Hyperliquid $55.30

## Project Description

HyperWave is Hyperliquid-focused financial infrastructure centered on HYPE and USD yield vault products, tokenized HLP exposure through hwHLP, and on-chain forex/payments infrastructure. Aave aTokens and Morpho MetaMorpho vaults should be treated as external integrations or upstream dependencies unless separate evidence establishes HyperWave ownership of those contracts.

### Architecture

All product families share the BoringVault pattern for asset custody and rely on AccountantWithRateProviders for yield calculations, while the HyperWave family provides the AToken receipt tokens that represent user deposits across the other vaults. Governance is decentralized via separate RolesAuthority contracts per family, and MetaMorpho vaults in the HyperWave family serve as underlying yield sources for the AToken proxies.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 38
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $499,873,407.55
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | ethereum | unit-24609 (3 proxies) | 3 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x4f5923...12decf`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | base | unit-24610 | [`0x4e65fe...f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ⚠️ Unaudited |
| BoringVault | core_logic | hyperliquid | n/a | 6 deployments: ethereum `0x9ba2ed...1bb160`; ethereum `0x9fd746...8d72d1`; hyperliquid [`0x4de03c...2f5858`](./contracts/hyperliquid-999/0x4de03ca1f02591b717495cfa19913ad56a2f5858/); hyperliquid `0x855ced...f55c4f`; hyperliquid `0x9fd746...8d72d1`; hyperliquid `0xa2f8da...a4ff77` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | hyperliquid | n/a | 4 deployments: hyperliquid [`0x74f3b2...510e3b`](./contracts/hyperliquid-999/0x74f3b2edc56df9d2a7db9249d9bae6e346510e3b/); hyperliquid `0x78e3ac...d0b03e`; hyperliquid `0xa77f32...46055d`; hyperliquid `0xcf9be8...ee2a32` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x519a4e...ae5618`](./contracts/hyperliquid-999/0x519a4e3ee7daea8d2814f059eefcd44dc4ae5618/); hyperliquid `0xd0f20e...df11d2`; hyperliquid `0xe3d3b6...0d1cc1`; hyperliquid `0xf0cd28...1f1929` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 4 deployments: ethereum [`0xbeef01...2a64cb`](./contracts/ethereum-1/0xbeef01735c132ada46aa9aa4c54623caa92a64cb/); ethereum `0xbeef04...0fcfba`; ethereum `0xbeefff...86f5bc`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | 6 deployments: hyperliquid [`0x2900ab...c06a76`](./contracts/hyperliquid-999/0x2900abd73631b2f60747e687095537b673c06a76/); hyperliquid `0x835feb...6938ab`; hyperliquid `0x8a862f...8cea27`; hyperliquid `0xfc5126...7d151e`; base `0x616a4e...273738`; base `0x7bfa7c...cbf34a` | ⚠️ Unaudited |
| RolesAuthority | governance | hyperliquid | n/a | 4 deployments: hyperliquid [`0x4d1cf3...9da917`](./contracts/hyperliquid-999/0x4d1cf31a919d62c65fa616185824fe78a09da917/); hyperliquid `0x5ed141...6ff4cc`; hyperliquid `0xce9dff...1e3b8f`; hyperliquid `0xe4b9c0...204b75` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x70cb1a...9b3dd5`](./contracts/hyperliquid-999/0x70cb1a1888afee738344dd879d818e1f369b3dd5/); hyperliquid `0xfa8035...d079d7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x0e01e3...22e79d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa9d7d...d24bc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfaf328...075c53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffd5ff...03f170` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x519a4e...ae5618`](./contracts/hyperliquid-999/0x519a4e3ee7daea8d2814f059eefcd44dc4ae5618/) | ManagerWithMerkleVerification | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
