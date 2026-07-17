# Agentic Audit Brief: Hodltree

## Project Overview

- Project: Hodltree (`hodltree`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.535Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum, polygon
- Contract surface: 8 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,774.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 8 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (baseimmutableadminupgradeabilityproxy, baseupgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | token | ethereum | n/a | [`0x028171bca77440897b824ca71d1c56cac55b68a3`](./contracts/ethereum-1/0x028171bca77440897b824ca71d1c56cac55b68a3/) | ⚠️ Unaudited |
| AToken | token | ethereum | n/a | [`0xbcca60bb61934080951369a648fb03df4f96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| AToken | token | polygon | n/a | 2 deployments: polygon [`0x1a13f4ca1d028320a707d99520abfefca3998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/); polygon `0x27f8d03b3a2196956ed754badc28d73be8830a6e` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba100000625a3754423978a60c9317c58a424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| ElasticPool | core_logic | ethereum | n/a | [`0x95142849d31eaa20b5b9ab746dff27ff400ce6bf`](./contracts/ethereum-1/0x95142849d31eaa20b5b9ab746dff27ff400ce6bf/) | ⚠️ Unaudited |
| ExchangeHUSDC | unknown | ethereum | n/a | [`0x87b46e49681e08e3addf8a90f6a1fb5183079033`](./contracts/ethereum-1/0x87b46e49681e08e3addf8a90f6a1fb5183079033/) | ⚠️ Unaudited |
| hUSDCToken | token | ethereum | n/a | [`0xf4775c5dd1f90f57dface0c27c29047f18d9b810`](./contracts/ethereum-1/0xf4775c5dd1f90f57dface0c27c29047f18d9b810/) | ⚠️ Unaudited |
| ReservePool | core_logic | ethereum | n/a | [`0xce596bf99d21e46fa91143c03d7a356682b67859`](./contracts/ethereum-1/0xce596bf99d21e46fa91143c03d7a356682b67859/) | ⚠️ Unaudited |

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
| [Certik.pdf](https://github.com/HodlTreeProtocol/stableFlashloan/blob/master/audits/Certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x028171bca77440897b824ca71d1c56cac55b68a3`](./contracts/ethereum-1/0x028171bca77440897b824ca71d1c56cac55b68a3/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcca60bb61934080951369a648fb03df4f96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a13f4ca1d028320a707d99520abfefca3998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95142849d31eaa20b5b9ab746dff27ff400ce6bf`](./contracts/ethereum-1/0x95142849d31eaa20b5b9ab746dff27ff400ce6bf/) | ElasticPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87b46e49681e08e3addf8a90f6a1fb5183079033`](./contracts/ethereum-1/0x87b46e49681e08e3addf8a90f6a1fb5183079033/) | ExchangeHUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4775c5dd1f90f57dface0c27c29047f18d9b810`](./contracts/ethereum-1/0xf4775c5dd1f90f57dface0c27c29047f18d9b810/) | hUSDCToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce596bf99d21e46fa91143c03d7a356682b67859`](./contracts/ethereum-1/0xce596bf99d21e46fa91143c03d7a356682b67859/) | ReservePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 1 |
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

- [13226] Certik.pdf

Fork inheritance lineage and inherited audits are included when available.
