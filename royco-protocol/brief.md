# Agentic Audit Brief: Royco Protocol

## Project Overview

- Project: Royco Protocol (`royco-protocol`)
- Website: [https://www.royco.org](https://www.royco.org)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:35.602Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, ethereum, hyperliquid, sonic
- Contract surface: 15 unique implementations (36 raw deployments)
- DeFi Llama TVL: $31,920,059.00
- On-chain TVL (included contracts): $12,983,028.20
- TVL by chain: Ethereum $12,983,021.20 | Sonic $7.00

## Project Description

Royco Protocol is an active, non-custodial risk-tranching protocol for curated DeFi vaults. Through Royco Dawn, users can allocate capital into senior and junior tranches of vault opportunities: junior tranches provide first-loss coverage and take on more variable yield risk, while senior tranches receive a more protected risk profile. The protocol focuses on curated vaults, tranche-based risk allocation, and variable yield opportunities rather than being described primarily as a generic yield optimization or points-infrastructure platform.

### Architecture

Royco V1 provides the foundational vault and teller contracts, while Royco V2 introduces a factory pattern for scalable deployments. The Ethereum, Sonic, Hyperliquid, and Plume families represent chain-specific instances of shared infrastructure like WrappedVault, VaultMarketHub, and RecipeMarketHub, all relying on common registries and helper contracts.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 36 (13 live, 23 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Unverified dependencies: 4/24.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 2
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 36
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,983,028.20
- Latest audit: 2026-01 (fresh)
- Staleness: 3 fresh, 1 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConcreteAsyncVaultImpl | core_logic | ethereum | unit-21376 | [`0xcd9f59...0d2a32`](./contracts/ethereum-1/0xcd9f5907f92818bc06c9ad70217f089e190d2a32/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x74d1fa...bad5cc`](./contracts/ethereum-1/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/); sonic [`0x74d1fa...bad5cc`](./contracts/sonic-146/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/) | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x80f0b2...e6bac9`](./contracts/sonic-146/0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9/); sonic `0x830129...b0416e` | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x90983e...16a396`](./contracts/ethereum-1/0x90983ebf38e981ae38f7da9e71804380e316a396/); sonic [`0x90983e...16a396`](./contracts/sonic-146/0x90983ebf38e981ae38f7da9e71804380e316a396/) | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | ethereum | n/a | [`0x60ebb5...42b0b8`](./contracts/ethereum-1/0x60ebb5d1454bb99aa35f63f609e79179b342b0b8/) | ⚠️ Unaudited |
| MultisigStrategy | core_logic | ethereum | unit-21377 | [`0xd3f8ed...7a6c2d`](./contracts/ethereum-1/0xd3f8edff57570c4f9b11cc95ea65117e2d7a6c2d/) | ⚠️ Unaudited |
| RecipeMarketHub | unknown | hyperliquid | n/a | 5 deployments: ethereum `0x783251...d937c0`; sonic `0xfcc593...95bdbd`; hyperliquid [`0x6af057...6787fd`](./contracts/hyperliquid-999/0x6af057b1c423d108ab710d6f4e3e46f3536787fd/); base `0x783251...d937c0`; arbitrum `0x783251...d937c0` | ⚠️ Unaudited |
| RoycoFactory | registry | ethereum | unit-21375 | [`0x7cc6fb...27253c`](./contracts/ethereum-1/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| RoycoFactory | registry | arbitrum | unit-21378 | [`0x7cc6fb...27253c`](./contracts/arbitrum-42161/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| RoycoFactory | registry | avalanche | unit-21379 | [`0x7cc6fb...27253c`](./contracts/avalanche-43114/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-21374 | [`0x170ff0...4af6c8`](./contracts/ethereum-1/0x170ff06326ebb64bf609a848fc143143994af6c8/) | ⚠️ Unaudited |
| WeirollWalletHelper | periphery | ethereum | n/a | 5 deployments: ethereum [`0x07899a...7c9911`](./contracts/ethereum-1/0x07899ac8be7462151d6515fcd4773dd9267c9911/); sonic [`0x07899a...7c9911`](./contracts/sonic-146/0x07899ac8be7462151d6515fcd4773dd9267c9911/); hyperliquid [`0x07899a...7c9911`](./contracts/hyperliquid-999/0x07899ac8be7462151d6515fcd4773dd9267c9911/); base [`0x07899a...7c9911`](./contracts/base-8453/0x07899ac8be7462151d6515fcd4773dd9267c9911/); arbitrum [`0x07899a...7c9911`](./contracts/arbitrum-42161/0x07899ac8be7462151d6515fcd4773dd9267c9911/) | ⚠️ Unaudited |
| WrappedVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x3c44c2...eb3e66`](./contracts/ethereum-1/0x3c44c20377e252567d283dc7746d1bea67eb3e66/); sonic `0xb0a396...e2bf33`; base [`0x3c44c2...eb3e66`](./contracts/base-8453/0x3c44c20377e252567d283dc7746d1bea67eb3e66/); base `0xb0a396...e2bf33`; arbitrum [`0x3c44c2...eb3e66`](./contracts/arbitrum-42161/0x3c44c20377e252567d283dc7746d1bea67eb3e66/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultMarketHub | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x595ee7...e301fc`](./contracts/hyperliquid-999/0x595ee728f3b8f5e937f6a21fe20f929dd8e301fc/); base `0xa97ecc...769280`; arbitrum `0xa97ecc...769280` | ⚠️ Unaudited (bytecode match) |
| WeirollWallet | unknown | ethereum | n/a | 5 deployments: ethereum [`0x40a1c0...309dc0`](./contracts/ethereum-1/0x40a1c08084671e9a799b73853e82308225309dc0/); sonic [`0x40a1c0...309dc0`](./contracts/sonic-146/0x40a1c08084671e9a799b73853e82308225309dc0/); hyperliquid [`0x40a1c0...309dc0`](./contracts/hyperliquid-999/0x40a1c08084671e9a799b73853e82308225309dc0/); base [`0x40a1c0...309dc0`](./contracts/base-8453/0x40a1c08084671e9a799b73853e82308225309dc0/); arbitrum [`0x40a1c0...309dc0`](./contracts/arbitrum-42161/0x40a1c08084671e9a799b73853e82308225309dc0/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| Hexens | Royco Dawn protocol contracts ([Jan 2026 Audit]() \| [Mar 2026 Update](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) \| [Apr 2026 Update](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026)) | Manual review |](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [| Hexens | Royco Dawn protocol contracts ([Jan 2026 Audit](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) \| [Mar 2026 Update]() \| [Apr 2026 Update](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026)) | Manual review |](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [| Hexens | Royco Dawn protocol contracts ([Jan 2026 Audit](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) \| [Mar 2026 Update](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) \| [Apr 2026 Update]()) | Manual review |](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [Royco's audits can be found in [Section 7](/security-and-audits). Concrete has completed audits with [Cantina]() and [Halborn](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf/). Additionally, Makina has completed audits from [ChainSecurity, Enigma Dark, Sigma Prime, Cantina and Ottersec](https://docs.makina.finance/contracts/security).](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Royco's audits can be found in [Section 7](/security-and-audits). Concrete has completed audits with [Cantina](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf/) and [Halborn](). Additionally, Makina has completed audits from [ChainSecurity, Enigma Dark, Sigma Prime, Cantina and Ottersec](https://docs.makina.finance/contracts/security).](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | Enigma Ventures | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Royco's audits can be found in [Section 7](/security-and-audits). Concrete has completed audits with [Cantina](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf/) and [Halborn](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf/). Additionally, Makina has completed audits from [ChainSecurity, Enigma Dark, Sigma Prime, Cantina and Ottersec]().](https://docs.makina.finance/contracts/security) | Enigma Ventures | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11653] | Hexens | Royco Dawn protocol contracts ([Jan 2026 Audit]() \| [Mar 2026 Update](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) \| [Apr 2026 Update](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026)) | Manual review |
- [11654] | Hexens | Royco Dawn protocol contracts ([Jan 2026 Audit](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) \| [Mar 2026 Update]() \| [Apr 2026 Update](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026)) | Manual review |
- [11655] | Hexens | Royco Dawn protocol contracts ([Jan 2026 Audit](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) \| [Mar 2026 Update](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) \| [Apr 2026 Update]()) | Manual review |
- [11656] Royco's audits can be found in [Section 7](/security-and-audits). Concrete has completed audits with [Cantina]() and [Halborn](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf/). Additionally, Makina has completed audits from [ChainSecurity, Enigma Dark, Sigma Prime, Cantina and Ottersec](https://docs.makina.finance/contracts/security).
- [11657] Royco's audits can be found in [Section 7](/security-and-audits). Concrete has completed audits with [Cantina](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf/) and [Halborn](). Additionally, Makina has completed audits from [ChainSecurity, Enigma Dark, Sigma Prime, Cantina and Ottersec](https://docs.makina.finance/contracts/security).
- [11658] Royco's audits can be found in [Section 7](/security-and-audits). Concrete has completed audits with [Cantina](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf/) and [Halborn](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf/). Additionally, Makina has completed audits from [ChainSecurity, Enigma Dark, Sigma Prime, Cantina and Ottersec]().

Fork inheritance lineage and inherited audits are included when available.
