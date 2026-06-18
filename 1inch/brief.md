# Agentic Audit Brief: 1inch

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-18T18:11:50.954Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-748f
- Chains: bsc, ethereum, zksync-era
- Contract surface: 32 unique implementations (133 raw deployments)
- DeFi Llama TVL: $2,411,906.00
- On-chain TVL (included contracts): $16,060,699.91
- TVL by chain: Ethereum $16,060,699.91

## Project Description

1inch is an active DeFi ecosystem centered on DEX aggregation and best-execution swaps across many liquidity sources. Its current product lines include the 1inch Aggregation Protocol/router, Limit Order Protocol, Fusion intent-based swaps, Fusion+/cross-chain swap infrastructure, wallet, portfolio, card, and developer/API products across 13+ supported chains. The 1INCH governance and utility token is 0x111111111117dc0aa78b770fa6a738034120c302 on Ethereum. MoverToken is not the 1inch governance token, and MooniswapFactory should not be described as the current core liquidity infrastructure for 1inch.

### Architecture

The single product family encompasses all contracts, with the MooniswapFactory serving as the core liquidity infrastructure and MoverToken as the governance token. Supporting contracts include proxy and external tokens that interact with the core aggregation and governance functions.

## Contract Surface Quality

- Indexed contracts: 822; live-surface contracts included: 133 (132 live, 1 unknown).
- Excluded by liveness: 650 inactive, 39 singleton, 0 uninitialized.
- Deployment units: 0/19 live.
- Detected codebases: none
- Unverified dependencies: 3/26.

## Audit Coverage Summary

