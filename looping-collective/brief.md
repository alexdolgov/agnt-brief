# Agentic Audit Brief: Looping Collective

## Project Overview

- Project: Looping Collective (`looping-collective`)
- Website: [https://www.loopingcollective.org/](https://www.loopingcollective.org/)
- Lifecycle: active (Tier 0, 74% below peak)
- Generated: 2026-06-11T11:26:21.165Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-4b54
- Chains: ethereum, hyperliquid
- Contract surface: 14 unique implementations (94 raw deployments)
- DeFi Llama TVL: $11,937,641.00
- On-chain TVL (included contracts): $11,811,614.34
- TVL by chain: Ethereum $11,607,539.08 | Hyperliquid $204,075.26

## Project Description

Looping Collective is an active yield protocol offering user-facing vault products including LHYPE, wHLP, and LcBTC/loopedBTC. Its vaults aggregate deposits and deploy capital across DeFi strategies, including leveraged looping and Hyperliquid integrations, with supporting rate providers, accountants, adapters, and oracle-related components used to optimize and report yields.

### Architecture

The Vault Infrastructure family provides reusable UltraVault logic and rate providers used by other vault products. Wrapped HLP operates independently as an adapter to Hyperliquid, while Contract Addresses and Looped Hype are separate BoringVault-based products that do not share the UltraVault infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 1
- Unverified implementations: 1
- Unique implementations: 14
- Raw deployments: 94
- Audits discovered: 13
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $11,811,614.34
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 13 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UltraVault | core_logic | ethereum | 20 deployments: ethereum [`0x26573c...a95318`](./contracts/ethereum-1/0x26573c17e2399c19f64e61bf295c85e150a95318/); ethereum `0x36bdae...5bbcb3`; ethereum `0x472425...99914f`; ethereum `0x48bf9f...3a14c1`; ethereum `0x546329...00bca1`; ethereum `0x597768...c4da81`; ethereum `0x599c41...afa67e`; ethereum `0x686013...a23832`; ethereum `0x6b13ca...8ca3c6`; ethereum `0x776c93...b6c871`; ethereum `0x77e649...86948a`; ethereum `0x82157f...7d391f`; ethereum `0x88300e...ecd847`; ethereum `0x8ecc0b...be91db`; ethereum `0xaa3cb3...1e957d`; ethereum `0xbb876b...e6c1ec`; ethereum `0xc46efc...3b7908`; ethereum `0xe66f6a...46abe2`; ethereum `0xef8699...410729`; ethereum `0xfacaa2...198ae9` | ⚠️ Unaudited |
| BoringVault | core_logic | hyperliquid | 2 deployments: hyperliquid [`0x1359b0...4c0de8`](./contracts/hyperliquid-999/0x1359b05241ca5076c9f59605214f4f84114c0de8/); hyperliquid `0x5748ae...485562` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x470bd1...e8bdff`](./contracts/hyperliquid-999/0x470bd109a24f608590d85fc1f5a4b6e625e8bdff/); hyperliquid `0xce621a...f001c3` | ⚠️ Unaudited |
| AtomicQueueUCP | unknown | hyperliquid | [`0x228c44...5112e5`](./contracts/hyperliquid-999/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | ⚠️ Unaudited |
| HyperLiquidComposer | unknown | hyperliquid | 2 deployments: hyperliquid [`0x036afc...44484b`](./contracts/hyperliquid-999/0x036afc9e3498ec863239e9e3f7eeb5af9c44484b/); hyperliquid `0xcb768e...dc59cc` | ⚠️ Unaudited |
| HyperliquidExtension | proxy | hyperliquid | 2 deployments: hyperliquid [`0xb8ce59...625ebb`](./contracts/hyperliquid-999/0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb/); hyperliquid `0xf555a1...db34b9` | ⚠️ Unaudited |
| PermissionedUltraVault | core_logic | ethereum | 2 deployments: ethereum [`0x2720ea...8a6d28`](./contracts/ethereum-1/0x2720eaedca08e7ffd05afe8e142ded40c18a6d28/); ethereum `0x91fe26...ec3b28` | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | [`0x779ded...713736`](./contracts/hyperliquid-999/0x779ded0c9e1022225f8e0630b35a9b54be713736/) | ⚠️ Unaudited |
| UltraFrontendHelper | periphery | ethereum | 19 deployments: ethereum [`0x1414c2...25ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/); ethereum `0x264638...808921`; ethereum `0x2bf69e...7f3e5d`; ethereum `0x3054fc...817dc9`; ethereum `0x481cac...2f2a71`; ethereum `0x722b39...fe4060`; ethereum `0x7d159f...de32e7`; ethereum `0x7de61e...5e8b98`; ethereum `0x7f37fa...d6d1c1`; ethereum `0x93bffc...55571b`; ethereum `0xa2b51c...e5bb6f`; ethereum `0xa95d73...92a778`; ethereum `0xaea48c...114414`; ethereum `0xc1bf23...ccbbfa`; ethereum `0xcb3858...367bd3`; ethereum `0xda4939...a3f1df`; ethereum `0xea8baf...bda2a9`; ethereum `0xf076c4...544729`; ethereum `0xf1b807...f362d2` | ⚠️ Unaudited |
| UltraVaultEthAdapter | adapter | ethereum | 4 deployments: ethereum [`0x230f64...c172fb`](./contracts/ethereum-1/0x230f6426987535b2478a7b7470385590b5c172fb/); ethereum `0x5ccdf3...c87212`; ethereum `0x767caf...92b1e8`; ethereum `0x9aba33...d03122` | ⚠️ Unaudited |
| UltraVaultOracle | operational_periphery | ethereum | 10 deployments: ethereum [`0x1467ce...246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/); ethereum `0x199378...549032`; ethereum `0x2c50ac...bc54aa`; ethereum `0x3adf95...b848e6`; ethereum `0x536080...f53b07`; ethereum `0x6217de...969526`; ethereum `0x74c4bb...87dc2b`; ethereum `0xbae89d...947ebf`; ethereum `0xc9fa75...487308`; ethereum `0xe8149f...351bac` | ⚠️ Unaudited |
| UltraVaultRateProvider | core_logic | ethereum | 18 deployments: ethereum [`0x152b3f...c0f55e`](./contracts/ethereum-1/0x152b3f3b2b7bcb00b8ca23136c743ad726c0f55e/); ethereum `0x189e4d...06e767`; ethereum `0x1bf8d6...434828`; ethereum `0x25b8a3...efbf0d`; ethereum `0x2f1b7c...613cc5`; ethereum `0x306269...b1637d`; ethereum `0x6d4f69...5d401e`; ethereum `0x740ed2...a7e474`; ethereum `0x75df90...9fda35`; ethereum `0x7a2e35...b8555b`; ethereum `0x8bd347...f2a70e`; ethereum `0x92e9f9...27c484`; ethereum `0x94ee52...a6b816`; ethereum `0xa333c0...31e39c`; ethereum `0xa392c6...7df87c`; ethereum `0xad4b33...a17c38`; ethereum `0xd8f8cc...dcfa6d`; ethereum `0xfba0f7...8381ae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultPriceManager | operational_periphery | ethereum | 10 deployments: ethereum [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/); ethereum `0x0fcea1...315f86`; ethereum `0x2882a1...58268a`; ethereum `0x303ab4...8a1617`; ethereum `0x525ee8...b41ad5`; ethereum `0x6bb07c...b2b311`; ethereum `0xa5c6d7...5a75a2`; ethereum `0xd7fc73...864983`; ethereum `0xdd5085...7eb640`; ethereum `0xff5e63...e0a5b5` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | `0x340c9f...6b41c1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [v1_May_2025_ChainSecurity.pdf](https://github.com/UltraYield/contracts/blob/main/audits/v1_May_2025_ChainSecurity.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [v2_Sep_2025_Omniscia.pdf](https://github.com/UltraYield/contracts/blob/main/audits/v2_Sep_2025_Omniscia.pdf) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x1359b0...4c0de8`](./contracts/hyperliquid-999/0x1359b05241ca5076c9f59605214f4f84114c0de8/) | BoringVault | core_logic | $204,075.26 | Verified native implementation with $204,075.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x470bd1...e8bdff`](./contracts/hyperliquid-999/0x470bd109a24f608590d85fc1f5a4b6e625e8bdff/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x036afc...44484b`](./contracts/hyperliquid-999/0x036afc9e3498ec863239e9e3f7eeb5af9c44484b/) | HyperLiquidComposer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1414c2...25ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/) | UltraFrontendHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x230f64...c172fb`](./contracts/ethereum-1/0x230f6426987535b2478a7b7470385590b5c172fb/) | UltraVaultEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1467ce...246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/) | UltraVaultOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x152b3f...c0f55e`](./contracts/ethereum-1/0x152b3f3b2b7bcb00b8ca23136c743ad726c0f55e/) | UltraVaultRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/) | VaultPriceManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11608] 0xmacro-boring-vault-arctic-0.pdf
- [11609] 0xmacro-boring-vault-arctic-1.pdf
- [11610] pashov-boring-vault.pdf
- [11611] pashov-hlp-controller:account.pdf
- [11612] pashov-hyperlane.pdf
- [11613] pashov-one-to-one-queue.pdf
- [11614] pashov-predicate-freeze-supply-cap.pdf
- [11615] pashov-withdraw-queue.pdf
- [11616] spearbit-boring-vault-arctic-0.pdf
- [11617] zenith-one-to-one-queue.pdf
- [11618] zenith-withdraw-queue.pdf
- [11619] v1_May_2025_ChainSecurity.pdf
- [11620] v2_Sep_2025_Omniscia.pdf

Fork inheritance lineage and inherited audits are included when available.
