# Agentic Audit Brief: SuperFarm

⚠️ Lifecycle status: DECLINING - TVL changed 52.4% over 90 days

## Project Overview

- Project: SuperFarm (`superfarm`)
- Website: [https://superverse.co/](https://superverse.co/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.213Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 14 unique implementations (21 raw deployments)
- DeFi Llama TVL: $931,016.70
- On-chain TVL (included contracts): $167,207,429.26
- TVL by chain: Ethereum $167,207,429.26

## Project Description

SuperFarm, now branded around SuperVerse, is a web3 gaming and crypto ecosystem centered on the SUPER token. Its historical products included no-code DeFi/NFT farm deployment and staking/rewards infrastructure, while its current positioning emphasizes gaming-network integrations, SUPER token utility, rewards, and the BlackHole DEX highlighted on the project homepage. It should not be characterized solely as a staking, yield, or liquidity-provision protocol.

### Architecture

The Staker contracts interact with the SUPER token and partner tokens like InjectiveToken and REVV to distribute rewards. The UniswapV2Pair likely provides liquidity for the SUPER token, supporting the staking ecosystem.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 23; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 21
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $167,207,429.26
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $167,207,429.26 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | ethereum | n/a | [`0xe53ec7...b40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | ⚠️ Unaudited |
| ERC20FixedSupply | token | ethereum | n/a | [`0x9cb7a4...e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ⚠️ Unaudited |
| Staker | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x8e586d...d5fc9b`](./contracts/ethereum-1/0x8e586d927ace36a3ef7bddf9f899d2e385d5fc9b/); ethereum `0xb3ea98...9edd80`; ethereum `0xf35a92...206207` | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| DeltaTimeInventory | unknown | ethereum | n/a | [`0x2af756...ad5576`](./contracts/ethereum-1/0x2af75676692817d85121353f0d6e8e9ae6ad5576/) | ⚠️ Unaudited |
| F1DTCrateKey | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5694bc...5a524b`](./contracts/ethereum-1/0x5694bce5b6f06dcd69028d40ab856efc295a524b/); ethereum `0x7e439a...3a215b` | ⚠️ Unaudited |
| GameeVouchers | unknown | ethereum | n/a | [`0xe114bc...022c92`](./contracts/ethereum-1/0xe114bce907a86d81f321c6fd8d8c51d542022c92/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | 5 deployments: ethereum [`0x4289f1...7f91d2`](./contracts/ethereum-1/0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2/); ethereum `0x8179d2...dbb4fc`; ethereum `0xeb5545...814edf`; ethereum `0xebaaba...6557e6`; ethereum `0xfc4504...f25197` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x879645...b4d5b1`](./contracts/ethereum-1/0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1/) | ⚠️ Unaudited |
| OFTAdapterFixedSupply | adapter | ethereum | n/a | [`0xea614f...63b793`](./contracts/ethereum-1/0xea614f1d42af662199b0aac8e70ddabb7863b793/) | ⚠️ Unaudited |
| REVV | unknown | ethereum | n/a | [`0x557b93...51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | ⚠️ Unaudited |
| REVVInventory | unknown | ethereum | n/a | [`0xa7a05e...a6f954`](./contracts/ethereum-1/0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954/) | ⚠️ Unaudited |
| Super1155 | unknown | ethereum | n/a | [`0x6110dd...009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | ⚠️ Unaudited |
| TokenLaunchpadVouchers | token | ethereum | n/a | [`0x87a374...a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe53ec7...b40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | Token | token | $121,843,315.10 | Verified native implementation with $121,843,315.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cb7a4...e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ERC20FixedSupply | token | $45,118,759.76 | Verified native implementation with $45,118,759.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e586d...d5fc9b`](./contracts/ethereum-1/0x8e586d927ace36a3ef7bddf9f899d2e385d5fc9b/) | Staker | core_logic | $242,743.63 | Verified native implementation with $242,743.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2af756...ad5576`](./contracts/ethereum-1/0x2af75676692817d85121353f0d6e8e9ae6ad5576/) | DeltaTimeInventory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5694bc...5a524b`](./contracts/ethereum-1/0x5694bce5b6f06dcd69028d40ab856efc295a524b/) | F1DTCrateKey | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x557b93...51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | REVV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6110dd...009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | Super1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87a374...a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | TokenLaunchpadVouchers | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