- Verified implementations audited: 12/23 (52.2%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 32
- Raw deployments: 133
- Audits discovered: 150
- Scoreable audits (matched contracts): 58
- ASD (verified + unaudited TVL): $16,060,699.91
- Latest audit: 2025-09 (fresh)
- Staleness: 13 fresh, 21 aging, 109 stale, 7 unknown
- Tier 1 coverage: 26.1% (ChainSecurity, MixBytes, OpenZeppelin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 52.2% | 2025-09 |
| Decurity | Tier 2 | 4 | 17.4% | 2025-08 |
| CertiK | Tier 2 | 3 | 13.0% | 2021-11 |
| MixBytes | Tier 1 | 3 | 13.0% | 2022-11 |
| OpenZeppelin | Tier 1 | 3 | 13.0% | 2025-08 |
| ABDK | Tier 2 | 2 | 8.7% | 2023-02 |
| Ackee Blockchain | Tier 2 | 1 | 4.3% | 2021-08 |
| ChainSecurity | Tier 1 | 1 | 4.3% | 2023-01 |
| PeckShield | Tier 2 | 1 | 4.3% | 2023-12 |
| Sherlock | Tier 1 | 1 | 4.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregationRouterV6 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x111111...842a65`](./contracts/ethereum-1/0x111111125421ca6dc452d289314280a0f8842a65/); bsc [`0x111111...842a65`](./contracts/bsc-56/0x111111125421ca6dc452d289314280a0f8842a65/) | ✅ Audited |
| EscrowFactory | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa7bcb4...ddf99a`](./contracts/ethereum-1/0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a/); bsc [`0xa7bcb4...ddf99a`](./contracts/bsc-56/0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a/) | ✅ Audited |
| FarmingRewards | unknown | ethereum | n/a | 11 deployments: ethereum [`0x18d410...4f4560`](./contracts/ethereum-1/0x18d410f651289bb978fc32f90d2d7e608f4f4560/); ethereum `0x2cb9e7...b4182f`; ethereum `0x2ec255...48ffba`; ethereum `0x302a6e...986677`; ethereum `0x8b1af1...7521e5`; ethereum `0x907083...3eabd9`; ethereum `0x94bc2a...08734f`; ethereum `0xc7c42e...01d388`; ethereum `0xd7012c...5a3f52`; ethereum `0xd79360...108480`; ethereum `0xeb7dbc...21eacd` | ✅ Audited |
| FixedRateSwap | unknown | ethereum | n/a | [`0x92b384...9ddcd1`](./contracts/ethereum-1/0x92b3842c822810774ac077703a96e194ac9ddcd1/) | ✅ Audited |
| GovernanceMothership | unknown | ethereum | n/a | [`0xa0446d...42caba`](./contracts/ethereum-1/0xa0446d8804611944f1b527ecd37d7dcbe442caba/) | ✅ Audited |
| GovernanceRewards | unknown | ethereum | n/a | [`0x0f85a9...54b594`](./contracts/ethereum-1/0x0f85a912448279111694f4ba4f85dc641c54b594/) | ✅ Audited |
| LimitOrderProtocol | unknown | ethereum | n/a | [`0x3ef517...ffe782`](./contracts/ethereum-1/0x3ef51736315f52d568d6d2cf289419b9cfffe782/) | ✅ Audited |
| MooniswapFactory | registry | ethereum | n/a | [`0xbaf9a5...3a9643`](./contracts/ethereum-1/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643/) | ✅ Audited |
| PowerPod | unknown | ethereum | n/a | [`0xaccfac...b4f947`](./contracts/ethereum-1/0xaccfac2339e16dc80c50d2fa81b5c2b049b4f947/) | ✅ Audited |
| St1inch | unknown | ethereum | n/a | [`0x9a0c8f...7501d7`](./contracts/ethereum-1/0x9a0c8ff858d273f57072d714bca7411d717501d7/) | ✅ Audited |
| StakingFarmingPod | unknown | ethereum | n/a | [`0x1a87c0...0260be`](./contracts/ethereum-1/0x1a87c0f9cca2f0926a155640e8958a8a6b0260be/) | ✅ Audited |
| StepVesting | operational_periphery | ethereum | n/a | 89 deployments: ethereum [`0x003ea5...b05f30`](./contracts/ethereum-1/0x003ea55ef6fb46de28fe05ae695042f103b05f30/); ethereum `0x0820e5...5acd42`; ethereum `0x0a678d...5ff4b0`; ethereum `0x0da1fc...d139c0`; ethereum `0x0f66df...3b366e`; ethereum `0x116f04...578ef5`; ethereum `0x1217f2...1d4cc8`; ethereum `0x1707e0...6ed297`; ethereum `0x177f86...3720ef`; ethereum `0x204165...9cbea9`; ethereum `0x218d06...60c31e`; ethereum `0x24029d...d5f796`; ethereum `0x24a262...475b27`; ethereum `0x24cb49...57ca5f`; ethereum `0x26a34f...fcc2c5`; ethereum `0x2c6358...70df71`; ethereum `0x2ea4b8...cfcb21`; ethereum `0x2ff244...f72bc7`; ethereum `0x3053c0...027b19`; ethereum `0x31d2bc...00607d`; ethereum `0x321c03...efc386`; ethereum `0x35d668...391a6b`; ethereum `0x434f5a...0a00fa`; ethereum `0x449f03...ceeb96`; ethereum `0x451ab1...ea4775`; ethereum `0x4d8c1e...0c3845`; ethereum `0x4fd984...28c411`; ethereum `0x50980e...88e958`; ethereum `0x56217d...0598d7`; ethereum `0x572a53...987980`; ethereum `0x576181...7cbc4f`; ethereum `0x59d8e2...0296d5`; ethereum `0x5dadbd...1e46dd`; ethereum `0x5f30da...d814d2`; ethereum `0x5fcfcb...a414f6`; ethereum `0x650589...b75e6a`; ethereum `0x694d50...5a52f8`; ethereum `0x69804f...f33c13`; ethereum `0x6b3c64...419e5d`; ethereum `0x6b4a1d...6f9920`; ethereum `0x70888b...e096b9`; ethereum `0x76b8b5...665312`; ethereum `0x785cf0...fa317f`; ethereum `0x794c47...c9ab7e`; ethereum `0x798da0...cf320d`; ethereum `0x7df428...ab18b8`; ethereum `0x8d877f...95a07d`; ethereum `0x942488...4b0f07`; ethereum `0x94b14c...509409`; ethereum `0x960bbe...dee8fd`; ethereum `0x99398c...1809d1`; ethereum `0x9cbe10...b2f36b`; ethereum `0xa1ac92...f69b36`; ethereum `0xa88643...5052eb`; ethereum `0xa8e7fc...293d10`; ethereum `0xb0cdb9...9504d4`; ethereum `0xb93217...fb5faf`; ethereum `0xc061df...87513f`; ethereum `0xc0dfbe...2bdf1e`; ethereum `0xc1cb96...1322f3`; ethereum `0xc41494...a56908`; ethereum `0xc554d4...9d2f6d`; ethereum `0xc5ea79...9c9f8d`; ethereum `0xc87065...4ca442`; ethereum `0xc8b514...74d389`; ethereum `0xc8e0bb...5b8cea`; ethereum `0xcad8f8...5755a6`; ethereum `0xcb945a...2348f7`; ethereum `0xcca41c...bc94ef`; ethereum `0xcdb884...d5aeb1`; ethereum `0xd24536...2d5388`; ethereum `0xd44293...2bf202`; ethereum `0xd4a6c7...75b7dd`; ethereum `0xda5cc7...2559a4`; ethereum `0xdb662a...9801d2`; ethereum `0xdc4fa1...93e592`; ethereum `0xdcdd91...f11988`; ethereum `0xddad32...5df122`; ethereum `0xdeff4c...f734cf`; ethereum `0xe44c9a...13071c`; ethereum `0xe4cc35...164dd1`; ethereum `0xe523d0...f7f1f6`; ethereum `0xededb5...dc52f3`; ethereum `0xeeef4f...a05413`; ethereum `0xf55f2e...01bd68`; ethereum `0xf56af2...496c78`; ethereum `0xf808a9...073f7e`; ethereum `0xf8d4ab...f5d859`; ethereum `0xffb603...2e1e43` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0xcd62b1...80b184`](./contracts/ethereum-1/0xcd62b1c403fa761baadfc74c525ce2b51780b184/) | ⚠️ Unaudited |
| HolyToken | token | ethereum | n/a | [`0x39eae9...1a6e09`](./contracts/ethereum-1/0x39eae99e685906ff1c11a962a743440d0a1a6e09/) | ⚠️ Unaudited |
| CrosschainWhitelistRegistry | registry | ethereum | n/a | [`0xbe8934...1b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | n/a | [`0xee262a...4dafaf`](./contracts/ethereum-1/0xee262adcd9ecc0476452e302cf3c822f634dafaf/) | ⚠️ Unaudited |
| DAPFToken | token | ethereum | n/a | [`0xbb9284...8ea677`](./contracts/ethereum-1/0xbb9284484cb9a2bc7950a1276edba2f6358ea677/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4ee7c0...92d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/); ethereum `0xe295ad...088afe` | ⚠️ Unaudited |
| SeriesNonceManager | governance | ethereum | n/a | [`0x303389...b28e10`](./contracts/ethereum-1/0x303389f541ff2d620e42832f180a08e767b28e10/) | ⚠️ Unaudited |
| Settlement | unknown | ethereum | n/a | [`0x2ad500...b51ef5`](./contracts/ethereum-1/0x2ad5004c60e16e54d5007c80ce329adde5b51ef5/) | ⚠️ Unaudited |
| TORN | unknown | ethereum | n/a | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| WhitelistRegistry | registry | ethereum | n/a | [`0xf55684...e45e26`](./contracts/ethereum-1/0xf55684bc536487394b423e70567413fab8e45e26/) | ⚠️ Unaudited |
| Zedxion | unknown | ethereum | n/a | [`0xfbc4f3...9a9341`](./contracts/ethereum-1/0xfbc4f3f645c4003a2e4f4e9b51077d2daa9a9341/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1136b2...173ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x220bda...2196d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3451b6...a1e812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aa7a8...94d0c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7122db...fbd0e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92f3f7...f33588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda63a3...524090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf313b3...c4ec04` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6fd438...d561ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 1 | high |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [Certik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) | CertiK | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Coinfabrik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Hacken - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) | Hacken | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Haechi - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Scott Bigelow - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Slowmist - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Certik - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Gulamov - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | high |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | high |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | contract_name | 2 | high |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 2 | high |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | medium |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 0 | n/a |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | 2 | high |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 1 | high |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 2 | high |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 3 | high |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 14 | high |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 11 | high |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 12 | high |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 89 | high |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 89 | high |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 89 | high |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 89 | medium |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [whitepaper-aqua-1.0.pdf](https://github.com/1inch/aqua/blob/main/docs/whitepaper-aqua-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-swap-vm-1.0.pdf](https://github.com/1inch/swap-vm/blob/release%2F1.1/docs/whitepaper-swap-vm-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aqua-dev-preview.pdf](https://github.com/1inch/aqua-app-template/blob/main/docs/aqua-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [swapvm-dev-preview.pdf](https://github.com/1inch/swap-vm-template/blob/main/docs/swapvm-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://help.1inch.com/en/articles/4585088-how-secure-is-1inch) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x39eae9...1a6e09`](./contracts/ethereum-1/0x39eae99e685906ff1c11a962a743440d0a1a6e09/) | HolyToken | token | $272,006.00 | Verified native implementation with $272,006.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe8934...1b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | CrosschainWhitelistRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee262a...4dafaf`](./contracts/ethereum-1/0xee262adcd9ecc0476452e302cf3c822f634dafaf/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee7c0...92d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x303389...b28e10`](./contracts/ethereum-1/0x303389f541ff2d620e42832f180a08e767b28e10/) | SeriesNonceManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ad500...b51ef5`](./contracts/ethereum-1/0x2ad5004c60e16e54d5007c80ce329adde5b51ef5/) | Settlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55684...e45e26`](./contracts/ethereum-1/0xf55684bc536487394b423e70567413fab8e45e26/) | WhitelistRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 92
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=56, medium=2
- Match method counts: extraction_exact=2051

