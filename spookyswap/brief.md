# Agentic Audit Brief: SpookySwap

⚠️ Lifecycle status: DECLINING - TVL changed 13.7% over 90 days

## Project Overview

- Project: SpookySwap (`spookyswap`)
- Website: [https://spooky.fi](https://spooky.fi)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:48.824Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: fantom, sonic
- Contract surface: 90 unique implementations (95 raw deployments)
- DeFi Llama TVL: $1,167,963.00
- On-chain TVL (included contracts): $842.67
- TVL by chain: Sonic $842.67

## Project Description

SpookySwap is a decentralized exchange and DeFi hub with swaps, AMM liquidity provision, farming, and launchpad-related functionality. Bridge or token-related contracts should be distinguished from SpookySwap-owned protocol contracts where they are third-party infrastructure or external dependencies.

### Architecture

The Sonic Mainnet family provides the core DEX functionality, relying on token contracts from the Single Token Addresses family for trading pairs. LP tokens from Spooky LP Pair Addresses represent liquidity positions in the AMM pools. The Fantom Opera family likely contains older or parallel deployments sharing similar token and pool structures.

## Contract Surface Quality

- Indexed contracts: 186; live-surface contracts included: 95 (35 live, 60 unknown).
- Excluded by liveness: 66 inactive, 25 singleton, 0 uninitialized.
- Deployment units: 5/21 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 8/14.

## Audit Coverage Summary

- Verified implementations audited: 0/24 (0.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 90
- Raw deployments: 95
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $842.67
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $842.67 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Staker | core_logic | sonic | n/a | [`0x160f55...217c23`](./contracts/sonic-146/0x160f55276713f356d8409910c3cfa1da23217c23/) | ⚠️ Unaudited |
| MultiAccountV2 | core_logic | sonic | unit-29480 | [`0xd90aca...6cdd17`](./contracts/sonic-146/0xd90aca50ee8cb7c3dd1fee84a722d574186cdd17/) | ⚠️ Unaudited |
| BooMirrorWorld | unknown | sonic | n/a | [`0xa95ea1...f5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | ⚠️ Unaudited |
| BooOFT | unknown | sonic | n/a | [`0x7a0c53...6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/) | ⚠️ Unaudited |
| Diamond | unknown | sonic | n/a | [`0x803de3...7a72e3`](./contracts/sonic-146/0x803de354cbd853d9ae3bc58131a5d538de7a72e3/) | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | n/a | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | n/a | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | unit-29470 | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | unit-29482 | [`0xf807ac...b17fac`](./contracts/sonic-146/0xf807aca27b1550fe778fd4e7013bb57480b17fac/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | unit-29483 | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| Permit2 | unknown | sonic | n/a | [`0x981ef1...162723`](./contracts/sonic-146/0x981ef1f1644715ae797434de4c0aad16e6162723/) | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | n/a | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | sonic | n/a | [`0xb52c0e...850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | ⚠️ Unaudited |
| StableIRM | unknown | sonic | n/a | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| Storage | unknown | sonic | n/a | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | n/a | 3 deployments: sonic [`0x0c2bc0...abdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/); sonic `0xbece4e...6bea4e`; sonic `0xcbdeca...f74362` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | sonic | unit-29472 | [`0x61662e...28f5f4`](./contracts/sonic-146/0x61662ea0eeecaf693538284d4332ec6f2828f5f4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 4 deployments: sonic [`0x89c312...11df5e`](./contracts/sonic-146/0x89c31261221961acbae55917256d59257511df5e/); sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| UniswapV2Factory | registry | sonic | n/a | [`0xee4bc4...76f741`](./contracts/sonic-146/0xee4bc42157cf65291ba2fe839ae127e3cc76f741/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | sonic | n/a | [`0xa6ad18...b94883`](./contracts/sonic-146/0xa6ad18c2ac47803e193f75c3677b14bf19b94883/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | n/a | [`0x3d91b7...69c8ad`](./contracts/sonic-146/0x3d91b700252e0e3ee7805d12e048a988ab69c8ad/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x55d10e...4ebef8`](./contracts/sonic-146/0x55d10e597275d5e572cd0ecf85a0c944964ebef8/) | ⚠️ Unaudited |
| V3Migrator | periphery | sonic | n/a | [`0x865c43...ab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/) | ⚠️ Unaudited |
| WrappedSonic | unknown | sonic | n/a | [`0x039e2f...94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbab4a1...800310` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x06d173...cafcb7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0845c0...b6b7df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x08f6fe...33e19b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x157f91...11d9b9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x165672...27059e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1c9466...982022` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1e4f97...19c68b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x29b0da...c0ec69` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2b4c76...7fc75c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x30872e...c09086` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x321162...051b11` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3cceb4...8d7b27` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x40f70b...38adf8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x46e762...76c6c5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x56ee92...1e3adc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5965e5...047410` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5c021d...e375b4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5dc784...8ee34b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x623ee4...13021d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x627524...b671fd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x657a18...bdcbc6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6a07a7...3a993b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6f86e6...456efc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x753fbc...87dfc9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7928a2...e5c3e6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x82f0b8...6829c1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x838c01...04ecb1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x841fad...c7effe` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x89d9bc...c2fd29` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8d11ec...8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x91b39d...f2e8cf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x956de1...005820` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9c04f7...f79e68` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa48d95...de7598` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xae75a4...4477cc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb01e84...f7159d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb3654d...4fbdc8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb39d21...33d6c2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb471ac...96c93b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb77b22...dcb934` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb9507f...504a92` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbaa835...6e554c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbf4d61...e2eb4c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd0660c...8157f1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd6070a...79d960` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xddcb3f...b34239` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe120ff...66a428` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xebf374...ff2bf6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xec7178...8a7a58` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf07022...5ab577` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf16e81...b87df9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf3582d...60a5fd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf84e31...b443c3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfd0ab5...5c0794` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xfdb9ab...2c3ee3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/spookyswap) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xa95ea1...f5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | BooMirrorWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb52c0e...850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | SpookyLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c2bc0...abdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 12 |
| standard_library | 5 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3096] DL audit link

Fork inheritance lineage and inherited audits are included when available.
