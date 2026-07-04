# Agentic Audit Brief: DefiBox

## Project Overview

- Project: DefiBox (`defibox`)
- Website: [https://defibox.io](https://defibox.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.861Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $486,202.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

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
| BOX | unknown | bsc | n/a | [`0x067c54...70eebc`](./contracts/bsc-56/0x067c5427ac503fad52382607b18b46537570eebc/) | ⚠️ Unaudited |
| BoxswapFactory | unknown | bsc | n/a | [`0x72dee7...082463`](./contracts/bsc-56/0x72dee7f07d7c2e6a1a5ff52589f672b553082463/) | ⚠️ Unaudited |
| BoxswapRouter | unknown | bsc | n/a | [`0xfd0a50...425bf8`](./contracts/bsc-56/0xfd0a50d0350fa7a0cd233fd229baa6703f425bf8/) | ⚠️ Unaudited |
| DPRBridge | unknown | bsc | n/a | [`0x375223...4b9406`](./contracts/bsc-56/0x375223d6ed2b7e08bf7fc552d72eba403e4b9406/) | ⚠️ Unaudited |
| DPRStaking | unknown | bsc | n/a | [`0x0e3a78...285a9a`](./contracts/bsc-56/0x0e3a7828ec45530b009adb23dd6fb4d8f8285a9a/) | ⚠️ Unaudited |
| Token | unknown | bsc | n/a | [`0xa0a2ee...7e90a4`](./contracts/bsc-56/0xa0a2ee912caf7921eaabc866c6ef6fec8f7e90a4/) | ⚠️ Unaudited |

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
| bsc | [`0x067c54...70eebc`](./contracts/bsc-56/0x067c5427ac503fad52382607b18b46537570eebc/) | BOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72dee7...082463`](./contracts/bsc-56/0x72dee7f07d7c2e6a1a5ff52589f672b553082463/) | BoxswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd0a50...425bf8`](./contracts/bsc-56/0xfd0a50d0350fa7a0cd233fd229baa6703f425bf8/) | BoxswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x375223...4b9406`](./contracts/bsc-56/0x375223d6ed2b7e08bf7fc552d72eba403e4b9406/) | DPRBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e3a78...285a9a`](./contracts/bsc-56/0x0e3a7828ec45530b009adb23dd6fb4d8f8285a9a/) | DPRStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa0a2ee...7e90a4`](./contracts/bsc-56/0xa0a2ee912caf7921eaabc866c6ef6fec8f7e90a4/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
