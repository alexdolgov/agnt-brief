# Agentic Audit Brief: Royco Protocol

## Project Overview

- Project: Royco Protocol (`royco-protocol`)
- Website: [https://www.royco.org](https://www.royco.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.758Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, avalanche, base, ethereum, hyperliquid, sonic
- Contract surface: 19 unique implementations (38 raw deployments)
- DeFi Llama TVL: $33,653,016.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 13 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (clone, vm, initializableerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 38 (36 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/15 (26.7%)
- Deployed-live implementations: 17 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/17
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 19
- Raw deployments: 38
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 5 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 26.7% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 4 | 23.5% | 2026-03 |
| Enigma Ventures | Tier 2 | 2 | 11.8% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConcreteAsyncVaultImpl | core_logic | ethereum | n/a | [`0xcd9f5907f92818bc06c9ad70217f089e190d2a32`](./contracts/ethereum-1/0xcd9f5907f92818bc06c9ad70217f089e190d2a32/) | ✅ Audited |
| ConcretePredepositVaultImpl | unknown | ethereum | n/a | [`0xb1119e9ba782c04c96fa0fe9ce89448650903d8d`](./contracts/ethereum-1/0xb1119e9ba782c04c96fa0fe9ce89448650903d8d/) | ✅ Audited |
| MultisigStrategy | core_logic | ethereum | n/a | [`0xd3f8edff57570c4f9b11cc95ea65117e2d7a6c2d`](./contracts/ethereum-1/0xd3f8edff57570c4f9b11cc95ea65117e2d7a6c2d/) | ✅ Audited |
| PredepostVaultOApp | unknown | ethereum | n/a | [`0xb03c43ab9599d5ad44561317689d147887ea8f04`](./contracts/ethereum-1/0xb03c43ab9599d5ad44561317689d147887ea8f04/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9`](./contracts/sonic-146/0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9/); sonic `0x8301294e84ca5a2644e7f3cd47a86369f1b0416e` | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x90983ebf38e981ae38f7da9e71804380e316a396`](./contracts/ethereum-1/0x90983ebf38e981ae38f7da9e71804380e316a396/); sonic [`0x90983ebf38e981ae38f7da9e71804380e316a396`](./contracts/sonic-146/0x90983ebf38e981ae38f7da9e71804380e316a396/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc`](./contracts/ethereum-1/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/); sonic [`0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc`](./contracts/sonic-146/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/) | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | ethereum | n/a | [`0x60ebb5d1454bb99aa35f63f609e79179b342b0b8`](./contracts/ethereum-1/0x60ebb5d1454bb99aa35f63f609e79179b342b0b8/) | ⚠️ Unaudited |
| RecipeMarketHub | unknown | hyperliquid | n/a | 5 deployments: ethereum `0x783251f103555068c1e9d755f69458f39ed937c0`; sonic `0xfcc593ad3705ebcd72ec961c63eb484be795bdbd`; hyperliquid [`0x6af057b1c423d108ab710d6f4e3e46f3536787fd`](./contracts/hyperliquid-999/0x6af057b1c423d108ab710d6f4e3e46f3536787fd/); base `0x783251f103555068c1e9d755f69458f39ed937c0`; arbitrum `0x783251f103555068c1e9d755f69458f39ed937c0` | ⚠️ Unaudited |
| RoycoFactory | registry | ethereum | n/a | [`0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c`](./contracts/ethereum-1/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| RoycoFactory | registry | arbitrum | n/a | [`0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c`](./contracts/arbitrum-42161/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| RoycoFactory | registry | avalanche | n/a | [`0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c`](./contracts/avalanche-43114/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x170ff06326ebb64bf609a848fc143143994af6c8`](./contracts/ethereum-1/0x170ff06326ebb64bf609a848fc143143994af6c8/) | ⚠️ Unaudited |
| VaultMarketHub | core_logic | base | n/a | 2 deployments: base [`0xa97ecc6bfda40baf2fdd096dd33e88bd8e769280`](./contracts/base-8453/0xa97ecc6bfda40baf2fdd096dd33e88bd8e769280/); arbitrum [`0xa97ecc6bfda40baf2fdd096dd33e88bd8e769280`](./contracts/arbitrum-42161/0xa97ecc6bfda40baf2fdd096dd33e88bd8e769280/) | ⚠️ Unaudited |
| WeirollWallet | unknown | ethereum | n/a | 4 deployments: ethereum [`0x40a1c08084671e9a799b73853e82308225309dc0`](./contracts/ethereum-1/0x40a1c08084671e9a799b73853e82308225309dc0/); sonic [`0x40a1c08084671e9a799b73853e82308225309dc0`](./contracts/sonic-146/0x40a1c08084671e9a799b73853e82308225309dc0/); base [`0x40a1c08084671e9a799b73853e82308225309dc0`](./contracts/base-8453/0x40a1c08084671e9a799b73853e82308225309dc0/); arbitrum [`0x40a1c08084671e9a799b73853e82308225309dc0`](./contracts/arbitrum-42161/0x40a1c08084671e9a799b73853e82308225309dc0/) | ⚠️ Unaudited |
| WeirollWalletHelper | periphery | ethereum | n/a | 5 deployments: ethereum [`0x07899ac8be7462151d6515fcd4773dd9267c9911`](./contracts/ethereum-1/0x07899ac8be7462151d6515fcd4773dd9267c9911/); sonic [`0x07899ac8be7462151d6515fcd4773dd9267c9911`](./contracts/sonic-146/0x07899ac8be7462151d6515fcd4773dd9267c9911/); hyperliquid [`0x07899ac8be7462151d6515fcd4773dd9267c9911`](./contracts/hyperliquid-999/0x07899ac8be7462151d6515fcd4773dd9267c9911/); base [`0x07899ac8be7462151d6515fcd4773dd9267c9911`](./contracts/base-8453/0x07899ac8be7462151d6515fcd4773dd9267c9911/); arbitrum [`0x07899ac8be7462151d6515fcd4773dd9267c9911`](./contracts/arbitrum-42161/0x07899ac8be7462151d6515fcd4773dd9267c9911/) | ⚠️ Unaudited |
| WrappedVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x3c44c20377e252567d283dc7746d1bea67eb3e66`](./contracts/ethereum-1/0x3c44c20377e252567d283dc7746d1bea67eb3e66/); sonic `0xb0a3960b115e0999f33e8afd4a11f16e04e2bf33`; base [`0x3c44c20377e252567d283dc7746d1bea67eb3e66`](./contracts/base-8453/0x3c44c20377e252567d283dc7746d1bea67eb3e66/); base `0xb0a3960b115e0999f33e8afd4a11f16e04e2bf33`; arbitrum [`0x3c44c20377e252567d283dc7746d1bea67eb3e66`](./contracts/arbitrum-42161/0x3c44c20377e252567d283dc7746d1bea67eb3e66/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x40a1c08084671e9a799b73853e82308225309dc0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x595ee728f3b8f5e937f6a21fe20f929dd8e301fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026](https://hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026](https://hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026](https://hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf](https://docs.concrete.xyz/assets/files/cantinacode-concrete-finance-813b45d86d6450723139b0cc55857c4d.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 4 | high |
| [Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | Enigma Ventures | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [docs.makina.finance/contracts/security](https://docs.makina.finance/contracts/security) | Enigma Ventures | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9`](./contracts/sonic-146/0x80f0b206b7e5daa1b1ba4ea1478a33241ee6bac9/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90983ebf38e981ae38f7da9e71804380e316a396`](./contracts/ethereum-1/0x90983ebf38e981ae38f7da9e71804380e316a396/) | ArcticArchitectureLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc`](./contracts/ethereum-1/0x74d1fafa4e0163b2f1035f1b052137f3f9bad5cc/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6af057b1c423d108ab710d6f4e3e46f3536787fd`](./contracts/hyperliquid-999/0x6af057b1c423d108ab710d6f4e3e46f3536787fd/) | RecipeMarketHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c`](./contracts/ethereum-1/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | RoycoFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c`](./contracts/arbitrum-42161/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | RoycoFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c`](./contracts/avalanche-43114/0x7cc6fb28ec7b5e7afc3cb3986141797ffc27253c/) | RoycoFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa97ecc6bfda40baf2fdd096dd33e88bd8e769280`](./contracts/base-8453/0xa97ecc6bfda40baf2fdd096dd33e88bd8e769280/) | VaultMarketHub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40a1c08084671e9a799b73853e82308225309dc0`](./contracts/ethereum-1/0x40a1c08084671e9a799b73853e82308225309dc0/) | WeirollWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07899ac8be7462151d6515fcd4773dd9267c9911`](./contracts/ethereum-1/0x07899ac8be7462151d6515fcd4773dd9267c9911/) | WeirollWalletHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c44c20377e252567d283dc7746d1bea67eb3e66`](./contracts/ethereum-1/0x3c44c20377e252567d283dc7746d1bea67eb3e66/) | WrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=6

Zero-match audit list:

- [11653] hexens.io/audit-reports/royco-perpetual-risk-tranching-protocol-jan-2026
- [11654] hexens.io/audit-reports/royco-risk-tranching-protocol-update-mar-2026
- [11655] hexens.io/audit-reports/royco-entry-point-contract-update-apr-2026
- [11658] docs.makina.finance/contracts/security

Fork inheritance lineage and inherited audits are included when available.
