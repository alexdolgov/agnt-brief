# Agentic Audit Brief: RateX

⚠️ Lifecycle status: DECLINING - TVL dropped 54.9% over 90 days

## Project Overview

- Project: RateX (`ratex`)
- Website: [https://app.rate-x.io/referral?ref=VS71Wksp](https://app.rate-x.io/referral?ref=VS71Wksp)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:43.639Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 65 unique implementations (71 raw deployments)
- DeFi Llama TVL: $3,183,387.00
- On-chain TVL (included contracts): $98,793.74
- TVL by chain: Bsc $98,793.74

## Project Description

RateX is a leveraged yield exchange that enables users to trade and access leveraged yield opportunities. Its protocol surface should be described from RateX-owned sources, audits, and the DefiLlama adapter, including its dominant Solana programs/accounts where applicable, rather than as a BSC Lista/lisUSD collateralized debt, vault, oracle, or veLISTA governance system.

### Architecture

The RateX DEX family relies on shared infrastructure such as oracles (e.g., ResilientOracle, OracleCenter) and vaults (e.g., ListaVault, StakingVault) to manage collateral and distribute rewards. Multiple distributor contracts (e.g., BorrowListaDistributor, ERC20LpListaDistributor) interact with these core components to facilitate yield and governance across the protocol.

## Contract Surface Quality

- Indexed contracts: 400; live-surface contracts included: 71 (71 live, 0 unknown).
- Excluded by liveness: 134 inactive, 195 singleton, 0 uninitialized.
- Deployment units: 12/72 live.
- Detected codebases: makerdao-dss
- Unverified dependencies: 5/18.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 65
- Raw deployments: 71
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $98,793.74
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $98,793.74 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ListaVault | core_logic | bsc | unit-26803 | [`0x307d13...30292a`](./contracts/bsc-56/0x307d13267f360f78005f476fa913f8848f30292a/) | ⚠️ Unaudited |
| Buyback | unknown | bsc | unit-26807 | [`0x3b99a4...2e1bfc`](./contracts/bsc-56/0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc/) | ⚠️ Unaudited |
| ClearingHouse | unknown | bsc | n/a | 4 deployments: bsc [`0x293a33...288a16`](./contracts/bsc-56/0x293a337687363e91406fc0d544b11efc6d288a16/); bsc `0x456fb8...b6b28b`; bsc `0x58f2d3...b49566`; bsc `0x801010...36009f` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | bsc | unit-26819 | [`0x81a62b...5a46e8`](./contracts/bsc-56/0x81a62b329cc8939494d8613f614171a9955a46e8/) | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | unit-26858 | [`0xffd3a5...9908e6`](./contracts/bsc-56/0xffd3a57e8db4f51fa01c72f06ff30bdfda9908e6/) | ⚠️ Unaudited |
| ListaOFTAdapter | adapter | bsc | n/a | [`0x837cb0...25e7b3`](./contracts/bsc-56/0x837cb07f6b8a98731856092457524ff37b25e7b3/) | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | bsc | unit-26805 | [`0x34b504...7fa3da`](./contracts/bsc-56/0x34b504a5cf0ff41f8a480580533b6dda687fa3da/) | ⚠️ Unaudited |
| LpProxy | unknown | bsc | unit-26815 | [`0x5a0e32...70ec01`](./contracts/bsc-56/0x5a0e3291514f5f1797a0c7efefdac81eec70ec01/) | ⚠️ Unaudited |
| Market | unknown | bsc | n/a | [`0x64e30b...0cbd98`](./contracts/bsc-56/0x64e30b9e176b4551b5d9f17d72716152540cbd98/) | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | unit-26822 | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | ⚠️ Unaudited |
| PToken | token | bsc | n/a | 3 deployments: bsc [`0x34f18e...80eafc`](./contracts/bsc-56/0x34f18e18330468ffaedfdcd8ffdaff23aa80eafc/); bsc `0x660e36...5bc300`; bsc `0x79427f...94aec0` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | unit-26846 | [`0xea44dd...2b9e6e`](./contracts/bsc-56/0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e/) | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | unit-26855 | [`0xfd31e1...97819b`](./contracts/bsc-56/0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0xa11850...66b0eb`](./contracts/bsc-56/0xa118509b6eade157462a89e33eb23e3d4b66b0eb/); bsc `0xa257a5...a748c1` | ⚠️ Unaudited |
| VeLista | unknown | bsc | unit-26840 | [`0xd0c380...7b87b3`](./contracts/bsc-56/0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3/) | ⚠️ Unaudited |
| VeListaAutoCompounder | adapter | bsc | unit-26824 | [`0x9a0530...c3bf5e`](./contracts/bsc-56/0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e/) | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | unit-26838 | [`0xca8d24...2b72e9`](./contracts/bsc-56/0xca8d2451df68a9132fd9d30e8d354460642b72e9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01c95c...847e75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x042b82...70dc3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x044161...1e82eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cac35...94a76f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e3ee2...9e0f2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14c5b2...b5b912` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x182ce9...19b35a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b262f...729d99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ba517...9aae8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22c250...e94209` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25ca16...467123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2665ea...cf09f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc736...d76a26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aa7e9...d898a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c3508...686d18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44211d...2f5a72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4acca9...1632a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e2fe...83bc22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e9e2...65d172` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54399a...b67453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x567485...54306d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57df90...b473a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d728c...441070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fe35e...faef3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61682b...d0c0e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68a564...10b88e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc852...d89248` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72f731...e28f6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x732a42...77ab32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89a32e...40cb8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92be02...ec15d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93ecf7...7924d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x957b4f...f1e920` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9a170...5445c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf34bc...f8053e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc62e55...4570a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9540c...79d984` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcac95a...e83d1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3406f...358604` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd358c5...744056` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd75453...638837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeccaa7...793050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedeb8a...bdd353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf47110...03a874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7685a...184b64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7e178...b1923c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf173...cb7e1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd8ef9...4e46b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [RateX-Sep-2024-OffsideLabs.final.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateX-Sep-2024-OffsideLabs.final.pdf) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x293a33...288a16`](./contracts/bsc-56/0x293a337687363e91406fc0d544b11efc6d288a16/) | ClearingHouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x837cb0...25e7b3`](./contracts/bsc-56/0x837cb07f6b8a98731856092457524ff37b25e7b3/) | ListaOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64e30b...0cbd98`](./contracts/bsc-56/0x64e30b9e176b4551b5d9f17d72716152540cbd98/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x34f18e...80eafc`](./contracts/bsc-56/0x34f18e18330468ffaedfdcd8ffdaff23aa80eafc/) | PToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2443] RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf
- [2444] RateX-Sep-2024-OffsideLabs.final.pdf

Fork inheritance lineage and inherited audits are included when available.
