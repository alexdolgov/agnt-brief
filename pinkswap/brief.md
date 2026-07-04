# Agentic Audit Brief: PinkSwap

## Project Overview

- Project: PinkSwap (`pinkswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.176Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $395,152.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 7 contract(s).

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | bsc | n/a | [`0xe98167...80c595`](./contracts/bsc-56/0xe981676633dcf0256aa512f4923a7e8da180c595/) | ⚠️ Unaudited |
| PinkSwapAirdrop | unknown | bsc | n/a | [`0x726d61...255c54`](./contracts/bsc-56/0x726d61af7c4a9a2b5dcd6a0a1f676fa582255c54/) | ⚠️ Unaudited |
| PinkswapFactory | unknown | bsc | n/a | [`0x4fd09a...590daf`](./contracts/bsc-56/0x4fd09a7086aa26ec4a18f9c5192edbd578590daf/) | ⚠️ Unaudited |
| PinkswapLocker | unknown | bsc | n/a | [`0xd9a679...36c7ce`](./contracts/bsc-56/0xd9a6797bbdab3ddda9722fa124b4aa758836c7ce/) | ⚠️ Unaudited |
| PinkswapRouter | unknown | bsc | n/a | [`0x319ef6...0fa3ac`](./contracts/bsc-56/0x319ef69a98c8e8aab36aea561daba0bf3d0fa3ac/) | ⚠️ Unaudited |
| PinkSwapToken | unknown | bsc | n/a | [`0x702b3f...21125d`](./contracts/bsc-56/0x702b3f41772e321aaccdea91e1fcef682d21125d/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xa85794...068863`](./contracts/bsc-56/0xa857941ae810e384185135cf5966abfe5f068863/) | ⚠️ Unaudited |

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
| bsc | [`0xe98167...80c595`](./contracts/bsc-56/0xe981676633dcf0256aa512f4923a7e8da180c595/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x726d61...255c54`](./contracts/bsc-56/0x726d61af7c4a9a2b5dcd6a0a1f676fa582255c54/) | PinkSwapAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4fd09a...590daf`](./contracts/bsc-56/0x4fd09a7086aa26ec4a18f9c5192edbd578590daf/) | PinkswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd9a679...36c7ce`](./contracts/bsc-56/0xd9a6797bbdab3ddda9722fa124b4aa758836c7ce/) | PinkswapLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x319ef6...0fa3ac`](./contracts/bsc-56/0x319ef69a98c8e8aab36aea561daba0bf3d0fa3ac/) | PinkswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x702b3f...21125d`](./contracts/bsc-56/0x702b3f41772e321aaccdea91e1fcef682d21125d/) | PinkSwapToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa85794...068863`](./contracts/bsc-56/0xa857941ae810e384185135cf5966abfe5f068863/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
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
