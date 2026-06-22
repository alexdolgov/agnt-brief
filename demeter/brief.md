# Agentic Audit Brief: Demeter

⚠️ Lifecycle status: DEAD - TVL dropped 1.2% over 90 days

## Project Overview

- Project: Demeter (`demeter`)
- Lifecycle: dead (Tier 0, 99.3% below peak)
- Generated: 2026-06-21T10:52:49.678Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, heco
- Contract surface: 80 unique implementations (84 raw deployments)
- DeFi Llama TVL: $281,272.87
- On-chain TVL (included contracts): $11,961,833.13
- TVL by chain: Bsc $11,961,833.13

## Project Description

Demeter is a lending protocol that enables users to supply and borrow assets across BSC and Heco chains. It uses upgradeable BEP20 token proxies to represent user positions and likely includes interest rate mechanisms and liquidation logic.

### Architecture

The Demeter family consists of a single product line where upgradeable BEP20 token proxies serve as the core interest-bearing tokens for lenders and borrowers. Supporting contracts likely include interest rate models, oracles, and liquidation engines that interact with these tokens to manage the lending lifecycle.

## Contract Surface Quality

- Indexed contracts: 103; live-surface contracts included: 84 (4 live, 80 unknown).
- Excluded by liveness: 17 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Unverified dependencies: 2/2.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 76
- Unique implementations: 80
- Raw deployments: 84
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $11,961,833.13
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $11,961,833.13 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | unit-42303 (5 proxies) | [`0x0d8ce2...9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/) | ⚠️ Unaudited |
| DMT | unknown | bsc | n/a | [`0x3eb05a...40b4b7`](./contracts/bsc-56/0x3eb05a201817f87c198930b86f40c6829340b4b7/) | ⚠️ Unaudited |
| DUSD | unknown | bsc | n/a | [`0x22fda2...1c8b6b`](./contracts/bsc-56/0x22fda23aed456f2de139c6240f0776ef031c8b6b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSigWalletWithTimeLock | governance | bsc | n/a | 5 deployments: bsc [`0x476908...195ec2`](./contracts/bsc-56/0x476908a087deb6d06596ad8ac349357f7f195ec2/); bsc `0x57a7bc...cfae12`; bsc `0x754328...4ee60c`; bsc `0xd1f971...2eb324`; bsc `0xe88e60...8452fc` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (76)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x336dd5...3c5478` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4016f8...45fcb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x408cdf...3e9efb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40f2ca...e32dd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48fa67...a058f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4909b1...37d1c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a3451...c18216` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b6b58...787924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e0a7b...dbb4b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eef79...ee20ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5040c0...7981d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511069...de68f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x542c2b...c2c1ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54abc8...247984` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b6fb...dccbd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5891bc...aa279d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c2ef2...5b39e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c4e2b...3bd10b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x606bb7...49d680` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6113fd...b9143a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x612618...b2418f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61a2b1...29edfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x687bbf...6fa02b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69084f...8c9ac3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b5cfc...6df823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c9fcb...764606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d8341...535b54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708360...873402` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x779910...919c34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x796d5f...2787d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79adcd...a9ab1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7064...53eda5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x852015...76c1eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x896741...7991ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89bb17...2027cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c2856...65a226` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8de34e...5c5d31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ff795...444adf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9291c0...7109f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95de27...382816` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98053f...2a0869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f55af...032c97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f5c80...13b015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa23339...636179` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac108d...177f32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad6cae...6c6c18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7fe5...8cc1c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0568d...7d1ccb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb275b6...7bc6e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc17f0c...b09126` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4f32b...78c49f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd687dd...971fa3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0546f...49268c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe47bec...cc76d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb0980...2721fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd7b3a...850335` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x0298c2...3da047` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x103fc4...45ddf6` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x22c54c...5c46e6` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x25d2e8...be033c` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x31f7c5...f1c1dc` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x59a626...592e24` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x62ac81...97abca` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x63fb23...1ffb11` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x64ff63...28a1fd` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x66a79d...3f0bea` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x8d8fd8...c83d9c` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x9e0045...717b42` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xa2c49c...7773e3` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xae3a76...5d1810` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc790ff...9d8474` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xda77b5...465b14` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe2ce3b...07cf71` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe867f6...39808f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xef3ceb...aca375` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xf67710...9fc75a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Demeter-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Demeter-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0d8ce2...9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/) | BEP20TokenImplementation | token | $11,961,833.13 | Verified native implementation with $11,961,833.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3eb05a...40b4b7`](./contracts/bsc-56/0x3eb05a201817f87c198930b86f40c6829340b4b7/) | DMT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22fda2...1c8b6b`](./contracts/bsc-56/0x22fda23aed456f2de139c6240f0776ef031c8b6b/) | DUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x476908...195ec2`](./contracts/bsc-56/0x476908a087deb6d06596ad8ac349357f7f195ec2/) | MultiSigWalletWithTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13014] PeckShield-Audit-Report-Demeter-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
