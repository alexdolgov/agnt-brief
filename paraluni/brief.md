# Agentic Audit Brief: Paraluni

## Project Overview

- Project: Paraluni (`paraluni`)
- Website: [https://paraluni.org](https://paraluni.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.959Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $340,439.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (paraproxyadminstorage, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/9 (11.1%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 11.1% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ParaRouter | unknown | bsc | n/a | [`0x48bb5f07e78f32ac7039366533d620c72c389797`](./contracts/bsc-56/0x48bb5f07e78f32ac7039366533d620c72c389797/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirDrop | unknown | bsc | n/a | [`0xf50adb06c8a479cbad42ed115dbc06976ac1ba60`](./contracts/bsc-56/0xf50adb06c8a479cbad42ed115dbc06976ac1ba60/) | ⚠️ Unaudited |
| FeeDistributor | unknown | bsc | n/a | [`0x49a6fd247022e073acd740225304270274ba3075`](./contracts/bsc-56/0x49a6fd247022e073acd740225304270274ba3075/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | bsc | n/a | [`0x55dd249e2cf23adc885e19248d711ccba4161743`](./contracts/bsc-56/0x55dd249e2cf23adc885e19248d711ccba4161743/) | ⚠️ Unaudited |
| ParaProxy | unknown | bsc | n/a | [`0x633fa755a83b015cccdc451f82c57ea0bd32b4b4`](./contracts/bsc-56/0x633fa755a83b015cccdc451f82c57ea0bd32b4b4/) | ⚠️ Unaudited |
| ParaRouterPeriphery | unknown | bsc | n/a | [`0x7958b0ee6a42b6ad8be40b3db6aa4dc72edb886b`](./contracts/bsc-56/0x7958b0ee6a42b6ad8be40b3db6aa4dc72edb886b/) | ⚠️ Unaudited |
| ParaToken | unknown | bsc | n/a | [`0x43feaca246392c23ee5a0db618fcd81a74b91726`](./contracts/bsc-56/0x43feaca246392c23ee5a0db618fcd81a74b91726/) | ⚠️ Unaudited |
| proxyTo | unknown | bsc | n/a | [`0xe1d3b7ecf15bb20bc2a40e7a402f67eb9f2bcaed`](./contracts/bsc-56/0xe1d3b7ecf15bb20bc2a40e7a402f67eb9f2bcaed/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xc19ecae6348b07014fdba912fa53f23f4798969f`](./contracts/bsc-56/0xc19ecae6348b07014fdba912fa53f23f4798969f/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Paraluni-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Paraluni-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xf50adb06c8a479cbad42ed115dbc06976ac1ba60`](./contracts/bsc-56/0xf50adb06c8a479cbad42ed115dbc06976ac1ba60/) | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x49a6fd247022e073acd740225304270274ba3075`](./contracts/bsc-56/0x49a6fd247022e073acd740225304270274ba3075/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55dd249e2cf23adc885e19248d711ccba4161743`](./contracts/bsc-56/0x55dd249e2cf23adc885e19248d711ccba4161743/) | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x633fa755a83b015cccdc451f82c57ea0bd32b4b4`](./contracts/bsc-56/0x633fa755a83b015cccdc451f82c57ea0bd32b4b4/) | ParaProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7958b0ee6a42b6ad8be40b3db6aa4dc72edb886b`](./contracts/bsc-56/0x7958b0ee6a42b6ad8be40b3db6aa4dc72edb886b/) | ParaRouterPeriphery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43feaca246392c23ee5a0db618fcd81a74b91726`](./contracts/bsc-56/0x43feaca246392c23ee5a0db618fcd81a74b91726/) | ParaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe1d3b7ecf15bb20bc2a40e7a402f67eb9f2bcaed`](./contracts/bsc-56/0xe1d3b7ecf15bb20bc2a40e7a402f67eb9f2bcaed/) | proxyTo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc19ecae6348b07014fdba912fa53f23f4798969f`](./contracts/bsc-56/0xc19ecae6348b07014fdba912fa53f23f4798969f/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
