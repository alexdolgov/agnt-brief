# Agentic Audit Brief: Beradrome

⚠️ Lifecycle status: DECLINING - TVL dropped 54.0% over 90 days

## Project Overview

- Project: Beradrome (`beradrome`)
- Website: [https://www.beradrome.com](https://www.beradrome.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:01:01.679Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: berachain
- Contract surface: 11 unique implementations (13 raw deployments)
- DeFi Llama TVL: $6,880,080.57
- On-chain TVL (included contracts): $3,289,417.37
- TVL by chain: Berachain $3,289,417.37

## Project Description

Beradrome is a Berachain restaking and liquidity marketplace with ve(3,3)-style incentives. Any vault or adapter functionality should be limited to verified Kodiak-related adapters unless additional vault contracts or documentation are confirmed.

### Architecture

The Vaults family uses adapter contracts to interact with external Kodiak Island routers, while the Beradrome token likely serves as the governance or reward token across these vaults. Both families are deployed by the same deployer, indicating shared ownership and potential integration.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 2/24.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,289,417.37
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,289,417.37 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TOKEN | token | berachain | n/a | [`0x7838ce...c74174`](./contracts/berachain-80094/0x7838cec5b11298ff6a9513fa385621b765c74174/) | ⚠️ Unaudited |
| BerachainPlugin | unknown | berachain | n/a | [`0xac5922...500171`](./contracts/berachain-80094/0xac5922bccb16a0213684427f0412fcf8f9500171/) | ⚠️ Unaudited |
| Bribe | operational_periphery | berachain | n/a | [`0x5dba62...659edd`](./contracts/berachain-80094/0x5dba62ae28e2efbd1f42ac372910f8df78659edd/) | ⚠️ Unaudited |
| Gauge | operational_periphery | berachain | n/a | [`0x229fdf...4dcc38`](./contracts/berachain-80094/0x229fdff961392cebb08e93d630e7a6a5614dcc38/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | berachain | n/a | [`0xab53af...58e09c`](./contracts/berachain-80094/0xab53afb5c63e2552e7bd986c0a38e8a8dc58e09c/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | n/a | 3 deployments: berachain [`0x63b0ed...8ce225`](./contracts/berachain-80094/0x63b0edc427664d4330f72eec890a86b3f98ce225/); berachain `0xbfbefc...742eb0`; berachain `0xe5a2ab...09aff9` | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | n/a | [`0x63233e...fc09f0`](./contracts/berachain-80094/0x63233e055847ed2526d9275a6cd1d01caafc09f0/) | ⚠️ Unaudited |
| TOKENFees | unknown | berachain | n/a | [`0x06030c...eba5d3`](./contracts/berachain-80094/0x06030c39b241f5e7f3a2af25e0d10ca1f8eba5d3/) | ⚠️ Unaudited |
| Voter | unknown | berachain | n/a | [`0xd7ea36...e4ad47`](./contracts/berachain-80094/0xd7ea36eca1ca3e73bc262a6d05db01e60ae4ad47/) | ⚠️ Unaudited |
| VTOKEN | token | berachain | n/a | [`0x7f0976...fa2b69`](./contracts/berachain-80094/0x7f0976b52f6c1ddcd4d6f639537c97de22fa2b69/) | ⚠️ Unaudited |
| VTOKENRewarder | token | berachain | n/a | [`0x8a5547...94865e`](./contracts/berachain-80094/0x8a5547dbdba815036ae67d36835db687fd94865e/) | ⚠️ Unaudited |

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
| [DL audit link](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2F9amf3oq6oU9WdNOvESyc%2FPeckShield-Audit-Report-LilToken-v1.0rc%20(1).pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2FBU79KHmtxM1caLQzs1CE%2FZokyoAudit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2FUFxBvo4XJlvkU9Fzh8nH%2FAstraSec-AuditReport-Beradrome.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x7838ce...c74174`](./contracts/berachain-80094/0x7838cec5b11298ff6a9513fa385621b765c74174/) | TOKEN | token | $3,289,417.37 | Verified native implementation with $3,289,417.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xac5922...500171`](./contracts/berachain-80094/0xac5922bccb16a0213684427f0412fcf8f9500171/) | BerachainPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5dba62...659edd`](./contracts/berachain-80094/0x5dba62ae28e2efbd1f42ac372910f8df78659edd/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x229fdf...4dcc38`](./contracts/berachain-80094/0x229fdff961392cebb08e93d630e7a6a5614dcc38/) | Gauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x63233e...fc09f0`](./contracts/berachain-80094/0x63233e055847ed2526d9275a6cd1d01caafc09f0/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x06030c...eba5d3`](./contracts/berachain-80094/0x06030c39b241f5e7f3a2af25e0d10ca1f8eba5d3/) | TOKENFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd7ea36...e4ad47`](./contracts/berachain-80094/0xd7ea36eca1ca3e73bc262a6d05db01e60ae4ad47/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7f0976...fa2b69`](./contracts/berachain-80094/0x7f0976b52f6c1ddcd4d6f639537c97de22fa2b69/) | VTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8a5547...94865e`](./contracts/berachain-80094/0x8a5547dbdba815036ae67d36835db687fd94865e/) | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12594] DL audit link
- [12595] DL audit link
- [12596] DL audit link

Fork inheritance lineage and inherited audits are included when available.
