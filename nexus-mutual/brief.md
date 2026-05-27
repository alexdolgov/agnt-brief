# Agentic Audit Brief: Nexus Mutual

## Project Overview

- Project: Nexus Mutual (`nexus-mutual`)
- Website: [https://nexusmutual.io/](https://nexusmutual.io/)
- Lifecycle: active (Tier 0, 87.8% below peak)
- Generated: 2026-05-27T10:44:02.756Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: ethereum
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $95,917,887.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Nexus Mutual is a decentralized insurance protocol that allows members to pool funds and share risk. Members can purchase cover against smart contract failures and other risks, and participate in claims assessment and governance.

### Architecture

The protocol consists of a single product family centered around the OwnedUpgradeabilityProxy, which delegates to the NXMaster implementation contract containing all core logic.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/nexusmutual/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ClaimsReward | unknown | ethereum | [`0xe80f4d...7d413c`](./contracts/ethereum-1/0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | [`0x289625...9fefe2`](./contracts/ethereum-1/0x2896258b620fdc0c1aab9cb4fd0317f37a9fefe2/) | ⚠️ Unaudited |
| NXMaster | unknown | ethereum | 2 deployments: ethereum [`0x01bfd8...0cd07e`](./contracts/ethereum-1/0x01bfd82675dbcc7762c84019ca518e701c0cd07e/); ethereum `0x1cc712...1dbc4f` | ⚠️ Unaudited |
| ProposalCategory | unknown | ethereum | [`0x9399a1...13dd6b`](./contracts/ethereum-1/0x9399a16f15e35f0d1cd6001f20566290f113dd6b/) | ⚠️ Unaudited |
| TokenController | governance | ethereum | [`0xb2df6c...ea5e2c`](./contracts/ethereum-1/0xb2df6cc4524d1505a195f38dbe0280450fea5e2c/) | ⚠️ Unaudited |
| TokenFunctions | token | ethereum | [`0xa94c7e...b8a28f`](./contracts/ethereum-1/0xa94c7e87e212669baee95d5d45305d05e6b8a28f/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe80f4d...7d413c`](./contracts/ethereum-1/0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c/) | ClaimsReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x289625...9fefe2`](./contracts/ethereum-1/0x2896258b620fdc0c1aab9cb4fd0317f37a9fefe2/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01bfd8...0cd07e`](./contracts/ethereum-1/0x01bfd82675dbcc7762c84019ca518e701c0cd07e/) | NXMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9399a1...13dd6b`](./contracts/ethereum-1/0x9399a16f15e35f0d1cd6001f20566290f113dd6b/) | ProposalCategory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2df6c...ea5e2c`](./contracts/ethereum-1/0xb2df6cc4524d1505a195f38dbe0280450fea5e2c/) | TokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94c7e...b8a28f`](./contracts/ethereum-1/0xa94c7e87e212669baee95d5d45305d05e6b8a28f/) | TokenFunctions | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
