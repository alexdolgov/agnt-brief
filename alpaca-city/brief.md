# Agentic Audit Brief: alpaca-city

## Project Overview

- Project: alpaca-city (`alpaca-city`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:59.808Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 13 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 2 ERC1155 multi-tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (erc1155receiver, erc165, cryptoalpacaenergylistener). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlpacaCore | unknown | ethereum | n/a | [`0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27`](./contracts/ethereum-1/0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27/) | ⚠️ Unaudited |
| AlpacaFarm | unknown | ethereum | n/a | [`0x217a7d0ac6573b0f013e12f92b6d5b250fa15d97`](./contracts/ethereum-1/0x217a7d0ac6573b0f013e12f92b6d5b250fa15d97/) | ⚠️ Unaudited |
| AlpacaPresaleV2 | unknown | ethereum | n/a | [`0x0511926471cdcf840c8145c1fbcbb0a8c495c1a9`](./contracts/ethereum-1/0x0511926471cdcf840c8145c1fbcbb0a8c495c1a9/) | ⚠️ Unaudited |
| AlpacaRecycleBox | unknown | ethereum | n/a | [`0xe179b0d51a88915bb35b86c072081452d91d5687`](./contracts/ethereum-1/0xe179b0d51a88915bb35b86c072081452d91d5687/) | ⚠️ Unaudited |
| AlpacaSquad | unknown | ethereum | n/a | [`0xe23a7741a5e9500f7a1de4b246d1f7f29f81605f`](./contracts/ethereum-1/0xe23a7741a5e9500f7a1de4b246d1f7f29f81605f/) | ⚠️ Unaudited |
| AlpacaWearable | unknown | ethereum | n/a | [`0xdf003a97fa6b3a14bd8c2ed4c331a9187e127ad2`](./contracts/ethereum-1/0xdf003a97fa6b3a14bd8c2ed4c331a9187e127ad2/) | ⚠️ Unaudited |
| AlpaFireChamber | unknown | ethereum | n/a | [`0x741cee6e4bd99df866ab0dd0d0c0b5ed7033344a`](./contracts/ethereum-1/0x741cee6e4bd99df866ab0dd0d0c0b5ed7033344a/) | ⚠️ Unaudited |
| AlpaReward | unknown | ethereum | n/a | [`0xdb48ec20fcce2cc730f3b3bceafa456e54ceb98d`](./contracts/ethereum-1/0xdb48ec20fcce2cc730f3b3bceafa456e54ceb98d/) | ⚠️ Unaudited |
| AlpaSupplier | unknown | ethereum | n/a | [`0x14285e0c66379c0af1b1e8e9092f67a66ccf5cd7`](./contracts/ethereum-1/0x14285e0c66379c0af1b1e8e9092f67a66ccf5cd7/) | ⚠️ Unaudited |
| AlpaToken | unknown | ethereum | n/a | [`0x7ca4408137eb639570f8e647d9bd7b7e8717514a`](./contracts/ethereum-1/0x7ca4408137eb639570f8e647d9bd7b7e8717514a/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x441f9e2c89a343cefb390a8954b3b562f8f91eca`](./contracts/ethereum-1/0x441f9e2c89a343cefb390a8954b3b562f8f91eca/) | ⚠️ Unaudited |
| WoolReward | unknown | ethereum | n/a | [`0x232f030747008d3ba5d51526f5966d8985218ff0`](./contracts/ethereum-1/0x232f030747008d3ba5d51526f5966d8985218ff0/) | ⚠️ Unaudited |
| WoolToken | unknown | ethereum | n/a | [`0x0fc998c903dbcbe1d0826521b3a44dd23ba17f13`](./contracts/ethereum-1/0x0fc998c903dbcbe1d0826521b3a44dd23ba17f13/) | ⚠️ Unaudited |

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
| ethereum | [`0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27`](./contracts/ethereum-1/0xc7e5e9434f4a71e6db978bd65b4d61d3593e5f27/) | AlpacaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x217a7d0ac6573b0f013e12f92b6d5b250fa15d97`](./contracts/ethereum-1/0x217a7d0ac6573b0f013e12f92b6d5b250fa15d97/) | AlpacaFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0511926471cdcf840c8145c1fbcbb0a8c495c1a9`](./contracts/ethereum-1/0x0511926471cdcf840c8145c1fbcbb0a8c495c1a9/) | AlpacaPresaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe179b0d51a88915bb35b86c072081452d91d5687`](./contracts/ethereum-1/0xe179b0d51a88915bb35b86c072081452d91d5687/) | AlpacaRecycleBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe23a7741a5e9500f7a1de4b246d1f7f29f81605f`](./contracts/ethereum-1/0xe23a7741a5e9500f7a1de4b246d1f7f29f81605f/) | AlpacaSquad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf003a97fa6b3a14bd8c2ed4c331a9187e127ad2`](./contracts/ethereum-1/0xdf003a97fa6b3a14bd8c2ed4c331a9187e127ad2/) | AlpacaWearable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x741cee6e4bd99df866ab0dd0d0c0b5ed7033344a`](./contracts/ethereum-1/0x741cee6e4bd99df866ab0dd0d0c0b5ed7033344a/) | AlpaFireChamber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb48ec20fcce2cc730f3b3bceafa456e54ceb98d`](./contracts/ethereum-1/0xdb48ec20fcce2cc730f3b3bceafa456e54ceb98d/) | AlpaReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14285e0c66379c0af1b1e8e9092f67a66ccf5cd7`](./contracts/ethereum-1/0x14285e0c66379c0af1b1e8e9092f67a66ccf5cd7/) | AlpaSupplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ca4408137eb639570f8e647d9bd7b7e8717514a`](./contracts/ethereum-1/0x7ca4408137eb639570f8e647d9bd7b7e8717514a/) | AlpaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x232f030747008d3ba5d51526f5966d8985218ff0`](./contracts/ethereum-1/0x232f030747008d3ba5d51526f5966d8985218ff0/) | WoolReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc998c903dbcbe1d0826521b3a44dd23ba17f13`](./contracts/ethereum-1/0x0fc998c903dbcbe1d0826521b3a44dd23ba17f13/) | WoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
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
