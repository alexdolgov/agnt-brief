# Agentic Audit Brief: mind-network

## Project Overview

- Project: mind-network (`mind-network`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.096Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 11 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlackList | unknown | bsc | n/a | [`0x27dd91...4e9dcc`](./contracts/bsc-56/0x27dd917bf7b6a2360e8bc662acd5123d574e9dcc/) | ⚠️ Unaudited |
| FHE | unknown | ethereum | n/a | [`0xd55c9f...62727e`](./contracts/ethereum-1/0xd55c9fb62e176a8eb6968f32958fefdd0962727e/) | ⚠️ Unaudited |
| MToken | unknown | bsc | n/a | [`0x6e5c1c...d1d879`](./contracts/bsc-56/0x6e5c1cd51c061fef16594dbf5a88d11034d1d879/) | ⚠️ Unaudited |
| SAClientERC20 | unknown | bsc | n/a | [`0xb40078...f2bc15`](./contracts/bsc-56/0xb40078c3871dcf6757e92f5369019fa20bf2bc15/) | ⚠️ Unaudited |
| SAPBridge | unknown | bsc | n/a | [`0xcc91fd...9ff82c`](./contracts/bsc-56/0xcc91fdb993410444e88207a1b9d0ef08da9ff82c/) | ⚠️ Unaudited |
| SAPBridgeReceiver | unknown | bsc | n/a | [`0x94c7fe...91e02a`](./contracts/bsc-56/0x94c7fe6eddbc55c2ce55a2f9bdd4f6f63f91e02a/) | ⚠️ Unaudited |
| Strategy | unknown | bsc | n/a | [`0x0465ec...b4f159`](./contracts/bsc-56/0x0465ecdd30adb53898b6626cf056cba3eab4f159/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x5550c8...4b5c7e`](./contracts/bsc-56/0x5550c8c92a0a6ad56101444724556db10b4b5c7e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0085b6...21818c`](./contracts/bsc-56/0x0085b62511a8d39ecdca6eacc5bc0ede3821818c/) | ⚠️ Unaudited |
| UpgradeTest | unknown | bsc | n/a | [`0x1fa591...422b0a`](./contracts/bsc-56/0x1fa591f0c58103532347aeb10e69f8014c422b0a/) | ⚠️ Unaudited |
| Vesting | unknown | bsc | n/a | [`0x39231b...2edcc2`](./contracts/bsc-56/0x39231ba552b6145cd466801d4cee6793ab2edcc2/) | ⚠️ Unaudited |

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
| bsc | [`0x27dd91...4e9dcc`](./contracts/bsc-56/0x27dd917bf7b6a2360e8bc662acd5123d574e9dcc/) | BlackList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd55c9f...62727e`](./contracts/ethereum-1/0xd55c9fb62e176a8eb6968f32958fefdd0962727e/) | FHE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e5c1c...d1d879`](./contracts/bsc-56/0x6e5c1cd51c061fef16594dbf5a88d11034d1d879/) | MToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb40078...f2bc15`](./contracts/bsc-56/0xb40078c3871dcf6757e92f5369019fa20bf2bc15/) | SAClientERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcc91fd...9ff82c`](./contracts/bsc-56/0xcc91fdb993410444e88207a1b9d0ef08da9ff82c/) | SAPBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x94c7fe...91e02a`](./contracts/bsc-56/0x94c7fe6eddbc55c2ce55a2f9bdd4f6f63f91e02a/) | SAPBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0465ec...b4f159`](./contracts/bsc-56/0x0465ecdd30adb53898b6626cf056cba3eab4f159/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5550c8...4b5c7e`](./contracts/bsc-56/0x5550c8c92a0a6ad56101444724556db10b4b5c7e/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa591...422b0a`](./contracts/bsc-56/0x1fa591f0c58103532347aeb10e69f8014c422b0a/) | UpgradeTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x39231b...2edcc2`](./contracts/bsc-56/0x39231ba552b6145cd466801d4cee6793ab2edcc2/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
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
