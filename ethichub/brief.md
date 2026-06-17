# Agentic Audit Brief: EthicHub

## Project Overview

- Project: EthicHub (`ethichub`)
- Website: [https://ethichub.com](https://ethichub.com)
- Lifecycle: active (Tier 0, 78.9% below peak)
- Generated: 2026-06-17T07:00:55.967Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: celo, ethereum, gnosis
- Contract surface: 19 unique implementations (28 raw deployments)
- DeFi Llama TVL: $3,580,529.85
- On-chain TVL (included contracts): $18,513,451.72
- TVL by chain: Ethereum $13,019,531.08 | Celo $5,470,122.98 | Gnosis $23,797.67

## Project Description

EthicHub is a ReFi/RWA lending and guarantee platform that connects lenders with smallholder farmers and agricultural communities in emerging markets. ETHIX is used for collective guarantees, staking, incentives, and rewards around the lending ecosystem. Cross-chain bridge contracts should be treated as deployment or interoperability infrastructure rather than core loan-securing logic unless separately evidenced as EthicHub-owned and in audit scope.

### Architecture

The ETHEREUM SMART CONTRACTS family provides the foundational EthixToken and staking contracts, which are mirrored or bridged to the EthicHub family on Gnosis and Celo. The EthicHub family uses these tokens for bonding, staking, and liquidity, while ForeignOmnibridge enables cross-chain asset transfers between networks.

## Contract Surface Quality

- Indexed contracts: 220; live-surface contracts included: 28 (27 live, 1 unknown).
- Excluded by liveness: 107 inactive, 85 singleton, 0 uninitialized.
- Deployment units: 4/37 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 2/14.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 19
- Raw deployments: 28
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $18,513,451.72
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EthixToken | token | ethereum | unit-32276 | [`0xfd0991...d80d3e`](./contracts/ethereum-1/0xfd09911130e6930bf87f2b0554c44f400bd80d3e/) | ⚠️ Unaudited |
| TokenImplementation | token | celo | unit-32285 | [`0x9995cc...c931ed`](./contracts/celo-42220/0x9995cc8f20db5896943afc8ee0ba463259c931ed/) | ⚠️ Unaudited |
| ERC20Reserve | token | ethereum | n/a | 4 deployments: ethereum [`0x1ecc7e...04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/); ethereum `0xb27132...063073`; celo `0xa14b1d...3e1567`; celo `0xa9a824...b28530` | ⚠️ Unaudited |
| MultiTokenReserve | token | celo | n/a | 3 deployments: celo [`0x70c85e...92651f`](./contracts/celo-42220/0x70c85e77ae595fa22adc2a892e4175984c92651f/); celo `0x7d7c28...6cbb8d`; celo `0x851029...3c5b62` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | celo | n/a | [`0x342072...955a5d`](./contracts/celo-42220/0x3420720e561f3082f1e514a4545f0f2e0c955a5d/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | unit-32277 | [`0xec3f3e...3fbb19`](./contracts/gnosis-100/0xec3f3e6d7907acda3a7431abd230196cda3fbb19/) | ⚠️ Unaudited |
| BPool | core_logic | ethereum | n/a | [`0xb93aa4...db19f1`](./contracts/ethereum-1/0xb93aa4cdeef1293303f628e16dd06ddd42db19f1/) | ⚠️ Unaudited |
| CrowdEquityVestingReserve | operational_periphery | celo | n/a | [`0x2bf3d1...7ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | ⚠️ Unaudited |
| ERC20NFTBond | token | celo | n/a | 2 deployments: celo [`0x485851...7725f0`](./contracts/celo-42220/0x4858512aa44da566b23caa954db2e6ecc57725f0/); celo `0x89cea1...9478f5` | ⚠️ Unaudited |
| ForeignAMB | unknown | ethereum | unit-32258 | [`0x4c36d2...9ce64e`](./contracts/ethereum-1/0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e/) | ⚠️ Unaudited |
| ForeignBridgeErcToNative | operational_periphery | ethereum | n/a | [`0x75df5a...a0bb59`](./contracts/ethereum-1/0x75df5af045d91108662d8080fd1fefad6aa0bb59/) | ⚠️ Unaudited |
| InvestorsVestingReserve | operational_periphery | celo | n/a | 2 deployments: ethereum `0xde629e...870cf5`; celo [`0x635775...4beac7`](./contracts/celo-42220/0x63577522f8fbc3adc023f787d207f43fa54beac7/) | ⚠️ Unaudited |
| MerkleTreeVestingReserve | operational_periphery | ethereum | n/a | [`0x2f36b4...9b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | ⚠️ Unaudited |
| PermittableToken | token | ethereum | n/a | [`0xe1ca72...aba03d`](./contracts/ethereum-1/0xe1ca72ff3434b131765c62cbcbc26060f7aba03d/) | ⚠️ Unaudited |
| StakingRewards | unknown | celo | n/a | [`0xbfa274...a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | celo | n/a | 3 deployments: ethereum `0xb14b94...06b458`; gnosis `0xe5bc36...3577eb`; celo [`0x62cfa2...85ddb7`](./contracts/celo-42220/0x62cfa295864cff683cde9b47d4bacc77b885ddb7/) | ⚠️ Unaudited |
| WETHOmnibridgeRouter | operational_periphery | ethereum | n/a | [`0xa6439c...c9038a`](./contracts/ethereum-1/0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | celo | n/a | `0x2dfbe4...e1cc9f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xad2f9f...767d4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://gitlab.com/EthicHub/ethix-contracts/-/blob/master/audits/Red4Sec-EthicHub%20-%20Smart%20Contract%20Audit%20Report_v3.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://gitlab.com/EthicHub/minimice/-/blob/main/audits/EthicHub%20-%20Smart%20Contract%20Audit%20Report%20Final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1ecc7e...04a5c5`](./contracts/ethereum-1/0x1ecc7e3b26dcaee4d63536fe50ea37787a04a5c5/) | ERC20Reserve | token | $2,891,922.28 | Verified native implementation with $2,891,922.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x70c85e...92651f`](./contracts/celo-42220/0x70c85e77ae595fa22adc2a892e4175984c92651f/) | MultiTokenReserve | token | $94,323.21 | Verified native implementation with $94,323.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xec3f3e...3fbb19`](./contracts/gnosis-100/0xec3f3e6d7907acda3a7431abd230196cda3fbb19/) | PermittableToken | token | $23,797.67 | Verified native implementation with $23,797.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2bf3d1...7ef4ef`](./contracts/celo-42220/0x2bf3d179201be13fff7d10b95e7cfb44357ef4ef/) | CrowdEquityVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x485851...7725f0`](./contracts/celo-42220/0x4858512aa44da566b23caa954db2e6ecc57725f0/) | ERC20NFTBond | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x635775...4beac7`](./contracts/celo-42220/0x63577522f8fbc3adc023f787d207f43fa54beac7/) | InvestorsVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f36b4...9b0afd`](./contracts/ethereum-1/0x2f36b4843129647d840911eaea49db16649b0afd/) | MerkleTreeVestingReserve | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbfa274...a72684`](./contracts/celo-42220/0xbfa2748a60976cd18b835c75c6a20328e9a72684/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2663] DL audit link
- [2664] DL audit link

Fork inheritance lineage and inherited audits are included when available.
