# Agentic Audit Brief: ETH Strategy

## Project Overview

- Project: ETH Strategy (`eth-strategy`)
- Website: [https://www.ethstrat.xyz/](https://www.ethstrat.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.885Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 46 unique implementations (155 raw deployments)
- DeFi Llama TVL: $3,877,262.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 40 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 10 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 18 common project-authored base contract(s) (rescuebase, lyratsasharehandlerhookbase, limithook). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 159; live-surface contracts included: 155 (145 live, 10 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/35 (0.0%)
- Deployed-live implementations: 38 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 46
- Raw deployments: 155
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArrakisV2 | unknown | ethereum | n/a | [`0xbea0eb...ff0bc6`](./contracts/ethereum-1/0xbea0ebfd3957863a820f5e126eed801ccfff0bc6/) | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | ethereum | n/a | [`0x6fddfb...da1bc6`](./contracts/ethereum-1/0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6/) | ⚠️ Unaudited |
| ArrakisV2Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x439166...45901a`](./contracts/ethereum-1/0x43916615ae9ae7f43307b90449a6bec3ee45901a/); ethereum `0xe1f086...578a16` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | n/a | [`0x020e04...67424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | ethereum | n/a | [`0xd840e7...a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ⚠️ Unaudited |
| CdtToken | token | ethereum | n/a | [`0xd45983...9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | ⚠️ Unaudited |
| ClaimStratStream | adapter | ethereum | n/a | [`0x38c36e...41afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ⚠️ Unaudited |
| ConnectorPlug | unknown | ethereum | n/a | 49 deployments: ethereum [`0x083add...ce3600`](./contracts/ethereum-1/0x083add2a9afa97efb6412b293145ce965ece3600/); ethereum `0x12fbd0...cbfcae`; ethereum `0x134643...400b3d`; ethereum `0x15cecd...2e678e`; ethereum `0x15f70f...d70d93`; ethereum `0x1967f0...964041`; ethereum `0x1a9ba9...ff515c`; ethereum `0x22be0d...aa43fd`; ethereum `0x254691...083820`; ethereum `0x2b9389...98d3a2`; ethereum `0x3645c5...dfc3b0`; ethereum `0x368530...199d7e`; ethereum `0x37c24e...39f754`; ethereum `0x388341...0c1b87`; ethereum `0x3f574b...d7c83a`; ethereum `0x3f66f2...e50e10`; ethereum `0x519bc0...017b3e`; ethereum `0x5e7243...c712c2`; ethereum `0x5ed056...1fad5a`; ethereum `0x67c97b...cae971`; ethereum `0x68411d...e7df8e`; ethereum `0x716c33...d04743`; ethereum `0x727ad6...9bf6d5`; ethereum `0x82d4a4...161b76`; ethereum `0x876b81...5587fc`; ethereum `0x884443...3e5406`; ethereum `0x8e8d89...ab90ff`; ethereum `0x8f4e67...80a4f5`; ethereum `0x94104d...1515b1`; ethereum `0x96e1e9...7d94cd`; ethereum `0x9d0487...2dc52a`; ethereum `0xa1d11b...d1c276`; ethereum `0xa2be75...84d568`; ethereum `0xa72bc5...e88f0f`; ethereum `0xada55e...d1e6ea`; ethereum `0xb11788...29a60f`; ethereum `0xb1dfe2...80b862`; ethereum `0xb49b8a...59643d`; ethereum `0xb4e78d...0d9891`; ethereum `0xbef69d...3e239e`; ethereum `0xcc958f...82efc3`; ethereum `0xd0711b...e13623`; ethereum `0xd3a00e...ed5d93`; ethereum `0xdabf17...1ef4eb`; ethereum `0xdb39c6...ea043c`; ethereum `0xdba83c...b53086`; ethereum `0xdccfb2...5e19a3`; ethereum `0xf15d42...0ea508`; ethereum `0xfa8c07...052c97` | ⚠️ Unaudited |
| Controller | governance | ethereum | n/a | 8 deployments: ethereum [`0x4dfa99...048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/); ethereum `0x6a25c9...be1d97`; ethereum `0x954be1...f505d3`; ethereum `0x96e47f...caea73`; ethereum `0x988ddd...486904`; ethereum `0xc52ef0...12d8a6`; ethereum `0xe7cd93...e205a0`; ethereum `0xe9c464...c03207` | ⚠️ Unaudited |
| esETH | unknown | ethereum | n/a | [`0xe7a2f9...fdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | ⚠️ Unaudited |
| ESPNRedemptionFacilitator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cb029...c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/); ethereum `0x8ea1eb...576299` | ⚠️ Unaudited |
| EthStrategyConvertibleNote | core_logic | ethereum | n/a | [`0xb96d4d...9accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | ⚠️ Unaudited |
| EthStrategyPerpetualNote | core_logic | ethereum | n/a | [`0xb250c9...1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | [`0x53f9b8...e9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x75efa0...25adfa`](./contracts/ethereum-1/0x75efa088e34da03966a5d2b84fa16c77ff25adfa/) | ⚠️ Unaudited |
| GUniFactory | registry | ethereum | n/a | [`0x2f017e...66ed2f`](./contracts/ethereum-1/0x2f017ee436429711698a5f6761fe935f4866ed2f/) | ⚠️ Unaudited |
| GUniPool | core_logic | ethereum | n/a | [`0xdffb04...ebaa4c`](./contracts/ethereum-1/0xdffb0453ce8bb0c6059a66171515960483ebaa4c/) | ⚠️ Unaudited |
| LyraDepositWrapper | unknown | ethereum | n/a | [`0x7d7327...beb3c8`](./contracts/ethereum-1/0x7d7327624bf9627fc11f6da240db8066c4beb3c8/) | ⚠️ Unaudited |
| LyraTSADepositHook | unknown | ethereum | n/a | 5 deployments: ethereum [`0x204cdc...5bc949`](./contracts/ethereum-1/0x204cdcfe0d03c75a41a0079f187a7870265bc949/); ethereum `0x6fef1b...45004f`; ethereum `0xa79399...48bfea`; ethereum `0xaf3f1c...b3ed5d`; ethereum `0xaf6575...a095e3` | ⚠️ Unaudited |
| LyraTSAShareHandlerDepositHook | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0fc32b...25a0de`](./contracts/ethereum-1/0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de/); ethereum `0x56b759...a7aa84`; ethereum `0x6383ae...991a0f`; ethereum `0x69812b...ed77b7`; ethereum `0xb8ec70...b00f31`; ethereum `0xcb39cd...3b598b`; ethereum `0xd9c7e1...fca13c`; ethereum `0xdfc777...f3f4bf`; ethereum `0xe3500c...8acc6e`; ethereum `0xf962a0...393636`; ethereum `0xfcb49f...457db9`; ethereum `0xff8d2e...17efc2` | ⚠️ Unaudited |
| LyraTSAShareHandlerWithdrawHook | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3abd55...6c355b`](./contracts/ethereum-1/0x3abd5568768fad72343b9b1fa5603357706c355b/); ethereum `0x48ab5f...7136fb`; ethereum `0x9b80ab...db18ec`; ethereum `0xac192a...b803c7` | ⚠️ Unaudited |
| LyraTSAWithdrawHook | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5240cf...7ecf88`](./contracts/ethereum-1/0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88/); ethereum `0xcae121...a09181`; ethereum `0xd6eada...6f4064`; ethereum `0xeb7378...36bfdc` | ⚠️ Unaudited |
| MultiDistro | unknown | ethereum | n/a | 2 deployments: ethereum [`0x133f33...41f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/); ethereum `0x8e52df...cbf77f` | ⚠️ Unaudited |
| pnETH | unknown | ethereum | n/a | [`0x771200...26229d`](./contracts/ethereum-1/0x771200261c99ff4e0a072b0484b76c56c826229d/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0x6d843e...e086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | ⚠️ Unaudited |
| Position | unknown | ethereum | n/a | [`0x7f9c70...39f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | ⚠️ Unaudited |
| PresaleTokenRenderer | token | ethereum | n/a | [`0x316fe1...a731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x162558...b6684b`](./contracts/ethereum-1/0x16255823f7a3d82e212ea01e96ec123f40b6684b/); ethereum `0x5efc70...68a641` | ⚠️ Unaudited |
| RedeemPresaylor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5df764...012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/); ethereum `0xca8940...06371a` | ⚠️ Unaudited |
| StakedEthStrategyPerpetualNoteLP | core_logic | ethereum | n/a | [`0xcd65f0...dc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | ⚠️ Unaudited |
| StakedStrat | token | ethereum | n/a | [`0xd66643...a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | ⚠️ Unaudited |
| StratOption | unknown | ethereum | n/a | [`0xe1e909...c447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | ⚠️ Unaudited |
| StratPresale | unknown | ethereum | n/a | [`0x63aceb...a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | ⚠️ Unaudited |
| StratToken | token | ethereum | n/a | [`0x14cf92...a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | ⚠️ Unaudited |
| SuperToken | token | ethereum | n/a | 8 deployments: ethereum [`0x1d080c...dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/); ethereum `0x32390a...d4b4c2`; ethereum `0x91f3cf...ef16ab`; ethereum `0xcae44c...0a907b`; ethereum `0xd5e977...5b04da`; ethereum `0xdfd366...7ff991`; ethereum `0xe9a12f...32b3d7`; ethereum `0xf90b95...58362b` | ⚠️ Unaudited |
| Underlying | unknown | ethereum | n/a | [`0x666651...bdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | [`0x67e26e...c30317`](./contracts/ethereum-1/0x67e26e7ef3344b9e8970f6413dc678b138c30317/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 22 deployments: ethereum [`0x26cf1d...010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/); ethereum `0x30147a...09d3b1`; ethereum `0x34bc7f...f34475`; ethereum `0x35d4d9...691cad`; ethereum `0x383a4e...ea7065`; ethereum `0x412ac6...593d37`; ethereum `0x442146...33dc60`; ethereum `0x4bb4c3...861eb4`; ethereum `0x5324c6...7408de`; ethereum `0x5bf824...667a61`; ethereum `0x613e87...62c142`; ethereum `0x7d7ac8...0a5592`; ethereum `0x7e1d17...e50c91`; ethereum `0x8180ec...88bf78`; ethereum `0x937135...b77f1d`; ethereum `0xa357c6...5524fa`; ethereum `0xb59251...cd8856`; ethereum `0xd7d75f...8837a3`; ethereum `0xdf9acf...3c1a72`; ethereum `0xe3e968...7137bf`; ethereum `0xebb5d6...3824b3`; ethereum `0xfef430...6235fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x50f51b...6c6a4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701e59...4c6aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76dbe9...1192f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8111d9...09076e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79b47...7b4cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd02edd...9c43cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e86b...3de108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedfb03...b3c165` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM0599-FINAL_ETH_STRAT.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0599-FINAL_ETH_STRAT.pdf) | Nethermind | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbea0eb...ff0bc6`](./contracts/ethereum-1/0xbea0ebfd3957863a820f5e126eed801ccfff0bc6/) | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fddfb...da1bc6`](./contracts/ethereum-1/0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6/) | ArrakisV2Beacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439166...45901a`](./contracts/ethereum-1/0x43916615ae9ae7f43307b90449a6bec3ee45901a/) | ArrakisV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020e04...67424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd840e7...a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ArrakisV2Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd45983...9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | CdtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38c36e...41afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ClaimStratStream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x083add...ce3600`](./contracts/ethereum-1/0x083add2a9afa97efb6412b293145ce965ece3600/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfa99...048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7a2f9...fdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | esETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb029...c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/) | ESPNRedemptionFacilitator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb96d4d...9accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | EthStrategyConvertibleNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb250c9...1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | EthStrategyPerpetualNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f9b8...e9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f017e...66ed2f`](./contracts/ethereum-1/0x2f017ee436429711698a5f6761fe935f4866ed2f/) | GUniFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdffb04...ebaa4c`](./contracts/ethereum-1/0xdffb0453ce8bb0c6059a66171515960483ebaa4c/) | GUniPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7327...beb3c8`](./contracts/ethereum-1/0x7d7327624bf9627fc11f6da240db8066c4beb3c8/) | LyraDepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204cdc...5bc949`](./contracts/ethereum-1/0x204cdcfe0d03c75a41a0079f187a7870265bc949/) | LyraTSADepositHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc32b...25a0de`](./contracts/ethereum-1/0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de/) | LyraTSAShareHandlerDepositHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abd55...6c355b`](./contracts/ethereum-1/0x3abd5568768fad72343b9b1fa5603357706c355b/) | LyraTSAShareHandlerWithdrawHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5240cf...7ecf88`](./contracts/ethereum-1/0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88/) | LyraTSAWithdrawHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x133f33...41f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/) | MultiDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771200...26229d`](./contracts/ethereum-1/0x771200261c99ff4e0a072b0484b76c56c826229d/) | pnETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d843e...e086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9c70...39f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316fe1...a731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/) | PresaleTokenRenderer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5df764...012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/) | RedeemPresaylor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd65f0...dc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | StakedEthStrategyPerpetualNoteLP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd66643...a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | StakedStrat | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1e909...c447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | StratOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63aceb...a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | StratPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14cf92...a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | StratToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d080c...dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/) | SuperToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666651...bdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | Underlying | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cf1d...010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2674] NM0599-FINAL_ETH_STRAT.pdf

Fork inheritance lineage and inherited audits are included when available.
