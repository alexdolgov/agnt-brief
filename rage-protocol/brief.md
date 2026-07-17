# Agentic Audit Brief: RAGE Protocol

## Project Overview

- Project: RAGE Protocol (`rage-protocol`)
- Website: [https://ultraroundmoney.com/rage](https://ultraroundmoney.com/rage)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.523Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: base
- Contract surface: 23 unique implementations (31 raw deployments)
- DeFi Llama TVL: $232,093.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 22 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 31 (29 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/22 (27.3%)
- Deployed-live implementations: 22 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/22
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 23
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 27.3% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Rage | unknown | base | n/a | [`0xc0df50143ea93aec63e38a6ed4e92b378079ea15`](./contracts/base-8453/0xc0df50143ea93aec63e38a6ed4e92b378079ea15/) | ✅ Audited |
| RageBuyingProtocol | unknown | base | n/a | [`0xff70cd1e1931372f869c936582a7f42e49b6da4c`](./contracts/base-8453/0xff70cd1e1931372f869c936582a7f42e49b6da4c/) | ✅ Audited |
| RageChaosEngine | unknown | base | n/a | [`0x4c15f778ab59f25d5dfd2dd508236a25ed2813fe`](./contracts/base-8453/0x4c15f778ab59f25d5dfd2dd508236a25ed2813fe/) | ✅ Audited |
| RageOptionNft | token | base | n/a | [`0xe29a221ac6e69927161c3dfcc663f75119421178`](./contracts/base-8453/0xe29a221ac6e69927161c3dfcc663f75119421178/) | ✅ Audited |
| RageOracle | operational_periphery | base | n/a | [`0x9b8a45c4a0fbd44158480d9b4b41e0bdca42874c`](./contracts/base-8453/0x9b8a45c4a0fbd44158480d9b4b41e0bdca42874c/) | ✅ Audited |
| RageSwapper | adapter | base | n/a | [`0x03fee5ba01d5b71c7f7689490826ba75a2750c44`](./contracts/base-8453/0x03fee5ba01d5b71c7f7689490826ba75a2750c44/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Circle | unknown | base | n/a | [`0x5babfc2f240bc5de90eb7e19d789412db1dec402`](./contracts/base-8453/0x5babfc2f240bc5de90eb7e19d789412db1dec402/) | ⚠️ Unaudited |
| CircleTemple | unknown | base | n/a | [`0xe77b94b2a3ab82d4bba7ae2e05b6176dd91fb987`](./contracts/base-8453/0xe77b94b2a3ab82d4bba7ae2e05b6176dd91fb987/) | ⚠️ Unaudited |
| Hestia | unknown | base | n/a | [`0xbc7755a153e852cf76cccddb4c2e7c368f6259d8`](./contracts/base-8453/0xbc7755a153e852cf76cccddb4c2e7c368f6259d8/) | ⚠️ Unaudited |
| HestiaChaosEngine | unknown | base | n/a | [`0x4e5524e08fee52cef973380fdbea8909361887b8`](./contracts/base-8453/0x4e5524e08fee52cef973380fdbea8909361887b8/) | ⚠️ Unaudited |
| HestiaMine | unknown | base | n/a | [`0xc10aa720dfde56be6fb37f91189a64215a61ddc3`](./contracts/base-8453/0xc10aa720dfde56be6fb37f91189a64215a61ddc3/) | ⚠️ Unaudited |
| RageCalculation | unknown | base | n/a | [`0xb8ed155ab154b2dbadcc07b814cc52e92dc75ae1`](./contracts/base-8453/0xb8ed155ab154b2dbadcc07b814cc52e92dc75ae1/) | ⚠️ Unaudited |
| RageDepot | unknown | base | n/a | 2 deployments: base [`0x33e11fd175435188b0b750eb966fd6b195da40de`](./contracts/base-8453/0x33e11fd175435188b0b750eb966fd6b195da40de/); base `0xa87008e732cfd9003c6bfba84369c2778284c82c` | ⚠️ Unaudited |
| RageOtc | unknown | base | n/a | 6 deployments: base [`0x022118088fb1484a728a23d60b1866c5f1d12b6c`](./contracts/base-8453/0x022118088fb1484a728a23d60b1866c5f1d12b6c/); base `0x43a3a8d71da54f0ec9d75417945d494add90c224`; base `0x4d95932b66eca32f8527303aee75a565969441e4`; base `0xaee9b9591bb05ccc708482f9725b85d0156ecbe1`; base `0xc95e30eaacfbbfe71211b33ea1a4c0157e8ad6a1`; base `0xdcb26dd3fc28f24fe97539dca230e23feca8be85` | ⚠️ Unaudited |
| RagePresale | unknown | base | n/a | [`0x96cd711dd6ba5d14b98402fa58648d68d64db3ac`](./contracts/base-8453/0x96cd711dd6ba5d14b98402fa58648d68d64db3ac/) | ⚠️ Unaudited |
| RageTreasury | operational_periphery | base | n/a | [`0x94e29af27dc811406e1f5ded721e42e160adae30`](./contracts/base-8453/0x94e29af27dc811406e1f5ded721e42e160adae30/) | ⚠️ Unaudited |
| Urm | unknown | base | n/a | [`0xf0e3349f00972475a5d16721796091aa3b997837`](./contracts/base-8453/0xf0e3349f00972475a5d16721796091aa3b997837/) | ⚠️ Unaudited |
| UrmFlankingTower | unknown | base | n/a | 2 deployments: base [`0x8a0f28fadaf826491a64fea300ffb14b15c3e62c`](./contracts/base-8453/0x8a0f28fadaf826491a64fea300ffb14b15c3e62c/); base `0xf258981a818d49580278e183e5f8ff8069be6657` | ⚠️ Unaudited |
| UrmFortress | unknown | base | n/a | [`0x5e06b7117d47210a5fdc54d08a9dd8d8bf0f1fc3`](./contracts/base-8453/0x5e06b7117d47210a5fdc54d08a9dd8d8bf0f1fc3/) | ⚠️ Unaudited |
| UrmOracle | operational_periphery | base | n/a | [`0xa51e78a5b3380516f9cf2c910641703d5c2e45a1`](./contracts/base-8453/0xa51e78a5b3380516f9cf2c910641703d5c2e45a1/) | ⚠️ Unaudited |
| UrmSwapper | adapter | base | n/a | [`0x52c540f4d8d16f7f6d625b9e08317a1ef2cde13c`](./contracts/base-8453/0x52c540f4d8d16f7f6d625b9e08317a1ef2cde13c/) | ⚠️ Unaudited |
| UrmSwapperRouter | adapter | base | n/a | [`0x3cb81b027bdcd4c653f13a94622f2f578ad0ee31`](./contracts/base-8453/0x3cb81b027bdcd4c653f13a94622f2f578ad0ee31/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WeightedIndex | unknown | base | n/a | 2 deployments: base `0x55a81da2a319dd60fb028c53cb4419493b56f6c0`; base `0xf760fd8feb1f5e3bf3651e2e4f227285a82470ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://ultraroundmoney.com/rage/audit.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x5babfc2f240bc5de90eb7e19d789412db1dec402`](./contracts/base-8453/0x5babfc2f240bc5de90eb7e19d789412db1dec402/) | Circle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe77b94b2a3ab82d4bba7ae2e05b6176dd91fb987`](./contracts/base-8453/0xe77b94b2a3ab82d4bba7ae2e05b6176dd91fb987/) | CircleTemple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbc7755a153e852cf76cccddb4c2e7c368f6259d8`](./contracts/base-8453/0xbc7755a153e852cf76cccddb4c2e7c368f6259d8/) | Hestia | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e5524e08fee52cef973380fdbea8909361887b8`](./contracts/base-8453/0x4e5524e08fee52cef973380fdbea8909361887b8/) | HestiaChaosEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc10aa720dfde56be6fb37f91189a64215a61ddc3`](./contracts/base-8453/0xc10aa720dfde56be6fb37f91189a64215a61ddc3/) | HestiaMine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb8ed155ab154b2dbadcc07b814cc52e92dc75ae1`](./contracts/base-8453/0xb8ed155ab154b2dbadcc07b814cc52e92dc75ae1/) | RageCalculation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33e11fd175435188b0b750eb966fd6b195da40de`](./contracts/base-8453/0x33e11fd175435188b0b750eb966fd6b195da40de/) | RageDepot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x022118088fb1484a728a23d60b1866c5f1d12b6c`](./contracts/base-8453/0x022118088fb1484a728a23d60b1866c5f1d12b6c/) | RageOtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x96cd711dd6ba5d14b98402fa58648d68d64db3ac`](./contracts/base-8453/0x96cd711dd6ba5d14b98402fa58648d68d64db3ac/) | RagePresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x94e29af27dc811406e1f5ded721e42e160adae30`](./contracts/base-8453/0x94e29af27dc811406e1f5ded721e42e160adae30/) | RageTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf0e3349f00972475a5d16721796091aa3b997837`](./contracts/base-8453/0xf0e3349f00972475a5d16721796091aa3b997837/) | Urm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a0f28fadaf826491a64fea300ffb14b15c3e62c`](./contracts/base-8453/0x8a0f28fadaf826491a64fea300ffb14b15c3e62c/) | UrmFlankingTower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5e06b7117d47210a5fdc54d08a9dd8d8bf0f1fc3`](./contracts/base-8453/0x5e06b7117d47210a5fdc54d08a9dd8d8bf0f1fc3/) | UrmFortress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa51e78a5b3380516f9cf2c910641703d5c2e45a1`](./contracts/base-8453/0xa51e78a5b3380516f9cf2c910641703d5c2e45a1/) | UrmOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52c540f4d8d16f7f6d625b9e08317a1ef2cde13c`](./contracts/base-8453/0x52c540f4d8d16f7f6d625b9e08317a1ef2cde13c/) | UrmSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3cb81b027bdcd4c653f13a94622f2f578ad0ee31`](./contracts/base-8453/0x3cb81b027bdcd4c653f13a94622f2f578ad0ee31/) | UrmSwapperRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
