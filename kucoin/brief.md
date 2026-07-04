# Agentic Audit Brief: KuCoin

## Project Overview

- Project: KuCoin (`kucoin`)
- Website: [https://www.kucoin.com](https://www.kucoin.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.334Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, bsc, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,329,463,509.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 3 project-authored contract(s) across 3 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | bsc | n/a | [`0x175ce6...69c9cc`](./contracts/bsc-56/0x175ce6204bfda2a509c7e9c786b74407f569c9cc/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x9fa3e9...4d26ba`](./contracts/ethereum-1/0x9fa3e93531c85d61fd76e80020d4565b134d26ba/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0x689fab...317ccf`](./contracts/ethereum-1/0x689fab0352b442f9d3cce68afbb348fcfa317ccf/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x17a303...cfc4a8`](./contracts/arbitrum-42161/0x17a30350771d02409046a683b18fe1c13ccfc4a8/) | ⚠️ Unaudited |

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
| ethereum | [`0x689fab...317ccf`](./contracts/ethereum-1/0x689fab0352b442f9d3cce68afbb348fcfa317ccf/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17a303...cfc4a8`](./contracts/arbitrum-42161/0x17a30350771d02409046a683b18fe1c13ccfc4a8/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
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
