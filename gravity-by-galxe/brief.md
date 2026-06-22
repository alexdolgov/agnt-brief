# Agentic Audit Brief: Gravity by Galxe

## Project Overview

- Project: Gravity by Galxe (`gravity-by-galxe`)
- Website: [https://gravity.xyz/](https://gravity.xyz/)
- Lifecycle: unknown
- Generated: 2026-06-19T07:16:43.998Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: ethereum
- Contract surface: 47 unique implementations (61 raw deployments)
- DeFi Llama TVL: $16,657,151.13
- On-chain TVL (included contracts): $62,111,518.67
- TVL by chain: Ethereum $62,111,518.67

## Project Description

Gravity by Galxe is a canonical bridge protocol that enables the transfer of assets between Ethereum and the Gravity Alpha Layer 2 network. It uses a proxy-based ERC20Bridge contract to lock tokens on Ethereum and mint corresponding representations on the L2.

### Architecture

The TransparentUpgradeableProxy bridge contract interacts with the token contracts on Ethereum to lock assets, while the corresponding token representations on Gravity Alpha L2 are minted or released. The token contracts share the same deployer clusters, indicating a common infrastructure for asset management across the bridge.

## Contract Surface Quality

- Indexed contracts: 61; live-surface contracts included: 61 (0 live, 61 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/25 (0.0%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 47
- Raw deployments: 61
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $62,111,518.67
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GravityTokenG | token | ethereum | n/a | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | ethereum | n/a | [`0xc02639...3189c7`](./contracts/ethereum-1/0xc026395860db2d07ee33e05fe50ed7bd583189c7/) | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | ethereum | n/a | [`0x933597...5a3973`](./contracts/ethereum-1/0x933597a323eb81cae705c5bc29985172fd5a3973/) | ⚠️ Unaudited |
| StargatePoolNative | core_logic | ethereum | n/a | [`0x77b204...e57931`](./contracts/ethereum-1/0x77b2043768d28e9c9ab44e1abfc95944bce57931/) | ⚠️ Unaudited |
| CreditMessaging | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5489dd...e7f97d`](./contracts/ethereum-1/0x5489ddab89609580835ee6d655cd9b3503e7f97d/); ethereum `0x5c386d...b6345b`; ethereum `0x6b8ad1...44bb9d`; ethereum `0xf5bba7...81e202` | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | n/a | [`0x798340...364c42`](./contracts/ethereum-1/0x7983403dda368aa7d67145a9b81c5c517f364c42/) | ⚠️ Unaudited |
| ERC20Inbox | unknown | ethereum | n/a | [`0x7ad2a9...a53c19`](./contracts/ethereum-1/0x7ad2a94beff3294a31894cfb5ba4206957a53c19/) | ⚠️ Unaudited |
| ERC20Outbox | unknown | ethereum | n/a | [`0x1153a1...e7dabf`](./contracts/ethereum-1/0x1153a1e4b1523dff36f77d696bd6ebf2b0e7dabf/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | ethereum | n/a | 10 deployments: ethereum [`0x1a6437...c0f246`](./contracts/ethereum-1/0x1a6437bef5b8615ef523d00ef7c9d58d66c0f246/); ethereum `0x3e368b...658a06`; ethereum `0x4eeba4...375290`; ethereum `0x52b354...f74087`; ethereum `0x6d5521...0f73eb`; ethereum `0x6dd697...68a3e3`; ethereum `0xb8b1a9...eae455`; ethereum `0xc6a281...86fba1`; ethereum `0xe171af...3db311`; ethereum `0xf8c61c...1adcc8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| G_OFTAdapter | adapter | ethereum | n/a | [`0x71c066...d36bca`](./contracts/ethereum-1/0x71c066fd4949c44b2cb2f509e2cd2421fbd36bca/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xbd6e43...fbfb6d`](./contracts/ethereum-1/0xbd6e434db90fd8ad4e28d85c133ad34ca6fbfb6d/) | ⚠️ Unaudited |
| OFTWrapper | unknown | ethereum | n/a | [`0x1bf53b...908db4`](./contracts/ethereum-1/0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4/) | ⚠️ Unaudited |
| RewardLib | unknown | ethereum | n/a | [`0xfa5475...fcdcfd`](./contracts/ethereum-1/0xfa54751cda1f98947c524fd9701c9dad84fcdcfd/) | ⚠️ Unaudited |
| RewardRegistryLib | registry | ethereum | n/a | [`0x9f22c4...9499ee`](./contracts/ethereum-1/0x9f22c4b3dbe693a34f2af61a16a022f87d9499ee/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | ethereum | n/a | [`0xf993af...d58239`](./contracts/ethereum-1/0xf993af239770932a0edab88b6a5ba3708bd58239/) | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | n/a | [`0x8d9937...eb3cf3`](./contracts/ethereum-1/0x8d99372612e8cfe7163b1a453831bc40eaeb3cf3/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenMessaging | token | ethereum | n/a | 2 deployments: ethereum [`0x4aff12...4f779c`](./contracts/ethereum-1/0x4aff12ce71afd06e7b20f50f2eaa365b8b4f779c/); ethereum `0x6d6620...f4a980` | ⚠️ Unaudited |
| TokenUpgrader | token | ethereum | n/a | [`0x249ac0...788942`](./contracts/ethereum-1/0x249ac00402716b7bf6d6ed24531d7b4c10788942/) | ⚠️ Unaudited |
| Treasurer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1041d1...606918`](./contracts/ethereum-1/0x1041d127b2d4bc700f0f563883bc689502606918/); ethereum `0xca7867...ef0381` | ⚠️ Unaudited |
| ValidatorUtils | unknown | ethereum | n/a | [`0x2b0e04...e766af`](./contracts/ethereum-1/0x2b0e04dc90e3fa58165cb41e2834b44a56e766af/) | ⚠️ Unaudited |
| ValidatorWalletCreator | unknown | ethereum | n/a | [`0x9cad81...8c5f71`](./contracts/ethereum-1/0x9cad81628ab7d8e239f1a5b497313341578c5f71/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16e28b...1edbcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff4db...2c08e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d76f0...6319ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5db42c...af14ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e59b...517082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63c2a9...942892` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x667b9c...6f7da8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f0611...555b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x822b6e...488895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c618...baaa6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5b75...6d1815` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4292b...425f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb87588...496d2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0441d...def97f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc252b5...f7414f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc946c1...dbeed4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde4860...abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6f832...c8ceaa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | GravityTokenG | token | $42,285,391.16 | Verified native implementation with $42,285,391.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
