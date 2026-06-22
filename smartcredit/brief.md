# Agentic Audit Brief: SmartCredit

⚠️ Lifecycle status: DECLINING - TVL dropped 76.8% over 90 days

## Project Overview

- Project: SmartCredit (`smartcredit`)
- Website: [https://smartcredit.io](https://smartcredit.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T15:02:53.585Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 52 unique implementations (52 raw deployments)
- DeFi Llama TVL: $769,264.24
- On-chain TVL (included contracts): $4,133,535.58
- TVL by chain: Ethereum $4,133,535.58

## Project Description

SmartCredit is a decentralized lending protocol that enables users to borrow and lend assets, with integrated reputation tracking to assess creditworthiness. It uses upgradeable proxy contracts to manage lending logic and a ReputationToken to record user behavior on-chain.

### Architecture

The TransparentUpgradeableProxy serves as the main entry point for lending operations, delegating calls to the implementation contract, while the ReputationToken is used to track user credit history across interactions.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 52 (2 live, 50 unknown).
- Excluded by liveness: 46 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,133,535.58
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,133,535.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ReputationToken | token | ethereum | n/a | [`0x221657...f5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1abd82...226fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70ca91...7f293c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72e9d9...9ada13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76c05c...6d2891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772b45...ca7056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7768c4...e1fd21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x784c9c...7c30e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x788b23...1ac663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79dfac...611c51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a3a18...c22f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81590d...474ecd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84cb83...3638a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b9ca7...a31f1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a149...4d2e58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9454a0...1d393e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x967f97...bd87b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96b424...caf59a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x981808...3e26d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a39ac...9118cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d385e...4f4767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f9c9b...b50f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e9c9...9e4b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa229d0...ad30f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4f309...b634ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5d072...404abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac1c03...ae7118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb255f7...b72063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc099fe...2e79b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc46507...d9c46f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc92203...d85d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a4a8...9cbc18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad5ab...e5e2ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe4d6...c1e628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0209d...a77179` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd090cc...954879` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0f553...4dcc90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd516cd...dd7ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88080...42e675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab506...d4908e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb5187...8fdb0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0e323...0728a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe582dc...b4d981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7cf60...9587a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97f36...c121bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea873c...448908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee3235...939e42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf26848...3f5e43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf29a2f...0c5e73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ec7c...29c793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7af33...24d447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc94c0...907d0d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartCredit Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/ca048cb8eaba4f7959fb83c1c6f5cb4803c85718/SmartCredit%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x221657...f5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ReputationToken | token | $4,133,535.58 | Verified native implementation with $4,133,535.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13854] SmartCredit Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
