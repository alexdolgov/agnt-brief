# Agentic Audit Brief: Nexus Mutual

## Project Overview

- Project: Nexus Mutual (`nexus-mutual`)
- Website: [https://nexusmutual.io/](https://nexusmutual.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.450Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 23 unique implementations (26 raw deployments)
- DeFi Llama TVL: $76,712,645.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 22 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (upgradeabilityproxy, proxy, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 26
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/nexusmutual/information))
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

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssessmentViewer | periphery | ethereum | n/a | [`0xcafeaa...80f0cd`](./contracts/ethereum-1/0xcafeaa6660019915ec109052825ee7121480f0cd/) | ⚠️ Unaudited |
| Cover | unknown | ethereum | n/a | [`0xcafeac...82ee62`](./contracts/ethereum-1/0xcafeac0ff5da0a2777d915531bfa6b29d282ee62/) | ⚠️ Unaudited |
| CoverBroker | unknown | ethereum | n/a | [`0xcb2b73...507814`](./contracts/ethereum-1/0xcb2b736652d2dbf7d72e4db880cf6b7d99507814/) | ⚠️ Unaudited |
| CoverProducts | unknown | ethereum | n/a | [`0xcafead...87aa8d`](./contracts/ethereum-1/0xcafead81a2c2508e7344155eb0da67a3a487aa8d/) | ⚠️ Unaudited |
| CoverViewer | periphery | ethereum | n/a | [`0xcafea5...fff8b9`](./contracts/ethereum-1/0xcafea53a6c1774030f4b1c06b4a5743d5afff8b9/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 4 deployments: ethereum [`0x09abbe...017cf5`](./contracts/ethereum-1/0x09abbe423fedee2332caea4117093d7d9b017cf5/); ethereum `0x57d2d8...0d7fa1`; ethereum `0x8e53d0...64cfe3`; ethereum `0xfa7e85...cbdb3c` | ⚠️ Unaudited |
| IndividualClaims | unknown | ethereum | n/a | [`0xcafeac...de7a62`](./contracts/ethereum-1/0xcafeac12fee6b65a710fa9299a98d65b4fde7a62/) | ⚠️ Unaudited |
| LegacyAssessment | unknown | ethereum | n/a | [`0xcafeaa...3690a3`](./contracts/ethereum-1/0xcafeaa5f9c401b7295890f309168bbb8173690a3/) | ⚠️ Unaudited |
| LegacyMemberRoles | unknown | ethereum | n/a | [`0x055cc4...b03926`](./contracts/ethereum-1/0x055cc48f7968fd8640ef140610dd4038e1b03926/) | ⚠️ Unaudited |
| LimitOrders | unknown | ethereum | n/a | [`0xcafea5...04210f`](./contracts/ethereum-1/0xcafea53852e9f719c424ec2fe1e7add27304210f/) | ⚠️ Unaudited |
| NexusViewer | periphery | ethereum | n/a | [`0xcafeab...6302b6`](./contracts/ethereum-1/0xcafeab03f219b7a8bcb92a5d61508a0ae16302b6/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0xcafea9...1697cb`](./contracts/ethereum-1/0xcafea91714e55756c125b509274ede9bc91697cb/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0xcafeaf...cf6158`](./contracts/ethereum-1/0xcafeaf6ea90cb931ae43a8cf4b25a73a24cf6158/) | ⚠️ Unaudited |
| PriceFeedOracle | operational_periphery | ethereum | n/a | [`0xcafea9...97a592`](./contracts/ethereum-1/0xcafea905b417ac7778843aae1a0b3848ca97a592/) | ⚠️ Unaudited |
| Ramm | unknown | ethereum | n/a | [`0xcafea5...2487cd`](./contracts/ethereum-1/0xcafea54f03e1cc036653444e581a10a43b2487cd/) | ⚠️ Unaudited |
| SafeTracker | unknown | ethereum | n/a | [`0xcafeab...9c6c13`](./contracts/ethereum-1/0xcafeab8b01c74c2239ea9b2b0f6ab2dd409c6c13/) | ⚠️ Unaudited |
| StakingPoolFactory | registry | ethereum | n/a | [`0xcafeaf...101cb3`](./contracts/ethereum-1/0xcafeafb97bf8831d95c0fc659b8eb3946b101cb3/) | ⚠️ Unaudited |
| StakingProducts | unknown | ethereum | n/a | [`0xcafea5...3477e4`](./contracts/ethereum-1/0xcafea573fbd815b5f59e8049e71e554bde3477e4/) | ⚠️ Unaudited |
| StakingViewer | periphery | ethereum | n/a | [`0xcafea5...7f236b`](./contracts/ethereum-1/0xcafea5e8a7a54dd14bb225b66c7a016dfd7f236b/) | ⚠️ Unaudited |
| SwapOperator | unknown | ethereum | n/a | [`0xcafeae...74f37e`](./contracts/ethereum-1/0xcafeaed98d7fce8f355c03c9f3507b90a974f37e/) | ⚠️ Unaudited |
| TemporaryGovernance | unknown | ethereum | n/a | [`0x4a5c68...e87900`](./contracts/ethereum-1/0x4a5c681ddc32acc6cca51ac17e9d461e6be87900/) | ⚠️ Unaudited |
| TokenController | governance | ethereum | n/a | [`0x540738...7960b8`](./contracts/ethereum-1/0x5407381b6c251cfd498ccd4a1d877739cb7960b8/) | ⚠️ Unaudited |
| wNXM | unknown | ethereum | n/a | [`0x0d438f...432bde`](./contracts/ethereum-1/0x0d438f3b5175bebc262bf23753c1e53d03432bde/) | ⚠️ Unaudited |

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
| [immunefi.com/bug-bounty/nexusmutual/information](https://immunefi.com/bug-bounty/nexusmutual/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [audits-and-security.md](https://github.com/NexusMutual/docs/blob/master/docs/resources/audits-and-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [10354] audits-and-security.md

Fork inheritance lineage and inherited audits are included when available.
