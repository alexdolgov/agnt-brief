# Agentic Audit Brief: Bundles

## Project Overview

- Project: Bundles (`bundles`)
- Website: [https://bundles.fi/](https://bundles.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.962Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $583,104.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 6 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BundlesToken | unknown | ethereum | n/a | [`0x695f77...b4ba86`](./contracts/ethereum-1/0x695f775551fb0d28b64101c9507c06f334b4ba86/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x661f8b...49bf19`](./contracts/ethereum-1/0x661f8b1ef3d24e99c461e0523fd441ed8d49bf19/) | ⚠️ Unaudited |
| OraclePair | unknown | ethereum | n/a | [`0x9dd78e...070ceb`](./contracts/ethereum-1/0x9dd78ea2b7a92b6cb5d4a495dac34f8641070ceb/) | ⚠️ Unaudited |
| Position | unknown | ethereum | n/a | [`0xc2b84f...a28a8c`](./contracts/ethereum-1/0xc2b84f1f3b0b56c26a15c84ae3191cf487a28a8c/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | [`0x1cc22d...ca03ea`](./contracts/ethereum-1/0x1cc22db69aa3b4f05098f1acee6cbdfd65ca03ea/) | ⚠️ Unaudited |
| SwapFactory | unknown | ethereum | n/a | [`0xacff9e...62e8d2`](./contracts/ethereum-1/0xacff9eee0a5522000e7141b77107359a6462e8d2/) | ⚠️ Unaudited |

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
| ethereum | [`0x695f77...b4ba86`](./contracts/ethereum-1/0x695f775551fb0d28b64101c9507c06f334b4ba86/) | BundlesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x661f8b...49bf19`](./contracts/ethereum-1/0x661f8b1ef3d24e99c461e0523fd441ed8d49bf19/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dd78e...070ceb`](./contracts/ethereum-1/0x9dd78ea2b7a92b6cb5d4a495dac34f8641070ceb/) | OraclePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2b84f...a28a8c`](./contracts/ethereum-1/0xc2b84f1f3b0b56c26a15c84ae3191cf487a28a8c/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc22d...ca03ea`](./contracts/ethereum-1/0x1cc22db69aa3b4f05098f1acee6cbdfd65ca03ea/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacff9e...62e8d2`](./contracts/ethereum-1/0xacff9eee0a5522000e7141b77107359a6462e8d2/) | SwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
