# Agentic Audit Brief: Coinswap Space

## Project Overview

- Project: Coinswap Space (`coinswap-space`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.351Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $232,443.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 11 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

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
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| CoinswapFaaS | unknown | bsc | n/a | [`0x496a0227f7f16622650ddf2601b6842e845203c5`](./contracts/bsc-56/0x496a0227f7f16622650ddf2601b6842e845203c5/) | ⚠️ Unaudited |
| CoinswapSaaS | unknown | bsc | n/a | [`0xfdfe9ab11d1c30bc1ffd6e2fe6eaa9660a3f8133`](./contracts/bsc-56/0xfdfe9ab11d1c30bc1ffd6e2fe6eaa9660a3f8133/) | ⚠️ Unaudited |
| CoinswapTestToken | unknown | bsc | n/a | [`0xa7ba3a3f2edde23706c0ef2de34b1300b2bbcea1`](./contracts/bsc-56/0xa7ba3a3f2edde23706c0ef2de34b1300b2bbcea1/) | ⚠️ Unaudited |
| CommunityReward | unknown | bsc | n/a | [`0x29a888e301a9ff0f4420a115f61e6ad0750db9de`](./contracts/bsc-56/0x29a888e301a9ff0f4420a115f61e6ad0750db9de/) | ⚠️ Unaudited |
| CommunityRewardBnb | unknown | bsc | n/a | [`0x5ca94e1b35c0a726e5431f66dbecdd2253ca6cb1`](./contracts/bsc-56/0x5ca94e1b35c0a726e5431f66dbecdd2253ca6cb1/) | ⚠️ Unaudited |
| CssReferral | unknown | bsc | n/a | [`0x0207f989db6427cd3f296a850664f9a6608ee8cb`](./contracts/bsc-56/0x0207f989db6427cd3f296a850664f9a6608ee8cb/) | ⚠️ Unaudited |
| CssToken | unknown | bsc | n/a | [`0x3bc5798416c1122bcfd7cb0e055d50061f23850d`](./contracts/bsc-56/0x3bc5798416c1122bcfd7cb0e055d50061f23850d/) | ⚠️ Unaudited |
| MasterCSS | unknown | bsc | n/a | [`0x1407673057f03a67c235e95b135110ca67596aff`](./contracts/bsc-56/0x1407673057f03a67c235e95b135110ca67596aff/) | ⚠️ Unaudited |
| SpacePad | unknown | bsc | n/a | [`0x09b543f0aa96905d9ce689874b88505608f661f0`](./contracts/bsc-56/0x09b543f0aa96905d9ce689874b88505608f661f0/) | ⚠️ Unaudited |
| SpacePadFriends | unknown | bsc | n/a | [`0x02db3acce010c8dd8125c451c369479cce2d7fa2`](./contracts/bsc-56/0x02db3acce010c8dd8125c451c369479cce2d7fa2/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xb83e4aee074d5898af4817e6129839c981390889`](./contracts/bsc-56/0xb83e4aee074d5898af4817e6129839c981390889/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/coinswap) | CertiK | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x496a0227f7f16622650ddf2601b6842e845203c5`](./contracts/bsc-56/0x496a0227f7f16622650ddf2601b6842e845203c5/) | CoinswapFaaS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfdfe9ab11d1c30bc1ffd6e2fe6eaa9660a3f8133`](./contracts/bsc-56/0xfdfe9ab11d1c30bc1ffd6e2fe6eaa9660a3f8133/) | CoinswapSaaS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa7ba3a3f2edde23706c0ef2de34b1300b2bbcea1`](./contracts/bsc-56/0xa7ba3a3f2edde23706c0ef2de34b1300b2bbcea1/) | CoinswapTestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29a888e301a9ff0f4420a115f61e6ad0750db9de`](./contracts/bsc-56/0x29a888e301a9ff0f4420a115f61e6ad0750db9de/) | CommunityReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ca94e1b35c0a726e5431f66dbecdd2253ca6cb1`](./contracts/bsc-56/0x5ca94e1b35c0a726e5431f66dbecdd2253ca6cb1/) | CommunityRewardBnb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0207f989db6427cd3f296a850664f9a6608ee8cb`](./contracts/bsc-56/0x0207f989db6427cd3f296a850664f9a6608ee8cb/) | CssReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3bc5798416c1122bcfd7cb0e055d50061f23850d`](./contracts/bsc-56/0x3bc5798416c1122bcfd7cb0e055d50061f23850d/) | CssToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1407673057f03a67c235e95b135110ca67596aff`](./contracts/bsc-56/0x1407673057f03a67c235e95b135110ca67596aff/) | MasterCSS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09b543f0aa96905d9ce689874b88505608f661f0`](./contracts/bsc-56/0x09b543f0aa96905d9ce689874b88505608f661f0/) | SpacePad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02db3acce010c8dd8125c451c369479cce2d7fa2`](./contracts/bsc-56/0x02db3acce010c8dd8125c451c369479cce2d7fa2/) | SpacePadFriends | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb83e4aee074d5898af4817e6129839c981390889`](./contracts/bsc-56/0xb83e4aee074d5898af4817e6129839c981390889/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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

- [19654] DL audit link

Fork inheritance lineage and inherited audits are included when available.
