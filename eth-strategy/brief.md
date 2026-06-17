# Agentic Audit Brief: ETH Strategy

## Project Overview

- Project: ETH Strategy (`eth-strategy`)
- Website: [https://www.ethstrat.xyz/](https://www.ethstrat.xyz/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:49.545Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 40 unique implementations (69 raw deployments)
- DeFi Llama TVL: $3,877,141.88
- On-chain TVL (included contracts): $30,393,470.52
- TVL by chain: Ethereum $30,393,470.52

## Project Description

ETH Strategy is an Ethereum-based treasury accumulation protocol focused on providing leveraged ETH exposure without margin-liquidation or volatility-decay risks. Its on-chain surface includes vault-style contracts and related strategy components; references to perpetual or convertible note products should be limited to cases supported by identified contract names or parsed audit scope.

### Architecture

The ETH Strategy and ESPN families share the StratToken as a core asset, while the Proxy Contracts family provides upgradeable infrastructure for Arrakis V2 pools used in ESPN. Multisigs govern and secure all families, and the Bridge family enables cross-chain movement of strategy tokens.

## Contract Surface Quality

- Indexed contracts: 165; live-surface contracts included: 69 (68 live, 1 unknown).
- Excluded by liveness: 87 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 2/26.

## Audit Coverage Summary

- Verified implementations audited: 0/33 (0.0%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 40
- Raw deployments: 69
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $30,393,470.52
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StratToken | token | ethereum | n/a | [`0x14cf92...a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x26cf1d...010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/); ethereum `0x35d4d9...691cad`; ethereum `0x442146...33dc60`; ethereum `0x4bb4c3...861eb4`; ethereum `0x613e87...62c142`; ethereum `0x7e1d17...e50c91`; ethereum `0x8180ec...88bf78`; ethereum `0x937135...b77f1d`; ethereum `0xd7d75f...8837a3`; ethereum `0xdf9acf...3c1a72`; ethereum `0xe3e968...7137bf`; ethereum `0xfef430...6235fe` | ⚠️ Unaudited |
| StakedStrat | token | ethereum | n/a | [`0xd66643...a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | ⚠️ Unaudited |
| EthStrategyPerpetualNote | core_logic | ethereum | n/a | [`0xb250c9...1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | [`0x67e26e...c30317`](./contracts/ethereum-1/0x67e26e7ef3344b9e8970f6413dc678b138c30317/) | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | ethereum | n/a | [`0x6fddfb...da1bc6`](./contracts/ethereum-1/0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6/) | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | n/a | [`0x020e04...67424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | ethereum | n/a | [`0xd840e7...a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ⚠️ Unaudited |
| CdtToken | token | ethereum | n/a | [`0xd45983...9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | ⚠️ Unaudited |
| ClaimStratStream | adapter | ethereum | n/a | [`0x38c36e...41afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ⚠️ Unaudited |
| ConnectorPlug | unknown | ethereum | n/a | 4 deployments: ethereum [`0x22be0d...aa43fd`](./contracts/ethereum-1/0x22be0dbe1fe7536613f0ad717d7b8e3faeaa43fd/); ethereum `0x5ed056...1fad5a`; ethereum `0x82d4a4...161b76`; ethereum `0xdb39c6...ea043c` | ⚠️ Unaudited |
| Controller | governance | ethereum | n/a | 6 deployments: ethereum [`0x4dfa99...048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/); ethereum `0x954be1...f505d3`; ethereum `0x96e47f...caea73`; ethereum `0x988ddd...486904`; ethereum `0xc52ef0...12d8a6`; ethereum `0xe7cd93...e205a0` | ⚠️ Unaudited |
| esETH | unknown | ethereum | n/a | [`0xe7a2f9...fdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | ⚠️ Unaudited |
| ESPNRedemptionFacilitator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cb029...c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/); ethereum `0x8ea1eb...576299` | ⚠️ Unaudited |
| EthStrategyConvertibleNote | core_logic | ethereum | n/a | [`0xb96d4d...9accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | [`0x53f9b8...e9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-29905 | [`0x75efa0...25adfa`](./contracts/ethereum-1/0x75efa088e34da03966a5d2b84fa16c77ff25adfa/) | ⚠️ Unaudited |
| GUniFactory | registry | ethereum | n/a | [`0x2f017e...66ed2f`](./contracts/ethereum-1/0x2f017ee436429711698a5f6761fe935f4866ed2f/) | ⚠️ Unaudited |
| GUniPool | core_logic | ethereum | n/a | [`0xdffb04...ebaa4c`](./contracts/ethereum-1/0xdffb0453ce8bb0c6059a66171515960483ebaa4c/) | ⚠️ Unaudited |
| LyraDepositWrapper | unknown | ethereum | n/a | [`0x7d7327...beb3c8`](./contracts/ethereum-1/0x7d7327624bf9627fc11f6da240db8066c4beb3c8/) | ⚠️ Unaudited |
| LyraTSAShareHandlerDepositHook | unknown | ethereum | n/a | 3 deployments: ethereum [`0xcb39cd...3b598b`](./contracts/ethereum-1/0xcb39cd7831f091beca153c08453066d7913b598b/); ethereum `0xdfc777...f3f4bf`; ethereum `0xfcb49f...457db9` | ⚠️ Unaudited |
| MultiDistro | unknown | ethereum | n/a | 2 deployments: ethereum [`0x133f33...41f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/); ethereum `0x8e52df...cbf77f` | ⚠️ Unaudited |
| pnETH | unknown | ethereum | n/a | [`0x771200...26229d`](./contracts/ethereum-1/0x771200261c99ff4e0a072b0484b76c56c826229d/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0x6d843e...e086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | ⚠️ Unaudited |
| Position | unknown | ethereum | n/a | [`0x7f9c70...39f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | ⚠️ Unaudited |
| PresaleTokenRenderer | token | ethereum | n/a | [`0x316fe1...a731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x162558...b6684b`](./contracts/ethereum-1/0x16255823f7a3d82e212ea01e96ec123f40b6684b/) | ⚠️ Unaudited |
| RedeemPresaylor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5df764...012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/); ethereum `0xca8940...06371a` | ⚠️ Unaudited |
| StakedEthStrategyPerpetualNoteLP | core_logic | ethereum | n/a | [`0xcd65f0...dc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | ⚠️ Unaudited |
| StratOption | unknown | ethereum | n/a | [`0xe1e909...c447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | ⚠️ Unaudited |
| StratPresale | unknown | ethereum | n/a | [`0x63aceb...a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | ⚠️ Unaudited |
| SuperToken | token | ethereum | n/a | 6 deployments: ethereum [`0x1d080c...dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/); ethereum `0x32390a...d4b4c2`; ethereum `0xcae44c...0a907b`; ethereum `0xdfd366...7ff991`; ethereum `0xe9a12f...32b3d7`; ethereum `0xf90b95...58362b` | ⚠️ Unaudited |
| Underlying | unknown | ethereum | n/a | [`0x666651...bdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x50f51b...6c6a4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701e59...4c6aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76dbe9...1192f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79b47...7b4cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd02edd...9c43cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e86b...3de108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedfb03...b3c165` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| **Nethermind ESPN Audit** | [NM0599-FINAL\_ETH\_STRAT.pdf]() |](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0599-FINAL_ETH_STRAT.pdf) | Nethermind | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x14cf92...a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | StratToken | token | $15,091,335.74 | Verified native implementation with $15,091,335.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cf1d...010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/) | Vault | core_logic | $7,316,367.47 | Verified native implementation with $7,316,367.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd66643...a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | StakedStrat | token | $4,102,274.55 | Verified native implementation with $4,102,274.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb250c9...1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | EthStrategyPerpetualNote | core_logic | $3,883,492.76 | Verified native implementation with $3,883,492.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020e04...67424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd840e7...a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ArrakisV2Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd45983...9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | CdtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38c36e...41afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ClaimStratStream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22be0d...aa43fd`](./contracts/ethereum-1/0x22be0dbe1fe7536613f0ad717d7b8e3faeaa43fd/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfa99...048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7a2f9...fdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | esETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb029...c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/) | ESPNRedemptionFacilitator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb96d4d...9accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | EthStrategyConvertibleNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f9b8...e9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x133f33...41f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/) | MultiDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771200...26229d`](./contracts/ethereum-1/0x771200261c99ff4e0a072b0484b76c56c826229d/) | pnETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 25 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 9 |

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
