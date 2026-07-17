# Agentic Audit Brief: Augury Finance

## Project Overview

- Project: Augury Finance (`augury-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:04.273Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $207,194.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 20 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (operators, withoperators). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirmailV1 | unknown | polygon | n/a | [`0x3c1a89729207a5d5ffe8cbfacce1826f92604197`](./contracts/polygon-137/0x3c1a89729207a5d5ffe8cbfacce1826f92604197/) | ⚠️ Unaudited |
| AugurDividendsV1_CollectFromBug | unknown | polygon | n/a | [`0x3d78d17cd6199f86c0efd93f8f7e4fb88961017e`](./contracts/polygon-137/0x3d78d17cd6199f86c0efd93f8f7e4fb88961017e/) | ⚠️ Unaudited |
| AugurDividendsV1a | unknown | polygon | n/a | [`0x17aa087a86e9c3881af3f1e0a517421f5d3a6744`](./contracts/polygon-137/0x17aa087a86e9c3881af3f1e0a517421f5d3a6744/) | ⚠️ Unaudited |
| AugurStaking | unknown | polygon | n/a | [`0x0149444a018d30edffc19960dc4eae2b6eb5cfab`](./contracts/polygon-137/0x0149444a018d30edffc19960dc4eae2b6eb5cfab/) | ⚠️ Unaudited |
| AuguryStateBasedDividendsV1 | unknown | polygon | n/a | [`0x070aef7a90bd7b4b3b43355c81c56011d5b2a238`](./contracts/polygon-137/0x070aef7a90bd7b4b3b43355c81c56011d5b2a238/) | ⚠️ Unaudited |
| AuguryStateRepositoryV1 | unknown | polygon | n/a | [`0x8709278f89d6fb589f1188f6b415d3edee88a2f6`](./contracts/polygon-137/0x8709278f89d6fb589f1188f6b415d3edee88a2f6/) | ⚠️ Unaudited |
| AuguryV1IFO | unknown | polygon | n/a | [`0xa2161090455ad57d9c96975dee2288011bb294fe`](./contracts/polygon-137/0xa2161090455ad57d9c96975dee2288011bb294fe/) | ⚠️ Unaudited |
| ComponentExtractor | unknown | polygon | n/a | [`0x1ae7a358506d32c6a51d5e30acf7dd693c951dec`](./contracts/polygon-137/0x1ae7a358506d32c6a51d5e30acf7dd693c951dec/) | ⚠️ Unaudited |
| DividendPeriod | unknown | polygon | n/a | [`0x4e89d422c6a4fb7066fe91232fa9873d1705dfad`](./contracts/polygon-137/0x4e89d422c6a4fb7066fe91232fa9873d1705dfad/) | ⚠️ Unaudited |
| DividendsV3 | unknown | polygon | n/a | [`0xc389bf59f74dade9a59084657edf6d6fb83602ab`](./contracts/polygon-137/0xc389bf59f74dade9a59084657edf6d6fb83602ab/) | ⚠️ Unaudited |
| GameNftV2 | unknown | polygon | n/a | [`0x6632294fad327c5d2b0fed494a5d79c96b204b26`](./contracts/polygon-137/0x6632294fad327c5d2b0fed494a5d79c96b204b26/) | ⚠️ Unaudited |
| GeneralStore | unknown | polygon | n/a | [`0x444bdc7541eb55d641a54860ddecf6a71da2144e`](./contracts/polygon-137/0x444bdc7541eb55d641a54860ddecf6a71da2144e/) | ⚠️ Unaudited |
| GloryERC20 | unknown | polygon | n/a | [`0x83553e4fa239c2f0b6622eb9f893bd872e35c750`](./contracts/polygon-137/0x83553e4fa239c2f0b6622eb9f893bd872e35c750/) | ⚠️ Unaudited |
| MasterAugur | unknown | polygon | n/a | [`0x6ad70613d14c34aa69e1604af91c39e0591a132e`](./contracts/polygon-137/0x6ad70613d14c34aa69e1604af91c39e0591a132e/) | ⚠️ Unaudited |
| Math | unknown | polygon | n/a | [`0x8442d4beabb47e99518c706b1a554f318d853977`](./contracts/polygon-137/0x8442d4beabb47e99518c706b1a554f318d853977/) | ⚠️ Unaudited |
| OmenStrategy | unknown | polygon | n/a | [`0x307f3e279ee518bc0363e3cf382954ed516a3319`](./contracts/polygon-137/0x307f3e279ee518bc0363e3cf382954ed516a3319/) | ⚠️ Unaudited |
| OmenToken | unknown | polygon | n/a | [`0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e`](./contracts/polygon-137/0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e/) | ⚠️ Unaudited |
| Treasury | unknown | polygon | n/a | [`0xd1d3dfbc2df52668ba2c5e09044743f5a5f9d80c`](./contracts/polygon-137/0xd1d3dfbc2df52668ba2c5e09044743f5a5f9d80c/) | ⚠️ Unaudited |
| UnlimitedCauldron | unknown | polygon | n/a | [`0x019c7a610d980d94e7f8ece79c0ed2ac43fe113a`](./contracts/polygon-137/0x019c7a610d980d94e7f8ece79c0ed2ac43fe113a/) | ⚠️ Unaudited |
| UnlimitedCauldronState | unknown | polygon | n/a | [`0x8d9b75f7a0abc679154bac9b2054f65c45877e26`](./contracts/polygon-137/0x8d9b75f7a0abc679154bac9b2054f65c45877e26/) | ⚠️ Unaudited |
| VaultChef | unknown | polygon | n/a | [`0x48f4598095394b8ee9233eba42d2595d067553e3`](./contracts/polygon-137/0x48f4598095394b8ee9233eba42d2595d067553e3/) | ⚠️ Unaudited |
| Watt | unknown | polygon | n/a | [`0x725a937a7b80d615719f66e79a245f3c7766c45b`](./contracts/polygon-137/0x725a937a7b80d615719f66e79a245f3c7766c45b/) | ⚠️ Unaudited |

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
| polygon | [`0x3c1a89729207a5d5ffe8cbfacce1826f92604197`](./contracts/polygon-137/0x3c1a89729207a5d5ffe8cbfacce1826f92604197/) | AirmailV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d78d17cd6199f86c0efd93f8f7e4fb88961017e`](./contracts/polygon-137/0x3d78d17cd6199f86c0efd93f8f7e4fb88961017e/) | AugurDividendsV1_CollectFromBug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x17aa087a86e9c3881af3f1e0a517421f5d3a6744`](./contracts/polygon-137/0x17aa087a86e9c3881af3f1e0a517421f5d3a6744/) | AugurDividendsV1a | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0149444a018d30edffc19960dc4eae2b6eb5cfab`](./contracts/polygon-137/0x0149444a018d30edffc19960dc4eae2b6eb5cfab/) | AugurStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x070aef7a90bd7b4b3b43355c81c56011d5b2a238`](./contracts/polygon-137/0x070aef7a90bd7b4b3b43355c81c56011d5b2a238/) | AuguryStateBasedDividendsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8709278f89d6fb589f1188f6b415d3edee88a2f6`](./contracts/polygon-137/0x8709278f89d6fb589f1188f6b415d3edee88a2f6/) | AuguryStateRepositoryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2161090455ad57d9c96975dee2288011bb294fe`](./contracts/polygon-137/0xa2161090455ad57d9c96975dee2288011bb294fe/) | AuguryV1IFO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ae7a358506d32c6a51d5e30acf7dd693c951dec`](./contracts/polygon-137/0x1ae7a358506d32c6a51d5e30acf7dd693c951dec/) | ComponentExtractor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4e89d422c6a4fb7066fe91232fa9873d1705dfad`](./contracts/polygon-137/0x4e89d422c6a4fb7066fe91232fa9873d1705dfad/) | DividendPeriod | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc389bf59f74dade9a59084657edf6d6fb83602ab`](./contracts/polygon-137/0xc389bf59f74dade9a59084657edf6d6fb83602ab/) | DividendsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6632294fad327c5d2b0fed494a5d79c96b204b26`](./contracts/polygon-137/0x6632294fad327c5d2b0fed494a5d79c96b204b26/) | GameNftV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x444bdc7541eb55d641a54860ddecf6a71da2144e`](./contracts/polygon-137/0x444bdc7541eb55d641a54860ddecf6a71da2144e/) | GeneralStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x83553e4fa239c2f0b6622eb9f893bd872e35c750`](./contracts/polygon-137/0x83553e4fa239c2f0b6622eb9f893bd872e35c750/) | GloryERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ad70613d14c34aa69e1604af91c39e0591a132e`](./contracts/polygon-137/0x6ad70613d14c34aa69e1604af91c39e0591a132e/) | MasterAugur | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8442d4beabb47e99518c706b1a554f318d853977`](./contracts/polygon-137/0x8442d4beabb47e99518c706b1a554f318d853977/) | Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x307f3e279ee518bc0363e3cf382954ed516a3319`](./contracts/polygon-137/0x307f3e279ee518bc0363e3cf382954ed516a3319/) | OmenStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e`](./contracts/polygon-137/0x76e63a3e7ba1e2e61d3da86a87479f983de89a7e/) | OmenToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd1d3dfbc2df52668ba2c5e09044743f5a5f9d80c`](./contracts/polygon-137/0xd1d3dfbc2df52668ba2c5e09044743f5a5f9d80c/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x019c7a610d980d94e7f8ece79c0ed2ac43fe113a`](./contracts/polygon-137/0x019c7a610d980d94e7f8ece79c0ed2ac43fe113a/) | UnlimitedCauldron | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8d9b75f7a0abc679154bac9b2054f65c45877e26`](./contracts/polygon-137/0x8d9b75f7a0abc679154bac9b2054f65c45877e26/) | UnlimitedCauldronState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x48f4598095394b8ee9233eba42d2595d067553e3`](./contracts/polygon-137/0x48f4598095394b8ee9233eba42d2595d067553e3/) | VaultChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x725a937a7b80d615719f66e79a245f3c7766c45b`](./contracts/polygon-137/0x725a937a7b80d615719f66e79a245f3c7766c45b/) | Watt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
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
