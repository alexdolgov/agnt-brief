# Agentic Audit Brief: sorta-finance

## Project Overview

- Project: sorta-finance (`sorta-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:55.811Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 11 unique implementations (11 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 11 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 11 contract(s).

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
| CErc20Delegator | unknown | arbitrum | n/a | [`0x10bd2e...c8c631`](./contracts/arbitrum-42161/0x10bd2e1578d81a90be16dbce143ba1a221c8c631/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | arbitrum | n/a | [`0x3134da...4cceb2`](./contracts/arbitrum-42161/0x3134da6372438a0bb3e35d68e4eca2e5c54cceb2/) | ⚠️ Unaudited |
| CEtherDelegator | unknown | arbitrum | n/a | [`0x225fb1...509b37`](./contracts/arbitrum-42161/0x225fb17f394a60c02e898e127f756fdc22509b37/) | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | [`0x5f28a0...8f8a75`](./contracts/arbitrum-42161/0x5f28a0366a8a034e91cc37ccfd92203f6d8f8a75/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | arbitrum | n/a | [`0x64d250...17c170`](./contracts/arbitrum-42161/0x64d250b0ec55477cf80efefa094dce808e17c170/) | ⚠️ Unaudited |
| LiquidityLocker | unknown | arbitrum | n/a | [`0x0be776...a6d6bc`](./contracts/arbitrum-42161/0x0be77631d392b8079967c3e94ddb32f9cea6d6bc/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0xe2fe73...27714e`](./contracts/arbitrum-42161/0xe2fe733033a2bfc6ab14431dcca211260b27714e/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | [`0x2864f5...a5da34`](./contracts/arbitrum-42161/0x2864f5b50c0b0f8d64530c4b9da9940f7ba5da34/) | ⚠️ Unaudited |
| TimelockController | unknown | arbitrum | n/a | [`0x28f470...011bda`](./contracts/arbitrum-42161/0x28f470d33a63642af6cf15892c1ea7174f011bda/) | ⚠️ Unaudited |
| Token | unknown | arbitrum | n/a | [`0x73c36a...5f0709`](./contracts/arbitrum-42161/0x73c36ae64842eaf4d9209de10fda21017b5f0709/) | ⚠️ Unaudited |
| VeWom | unknown | arbitrum | n/a | [`0xb95d2f...c82297`](./contracts/arbitrum-42161/0xb95d2f8a284e67b77a54a66c4513015ec8c82297/) | ⚠️ Unaudited |

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
| [Sorta Finance.pdf](https://github.com/DeHacker-io/audits_public/blob/main/Sorta%20Finance.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21013] Sorta Finance.pdf

Fork inheritance lineage and inherited audits are included when available.
