# Agentic Audit Brief: Belt Finance

⚠️ Lifecycle status: DECLINING - TVL changed 4.2% over 90 days

## Project Overview

- Project: Belt Finance (`belt-finance`)
- Website: [https://belt.fi/](https://belt.fi/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:47.155Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, heco, klaytn
- Contract surface: 164 unique implementations (168 raw deployments)
- DeFi Llama TVL: $11,767,424.36
- On-chain TVL (included contracts): $1,700.81
- TVL by chain: Bsc $1,700.81

## Project Description

Belt Finance is a multi-chain DeFi protocol that combines yield aggregation/vault products with an AMM/stableswap platform. It aggregates user deposits into automated yield farming strategies, offers single-asset vaults and multi-strategy tokens that compound returns across DeFi platforms such as Venus, Alpaca, and Ellipsis, and also provides swap/stableswap functionality.

### Architecture

The Belt Finance family provides the core strategy implementations and token contracts used by all vault families. Each vault family (BNB, BTC, BUSD, DAI, ETH, USDC, USDT) deploys its own set of BeltProxy and ReceivableBeltProxy contracts that point to shared strategy implementations like StrategyFortubeV2, StrategyVenusV3, and StrategyVoidV2, enabling isolated deposit pools while reusing yield-generating logic.

## Contract Surface Quality

- Indexed contracts: 1707; live-surface contracts included: 168 (19 live, 149 unknown).
- Excluded by liveness: 1278 inactive, 261 singleton, 0 uninitialized.
- Deployment units: 4/91 live.
- Detected codebases: none
- Unverified dependencies: 22/104.

## Audit Coverage Summary

- Verified implementations audited: 6/14 (42.9%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 150
- Unique implementations: 164
- Raw deployments: 168
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $1,695.04
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,695.04 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 42.9% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SingleStrategyTokenImpl | core_logic | bsc | unit-19574 | [`0x3cdd55...8c9100`](./contracts/bsc-56/0x3cdd556c882dbeb4a0f3444de6d76e12618c9100/) | ✅ Audited |
| SingleStrategyTokenImpl | core_logic | bsc | unit-19618 | [`0xdbcb0f...667841`](./contracts/bsc-56/0xdbcb0faebed3484f0f66a08a2551ef6c92667841/) | ✅ Audited |
| SingleStrategyTokenImpl | core_logic | bsc | unit-19585 | [`0x53a53a...1d6edc`](./contracts/bsc-56/0x53a53a9e10abe9d18d009f6f962f51dc8b1d6edc/) | ✅ Audited |
| SingleStrategyTokenImpl | core_logic | bsc | unit-19562 | [`0x1baf2f...1121ce`](./contracts/bsc-56/0x1baf2f9c47d142be08ec3b73b92137752f1121ce/) | ✅ Audited |
| MasterBelt | unknown | bsc | n/a | [`0xd4bbc8...05e6c1`](./contracts/bsc-56/0xd4bbc80b9b102b77b21a06cb77e954049605e6c1/) | ✅ Audited |
| VaultCakePool | core_logic | bsc | n/a | [`0xf7dfbc...449ae7`](./contracts/bsc-56/0xf7dfbcc1deda3036cfff5d6ece4f04943d449ae7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CompensationPool | core_logic | bsc | n/a | [`0x820512...5440b1`](./contracts/bsc-56/0x820512f47ba0a6b225288f5fa11cb9d8b65440b1/) | ⚠️ Unaudited |
| bBUSDStratVLEV | unknown | bsc | n/a | [`0xc31cf5...5f2873`](./contracts/bsc-56/0xc31cf50c3559329ed83d87f09af3884e935f2873/) | ⚠️ Unaudited |
| bDAIStratVLEV | unknown | bsc | n/a | [`0xd49cb5...ec7051`](./contracts/bsc-56/0xd49cb5b097e9f0b51b3c61c5127a9c35bdec7051/) | ⚠️ Unaudited |
| BELT | unknown | bsc | n/a | [`0xe0e514...c3ea4f`](./contracts/bsc-56/0xe0e514c71282b6f4e823703a39374cf58dc3ea4f/) | ⚠️ Unaudited |
| bUSDCStratVLEV | unknown | bsc | n/a | [`0xed77ce...440a07`](./contracts/bsc-56/0xed77ce44fefe9d90b61e23c36250e9a7ad440a07/) | ⚠️ Unaudited |
| bUSDTStratVLEV | token | bsc | n/a | [`0x8c680d...7c629b`](./contracts/bsc-56/0x8c680d7ec5c8b980bf8cd73001865b80ea7c629b/) | ⚠️ Unaudited |
| Remedy4Belt | unknown | bsc | n/a | [`0x442d5e...992120`](./contracts/bsc-56/0x442d5e02276954ca61f272635cdad07dd7992120/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | 5 deployments: bsc [`0x86afa7...454169`](./contracts/bsc-56/0x86afa7ff694ab8c985b79733745662760e454169/); bsc `0x9cb73f...4d1404`; bsc `0xaea4f7...c1e8b6`; bsc `0xf157a4...a7b050`; bsc `0xf6e65b...ac04d5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (150)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x969609...7bb77d` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x00e517...6c3c63` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x08230a...425105` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x082d78...c62cfc` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x0bd7a2...e571f2` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x0e564b...73e142` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x0e6a61...f93add` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x13f88e...13f1bb` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x1e5df0...91ca79` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x24619e...2a94ea` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x24b165...1dfd11` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x25d6a0...b01602` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x275994...e83d3f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x280ae8...fe201d` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x2c0353...7f3406` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x2de913...5a86a8` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x2df074...56edcc` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x2fcdd0...985dc8` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x31a1fc...ae4f69` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x39ff31...34230f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x3d5e1d...61a786` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x415ca0...82a9ce` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x430a67...c75f79` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x44f0e9...2d197b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x44f95f...b6881c` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x46e089...f33b4b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x4935d9...df1eb7` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x4a9713...f85803` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x4be217...6a88e2` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x4cd59e...f1d258` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x50264b...e71dad` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x50cb33...83a086` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x50ebed...7dc870` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x5cf962...a69013` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x5d790e...7b4cac` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x673158...2884b0` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x6748d7...a281a5` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x67bb0b...2f65e8` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x689854...fb2f40` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x69c895...92358c` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x6d8c89...d05c75` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x7840c4...c67588` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x80044d...e4eb57` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x80a95f...830dcb` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x826c88...359c5a` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x8434b3...a66f38` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x86f5c8...0fa674` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x871da2...c33796` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x8a5724...ceac53` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x8c5176...a11f57` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x8d3a8a...c611bb` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x923c5d...4921a1` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x94a379...470afe` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x96a020...f5a711` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x9bc7a8...f457e5` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x9d5e7a...c2cf51` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x9e0b64...cf94d3` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xa11a82...8756ce` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xa541f7...c7305c` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xa8714b...454272` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xb1493b...1ce8c3` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xb8b00a...3d8564` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xb8bd90...da52d1` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xb939e4...59b84c` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xbb550c...eca0ae` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xbb8e0f...9481ef` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xbca98b...7bc2f3` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xbdda28...2410e8` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc04a84...adf353` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc33a04...2198a1` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc4867c...9ded35` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc666ca...02caa3` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xcc6c6d...cad2d8` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xcd70c6...7a6c40` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xd3e341...cff96e` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe7fa18...a27507` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe8f67d...26a715` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xeb7513...3c45aa` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf1ff20...455186` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf2eebf...b85496` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf44158...cbef95` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf54c5e...64734b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf59069...65dca4` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf6b317...d8bacc` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf95a07...5c2a99` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xfd3608...170567` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xff8376...685b86` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x05bb67...454d4e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x090f22...98f0c2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x0d9c20...7ae168` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x19b6f0...ee1719` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1e5df0...91ca79` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1f450a...ac5b6a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2ad281...08252b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2df990...8cf6e1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x31a1fc...ae4f69` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3331e6...9a4f54` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x36715e...8d7617` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3677f3...7ab4d9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x39ff31...34230f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3a5b4b...f8f193` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3d5e1d...61a786` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x415ca0...82a9ce` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x426533...c40d46` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x430a67...c75f79` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4935d9...df1eb7` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5e0f00...3af971` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x673158...2884b0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6ef90a...36ccd6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x766a73...570cf8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7b6a8e...18d518` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x826c88...359c5a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x835dce...be109b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x8a5724...ceac53` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x8bc913...4b8238` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x8f1ce3...3120e4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x94065e...5f86d8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9462c1...bff6fe` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x94a379...470afe` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x98947f...346750` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x99084e...90eaf5` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9b433f...7b376f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9d2a00...a1ee01` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9fa98e...4bf3e4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa00da2...429b48` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa1464f...6dc547` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa541f7...c7305c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa9295f...991f4b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xaaa9a1...8fd5c7` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb551b7...321274` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb6b5e2...5385b0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb8f66f...394fda` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xbb8e0f...9481ef` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xbda66a...a30d91` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xbe0262...d7ec5d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc0c097...ea8d08` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc4053b...58d8f2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xcfeabc...fee3e9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xdb2afa...f8b6d4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xdfe180...44a51f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe12135...8b853b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe510d4...438e81` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe7fa18...a27507` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xea648b...44aae6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xed3348...baa15a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf1ff20...455186` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf54c5e...64734b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf70644...c2707f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf760e6...f8e8a0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf900b7...e50a8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Belt_Crosschain_Audit_1.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/Belt_Crosschain_Audit_1.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Belt_Crosschain_Audit_2.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/Belt_Crosschain_Audit_2.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Belt_Finance_Audit.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/Belt_Finance_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/HAECHI_AUDIT_Smart_contract_audit_report_for_BeltFi_earnV2_additional.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 4 | high |
| [[ENG]BELTFI_Security_Assessment.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/%5BENG%5DBELTFI_Security_Assessment.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | 2 | high |
| [[ENG]BELT_HECO_Security_Assessment.pdf](https://github.com/BeltFi/belt-contract/blob/main/audit/%5BENG%5DBELT_HECO_Security_Assessment.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x820512...5440b1`](./contracts/bsc-56/0x820512f47ba0a6b225288f5fa11cb9d8b65440b1/) | CompensationPool | core_logic | $1,695.04 | Verified native implementation with $1,695.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc31cf5...5f2873`](./contracts/bsc-56/0xc31cf50c3559329ed83d87f09af3884e935f2873/) | bBUSDStratVLEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd49cb5...ec7051`](./contracts/bsc-56/0xd49cb5b097e9f0b51b3c61c5127a9c35bdec7051/) | bDAIStratVLEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x442d5e...992120`](./contracts/bsc-56/0x442d5e02276954ca61f272635cdad07dd7992120/) | Remedy4Belt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86afa7...454169`](./contracts/bsc-56/0x86afa7ff694ab8c985b79733745662760e454169/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=391

Zero-match audit list:

- [6917] Belt_Crosschain_Audit_1.pdf
- [6918] Belt_Crosschain_Audit_2.pdf
- [6919] Belt_Finance_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
