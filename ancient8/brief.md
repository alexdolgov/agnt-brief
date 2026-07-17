# Agentic Audit Brief: Ancient8

## Project Overview

- Project: Ancient8 (`ancient8`)
- Website: [https://ancient8.gg/](https://ancient8.gg/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:00.712Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $170,248.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 12 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x15a52fed1c448028a240b603dd93f2697e12dc82`](./contracts/ethereum-1/0x15a52fed1c448028a240b603dd93f2697e12dc82/) | ⚠️ Unaudited |
| Ancient8 | unknown | ethereum | n/a | [`0x3e5a19c91266ad8ce2477b91585d1856b84062df`](./contracts/ethereum-1/0x3e5a19c91266ad8ce2477b91585d1856b84062df/) | ⚠️ Unaudited |
| ERC20 | unknown | ethereum | n/a | [`0xf2e04d727bb448082e9f2f27f7b64be9f438f302`](./contracts/ethereum-1/0xf2e04d727bb448082e9f2f27f7b64be9f438f302/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x012c341506ee1939e56084f43ae5dbce224ce2af`](./contracts/ethereum-1/0x012c341506ee1939e56084f43ae5dbce224ce2af/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x132b3456300332d488f946b818eb9512931ebcaa`](./contracts/ethereum-1/0x132b3456300332d488f946b818eb9512931ebcaa/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x12d4e64e1b46d27a00fe392653a894c1dd36fb80`](./contracts/ethereum-1/0x12d4e64e1b46d27a00fe392653a894c1dd36fb80/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x1f61619e8c228fb67204cd157a3e50aa6690fbf6`](./contracts/ethereum-1/0x1f61619e8c228fb67204cd157a3e50aa6690fbf6/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xf2b7b677d14f4f570d084d7d615254f984e7089e`](./contracts/ethereum-1/0xf2b7b677d14f4f570d084d7d615254f984e7089e/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x9fc6a608b45c6f129650c26a34bbe5d26959e75e`](./contracts/ethereum-1/0x9fc6a608b45c6f129650c26a34bbe5d26959e75e/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x639f2aece398aa76b07e59ef6abe2cfe32bacb68`](./contracts/ethereum-1/0x639f2aece398aa76b07e59ef6abe2cfe32bacb68/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x75a223fb459461b9fa61dd25109ea05522b4b492`](./contracts/ethereum-1/0x75a223fb459461b9fa61dd25109ea05522b4b492/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec`](./contracts/ethereum-1/0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec/) | ⚠️ Unaudited |

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
| ethereum | [`0x15a52fed1c448028a240b603dd93f2697e12dc82`](./contracts/ethereum-1/0x15a52fed1c448028a240b603dd93f2697e12dc82/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e5a19c91266ad8ce2477b91585d1856b84062df`](./contracts/ethereum-1/0x3e5a19c91266ad8ce2477b91585d1856b84062df/) | Ancient8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2e04d727bb448082e9f2f27f7b64be9f438f302`](./contracts/ethereum-1/0xf2e04d727bb448082e9f2f27f7b64be9f438f302/) | ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x012c341506ee1939e56084f43ae5dbce224ce2af`](./contracts/ethereum-1/0x012c341506ee1939e56084f43ae5dbce224ce2af/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x132b3456300332d488f946b818eb9512931ebcaa`](./contracts/ethereum-1/0x132b3456300332d488f946b818eb9512931ebcaa/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12d4e64e1b46d27a00fe392653a894c1dd36fb80`](./contracts/ethereum-1/0x12d4e64e1b46d27a00fe392653a894c1dd36fb80/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f61619e8c228fb67204cd157a3e50aa6690fbf6`](./contracts/ethereum-1/0x1f61619e8c228fb67204cd157a3e50aa6690fbf6/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2b7b677d14f4f570d084d7d615254f984e7089e`](./contracts/ethereum-1/0xf2b7b677d14f4f570d084d7d615254f984e7089e/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fc6a608b45c6f129650c26a34bbe5d26959e75e`](./contracts/ethereum-1/0x9fc6a608b45c6f129650c26a34bbe5d26959e75e/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x639f2aece398aa76b07e59ef6abe2cfe32bacb68`](./contracts/ethereum-1/0x639f2aece398aa76b07e59ef6abe2cfe32bacb68/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec`](./contracts/ethereum-1/0x0b4cfc49acc656ce6d03cb0794860da92be3e8ec/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
