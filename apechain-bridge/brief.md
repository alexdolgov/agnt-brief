# Agentic Audit Brief: ApeChain Bridge

⚠️ Lifecycle status: UNKNOWN - TVL dropped 31.4% over 90 days

## Project Overview

- Project: ApeChain Bridge (`apechain-bridge`)
- Website: [https://apechain.com/portal#bridge](https://apechain.com/portal#bridge)
- Lifecycle: unknown (Tier 0, 93% below peak)
- Generated: 2026-06-17T07:00:49.018Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $40,864,739.41
- On-chain TVL (included contracts): $138,232,772.62
- TVL by chain: Ethereum $138,232,772.62

## Project Description

ApeChain Bridge is a bridge/portal for moving assets to and from ApeChain. Product UI features such as swaps, on-ramps, staking, Relay, or specific messaging infrastructure should only be described where directly supported by verified documentation or in-scope contracts.

### Architecture

The L1Oft4626Router adapter connects the StETHVault and SimpleToken to the LayerZero OFT standard for cross-chain messaging, while ApeCoinStaking manages staking rewards, all deployed by a shared set of deployer addresses.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 15 (11 live, 4 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 5/8 live.
- Detected codebases: none
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $138,232,772.62
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $138,232,772.62 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| ApeCoinStaking | unknown | ethereum | n/a | [`0x5954ab...2afbb9`](./contracts/ethereum-1/0x5954ab967bc958940b7eb73ee84797dc8a2afbb9/) | ⚠️ Unaudited |
| ApeETH | unknown | ethereum | n/a | [`0xcf800f...f70438`](./contracts/ethereum-1/0xcf800f4948d16f23333508191b1b1591daf70438/) | ⚠️ Unaudited |
| ApeUSD | unknown | ethereum | n/a | [`0xa2235d...3fbef4`](./contracts/ethereum-1/0xa2235d059f80e176d931ef76b6c51953eb3fbef4/) | ⚠️ Unaudited |
| ERC20Bridge | unknown | arbitrum | unit-18797 | [`0x6b71af...0434b8`](./contracts/arbitrum-42161/0x6b71afb4b7725227ab944c96fe018ab9dc0434b8/) | ⚠️ Unaudited |
| ERC20Inbox | unknown | arbitrum | unit-18794 | [`0x1b98e4...064d15`](./contracts/arbitrum-42161/0x1b98e4ed82ee1a91a65a38c690e2266364064d15/) | ⚠️ Unaudited |
| ERC20Outbox | unknown | arbitrum | unit-18796 | [`0x4f405b...05c2af`](./contracts/arbitrum-42161/0x4f405ba65291063d8a524c2bdf55d4e67405c2af/) | ⚠️ Unaudited |
| L1ApeETHRouter | adapter | ethereum | n/a | [`0x6c92ce...aed0a1`](./contracts/ethereum-1/0x6c92ceeb09c83f1018d5bca81d933df3eeaed0a1/) | ⚠️ Unaudited |
| L1Oft4626Router | adapter | ethereum | n/a | [`0xf33d21...59cb00`](./contracts/ethereum-1/0xf33d21137cd0b878f3a18cc60cd74f842c59cb00/) | ⚠️ Unaudited |
| L1OrbitCustomGateway | unknown | arbitrum | unit-18801 | [`0xed543d...5d0ab0`](./contracts/arbitrum-42161/0xed543da6fe33ccee50dc024b78c27959235d0ab0/) | ⚠️ Unaudited |
| L1OrbitERC20Gateway | token | arbitrum | unit-18798 | [`0xb603a1...b8ddb0`](./contracts/arbitrum-42161/0xb603a1c07a11945bfe4855347c88583e31b8ddb0/) | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | arbitrum | unit-18799 | [`0xd57df5...d4a700`](./contracts/arbitrum-42161/0xd57df5c2dc2d60307a74944191f2aa5b7bd4a700/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x1e5f8f...75b507`](./contracts/arbitrum-42161/0x1e5f8ff72895aea53dd62b590da51e92dc75b507/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | arbitrum | unit-18795 | [`0x374de5...df259c`](./contracts/arbitrum-42161/0x374de579ae15ad59ed0519aeaf1a23f348df259c/) | ⚠️ Unaudited |
| SequencerInbox | unknown | arbitrum | unit-18800 | [`0xe6a92a...5e4a3c`](./contracts/arbitrum-42161/0xe6a92ae29e24c343ee66a2b3d3ecb783d65e4a3c/) | ⚠️ Unaudited |

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
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
