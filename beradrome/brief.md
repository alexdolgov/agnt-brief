# Agentic Audit Brief: Beradrome

⚠️ Lifecycle status: DECLINING - TVL dropped 54.0% over 90 days

## Project Overview

- Project: Beradrome (`beradrome`)
- Website: [https://www.beradrome.com](https://www.beradrome.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-13T01:41:54.989Z
- Pipeline run: v2-pipeline-2026-06-13-546062-d5d2
- Chains: berachain
- Contract surface: 18 unique implementations (20 raw deployments)
- DeFi Llama TVL: $6,880,080.57
- On-chain TVL (included contracts): $3,289,417.37
- TVL by chain: Berachain $3,289,417.37

## Project Description

Beradrome is a Berachain restaking and liquidity marketplace with ve(3,3)-style incentives. Any vault or adapter functionality should be limited to verified Kodiak-related adapters unless additional vault contracts or documentation are confirmed.

### Architecture

The Vaults family uses adapter contracts to interact with external Kodiak Island routers, while the Beradrome token likely serves as the governance or reward token across these vaults. Both families are deployed by the same deployer, indicating shared ownership and potential integration.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 20
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

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TOKEN | token | berachain | [`0x7838ce...c74174`](./contracts/berachain-80094/0x7838cec5b11298ff6a9513fa385621b765c74174/) | ⚠️ Unaudited |
| BerachainPlugin | unknown | berachain | [`0xac5922...500171`](./contracts/berachain-80094/0xac5922bccb16a0213684427f0412fcf8f9500171/) | ⚠️ Unaudited |
| Bribe | operational_periphery | berachain | [`0x5dba62...659edd`](./contracts/berachain-80094/0x5dba62ae28e2efbd1f42ac372910f8df78659edd/) | ⚠️ Unaudited |
| BribeFactory | operational_periphery | berachain | [`0xeb4b79...f4f226`](./contracts/berachain-80094/0xeb4b7929a5e084b2817ee0085f9a2b94e2f4f226/) | ⚠️ Unaudited |
| Controller | governance | berachain | [`0x65e324...3a596c`](./contracts/berachain-80094/0x65e3249eccd38ad841345da5bebbebe3a73a596c/) | ⚠️ Unaudited |
| Gauge | operational_periphery | berachain | [`0x229fdf...4dcc38`](./contracts/berachain-80094/0x229fdff961392cebb08e93d630e7a6a5614dcc38/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | berachain | [`0x8d97b0...622022`](./contracts/berachain-80094/0x8d97b0b334eb5076f2ce66a7b7ffac1931622022/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | berachain | [`0xab53af...58e09c`](./contracts/berachain-80094/0xab53afb5c63e2552e7bd986c0a38e8a8dc58e09c/) | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | berachain | 3 deployments: berachain [`0x63b0ed...8ce225`](./contracts/berachain-80094/0x63b0edc427664d4330f72eec890a86b3f98ce225/); berachain `0xbfbefc...742eb0`; berachain `0xe5a2ab...09aff9` | ⚠️ Unaudited |
| Minter | unknown | berachain | [`0xe2719e...ff041c`](./contracts/berachain-80094/0xe2719e4c3ac97890b2af3783a3b892c3a6ff041c/) | ⚠️ Unaudited |
| Multicall | periphery | berachain | [`0x6de646...f56665`](./contracts/berachain-80094/0x6de64633c9a5becdde6c5dc27dff308f05f56665/) | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | [`0x63233e...fc09f0`](./contracts/berachain-80094/0x63233e055847ed2526d9275a6cd1d01caafc09f0/) | ⚠️ Unaudited |
| TOKENFees | unknown | berachain | [`0x06030c...eba5d3`](./contracts/berachain-80094/0x06030c39b241f5e7f3a2af25e0d10ca1f8eba5d3/) | ⚠️ Unaudited |
| TOKENGovernor | governance | berachain | [`0x8fe450...af398a`](./contracts/berachain-80094/0x8fe450e4b403fa857cb126e7a603b5eba3af398a/) | ⚠️ Unaudited |
| TrifectaMulticall | periphery | berachain | [`0xa431ba...8f0472`](./contracts/berachain-80094/0xa431ba493d5a63fa77c69284535e105fb98f0472/) | ⚠️ Unaudited |
| Voter | unknown | berachain | [`0xd7ea36...e4ad47`](./contracts/berachain-80094/0xd7ea36eca1ca3e73bc262a6d05db01e60ae4ad47/) | ⚠️ Unaudited |
| VTOKEN | token | berachain | [`0x7f0976...fa2b69`](./contracts/berachain-80094/0x7f0976b52f6c1ddcd4d6f639537c97de22fa2b69/) | ⚠️ Unaudited |
| VTOKENRewarder | token | berachain | [`0x8a5547...94865e`](./contracts/berachain-80094/0x8a5547dbdba815036ae67d36835db687fd94865e/) | ⚠️ Unaudited |

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
| berachain | [`0xac5922...500171`](./contracts/berachain-80094/0xac5922bccb16a0213684427f0412fcf8f9500171/) | BerachainPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5dba62...659edd`](./contracts/berachain-80094/0x5dba62ae28e2efbd1f42ac372910f8df78659edd/) | Bribe | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xeb4b79...f4f226`](./contracts/berachain-80094/0xeb4b7929a5e084b2817ee0085f9a2b94e2f4f226/) | BribeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x65e324...3a596c`](./contracts/berachain-80094/0x65e3249eccd38ad841345da5bebbebe3a73a596c/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x229fdf...4dcc38`](./contracts/berachain-80094/0x229fdff961392cebb08e93d630e7a6a5614dcc38/) | Gauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8d97b0...622022`](./contracts/berachain-80094/0x8d97b0b334eb5076f2ce66a7b7ffac1931622022/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xe2719e...ff041c`](./contracts/berachain-80094/0xe2719e4c3ac97890b2af3783a3b892c3a6ff041c/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x63233e...fc09f0`](./contracts/berachain-80094/0x63233e055847ed2526d9275a6cd1d01caafc09f0/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x06030c...eba5d3`](./contracts/berachain-80094/0x06030c39b241f5e7f3a2af25e0d10ca1f8eba5d3/) | TOKENFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8fe450...af398a`](./contracts/berachain-80094/0x8fe450e4b403fa857cb126e7a603b5eba3af398a/) | TOKENGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa431ba...8f0472`](./contracts/berachain-80094/0xa431ba493d5a63fa77c69284535e105fb98f0472/) | TrifectaMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd7ea36...e4ad47`](./contracts/berachain-80094/0xd7ea36eca1ca3e73bc262a6d05db01e60ae4ad47/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7f0976...fa2b69`](./contracts/berachain-80094/0x7f0976b52f6c1ddcd4d6f639537c97de22fa2b69/) | VTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8a5547...94865e`](./contracts/berachain-80094/0x8a5547dbdba815036ae67d36835db687fd94865e/) | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
