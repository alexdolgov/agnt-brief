# Agentic Audit Brief: PantherSwap

## Project Overview

- Project: PantherSwap (`pantherswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.943Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $240,569.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 11 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (bep20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IPOByProxy | unknown | bsc | n/a | [`0x395012...fe68a9`](./contracts/bsc-56/0x3950124730a3b013e402dd2bf49e8665cdfe68a9/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | [`0x6f3b6c...a3a3fa`](./contracts/bsc-56/0x6f3b6cf47bae56473cb7129a9e1cbda8cba3a3fa/) | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | n/a | [`0x983c4f...ab886f`](./contracts/bsc-56/0x983c4fb762e6136a609431d4a93187c6f6ab886f/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x058451...97bbd4`](./contracts/bsc-56/0x058451c62b96c594ad984370eda8b6fd7197bbd4/) | ⚠️ Unaudited |
| PantherFactory | unknown | bsc | n/a | [`0x670f55...b9fc31`](./contracts/bsc-56/0x670f55c6284c629c23bae99f585e3f17e8b9fc31/) | ⚠️ Unaudited |
| PantherJungleFactory | unknown | bsc | n/a | [`0x6f2c87...ab4a40`](./contracts/bsc-56/0x6f2c870f0c131d90c9336f08334bb68586ab4a40/) | ⚠️ Unaudited |
| PantherLocker | unknown | bsc | n/a | [`0x78cdda...95604b`](./contracts/bsc-56/0x78cddaa1a917a177cb2624bd750a0c428f95604b/) | ⚠️ Unaudited |
| PantherReferral | unknown | bsc | n/a | [`0xbb6883...60fe34`](./contracts/bsc-56/0xbb688307a13e5abbd99ee4d6229272a17d60fe34/) | ⚠️ Unaudited |
| PantherRouter | unknown | bsc | n/a | [`0x24f7c3...a1b7ec`](./contracts/bsc-56/0x24f7c33ae5f77e2a9eceed7ea858b4ca2fa1b7ec/) | ⚠️ Unaudited |
| PantherToken | unknown | bsc | n/a | [`0x1f546a...7276b7`](./contracts/bsc-56/0x1f546ad641b56b86fd9dceac473d1c7a357276b7/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xe6a8f0...a56daa`](./contracts/bsc-56/0xe6a8f0269d6af307a908ecd3938f470db7a56daa/) | ⚠️ Unaudited |

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
| [- [Audit/Review]()](https://pantherswap.gitbook.io/polyrabbit/security/audit-review.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x395012...fe68a9`](./contracts/bsc-56/0x3950124730a3b013e402dd2bf49e8665cdfe68a9/) | IPOByProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f3b6c...a3a3fa`](./contracts/bsc-56/0x6f3b6cf47bae56473cb7129a9e1cbda8cba3a3fa/) | Lottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x983c4f...ab886f`](./contracts/bsc-56/0x983c4fb762e6136a609431d4a93187c6f6ab886f/) | LotteryNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x058451...97bbd4`](./contracts/bsc-56/0x058451c62b96c594ad984370eda8b6fd7197bbd4/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x670f55...b9fc31`](./contracts/bsc-56/0x670f55c6284c629c23bae99f585e3f17e8b9fc31/) | PantherFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f2c87...ab4a40`](./contracts/bsc-56/0x6f2c870f0c131d90c9336f08334bb68586ab4a40/) | PantherJungleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78cdda...95604b`](./contracts/bsc-56/0x78cddaa1a917a177cb2624bd750a0c428f95604b/) | PantherLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb6883...60fe34`](./contracts/bsc-56/0xbb688307a13e5abbd99ee4d6229272a17d60fe34/) | PantherReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x24f7c3...a1b7ec`](./contracts/bsc-56/0x24f7c33ae5f77e2a9eceed7ea858b4ca2fa1b7ec/) | PantherRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f546a...7276b7`](./contracts/bsc-56/0x1f546ad641b56b86fd9dceac473d1c7a357276b7/) | PantherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe6a8f0...a56daa`](./contracts/bsc-56/0xe6a8f0269d6af307a908ecd3938f470db7a56daa/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17951] - [Audit/Review]()

Fork inheritance lineage and inherited audits are included when available.