Zero-match audit list:

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf
- [8162] 1inch Aggregation Router V5_Consensys.pdf
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf
- [8164] 1inch Aggregation Router V5_MixBytes.pdf
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf
- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8168] 1inch Aggregation Router V5_Statemind.pdf
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
- [8181] 1inch Aggregation Router V6_PeckShield.pdf
- [8185] Certik - 1inch v2 Audit Report.pdf
- [8186] Chainsulting - 1inch v2 Audit Report.pdf
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf
- [8188] Hacken - 1inch v2 Audit Report.pdf
- [8189] Haechi - 1inch v2 Audit Report.pdf
- [8190] MixBytes - 1inch v2 Audit Report.pdf
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf
- [8192] Slowmist - 1inch v2 Audit Report.pdf
- [8193] Certik - 1inch v3 Audit Report.pdf
- [8194] Gulamov - 1inch v3 Audit Report.pdf
- [8195] MixBytes - 1inch v3 Audit Report.pdf
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8220] Fee flow v1-AstraSec.pdf
- [8221] Fee flow v1-Bailsec.pdf
- [8222] Fee flow v1-ChainLight.pdf
- [8223] Fee flow v1-Decurity.pdf
- [8224] Fee flow v1-Open Zepplin.pdf
- [8225] Fee flow v1-Sherlock.pdf
- [8229] 1inch FixedRateSwap_MixedBytes.pdf
- [8231] 1inch Settlement v2.1_AstraSec.pdf
- [8232] 1inch Settlement v2.1_Decurity.pdf
- [8233] 1inch Settlement v2.1_Hexens.pdf
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf
- [8235] 1inch Settlement v2.1_Pashov.pdf
- [8236] 1inch Settlement v2.1_Pessemistic.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8239] 1inch Settlement v2_Open Zeppelin.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8267] LimitSwap audit.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
- [8284] Solana Fusion - Decurity v1.pdf
- [8285] Solana Fusion - Hexens v1.pdf
- [8286] Solana Fusion - Open Zepplin v1.pdf
- [8287] Solana Fusion - Ottersec v1.pdf
- [8288] Solana Fusion - Quantstamp v1.pdf
- [8289] Solana Fusion - Zenith v1.01.pdf
- [8290] Solana Fusion v1_Kudelski.pdf
- [8291] Solana Fusion v1_OffsideLabs.pdf
- [8292] Solana cross-chain v1.0-Hexens.pdf
- [8293] Solana cross-chain v1.0-Zenith.pdf
- [8294] Solana cross-chain v1.0_Decurity.pdf
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf
- [8296] Solana cross-chain v1.0_Sherlock.pdf
- [8297] Solana cross-chain v1.1_Decurity.pdf
- [8298] Solana cross-chain v1.1_Hexens.pdf
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf
- [8300] Solana cross-chain v1.1_Sherlock.pdf
- [8301] Solana cross-chain v1.1_Zenith.pdf
- [8416] MixBytes.pdf
- [8550] whitepaper-aqua-1.0.pdf
- [8552] whitepaper-swap-vm-1.0.pdf
- [8593] aqua-dev-preview.pdf
- [8595] swapvm-dev-preview.pdf
- [15510] DL audit link

Fork inheritance lineage and inherited audits are included when available.
