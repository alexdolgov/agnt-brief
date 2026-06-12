# Agentic Audit Brief: Nexus Mutual

## Project Overview

- Project: Nexus Mutual (`nexus-mutual`)
- Website: [https://nexusmutual.io/](https://nexusmutual.io/)
- Lifecycle: active (Tier 0, 87.8% below peak)
- Generated: 2026-06-12T06:40:16.131Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: ethereum
- Contract surface: 30 unique implementations (38 raw deployments)
- DeFi Llama TVL: $78,351,252.05
- On-chain TVL (included contracts): $34,823,456.66
- TVL by chain: Ethereum $34,823,456.66

## Project Description

Nexus Mutual is a decentralized insurance protocol that allows members to pool funds and share risk. Members can purchase cover against smart contract failures and other risks, and participate in claims assessment and governance.

### Architecture

The protocol consists of a single product family centered around the OwnedUpgradeabilityProxy, which delegates to the NXMaster implementation contract containing all core logic.

## Audit Coverage Summary

- Verified implementations audited: 0/30 (0.0%)
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 38
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/nexusmutual/information))
- ASD (verified + unaudited TVL): $34,823,456.66
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Pool | core_logic | ethereum | 2 deployments: ethereum [`0xcafea9...1697cb`](./contracts/ethereum-1/0xcafea91714e55756c125b509274ede9bc91697cb/); ethereum `0xcafeaf...cf6158` | ⚠️ Unaudited |
| AssessmentViewer | unknown | ethereum | [`0xcafeaa...80f0cd`](./contracts/ethereum-1/0xcafeaa6660019915ec109052825ee7121480f0cd/) | ⚠️ Unaudited |
| ClaimsData | unknown | ethereum | [`0xdc2d35...ef43af`](./contracts/ethereum-1/0xdc2d359f59f6a26162972c3bd0cfbfd8c9ef43af/) | ⚠️ Unaudited |
| ClaimsReward | unknown | ethereum | [`0xe80f4d...7d413c`](./contracts/ethereum-1/0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c/) | ⚠️ Unaudited |
| Cover | unknown | ethereum | [`0xcafeac...82ee62`](./contracts/ethereum-1/0xcafeac0ff5da0a2777d915531bfa6b29d282ee62/) | ⚠️ Unaudited |
| CoverBroker | unknown | ethereum | [`0xcb2b73...507814`](./contracts/ethereum-1/0xcb2b736652d2dbf7d72e4db880cf6b7d99507814/) | ⚠️ Unaudited |
| CoverProducts | unknown | ethereum | [`0xcafead...87aa8d`](./contracts/ethereum-1/0xcafead81a2c2508e7344155eb0da67a3a487aa8d/) | ⚠️ Unaudited |
| CoverViewer | unknown | ethereum | [`0xcafea5...fff8b9`](./contracts/ethereum-1/0xcafea53a6c1774030f4b1c06b4a5743d5afff8b9/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 5 deployments: ethereum [`0x09abbe...017cf5`](./contracts/ethereum-1/0x09abbe423fedee2332caea4117093d7d9b017cf5/); ethereum `0x57d2d8...0d7fa1`; ethereum `0x586b9b...5e86e9`; ethereum `0x8e53d0...64cfe3`; ethereum `0xfa7e85...cbdb3c` | ⚠️ Unaudited |
| Governance | unknown | ethereum | [`0x289625...9fefe2`](./contracts/ethereum-1/0x2896258b620fdc0c1aab9cb4fd0317f37a9fefe2/) | ⚠️ Unaudited |
| IndividualClaims | unknown | ethereum | [`0xcafeac...de7a62`](./contracts/ethereum-1/0xcafeac12fee6b65a710fa9299a98d65b4fde7a62/) | ⚠️ Unaudited |
| LegacyAssessment | unknown | ethereum | [`0xcafeaa...3690a3`](./contracts/ethereum-1/0xcafeaa5f9c401b7295890f309168bbb8173690a3/) | ⚠️ Unaudited |
| LegacyMemberRoles | unknown | ethereum | [`0x055cc4...b03926`](./contracts/ethereum-1/0x055cc48f7968fd8640ef140610dd4038e1b03926/) | ⚠️ Unaudited |
| LimitOrders | unknown | ethereum | [`0xcafea5...04210f`](./contracts/ethereum-1/0xcafea53852e9f719c424ec2fe1e7add27304210f/) | ⚠️ Unaudited |
| MCR | unknown | ethereum | [`0xcafea9...93c9a7`](./contracts/ethereum-1/0xcafea92739e411a4d95bbc2275ca61de6993c9a7/) | ⚠️ Unaudited |
| NexusViewer | unknown | ethereum | [`0xcafeab...6302b6`](./contracts/ethereum-1/0xcafeab03f219b7a8bcb92a5d61508a0ae16302b6/) | ⚠️ Unaudited |
| NXMaster | unknown | ethereum | 2 deployments: ethereum [`0x01bfd8...0cd07e`](./contracts/ethereum-1/0x01bfd82675dbcc7762c84019ca518e701c0cd07e/); ethereum `0x1cc712...1dbc4f` | ⚠️ Unaudited |
| PriceFeedOracle | unknown | ethereum | [`0xcafea9...97a592`](./contracts/ethereum-1/0xcafea905b417ac7778843aae1a0b3848ca97a592/) | ⚠️ Unaudited |
| ProposalCategory | unknown | ethereum | 2 deployments: ethereum [`0x888ea6...f254b2`](./contracts/ethereum-1/0x888ea6ab349c854936b98586ce6a17e98bf254b2/); ethereum `0x9399a1...13dd6b` | ⚠️ Unaudited |
| QuotationData | unknown | ethereum | [`0x177665...903f7a`](./contracts/ethereum-1/0x1776651f58a17a50098d31ba3c3cd259c1903f7a/) | ⚠️ Unaudited |
| Ramm | unknown | ethereum | [`0xcafea5...2487cd`](./contracts/ethereum-1/0xcafea54f03e1cc036653444e581a10a43b2487cd/) | ⚠️ Unaudited |
| SafeTracker | unknown | ethereum | [`0xcafeab...9c6c13`](./contracts/ethereum-1/0xcafeab8b01c74c2239ea9b2b0f6ab2dd409c6c13/) | ⚠️ Unaudited |
| StakingPoolFactory | registry | ethereum | [`0xcafeaf...101cb3`](./contracts/ethereum-1/0xcafeafb97bf8831d95c0fc659b8eb3946b101cb3/) | ⚠️ Unaudited |
| StakingProducts | unknown | ethereum | [`0xcafea5...3477e4`](./contracts/ethereum-1/0xcafea573fbd815b5f59e8049e71e554bde3477e4/) | ⚠️ Unaudited |
| StakingViewer | unknown | ethereum | [`0xcafea5...7f236b`](./contracts/ethereum-1/0xcafea5e8a7a54dd14bb225b66c7a016dfd7f236b/) | ⚠️ Unaudited |
| SwapOperator | unknown | ethereum | [`0xcafeae...74f37e`](./contracts/ethereum-1/0xcafeaed98d7fce8f355c03c9f3507b90a974f37e/) | ⚠️ Unaudited |
| TemporaryGovernance | unknown | ethereum | [`0x4a5c68...e87900`](./contracts/ethereum-1/0x4a5c681ddc32acc6cca51ac17e9d461e6be87900/) | ⚠️ Unaudited |
| TokenController | governance | ethereum | 2 deployments: ethereum [`0x540738...7960b8`](./contracts/ethereum-1/0x5407381b6c251cfd498ccd4a1d877739cb7960b8/); ethereum `0xb2df6c...ea5e2c` | ⚠️ Unaudited |
| TokenFunctions | token | ethereum | [`0xa94c7e...b8a28f`](./contracts/ethereum-1/0xa94c7e87e212669baee95d5d45305d05e6b8a28f/) | ⚠️ Unaudited |
| wNXM | unknown | ethereum | [`0x0d438f...432bde`](./contracts/ethereum-1/0x0d438f3b5175bebc262bf23753c1e53d03432bde/) | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/nexusmutual/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
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
| needs_review | 30 |

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
