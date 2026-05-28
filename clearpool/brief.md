# Agentic Audit Brief: Clearpool

## Project Overview

- Project: Clearpool (`clearpool`)
- Website: [https://clearpool.finance](https://clearpool.finance)
- Lifecycle: active (Tier 0, 31.2% below peak)
- Generated: 2026-05-28T16:02:08.309Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm
- Contract surface: 61 unique implementations (220 raw deployments)
- DeFi Llama TVL: $42,176,788.00
- On-chain TVL (included contracts): $10,712.83
- TVL by chain: Ethereum $10,712.83 | Optimism $0.00

## Project Description

Clearpool is a decentralized finance protocol that enables uncollateralized institutional lending and borrowing, primarily focused on real-world assets (RWA). It provides a marketplace where borrowers can access liquidity from lenders without posting collateral, using reputation and creditworthiness instead.

### Architecture

The Clearpool family provides the foundational lending infrastructure (pools, auctions, CPOOL token), while Clearpool Lending extends it with additional factory and model contracts. Clearpool Smart Contracts and TPOOL appear to be specialized or upgraded variants that share the same proxy-based upgradeability pattern and likely integrate with the core CPOOL token and governance.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 5
- Unverified implementations: 35
- Unique implementations: 61
- Raw deployments: 220
- Audits discovered: 14
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,712.83
- Latest audit: 2026-04 (fresh)
- Staleness: 1 fresh, 1 aging, 2 stale, 10 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CPOOL | core_logic | ethereum | [`0x66761f...c2fac5`](./contracts/ethereum-1/0x66761fa41377003622aee3c7675fc7b5c1c2fac5/) | ⚠️ Unaudited |
| AMPT | unknown | ethereum | [`0x3f17cf...6819da`](./contracts/ethereum-1/0x3f17cfad23c2014c5a32722557df87dff46819da/) | ⚠️ Unaudited |
| BondNFT | token | base | [`0x022741...56729d`](./contracts/base-8453/0x022741f3047a5d040d52f7a57dc6a2b1b456729d/) | ⚠️ Unaudited |
| ClearpoolLens | core_logic | mantle | 5 deployments: ethereum `0xb90c0d...ba1bac`; optimism `0xc5d1d3...66877c`; polygon `0xb90c0d...ba1bac`; polygon `0xe57bb7...d17148`; mantle [`0x6278bc...b9e79b`](./contracts/mantle-5000/0x6278bcb4ada5f9bd83b0e0745db6246274b9e79b/) | ⚠️ Unaudited |
| CosineInterestRateModel | operational_periphery | optimism | 9 deployments: optimism [`0x0c8927...5279d8`](./contracts/optimism-10/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/); optimism `0xb98c68...edb66c`; optimism `0xd51f04...61e5ce`; optimism `0xf041a2...896a9b`; optimism `0xf55ec6...96f150`; polygon `0x43cb89...e5afe5`; mantle `0x244ef5...33903d`; mantle `0x56713f...1db71b`; mantle `0xd4f764...1c6ef2` | ⚠️ Unaudited |
| CPOOLOFT | core_logic | base | 2 deployments: optimism `0x379c8d...faacd9`; base [`0x29157e...783a5c`](./contracts/base-8453/0x29157e2b6a34ae1787cddd05ad54dd4aa9783a5c/) | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | mantle | 3 deployments: optimism `0xc3630b...f3d3fe`; polygon `0xb08b36...3a2d91`; mantle [`0x0c8927...5279d8`](./contracts/mantle-5000/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/) | ⚠️ Unaudited |
| HexTrustUSDV2 | unknown | ethereum | [`0x7a486f...8ed56c`](./contracts/ethereum-1/0x7a486f809c952a6f8dec8cb0ff68173f2b8ed56c/) | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | ethereum | [`0xa158cb...f076ba`](./contracts/ethereum-1/0xa158cb5ebb9a9622c7025a3b7a495b38d9f076ba/) | ⚠️ Unaudited |
| MembershipStaking | unknown | ethereum | 10 deployments: ethereum [`0x03fe98...25741f`](./contracts/ethereum-1/0x03fe982544befb24478bce33278bef073725741f/); ethereum `0x9b2f78...d85dbc`; ethereum `0xa02514...dbf635`; ethereum `0xa2b464...7f84bd`; optimism `0x5f04bc...a4f91a`; optimism `0xce3fec...c7ca16`; polygon `0x4a7e8e...3b7c2a`; polygon `0x67a24c...ac9b67`; mantle `0x1f64d0...433db3`; mantle `0xe5860c...6a798a` | ⚠️ Unaudited |
| NFTDescriptor | token | base | [`0x34aeed...08d9de`](./contracts/base-8453/0x34aeed1248b4585ea79354c03bf96374a908d9de/) | ⚠️ Unaudited |
| PermissionPool | core_logic | ethereum | 2 deployments: ethereum [`0x0f37f0...58e06b`](./contracts/ethereum-1/0x0f37f0a064a642240f92b86abf8d41ffd358e06b/); ethereum `0x9eb1c0...baa5e5` | ⚠️ Unaudited |
| Prime | unknown | optimism | 6 deployments: ethereum `0xe746cd...a6a2d7`; ethereum `0xf55ec6...96f150`; optimism [`0x5a9c1b...1e2be5`](./contracts/optimism-10/0x5a9c1b19038f88b235be0eab23333472b01e2be5/); optimism `0xc31761...ec16de`; base `0xb8a7e3...b50865`; base `0xf041a2...896a9b` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 14 deployments: ethereum [`0x1d8816...5016e2`](./contracts/ethereum-1/0x1d881611e48c806606d59c1591795514805016e2/); ethereum `0x5ed4e4...3920b1`; ethereum `0x69aa48...5eca78`; ethereum `0xcc95f3...68c65a`; optimism `0x785395...cd9552`; optimism `0xcb8da0...c1c2fb`; polygon `0x5ed4e4...3920b1`; polygon `0xa3badd...16d74e`; polygon `0xee3eac...4aa19e`; mantle `0x8eff31...9bd1cc`; base `0x616b66...9db213`; base `0xe3e26d...9eb755`; avalanche `0x8bc02e...18b2b3`; avalanche `0xb8a7e3...b50865` | ⚠️ Unaudited |
| SoloFlashGovernor | governance | ethereum | 3 deployments: ethereum [`0x2c8fbc...00e518`](./contracts/ethereum-1/0x2c8fbc541bff60878fd3a8a0a18bc6db9300e518/); ethereum `0x327ae9...45f637`; ethereum `0x93ee35...08ed37` | ⚠️ Unaudited |
| TermPool | core_logic | ethereum | 5 deployments: ethereum [`0x1a5c16...8a613a`](./contracts/ethereum-1/0x1a5c169fbcbfb00b2c20c6746681aa774d8a613a/); polygon `0x82d533...e8c956`; polygon `0x83d5c0...be1791`; polygon `0xc510d1...ad25bd`; polygon `0xd12ec3...a2035e` | ⚠️ Unaudited |
| TermPoolFactory | registry | polygon | 7 deployments: ethereum `0x6cc5f6...93acc5`; ethereum `0x91a4a1...a2e60e`; ethereum `0xf20f5f...c446c8`; polygon [`0x422199...002494`](./contracts/polygon-137/0x422199a9d2a56bf120d9191ea82b6084ef002494/); polygon `0x97b6a7...b110bf`; polygon `0xc3d7f8...4d35a7`; polygon `0xc5d1d3...66877c` | ⚠️ Unaudited |
| TpToken | token | ethereum | 3 deployments: ethereum [`0x229f0f...5be470`](./contracts/ethereum-1/0x229f0fb3445ecd573024368a41af68c7225be470/); polygon `0x2ec008...bb9a25`; polygon `0x36d3d0...cb4436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 9 deployments: ethereum [`0x454ee9...4d2e1b`](./contracts/ethereum-1/0x454ee951da04afce32df8dd3400a1f159f4d2e1b/); ethereum `0x969d7d...a6b47b`; ethereum `0xc03dd6...3fa348`; ethereum `0xf38a4e...6b1187`; avalanche `0x7a0528...c89067`; avalanche `0x8e5573...ab2b7a`; avalanche `0xb4546c...b009df`; avalanche `0xc31761...ec16de`; avalanche `0xe3e26d...9eb755` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | mantle | 11 deployments: ethereum `0x350154...3273b0`; ethereum `0x3ebd21...e84f4a`; optimism `0xf1f662...00fe31`; polygon `0x229f0f...5be470`; polygon `0x625e7f...c7471c`; polygon `0xaa61d4...aaa688`; mantle [`0x0e07ce...002e7d`](./contracts/mantle-5000/0x0e07ce3e7ad3c61fcb7f7e5542a8c61e18002e7d/); base `0x379c8d...faacd9`; avalanche `0x428d56...4d4dca`; avalanche `0x721dbb...5cc5cd`; avalanche `0x785395...cd9552` | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | 3 deployments: ethereum [`0x046667...07e72c`](./contracts/ethereum-1/0x046667c768da32ef1e81a5cbbcd49103a207e72c/); ethereum `0x512a81...66c15b`; ethereum `0x702997...764ac5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolMaster | core_logic | base | 26 deployments: ethereum `0x2ec008...bb9a25`; ethereum `0x64d1c7...4bc5bf`; ethereum `0x82d438...a868d6`; ethereum `0xaeb362...2cdbbc`; ethereum `0xcb8da0...c1c2fb`; ethereum `0xd12ec3...a2035e`; ethereum `0xf1f662...00fe31`; optimism `0x3b0bbd...29d55b`; optimism `0x5ed4e4...3920b1`; optimism `0x616b66...9db213`; optimism `0xc3d7f8...4d35a7`; polygon `0x1d8816...5016e2`; polygon `0x331781...c850ff`; polygon `0x45e766...dc1fe0`; polygon `0x5cda11...255900`; polygon `0x5f04bc...a4f91a`; polygon `0x6cc5f6...93acc5`; polygon `0x9590e7...ba31f8`; polygon `0x9827d9...280cfd`; polygon `0xf20f5f...c446c8`; mantle `0xc15871...41fe72`; mantle `0xe16860...f8c7c7`; base [`0x0fc1a1...0a2ff3`](./contracts/base-8453/0x0fc1a124af80535747c5439c3e0667146a0a2ff3/); base `0x207ac3...575a47`; base `0xa83b8f...78d27a`; base `0xca7aaa...738314` | ⚠️ Unaudited (bytecode match) |
| Auction | unknown | avalanche | 20 deployments: ethereum `0x0cdf8b...04074c`; ethereum `0x15ef08...787ad6`; ethereum `0x5f04bc...a4f91a`; ethereum `0xbe45e6...c633f5`; ethereum `0xce3fec...c7ca16`; ethereum `0xfd96b2...98166b`; optimism `0x5cda11...255900`; optimism `0xe746cd...a6a2d7`; polygon `0x3b194b...798d00`; polygon `0x7e5034...d9251c`; polygon `0xdad6e9...c66453`; polygon `0xf1f662...00fe31`; polygon `0xf55ec6...96f150`; mantle `0x661bf0...8519df`; mantle `0x7554fa...4479ae`; mantle `0xa36937...1786f7`; mantle `0xfe0c81...e74103`; base `0x0762a9...dd2447`; base `0xb939a6...10d052`; avalanche [`0x01af79...31f26d`](./contracts/avalanche-43114/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/) | ⚠️ Unaudited (bytecode match) |
| Pool | core_logic | mantle | 8 deployments: ethereum `0xa3badd...16d74e`; ethereum `0xc5d1d3...66877c`; optimism `0x281af7...cd4197`; optimism `0xa7209c...42d729`; optimism `0xbdf557...b56943`; mantle [`0x1de6ba...fc6a4c`](./contracts/mantle-5000/0x1de6ba3ec39f9e68ee3bdff0f00746c21cfc6a4c/); base `0x8e5573...ab2b7a`; base `0xb98c68...edb66c` | ⚠️ Unaudited (bytecode match) |
| PoolFactory | registry | optimism | 29 deployments: ethereum `0x83d5c0...be1791`; ethereum `0x97b6a7...b110bf`; ethereum `0x99c10a...356b80`; ethereum `0xaa61d4...aaa688`; ethereum `0xb61547...6ceb57`; ethereum `0xc3630b...f3d3fe`; ethereum `0xde204e...4c2d48`; ethereum `0xf3322c...3f4e8d`; optimism [`0x01af79...31f26d`](./contracts/optimism-10/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/); optimism `0x99c10a...356b80`; optimism `0xb217d9...bcde41`; optimism `0xb90c0d...ba1bac`; optimism `0xe3e26d...9eb755`; polygon `0x16497f...0c2508`; polygon `0x215cca...da79ba`; polygon `0x3b0bbd...29d55b`; polygon `0x7de081...ccee87`; polygon `0xa919d3...9584e3`; polygon `0xc3630b...f3d3fe`; mantle `0x063d68...3850a7`; mantle `0x8e40e7...f25172`; mantle `0xa7209c...42d729`; mantle `0xb217d9...bcde41`; mantle `0xd51f04...61e5ce`; base [`0x01af79...31f26d`](./contracts/base-8453/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/); base `0x199a01...05dfad`; base `0x721dbb...5cc5cd`; base `0xbdf557...b56943`; avalanche `0xf041a2...896a9b` | ⚠️ Unaudited (bytecode match) |
| WhitelistControl | unknown | avalanche | 4 deployments: mantle `0xb4f37f...3cdd51`; base `0x72429e...d2fe0f`; base `0x8ef02f...89b280`; avalanche [`0x5a9c1b...1e2be5`](./contracts/avalanche-43114/0x5a9c1b19038f88b235be0eab23333472b01e2be5/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x285408...73f117` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40e997...cef15f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4aed21...251e51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e5ffd...ba5836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1be92...4d8f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc7c4b...47ff95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd19c3b...1c0885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd70ec4...2b8f0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0fbc0...8120db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5c995...c3a884` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1c91b3...114aa9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3786a1...9324e2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x544c91...8885af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5c328d...50642f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x612b62...9f3e37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x703a49...7e1fb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7aada5...618af7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xad254c...7f9d41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc4b4d0...c057fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xea2556...dc1ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xed7067...d6bcf3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfa1152...044464` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfd61cd...173776` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x04df6f...cd4445` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x5cda11...255900` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xc3630b...f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xce3fec...c7ca16` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8996e0...64200e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x919e83...a262c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x246df1...ef50e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x281af7...cd4197` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7593e8...df23ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x79740b...c58690` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb98c68...edb66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbdf557...b56943` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [AUDIT_SCOPE.md](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/docs/AUDIT_SCOPE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CHANGES_PAYFI.md](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/docs/CHANGES_PAYFI.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [INTEGRATION.md](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/docs/INTEGRATION.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OPERATOR_RUNBOOK.md](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/docs/OPERATOR_RUNBOOK.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PRE_AUDIT_CHECKLIST.md](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/docs/PRE_AUDIT_CHECKLIST.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SYSTEM_AUDIT.md](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/docs/SYSTEM_AUDIT.md) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x66761f...c2fac5`](./contracts/ethereum-1/0x66761fa41377003622aee3c7675fc7b5c1c2fac5/) | CPOOL | core_logic | $10,712.83 | Verified native implementation with $10,712.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fc1a1...0a2ff3`](./contracts/base-8453/0x0fc1a124af80535747c5439c3e0667146a0a2ff3/) | PoolMaster | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f17cf...6819da`](./contracts/ethereum-1/0x3f17cfad23c2014c5a32722557df87dff46819da/) | AMPT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01af79...31f26d`](./contracts/avalanche-43114/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x022741...56729d`](./contracts/base-8453/0x022741f3047a5d040d52f7a57dc6a2b1b456729d/) | BondNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6278bc...b9e79b`](./contracts/mantle-5000/0x6278bcb4ada5f9bd83b0e0745db6246274b9e79b/) | ClearpoolLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c8927...5279d8`](./contracts/optimism-10/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/) | CosineInterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29157e...783a5c`](./contracts/base-8453/0x29157e2b6a34ae1787cddd05ad54dd4aa9783a5c/) | CPOOLOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0c8927...5279d8`](./contracts/mantle-5000/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/) | CPOOLOFT20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa158cb...f076ba`](./contracts/ethereum-1/0xa158cb5ebb9a9622c7025a3b7a495b38d9f076ba/) | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03fe98...25741f`](./contracts/ethereum-1/0x03fe982544befb24478bce33278bef073725741f/) | MembershipStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x34aeed...08d9de`](./contracts/base-8453/0x34aeed1248b4585ea79354c03bf96374a908d9de/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f37f0...58e06b`](./contracts/ethereum-1/0x0f37f0a064a642240f92b86abf8d41ffd358e06b/) | PermissionPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1de6ba...fc6a4c`](./contracts/mantle-5000/0x1de6ba3ec39f9e68ee3bdff0f00746c21cfc6a4c/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x01af79...31f26d`](./contracts/optimism-10/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5a9c1b...1e2be5`](./contracts/optimism-10/0x5a9c1b19038f88b235be0eab23333472b01e2be5/) | Prime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c8fbc...00e518`](./contracts/ethereum-1/0x2c8fbc541bff60878fd3a8a0a18bc6db9300e518/) | SoloFlashGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a5c16...8a613a`](./contracts/ethereum-1/0x1a5c169fbcbfb00b2c20c6746681aa774d8a613a/) | TermPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x422199...002494`](./contracts/polygon-137/0x422199a9d2a56bf120d9191ea82b6084ef002494/) | TermPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229f0f...5be470`](./contracts/ethereum-1/0x229f0fb3445ecd573024368a41af68c7225be470/) | TpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x046667...07e72c`](./contracts/ethereum-1/0x046667c768da32ef1e81a5cbbcd49103a207e72c/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5a9c1b...1e2be5`](./contracts/avalanche-43114/0x5a9c1b19038f88b235be0eab23333472b01e2be5/) | WhitelistControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5805] 0xmacro-boring-vault-arctic-0.pdf
- [5806] 0xmacro-boring-vault-arctic-1.pdf
- [5807] pashov-boring-vault.pdf
- [5808] pashov-hyperlane.pdf
- [5809] spearbit-boring-vault-arctic-0.pdf
- [5810] AUDIT_SCOPE.md
- [5811] CHANGES_PAYFI.md
- [5812] INTEGRATION.md
- [5813] OPERATOR_RUNBOOK.md
- [5814] PRE_AUDIT_CHECKLIST.md
- [5815] SYSTEM_AUDIT.md
- [5816] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5817] 0002-metadata-manifest-and-pull-command.md
- [5818] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
