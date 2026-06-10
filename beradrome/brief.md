# Agentic Audit Brief: Beradrome

⚠️ Lifecycle status: DECLINING - TVL dropped 33.5% over 90 days

## Project Overview

- Project: Beradrome (`beradrome`)
- Website: [https://www.beradrome.com](https://www.beradrome.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:58:59.176Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: berachain
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $7,001,960.07
- On-chain TVL (included contracts): $3,289,417.37
- TVL by chain: Berachain $3,289,417.37

## Project Description

Beradrome is a Berachain restaking and liquidity marketplace with ve(3,3)-style incentives. Any vault or adapter functionality should be limited to verified Kodiak-related adapters unless additional vault contracts or documentation are confirmed.

### Architecture

The Vaults family uses adapter contracts to interact with external Kodiak Island routers, while the Beradrome token likely serves as the governance or reward token across these vaults. Both families are deployed by the same deployer, indicating shared ownership and potential integration.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,289,417.37
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,289,417.37 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TOKEN | token | berachain | [`0x7838ce...c74174`](./contracts/berachain-80094/0x7838cec5b11298ff6a9513fa385621b765c74174/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | 3 deployments: berachain [`0x63b0ed...8ce225`](./contracts/berachain-80094/0x63b0edc427664d4330f72eec890a86b3f98ce225/); berachain `0xbfbefc...742eb0`; berachain `0xe5a2ab...09aff9` | ⚠️ Unaudited |

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
| berachain | [`0x7838ce...c74174`](./contracts/berachain-80094/0x7838cec5b11298ff6a9513fa385621b765c74174/) | TOKEN | token | $3,289,417.37 | Verified native implementation with $3,289,417.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
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
