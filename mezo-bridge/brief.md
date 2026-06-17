# Agentic Audit Brief: Mezo Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 63.0% over 90 days

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:45.411Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 12 unique implementations (15 raw deployments)
- DeFi Llama TVL: $16,855,428.39
- On-chain TVL (included contracts): $2,629,300.40
- TVL by chain: Ethereum $2,629,300.40

## Project Description

Mezo Bridge is the bridge/application surface associated with Mezo for moving supported assets between Ethereum and the Mezo network. Its owned contract surface should be limited to verified Mezo bridge, lockbox, borrowing, MUSD, or vault contracts, and should exclude upstream asset tokens, external vaults, and other contracts not evidenced as Mezo-controlled.

### Architecture

The Mezo Bridge family integrates multiple components: MezoBridge and Portal handle core bridging logic, while BitcoinDepositor and BitcoinRedeemer manage Bitcoin-specific flows. NttManager and WormholeTransceiver enable cross-chain token transfers via Wormhole. Staking is managed by TokenStaking and GrantStaking, with yield-bearing tokens like stBTC and SolvBTCYieldTokenV3_1. Infrastructure contracts like WalletRegistry, WalletCoordinator, and RedemptionWatchtower support tBTC custody, and KeepRandomBeaconService provides randomness for beacon operations.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 15 (12 live, 3 unknown).
- Excluded by liveness: 33 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 7/9 live.
- Detected codebases: none
- Unverified dependencies: 1/36.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SolvBTCYieldTokenV3_1 | token | ethereum | unit-27549 | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| BAMM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f4907...8b4dc5`](./contracts/ethereum-1/0x1f490764473eb1013461d6079f827db95d8b4dc5/); ethereum `0x920623...834675` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0xf5e4ff...3c1d0a`](./contracts/ethereum-1/0xf5e4ffeb7d2183b61753aa4074d72e51873c1d0a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-27547 | [`0x98d889...397c7a`](./contracts/ethereum-1/0x98d8899c3030741925be630c710a98b57f397c7a/) | ⚠️ Unaudited |
| NttManager | governance | ethereum | unit-27542 | [`0x13916d...40686a`](./contracts/ethereum-1/0x13916d0dab357dcbaa1600b594d62c641840686a/) | ⚠️ Unaudited |
| NttManager | governance | ethereum | unit-27544 | [`0x529315...f4477e`](./contracts/ethereum-1/0x5293158bf7a81ed05418da497a80f7e6dbf4477e/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | unit-27548 | [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x260ca2...681734`](./contracts/ethereum-1/0x260ca2abef5d38181e2562f00fa92ad1dc681734/); ethereum `0x66ce24...8f1267`; ethereum `0xef619b...c096a2` | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xfc7d41...f6f893`](./contracts/ethereum-1/0xfc7d41a684b7db7c817a9ddd028f9a31c2f6f893/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | unit-27545 | [`0x76ddb3...d18d3e`](./contracts/ethereum-1/0x76ddb3f1dde02391ef0a28664499b74c29d18d3e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | unit-27546 | [`0x920871...9283b1`](./contracts/ethereum-1/0x920871af2d4106e76d204fea7122fa129c9283b1/) | ⚠️ Unaudited |

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
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
