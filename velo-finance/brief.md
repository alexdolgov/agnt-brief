# Agentic Audit Brief: Velo Finance

⚠️ Lifecycle status: DECLINING - TVL changed 10.2% over 90 days

## Project Overview

- Project: Velo Finance (`velo-finance`)
- Website: [https://velofinance.io](https://velofinance.io)
- Lifecycle: declining (Tier 0, 66.3% below peak)
- Generated: 2026-06-14T00:16:20.550Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: bsc
- Contract surface: 37 unique implementations (55 raw deployments)
- DeFi Llama TVL: $1,531,491.18
- On-chain TVL (included contracts): $117,630,524.33
- TVL by chain: Bsc $117,630,524.33

## Project Description

Velo Finance is listed by DefiLlama as a DEX on Binance/BNB Chain. The current homepage provides no substantive product text confirming specific swap, liquidity provision, farming, or pool factory behavior; those details should be treated as unconfirmed unless supported by project documentation or verified contract analysis. EVRY/Evry references should be treated as observed contract names only unless project documentation confirms their relationship to Velo Finance.

### Architecture

The EvryFactory registry creates and manages liquidity pools, while the Farms contracts distribute rewards to liquidity providers. The EVRY token and two additional tokens serve as core assets within the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 37
- Raw deployments: 55
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $117,630,524.33
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $117,630,524.33 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | bsc | 2 deployments: bsc [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/); bsc `0xf486ad...f6fd46` | ⚠️ Unaudited |
| DMMPool | core_logic | bsc | [`0x8d5b39...35ceea`](./contracts/bsc-56/0x8d5b39b8ebac7f3404af73688f352b05c835ceea/) | ⚠️ Unaudited |
| DMMFactoryDelegate | registry | bsc | [`0x31f078...407890`](./contracts/bsc-56/0x31f078c3c786b97b99afb2906d7f6022a3407890/) | ⚠️ Unaudited |
| DMMRouter02DelegateCall | adapter | bsc | [`0x345617...22fb69`](./contracts/bsc-56/0x345617dd29a12e836aebc936ca0ca59ccd22fb69/) | ⚠️ Unaudited |
| EarnOtherFixedAPRLockReward | unknown | bsc | 15 deployments: bsc [`0x022af5...6298ef`](./contracts/bsc-56/0x022af5ce19720a938ba8c9e66fdf1da1606298ef/); bsc `0x051bb4...3b07e4`; bsc `0x13c5c8...196132`; bsc `0x2703e5...45caf9`; bsc `0x37cccc...5ee1bb`; bsc `0x419175...8bebe8`; bsc `0x59098e...0f3083`; bsc `0x5935dc...f8fdf8`; bsc `0x5e10b2...a32345`; bsc `0x7dd617...3796b7`; bsc `0xba5640...788a3c`; bsc `0xc12a93...f647b4`; bsc `0xc322a2...5b6e67`; bsc `0xda000f...422e78`; bsc `0xefa6ea...57022b` | ⚠️ Unaudited |
| EarnOtherFixedAPRLockRewardWithChangeableRatio | unknown | bsc | [`0xef03b4...d1ce65`](./contracts/bsc-56/0xef03b465a6d7badf8727819104d29f0405d1ce65/) | ⚠️ Unaudited |
| EVRY | unknown | bsc | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | ⚠️ Unaudited |
| EvryFactory | registry | bsc | [`0xa32818...e17238`](./contracts/bsc-56/0xa328180188a30fef1d82c9fc916e627db6e17238/) | ⚠️ Unaudited |
| EvryPair | unknown | bsc | 3 deployments: bsc [`0x526357...40b802`](./contracts/bsc-56/0x526357ef8304ce6cd46689aa0f9abf642a40b802/); bsc `0xf20add...20affa`; bsc `0xfcd4bb...4226b8` | ⚠️ Unaudited |
| EvryRouter | adapter | bsc | [`0x296b7c...665c46`](./contracts/bsc-56/0x296b7c203e2c7306b132f2d5ad66106bb7665c46/) | ⚠️ Unaudited |
| Farms | unknown | bsc | 2 deployments: bsc [`0x334721...8a9252`](./contracts/bsc-56/0x33472144eaa7540e7bada5a1ab7da372e48a9252/); bsc `0xdd3e2d...a61945` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0x6c2242...3bf912`](./contracts/bsc-56/0x6c22422f4044dfba79f4ea6bbb9c09162c3bf912/) | ⚠️ Unaudited |
| Timelock | governance | bsc | [`0x42af0b...79bc7a`](./contracts/bsc-56/0x42af0b2a3626ccdfe1121b9cc902442c7e79bc7a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x00144d...686da4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x119e72...99341d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x36a613...a42506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x405fb1...b43f7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4d7c5e...4465e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f0625...4ab66e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6080b4...26706e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61d705...9ac025` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f001a...b20218` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x853fbd...a6fad5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x883be8...778cfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x953f99...8fb949` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa82ee9...0fa81d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb28b07...565add` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb2de66...5e121c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc3f903...99be6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc5e5ac...101176` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9cfba...54b83a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd9357...a94fa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd67f77...9573aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdba5e5...29483e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xddace5...a908d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde79be...d542c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf39541...bd7b23` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/) | Token | token | $117,629,046.32 | Verified native implementation with $117,629,046.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d5b39...35ceea`](./contracts/bsc-56/0x8d5b39b8ebac7f3404af73688f352b05c835ceea/) | DMMPool | core_logic | $1,478.01 | Verified native implementation with $1,478.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31f078...407890`](./contracts/bsc-56/0x31f078c3c786b97b99afb2906d7f6022a3407890/) | DMMFactoryDelegate | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x345617...22fb69`](./contracts/bsc-56/0x345617dd29a12e836aebc936ca0ca59ccd22fb69/) | DMMRouter02DelegateCall | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x022af5...6298ef`](./contracts/bsc-56/0x022af5ce19720a938ba8c9e66fdf1da1606298ef/) | EarnOtherFixedAPRLockReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xef03b4...d1ce65`](./contracts/bsc-56/0xef03b465a6d7badf8727819104d29f0405d1ce65/) | EarnOtherFixedAPRLockRewardWithChangeableRatio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | EVRY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa32818...e17238`](./contracts/bsc-56/0xa328180188a30fef1d82c9fc916e627db6e17238/) | EvryFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x526357...40b802`](./contracts/bsc-56/0x526357ef8304ce6cd46689aa0f9abf642a40b802/) | EvryPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x296b7c...665c46`](./contracts/bsc-56/0x296b7c203e2c7306b132f2d5ad66106bb7665c46/) | EvryRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42af0b...79bc7a`](./contracts/bsc-56/0x42af0b2a3626ccdfe1121b9cc902442c7e79bc7a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
