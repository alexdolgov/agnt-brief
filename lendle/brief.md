# Agentic Audit Brief: Lendle

⚠️ Lifecycle status: DECLINING - TVL dropped 89.3% over 90 days

## Project Overview

- Project: Lendle (`lendle`)
- Website: [https://www.lendle.xyz/](https://www.lendle.xyz/)
- Lifecycle: declining (Tier 1, sunsetting)
- Generated: 2026-06-17T07:00:40.587Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: mantle
- Contract surface: 10 unique implementations (29 raw deployments)
- DeFi Llama TVL: $541,718.00
- On-chain TVL (included contracts): $60,666.54
- TVL by chain: Mantle $60,666.54

## Project Description

Lendle is a Mantle-based decentralized lending and borrowing money market. The protocol is currently sunsetting/shutting down, so current risk and coverage should be assessed in that context. Yield vaults, staking, and incentive programs should be treated as secondary or historical components unless confirmed active in the current contract surface.

### Architecture

The Lendle lending markets and Lendle Yield vaults share the LendleToken for incentives and governance. The lending family provides core infrastructure like oracles and token contracts that may be utilized by yield strategies.

## Contract Surface Quality

- Indexed contracts: 181; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 128 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 0/10 live.
- Detected codebases: aave-v2
- Unverified dependencies: 6/31.

## Audit Coverage Summary

- Verified implementations audited: 3/9 (33.3%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 29
- Audits discovered: 9
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $5,556.44
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 0 aging, 1 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $5,556.44 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 3 | 33.3% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendleToken | token | mantle | n/a | [`0x25356a...e49396`](./contracts/mantle-5000/0x25356aeca4210ef7553140edb9b8026089e49396/) | ✅ Audited |
| TokenVesting | operational_periphery | mantle | n/a | [`0xa7f784...1f7e6f`](./contracts/mantle-5000/0xa7f784dc0ec287342b0b84e63961effa541f7e6f/) | ✅ Audited |
| WETHGateway | token | mantle | n/a | [`0xec831f...ac55c2`](./contracts/mantle-5000/0xec831f8710c6286a91a348928600157f07ac55c2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV7 | core_logic | mantle | n/a | 9 deployments: mantle [`0x3ad7d1...34cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/); mantle `0x43703b...20b7bf`; mantle `0x4606e0...0c53f4`; mantle `0x4fd28e...d98076`; mantle `0xb2be0a...c72100`; mantle `0xb76167...4a18b4`; mantle `0xd1d9c7...4b15d8`; mantle `0xd1fc69...e87cae`; mantle `0xeb244c...3b7373` | ⚠️ Unaudited |
| ATokenV2 | token | mantle | n/a | 11 deployments: mantle [`0x1bd5e3...04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/); mantle `0x248ba0...ce4436`; mantle `0x37d051...173bec`; mantle `0x38113c...504b43`; mantle `0x4d7b93...0f22cf`; mantle `0x612271...0c8c8c`; mantle `0x665f9a...6e8d47`; mantle `0x892e01...6162d6`; mantle `0x990a4e...ad6e1e`; mantle `0xc430c4...fc2f7a`; mantle `0xf8d3af...1184e2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | mantle | n/a | [`0xb92ead...eb0f13`](./contracts/mantle-5000/0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | mantle | n/a | [`0xc90c10...ddee12`](./contracts/mantle-5000/0xc90c10c7e3b2f14870cc870a046bd099ccddee12/) | ⚠️ Unaudited |
| MerkleERC20Distributor | operational_periphery | mantle | n/a | [`0x938034...67078f`](./contracts/mantle-5000/0x93803455aa62e5b95cdb174cd52b16382967078f/) | ⚠️ Unaudited |
| ProtocolRevenueDistribution | unknown | mantle | n/a | 2 deployments: mantle [`0xb1946b...d97704`](./contracts/mantle-5000/0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704/); mantle `0xb442f5...fa7fa1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mantle | n/a | `0x4c57be...79aa6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/Lendle) | SourceHat | Audit | 2023-09 | stale | Direct | contract_name | 3 | high |
| [<>](https://www.halborn.com/audits/lendle/brink-a73cf0) | Halborn | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1o_DEXkzfryZLgUnjFSy2fbcTk4JUif-v/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1TqrzJkinCtCc8xd2HaoCJZBlcHdLb8Ka/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1XWGjAecfs-yX5-a1Pr3ZAxgXCQfwUW_D/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/13dBwD3KLuWGFdZ2X4Cgp3-BoRoJ1kygf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1xassyT4bMz6I7eSJmmuUi1-esZJKjKLf/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1ahPwg-QK4zQGp6dHADmwwvfVFcIacSKJ/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1mlOeteL6Oi9HM0FBakaKnwsivIlGcvMH/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0x3ad7d1...34cb52`](./contracts/mantle-5000/0x3ad7d10085c7243a19c6589056a58eb94334cb52/) | VaultV7 | core_logic | $5,556.44 | Verified native implementation with $5,556.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1bd5e3...04698d`](./contracts/mantle-5000/0x1bd5e38ffa87f81e7adc9b61439a52a37b04698d/) | ATokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb92ead...eb0f13`](./contracts/mantle-5000/0xb92ead4d4ea7290187690ce980e1e6ab43eb0f13/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x938034...67078f`](./contracts/mantle-5000/0x93803455aa62e5b95cdb174cd52b16382967078f/) | MerkleERC20Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb1946b...d97704`](./contracts/mantle-5000/0xb1946b21bfb1a6c92a57b8fdeb332a17d1d97704/) | ProtocolRevenueDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=51

Zero-match audit list:

- [3143] <>
- [3144] {% embed url="<>" %}
- [3145] {% embed url="<>" %}
- [3146] {% embed url="<>" %}
- [3147] {% embed url="<>" %}
- [3148] {% embed url="<>" %}
- [3149] {% embed url="<>" %}
- [3150] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
