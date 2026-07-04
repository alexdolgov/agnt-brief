# Agentic Audit Brief: AmpleSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 7.7% over 90 days

## Project Overview

- Project: AmpleSwap (`ampleswap`)
- Website: [https://ampleswap.com](https://ampleswap.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:00.697Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc
- Contract surface: 24 unique implementations (45 raw deployments)
- DeFi Llama TVL: $14,965.53
- On-chain TVL (included contracts): $7,290.93
- TVL by chain: Bsc $7,290.93

## Project Description

Dexs. Structurally: 24 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (bep20, pancakeerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 45 (40 live, 5 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/18 (27.8%)
- Deployed-live implementations: 19 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/19
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 24
- Raw deployments: 45
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 26.3% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmpleToken | token | bsc | n/a | 5 deployments: bsc [`0x198579...e9960d`](./contracts/bsc-56/0x19857937848c02afbde8b526610f0f2f89e9960d/); bsc `0x32ab93...4fc31f`; bsc `0x335f6e...9b2515`; bsc `0x62bcd3...54da0f`; bsc `0xdbd24c...6b2bf1` | ✅ Audited |
| AmpleFactory | registry | bsc | n/a | [`0x381fef...3e8f73`](./contracts/bsc-56/0x381fefadab5466bff0e8e96842e8e76a143e8f73/) | ✅ Audited |
| AmpleRouter | adapter | bsc | n/a | [`0x7f1f84...7ee926`](./contracts/bsc-56/0x7f1f846bc6b252bdee65f61491a879f0ad7ee926/) | ✅ Audited |
| MasterChef | unknown | bsc | n/a | 8 deployments: bsc [`0x0b0e33...8713e3`](./contracts/bsc-56/0x0b0e33910ee43a7420be47a9ab60c7c9828713e3/); bsc `0x841046...6096c9`; bsc `0xca26e5...6a7d93`; bsc `0xd1443e...f9e4bd`; bsc `0xd87f7e...19df1f`; bsc `0xeb642d...d42f82`; bsc `0xf1c73a...2c062e`; bsc `0xf59876...cca272` | ✅ Audited |
| SyrupBar | unknown | bsc | n/a | 7 deployments: bsc [`0x01b71e...01f7f6`](./contracts/bsc-56/0x01b71e45bc617205ded91444b1af0a85f801f7f6/); bsc `0x164951...04fc04`; bsc `0x33ebcb...cd50a0`; bsc `0x7798e5...760081`; bsc `0x984b31...808bc7`; bsc `0x9cd68f...adef37`; bsc `0xa09b46...dcf641` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | bsc | n/a | [`0x01dc97...f12983`](./contracts/bsc-56/0x01dc97c89df7d3c616a696dd53f600ab3ff12983/) | ⚠️ Unaudited |
| AmpleSwapLottery | unknown | bsc | n/a | [`0x7ea9b4...69ca10`](./contracts/bsc-56/0x7ea9b4d1d87611b17f90a3543c0a2d0b4269ca10/) | ⚠️ Unaudited |
| AmpleVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x946cb8...a7e494`](./contracts/bsc-56/0x946cb8b809a691433518c99bedd11357daa7e494/); bsc `0xfc4f06...e2c6e4` | ⚠️ Unaudited |
| AmplToken | token | bsc | n/a | [`0xb04b2b...42c378`](./contracts/bsc-56/0xb04b2b3bc79bbaf55984344a472b34fa1142c378/) | ⚠️ Unaudited |
| AutoAmplePool | core_logic | bsc | n/a | [`0x33f8e1...d4b313`](./contracts/bsc-56/0x33f8e19797acd37e2be3592aa0956692e0d4b313/) | ⚠️ Unaudited |
| BancorConverterRegistry | registry | bsc | n/a | [`0xf0a4b4...f6dabd`](./contracts/bsc-56/0xf0a4b40baf4d5a5a01e58141397162a996f6dabd/) | ⚠️ Unaudited |
| DeployTokens | token | bsc | n/a | [`0x15e705...832403`](./contracts/bsc-56/0x15e705a96e3d1576dad98347ad7a3364fa832403/) | ⚠️ Unaudited |
| MasterChefTimelock | governance | bsc | n/a | [`0x9447d3...494f1b`](./contracts/bsc-56/0x9447d3b427c5ca8a4ca0ee6843bce9e9e3494f1b/) | ⚠️ Unaudited |
| PDA | unknown | bsc | n/a | [`0x7736bd...513405`](./contracts/bsc-56/0x7736bd4a0a9cf18af91d1bbf0daf64bd58513405/) | ⚠️ Unaudited |
| PlanetToken | token | bsc | n/a | [`0x232ba9...60e5fe`](./contracts/bsc-56/0x232ba9f3b3643ab28d28ed7ee18600708d60e5fe/) | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | bsc | n/a | [`0x6becb7...444742`](./contracts/bsc-56/0x6becb7da74fcae832ae4c3362e5a482132444742/) | ⚠️ Unaudited |
| SmartChefFactory | registry | bsc | n/a | 3 deployments: bsc [`0x47f149...215723`](./contracts/bsc-56/0x47f149fc0a880ae6d0a39a40faf37be972215723/); bsc `0x7abd63...417fac`; bsc `0xe20880...8017c1` | ⚠️ Unaudited |
| TestToken | token | bsc | n/a | [`0xa2dfec...6fac67`](./contracts/bsc-56/0xa2dfecb879af3ba5b5819bac752fa52fbb6fac67/) | ⚠️ Unaudited |
| TokenLocker | token | bsc | n/a | 2 deployments: bsc [`0x52f218...a46c65`](./contracts/bsc-56/0x52f218c86e6cacdaf47e011b64a2a0b585a46c65/); bsc `0x65220a...cae4eb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x22b2ad...338020` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x949d1a...98b8e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd41866...150f47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd80288...772100` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf18bc4...87258a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-by-etherauthority.pdf](https://ampleswap.com/audit-by-etherauthority.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7ea9b4...69ca10`](./contracts/bsc-56/0x7ea9b4d1d87611b17f90a3543c0a2d0b4269ca10/) | AmpleSwapLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x946cb8...a7e494`](./contracts/bsc-56/0x946cb8b809a691433518c99bedd11357daa7e494/) | AmpleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb04b2b...42c378`](./contracts/bsc-56/0xb04b2b3bc79bbaf55984344a472b34fa1142c378/) | AmplToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x33f8e1...d4b313`](./contracts/bsc-56/0x33f8e19797acd37e2be3592aa0956692e0d4b313/) | AutoAmplePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15e705...832403`](./contracts/bsc-56/0x15e705a96e3d1576dad98347ad7a3364fa832403/) | DeployTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9447d3...494f1b`](./contracts/bsc-56/0x9447d3b427c5ca8a4ca0ee6843bce9e9e3494f1b/) | MasterChefTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x232ba9...60e5fe`](./contracts/bsc-56/0x232ba9f3b3643ab28d28ed7ee18600708d60e5fe/) | PlanetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6becb7...444742`](./contracts/bsc-56/0x6becb7da74fcae832ae4c3362e5a482132444742/) | RandomNumberGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47f149...215723`](./contracts/bsc-56/0x47f149fc0a880ae6d0a39a40faf37be972215723/) | SmartChefFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa2dfec...6fac67`](./contracts/bsc-56/0xa2dfecb879af3ba5b5819bac752fa52fbb6fac67/) | TestToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x52f218...a46c65`](./contracts/bsc-56/0x52f218c86e6cacdaf47e011b64a2a0b585a46c65/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
