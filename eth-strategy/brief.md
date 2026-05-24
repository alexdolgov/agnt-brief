# Agentic Audit Brief: ETH Strategy

## Project Overview

- Project: ETH Strategy (`eth-strategy`)
- Website: [https://www.ethstrat.xyz/](https://www.ethstrat.xyz/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-24T00:58:03.301Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 49 unique implementations (161 raw deployments)
- DeFi Llama TVL: $3,877,356.65
- On-chain TVL (included contracts): $30,762,606.01
- TVL by chain: Ethereum $30,762,606.01

## Project Description

ETH Strategy is an onchain capital allocator that deploys assets into structured yield strategies. It offers perpetual note products and liquidity provision mechanisms, primarily on Ethereum.

### Architecture

The ETH Strategy and ESPN families share the StratToken as a core asset, while the Proxy Contracts family provides upgradeable infrastructure for Arrakis V2 pools used in ESPN. Multisigs govern and secure all families, and the Bridge family enables cross-chain movement of strategy tokens.

## Audit Coverage Summary

- Verified implementations audited: 0/41 (0.0%)
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 49
- Raw deployments: 161
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $30,762,606.01
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StratToken | token | ethereum | [`0x14cf92...a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 21 deployments: ethereum [`0x26cf1d...010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/); ethereum `0x30147a...09d3b1`; ethereum `0x34bc7f...f34475`; ethereum `0x35d4d9...691cad`; ethereum `0x383a4e...ea7065`; ethereum `0x412ac6...593d37`; ethereum `0x442146...33dc60`; ethereum `0x4bb4c3...861eb4`; ethereum `0x5324c6...7408de`; ethereum `0x5bf824...667a61`; ethereum `0x613e87...62c142`; ethereum `0x7d7ac8...0a5592`; ethereum `0x7e1d17...e50c91`; ethereum `0x8180ec...88bf78`; ethereum `0x937135...b77f1d`; ethereum `0xa357c6...5524fa`; ethereum `0xb59251...cd8856`; ethereum `0xdf9acf...3c1a72`; ethereum `0xe3e968...7137bf`; ethereum `0xebb5d6...3824b3`; ethereum `0xfef430...6235fe` | ⚠️ Unaudited |
| StakedStrat | token | ethereum | [`0xd66643...a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | ⚠️ Unaudited |
| EthStrategyPerpetualNote | core_logic | ethereum | [`0xb250c9...1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | [`0x67e26e...c30317`](./contracts/ethereum-1/0x67e26e7ef3344b9e8970f6413dc678b138c30317/) | ⚠️ Unaudited |
| ArrakisV2 | unknown | ethereum | 2 deployments: ethereum [`0x2f63ae...42fad7`](./contracts/ethereum-1/0x2f63ae2184d876f156b9ef21f488d4e6b442fad7/); ethereum `0xbea0eb...ff0bc6` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | ethereum | [`0x6fddfb...da1bc6`](./contracts/ethereum-1/0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6/) | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | 2 deployments: ethereum [`0x439166...45901a`](./contracts/ethereum-1/0x43916615ae9ae7f43307b90449a6bec3ee45901a/); ethereum `0xe1f086...578a16` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | [`0x020e04...67424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | ethereum | [`0xd840e7...a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ⚠️ Unaudited |
| CdtToken | token | ethereum | [`0xd45983...9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | ⚠️ Unaudited |
| ClaimStratStream | adapter | ethereum | [`0x38c36e...41afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ⚠️ Unaudited |
| ConnectorPlug | unknown | ethereum | 48 deployments: ethereum [`0x083add...ce3600`](./contracts/ethereum-1/0x083add2a9afa97efb6412b293145ce965ece3600/); ethereum `0x12fbd0...cbfcae`; ethereum `0x134643...400b3d`; ethereum `0x15cecd...2e678e`; ethereum `0x15f70f...d70d93`; ethereum `0x1967f0...964041`; ethereum `0x1a9ba9...ff515c`; ethereum `0x254691...083820`; ethereum `0x2b9389...98d3a2`; ethereum `0x3645c5...dfc3b0`; ethereum `0x368530...199d7e`; ethereum `0x37c24e...39f754`; ethereum `0x388341...0c1b87`; ethereum `0x3f574b...d7c83a`; ethereum `0x3f66f2...e50e10`; ethereum `0x519bc0...017b3e`; ethereum `0x5e7243...c712c2`; ethereum `0x5ed056...1fad5a`; ethereum `0x67c97b...cae971`; ethereum `0x68411d...e7df8e`; ethereum `0x716c33...d04743`; ethereum `0x727ad6...9bf6d5`; ethereum `0x82d4a4...161b76`; ethereum `0x876b81...5587fc`; ethereum `0x884443...3e5406`; ethereum `0x8e8d89...ab90ff`; ethereum `0x8f4e67...80a4f5`; ethereum `0x94104d...1515b1`; ethereum `0x96e1e9...7d94cd`; ethereum `0x9d0487...2dc52a`; ethereum `0xa1d11b...d1c276`; ethereum `0xa2be75...84d568`; ethereum `0xa72bc5...e88f0f`; ethereum `0xada55e...d1e6ea`; ethereum `0xb11788...29a60f`; ethereum `0xb1dfe2...80b862`; ethereum `0xb49b8a...59643d`; ethereum `0xb4e78d...0d9891`; ethereum `0xbef69d...3e239e`; ethereum `0xcc958f...82efc3`; ethereum `0xd0711b...e13623`; ethereum `0xd3a00e...ed5d93`; ethereum `0xdabf17...1ef4eb`; ethereum `0xdb39c6...ea043c`; ethereum `0xdba83c...b53086`; ethereum `0xdccfb2...5e19a3`; ethereum `0xf15d42...0ea508`; ethereum `0xfa8c07...052c97` | ⚠️ Unaudited |
| Controller | governance | ethereum | 8 deployments: ethereum [`0x4dfa99...048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/); ethereum `0x6a25c9...be1d97`; ethereum `0x954be1...f505d3`; ethereum `0x96e47f...caea73`; ethereum `0x988ddd...486904`; ethereum `0xc52ef0...12d8a6`; ethereum `0xe7cd93...e205a0`; ethereum `0xe9c464...c03207` | ⚠️ Unaudited |
| Derive | unknown | ethereum | [`0x4909ad...a881b8`](./contracts/ethereum-1/0x4909ad99441ea5311b90a94650c394cea4a881b8/) | ⚠️ Unaudited |
| esETH | unknown | ethereum | [`0xe7a2f9...fdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | ⚠️ Unaudited |
| ESPNRedemptionFacilitator | unknown | ethereum | 2 deployments: ethereum [`0x0cb029...c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/); ethereum `0x8ea1eb...576299` | ⚠️ Unaudited |
| EthStrategyConvertibleNote | core_logic | ethereum | [`0xb96d4d...9accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | [`0x53f9b8...e9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x75efa0...25adfa`](./contracts/ethereum-1/0x75efa088e34da03966a5d2b84fa16c77ff25adfa/) | ⚠️ Unaudited |
| GUniFactory | registry | ethereum | [`0x2f017e...66ed2f`](./contracts/ethereum-1/0x2f017ee436429711698a5f6761fe935f4866ed2f/) | ⚠️ Unaudited |
| GUniPool | core_logic | ethereum | [`0xdffb04...ebaa4c`](./contracts/ethereum-1/0xdffb0453ce8bb0c6059a66171515960483ebaa4c/) | ⚠️ Unaudited |
| LyraDepositWrapper | unknown | ethereum | [`0x7d7327...beb3c8`](./contracts/ethereum-1/0x7d7327624bf9627fc11f6da240db8066c4beb3c8/) | ⚠️ Unaudited |
| LyraStakingSink | unknown | ethereum | [`0x7fa4ee...de4197`](./contracts/ethereum-1/0x7fa4ee12bcbe3a7e087839b49a6db96570de4197/) | ⚠️ Unaudited |
| LyraTSADepositHook | unknown | ethereum | 5 deployments: ethereum [`0x204cdc...5bc949`](./contracts/ethereum-1/0x204cdcfe0d03c75a41a0079f187a7870265bc949/); ethereum `0x6fef1b...45004f`; ethereum `0xa79399...48bfea`; ethereum `0xaf3f1c...b3ed5d`; ethereum `0xaf6575...a095e3` | ⚠️ Unaudited |
| LyraTSAShareHandlerDepositHook | unknown | ethereum | 11 deployments: ethereum [`0x0fc32b...25a0de`](./contracts/ethereum-1/0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de/); ethereum `0x56b759...a7aa84`; ethereum `0x6383ae...991a0f`; ethereum `0x69812b...ed77b7`; ethereum `0xb8ec70...b00f31`; ethereum `0xd9c7e1...fca13c`; ethereum `0xdfc777...f3f4bf`; ethereum `0xe3500c...8acc6e`; ethereum `0xf962a0...393636`; ethereum `0xfcb49f...457db9`; ethereum `0xff8d2e...17efc2` | ⚠️ Unaudited |
| LyraTSAShareHandlerWithdrawHook | operational_periphery | ethereum | 4 deployments: ethereum [`0x3abd55...6c355b`](./contracts/ethereum-1/0x3abd5568768fad72343b9b1fa5603357706c355b/); ethereum `0x48ab5f...7136fb`; ethereum `0x9b80ab...db18ec`; ethereum `0xac192a...b803c7` | ⚠️ Unaudited |
| LyraTSAWithdrawHook | operational_periphery | ethereum | 4 deployments: ethereum [`0x5240cf...7ecf88`](./contracts/ethereum-1/0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88/); ethereum `0xcae121...a09181`; ethereum `0xd6eada...6f4064`; ethereum `0xeb7378...36bfdc` | ⚠️ Unaudited |
| LyraWstETHZapper | adapter | ethereum | [`0x0465aa...c700d6`](./contracts/ethereum-1/0x0465aa3fd3cbf13a9fe52d2be76b6c0889c700d6/) | ⚠️ Unaudited |
| MultiDistro | unknown | ethereum | 2 deployments: ethereum [`0x133f33...41f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/); ethereum `0x8e52df...cbf77f` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | [`0x6d843e...e086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | ⚠️ Unaudited |
| Position | unknown | ethereum | [`0x7f9c70...39f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | ⚠️ Unaudited |
| PresaleTokenRenderer | token | ethereum | 2 deployments: ethereum [`0x316fe1...a731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/); ethereum `0x562e22...8e60bc` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x162558...b6684b`](./contracts/ethereum-1/0x16255823f7a3d82e212ea01e96ec123f40b6684b/); ethereum `0x5efc70...68a641` | ⚠️ Unaudited |
| RedeemPresaylor | unknown | ethereum | 2 deployments: ethereum [`0x5df764...012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/); ethereum `0xca8940...06371a` | ⚠️ Unaudited |
| Safe | unknown | ethereum | 5 deployments: ethereum [`0x41675c...c7461a`](./contracts/ethereum-1/0x41675c099f32341bf84bfc5382af534df5c7461a/); ethereum `0x823eff...fea16b`; ethereum `0xaa1a5a...4dfe42`; ethereum `0xc53cce...5220b8`; ethereum `0xf89f49...aa25e1` | ⚠️ Unaudited |
| StakedEthStrategyPerpetualNoteLP | core_logic | ethereum | [`0xcd65f0...dc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | ⚠️ Unaudited |
| StratOption | unknown | ethereum | [`0xe1e909...c447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | ⚠️ Unaudited |
| StratPresale | unknown | ethereum | [`0x63aceb...a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | ⚠️ Unaudited |
| SuperToken | token | ethereum | 8 deployments: ethereum [`0x1d080c...dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/); ethereum `0x32390a...d4b4c2`; ethereum `0x91f3cf...ef16ab`; ethereum `0xcae44c...0a907b`; ethereum `0xd5e977...5b04da`; ethereum `0xdfd366...7ff991`; ethereum `0xe9a12f...32b3d7`; ethereum `0xf90b95...58362b` | ⚠️ Unaudited |
| Underlying | unknown | ethereum | [`0x666651...bdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x50f51b...6c6a4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x701e59...4c6aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76dbe9...1192f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8111d9...09076e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc79b47...7b4cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd02edd...9c43cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9e86b...3de108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xedfb03...b3c165` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| **Nethermind ESPN Audit** | [NM0599-FINAL\_ETH\_STRAT.pdf]() |](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0599-FINAL_ETH_STRAT.pdf) | Nethermind | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x14cf92...a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | StratToken | token | $15,091,335.74 | Verified native implementation with $15,091,335.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cf1d...010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/) | Vault | core_logic | $7,685,502.95 | Verified native implementation with $7,685,502.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd66643...a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | StakedStrat | token | $4,102,274.55 | Verified native implementation with $4,102,274.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb250c9...1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | EthStrategyPerpetualNote | core_logic | $3,883,492.76 | Verified native implementation with $3,883,492.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020e04...67424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd840e7...a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ArrakisV2Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd45983...9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | CdtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38c36e...41afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ClaimStratStream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x083add...ce3600`](./contracts/ethereum-1/0x083add2a9afa97efb6412b293145ce965ece3600/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfa99...048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4909ad...a881b8`](./contracts/ethereum-1/0x4909ad99441ea5311b90a94650c394cea4a881b8/) | Derive | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7a2f9...fdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | esETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb029...c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/) | ESPNRedemptionFacilitator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb96d4d...9accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | EthStrategyConvertibleNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f9b8...e9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204cdc...5bc949`](./contracts/ethereum-1/0x204cdcfe0d03c75a41a0079f187a7870265bc949/) | LyraTSADepositHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc32b...25a0de`](./contracts/ethereum-1/0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de/) | LyraTSAShareHandlerDepositHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abd55...6c355b`](./contracts/ethereum-1/0x3abd5568768fad72343b9b1fa5603357706c355b/) | LyraTSAShareHandlerWithdrawHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5240cf...7ecf88`](./contracts/ethereum-1/0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88/) | LyraTSAWithdrawHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x133f33...41f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/) | MultiDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d843e...e086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9c70...39f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316fe1...a731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/) | PresaleTokenRenderer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5df764...012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/) | RedeemPresaylor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd65f0...dc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | StakedEthStrategyPerpetualNoteLP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1e909...c447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | StratOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63aceb...a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | StratPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d080c...dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/) | SuperToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666651...bdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | Underlying | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 3 |
| standard_library | 4 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2674] | **Nethermind ESPN Audit** | [NM0599-FINAL\_ETH\_STRAT.pdf]() |

Fork inheritance lineage and inherited audits are included when available.
