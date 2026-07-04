# Agentic Audit Brief: Ideamarket

## Project Overview

- Project: Ideamarket (`ideamarket`)
- Website: [https://ideamarket.io](https://ideamarket.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.874Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $163,209.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 18 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/17 (41.2%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/18
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 8 | 44.4% | 2021-02 |
| Ideamarket | Tier 2 | 3 | 16.7% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSPause | unknown | arbitrum | n/a | [`0x1770b0...3de351`](./contracts/arbitrum-42161/0x1770b0786041a8af556a640151d12dfca73de351/) | ✅ Audited |
| IdeaToken | unknown | arbitrum | n/a | [`0xa84fae...72325c`](./contracts/arbitrum-42161/0xa84faeb40066627eec343ef4534007117572325c/) | ✅ Audited |
| IdeaTokenExchangeAVM | unknown | arbitrum | n/a | [`0x15ae05...60dd81`](./contracts/arbitrum-42161/0x15ae05599809af9d1a04c10bef217bc04060dd81/) | ✅ Audited |
| IdeaTokenVault | unknown | arbitrum | n/a | [`0xd2a283...83ffe9`](./contracts/arbitrum-42161/0xd2a2830b2b381eb2bca5584c5d96732fdc83ffe9/) | ✅ Audited |
| InterestManagerStateTransferAVM | unknown | arbitrum | n/a | [`0x4e908f...df284e`](./contracts/arbitrum-42161/0x4e908f706f8935f10c101ea3d7b2defc78df284e/) | ✅ Audited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0xc98a20...aafe9c`](./contracts/arbitrum-42161/0xc98a2032660072514892ccfdfa31cd40e6aafe9c/) | ✅ Audited |
| SubstackNameVerifier | unknown | arbitrum | n/a | [`0x333949...651688`](./contracts/arbitrum-42161/0x333949574b533e4797188c74c581a1df6b651688/) | ✅ Audited |
| TwitterHandleNameVerifier | unknown | arbitrum | n/a | [`0xc63d47...7ad46e`](./contracts/arbitrum-42161/0xc63d478befc1a814ec995ed926587034ec7ad46e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeAVM | unknown | arbitrum | n/a | [`0x04c451...535de6`](./contracts/arbitrum-42161/0x04c451e7f6e391ee0d004139ffe125bd75535de6/) | ⚠️ Unaudited |
| ChangeTimelockOwnerSpell | unknown | arbitrum | n/a | [`0x5e2a18...d87c65`](./contracts/arbitrum-42161/0x5e2a18eb368a6466abb693adabbbbd32b4d87c65/) | ⚠️ Unaudited |
| DelegateableTokenVesting | unknown | arbitrum | n/a | [`0x16a950...16e299`](./contracts/arbitrum-42161/0x16a950c84d6060e3f06293a9c429725b1416e299/) | ⚠️ Unaudited |
| IdeaTokenExchangeStateTransferAVM | unknown | arbitrum | n/a | [`0x6ea77f...74cb16`](./contracts/arbitrum-42161/0x6ea77fc024599b44c787f0c2393027ed2c74cb16/) | ⚠️ Unaudited |
| IdeaTokenFactoryAVM | unknown | arbitrum | n/a | [`0x43e7bc...5c11e3`](./contracts/arbitrum-42161/0x43e7bc8d14224f03af8407025dff17a7355c11e3/) | ⚠️ Unaudited |
| IdeaTokenFactoryStateTransferAVM | unknown | arbitrum | n/a | [`0xa40030...bcccba`](./contracts/arbitrum-42161/0xa40030170f0a962debfccc751dc551e28dbcccba/) | ⚠️ Unaudited |
| IMO | unknown | arbitrum | n/a | [`0xb41bd4...c1f814`](./contracts/arbitrum-42161/0xb41bd4c99da73510d9e081c5fadbe7a27ac1f814/) | ⚠️ Unaudited |
| IMOStaking | unknown | arbitrum | n/a | [`0x902ed1...c3d2b4`](./contracts/arbitrum-42161/0x902ed1d30212a3dacc471fbbd8e421fa80c3d2b4/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | arbitrum | n/a | [`0xa5e8bd...78f8bd`](./contracts/arbitrum-42161/0xa5e8bdbe83c2e93201836a8943496e8a2978f8bd/) | ⚠️ Unaudited |
| ShowtimeNameVerifier | unknown | arbitrum | n/a | [`0x6c6cd7...1d27f3`](./contracts/arbitrum-42161/0x6c6cd7dabc0bbf0b99db209c74aad4dc0e1d27f3/) | ⚠️ Unaudited |

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
| [Quantstamp - Ideamarket Report.pdf](https://1973863284-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MO3FS4hHpv7FRVGrwnt%2F-MTDFUB1mL3y4qqOa-Ym%2F-MTETLvkdCinbSzIPBpp%2FQuantstamp%20-%20Ideamarket%20Report.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | 8 | high |
| [Ideamarket Audit Response.pdf](https://1973863284-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MO3FS4hHpv7FRVGrwnt%2F-MTFGQ_xSOz18b5uigqR%2F-MTFGXSz06pKolsBEXdl%2FIdeamarket%20Audit%20Response.pdf) | Ideamarket | Audit | 2021-01 | stale | Direct | contract_name | 3 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x04c451...535de6`](./contracts/arbitrum-42161/0x04c451e7f6e391ee0d004139ffe125bd75535de6/) | BridgeAVM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e2a18...d87c65`](./contracts/arbitrum-42161/0x5e2a18eb368a6466abb693adabbbbd32b4d87c65/) | ChangeTimelockOwnerSpell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16a950...16e299`](./contracts/arbitrum-42161/0x16a950c84d6060e3f06293a9c429725b1416e299/) | DelegateableTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ea77f...74cb16`](./contracts/arbitrum-42161/0x6ea77fc024599b44c787f0c2393027ed2c74cb16/) | IdeaTokenExchangeStateTransferAVM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x43e7bc...5c11e3`](./contracts/arbitrum-42161/0x43e7bc8d14224f03af8407025dff17a7355c11e3/) | IdeaTokenFactoryAVM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa40030...bcccba`](./contracts/arbitrum-42161/0xa40030170f0a962debfccc751dc551e28dbcccba/) | IdeaTokenFactoryStateTransferAVM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb41bd4...c1f814`](./contracts/arbitrum-42161/0xb41bd4c99da73510d9e081c5fadbe7a27ac1f814/) | IMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x902ed1...c3d2b4`](./contracts/arbitrum-42161/0x902ed1d30212a3dacc471fbbd8e421fa80c3d2b4/) | IMOStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa5e8bd...78f8bd`](./contracts/arbitrum-42161/0xa5e8bdbe83c2e93201836a8943496e8a2978f8bd/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c6cd7...1d27f3`](./contracts/arbitrum-42161/0x6c6cd7dabc0bbf0b99db209c74aad4dc0e1d27f3/) | ShowtimeNameVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
