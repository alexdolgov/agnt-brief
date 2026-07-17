# Agentic Audit Brief: k9-finance-dao

## Project Overview

- Project: k9-finance-dao (`k9-finance-dao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:27.841Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
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
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| BridgeETH | unknown | ethereum | n/a | [`0x21a1405b9f8a1a07befd1bd39af1785a10c1bff0`](./contracts/ethereum-1/0x21a1405b9f8a1a07befd1bd39af1785a10c1bff0/) | ⚠️ Unaudited |
| InstantPool | unknown | ethereum | n/a | [`0x34def2023a26b5ae3aaabbc29cd1a3f1e4ff68b2`](./contracts/ethereum-1/0x34def2023a26b5ae3aaabbc29cd1a3f1e4ff68b2/) | ⚠️ Unaudited |
| KnBONE | unknown | ethereum | n/a | [`0x3358fca51d7c0408750fbbe7777012e0b67c027f`](./contracts/ethereum-1/0x3358fca51d7c0408750fbbe7777012e0b67c027f/) | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0x35bf25230ed5efa65c3d9c0f7f1a5323a8f26ca5`](./contracts/ethereum-1/0x35bf25230ed5efa65c3d9c0f7f1a5323a8f26ca5/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x98e6eb0874f35bff6a6bbf66ab8aba24b95e09e7`](./contracts/ethereum-1/0x98e6eb0874f35bff6a6bbf66ab8aba24b95e09e7/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x91fbb2503ac69702061f1ac6885759fc853e6eae`](./contracts/ethereum-1/0x91fbb2503ac69702061f1ac6885759fc853e6eae/) | ⚠️ Unaudited |
| UnstBONE | unknown | ethereum | n/a | [`0xe9f0954974c1cf68f7ee9b7fc217e6371dbeb1b5`](./contracts/ethereum-1/0xe9f0954974c1cf68f7ee9b7fc217e6371dbeb1b5/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0x7b488c9c2244ffef2b7f28b9c09eacd01247130a`](./contracts/ethereum-1/0x7b488c9c2244ffef2b7f28b9c09eacd01247130a/) | ⚠️ Unaudited |

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
| [Audits](https://docs.k9finance.com/security/audits.html) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x21a1405b9f8a1a07befd1bd39af1785a10c1bff0`](./contracts/ethereum-1/0x21a1405b9f8a1a07befd1bd39af1785a10c1bff0/) | BridgeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34def2023a26b5ae3aaabbc29cd1a3f1e4ff68b2`](./contracts/ethereum-1/0x34def2023a26b5ae3aaabbc29cd1a3f1e4ff68b2/) | InstantPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3358fca51d7c0408750fbbe7777012e0b67c027f`](./contracts/ethereum-1/0x3358fca51d7c0408750fbbe7777012e0b67c027f/) | KnBONE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35bf25230ed5efa65c3d9c0f7f1a5323a8f26ca5`](./contracts/ethereum-1/0x35bf25230ed5efa65c3d9c0f7f1a5323a8f26ca5/) | NodeOperatorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91fbb2503ac69702061f1ac6885759fc853e6eae`](./contracts/ethereum-1/0x91fbb2503ac69702061f1ac6885759fc853e6eae/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9f0954974c1cf68f7ee9b7fc217e6371dbeb1b5`](./contracts/ethereum-1/0xe9f0954974c1cf68f7ee9b7fc217e6371dbeb1b5/) | UnstBONE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b488c9c2244ffef2b7f28b9c09eacd01247130a`](./contracts/ethereum-1/0x7b488c9c2244ffef2b7f28b9c09eacd01247130a/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20602] Audits

Fork inheritance lineage and inherited audits are included when available.
