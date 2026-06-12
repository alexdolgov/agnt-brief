# Agentic Audit Brief: Mezo Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T14:10:01.075Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: ethereum
- Contract surface: 26 unique implementations (50 raw deployments)
- DeFi Llama TVL: $16,855,428.39
- On-chain TVL (included contracts): $2,629,300.40
- TVL by chain: Ethereum $2,629,300.40

## Project Description

Mezo Bridge is the bridge/application surface associated with Mezo for moving supported assets between Ethereum and the Mezo network. Its owned contract surface should be limited to verified Mezo bridge, lockbox, borrowing, MUSD, or vault contracts, and should exclude upstream asset tokens, external vaults, and other contracts not evidenced as Mezo-controlled.

### Architecture

The Mezo Bridge family integrates multiple components: MezoBridge and Portal handle core bridging logic, while BitcoinDepositor and BitcoinRedeemer manage Bitcoin-specific flows. NttManager and WormholeTransceiver enable cross-chain token transfers via Wormhole. Staking is managed by TokenStaking and GrantStaking, with yield-bearing tokens like stBTC and SolvBTCYieldTokenV3_1. Infrastructure contracts like WalletRegistry, WalletCoordinator, and RedemptionWatchtower support tBTC custody, and KeepRandomBeaconService provides randomness for beacon operations.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 50
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,629,300.40
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,629,300.40 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SolvBTCYieldTokenV3_1 | token | ethereum | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | 2 deployments: ethereum [`0x4dbcb0...008549`](./contracts/ethereum-1/0x4dbcb0cff525b91e8b9d18b224c1b45fef008549/); ethereum `0xe922b5...a1a29d` | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | 2 deployments: ethereum [`0xa18ab4...475a9f`](./contracts/ethereum-1/0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f/); ethereum `0xf6374a...d06f29` | ⚠️ Unaudited |
| BAMM | unknown | ethereum | 2 deployments: ethereum [`0x1f4907...8b4dc5`](./contracts/ethereum-1/0x1f490764473eb1013461d6079f827db95d8b4dc5/); ethereum `0x920623...834675` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | 2 deployments: ethereum [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/); ethereum `0x1d50d7...889c24` | ⚠️ Unaudited |
| BLens | periphery | ethereum | 2 deployments: ethereum [`0x65222d...11a50c`](./contracts/ethereum-1/0x65222d72f13860913fef03f088c385cbfc11a50c/); ethereum `0xf21acb...55ae28` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | 2 deployments: ethereum [`0x874a8e...66caa9`](./contracts/ethereum-1/0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9/); ethereum `0xf5e4ff...3c1d0a` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | 2 deployments: ethereum [`0x3bec52...78f200`](./contracts/ethereum-1/0x3bec529c86317c64305dc161998fb7f40078f200/); ethereum `0x67dbd2...597a36` | ⚠️ Unaudited |
| DefaultPool | core_logic | ethereum | 2 deployments: ethereum [`0xa8bdab...db7ba9`](./contracts/ethereum-1/0xa8bdab0f0d3f5cd04d29df5f4ba6b43d7cdb7ba9/); ethereum `0xbe0379...f1bf4b` | ⚠️ Unaudited |
| GasPool | core_logic | ethereum | 2 deployments: ethereum [`0x34fbfd...47eca6`](./contracts/ethereum-1/0x34fbfd06cb537abd1a75e91a9cf7f5b61b47eca6/); ethereum `0x8a7c0b...e5f64d` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x98d889...397c7a`](./contracts/ethereum-1/0x98d8899c3030741925be630c710a98b57f397c7a/) | ⚠️ Unaudited |
| HintHelpers | periphery | ethereum | 2 deployments: ethereum [`0x2249e8...202f55`](./contracts/ethereum-1/0x2249e86a4b99eccc081600c11b2b30ff64202f55/); ethereum `0xf3da35...521df5` | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | 3 deployments: ethereum [`0x3d282c...5ce889`](./contracts/ethereum-1/0x3d282cc0d69e27fbd4aa59dfd08d6a72b45ce889/); ethereum `0x7e994d...6b6cd9`; ethereum `0xf6680e...e6908c` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | 2 deployments: ethereum [`0x8836b6...05b36c`](./contracts/ethereum-1/0x8836b66727bbde25974110442bb46b7a4805b36c/); ethereum `0xd74dff...c735d0` | ⚠️ Unaudited |
| NttManager | governance | ethereum | 2 deployments: ethereum [`0x13916d...40686a`](./contracts/ethereum-1/0x13916d0dab357dcbaa1600b594d62c641840686a/); ethereum `0x529315...f4477e` | ⚠️ Unaudited |
| PCV | unknown | ethereum | 2 deployments: ethereum [`0x097f1e...dd06cb`](./contracts/ethereum-1/0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb/); ethereum `0x1a4739...7dd872` | ⚠️ Unaudited |
| Portal | unknown | ethereum | 2 deployments: ethereum [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/); ethereum `0xd7097a...46fe60` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0x684645...db732d`](./contracts/ethereum-1/0x684645ccab4d55863a149c52ec3176051cdb732d/); ethereum `0x83ae39...657a43` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x260ca2...681734`](./contracts/ethereum-1/0x260ca2abef5d38181e2562f00fa92ad1dc681734/); ethereum `0x66ce24...8f1267`; ethereum `0xef619b...c096a2` | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | 2 deployments: ethereum [`0xa5626c...986711`](./contracts/ethereum-1/0xa5626cba9a4448019e73ce59784bd22736986711/); ethereum `0xe5ada0...094e17` | ⚠️ Unaudited |
| T | unknown | ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TellorCaller | unknown | ethereum | 2 deployments: ethereum [`0x0278ac...e15c32`](./contracts/ethereum-1/0x0278ac7067f66a66a91466cd420f6f8efae15c32/); ethereum `0xd1acc7...33dea2` | ⚠️ Unaudited |
| THUSDOwner | unknown | ethereum | 2 deployments: ethereum [`0x033951...026468`](./contracts/ethereum-1/0x033951c469e54ef19be43b19c70a4dd273026468/); ethereum `0x883fc0...28d632` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/) | ⚠️ Unaudited |
| TroveManager | governance | ethereum | 2 deployments: ethereum [`0x27d7d0...3abb8c`](./contracts/ethereum-1/0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c/); ethereum `0xfc7d41...f6f893` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | 2 deployments: ethereum [`0x76ddb3...d18d3e`](./contracts/ethereum-1/0x76ddb3f1dde02391ef0a28664499b74c29d18d3e/); ethereum `0x920871...9283b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
