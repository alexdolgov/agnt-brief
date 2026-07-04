# Agentic Audit Brief: SX Rollup Bridge

## Project Overview

- Project: SX Rollup Bridge (`sx-rollup-bridge`)
- Website: [https://sx.bet/wallet/bridge](https://sx.bet/wallet/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.227Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 82 unique implementations (83 raw deployments)
- DeFi Llama TVL: $11,467,761.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 71 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Contracts are linked by 54 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 140; live-surface contracts included: 82 (17 live, 65 unknown).
- Excluded by liveness: 58 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 17 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 82
- Raw deployments: 83
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChallengeManager | governance | ethereum | n/a | [`0x73cfa0...34d882`](./contracts/ethereum-1/0x73cfa0f6ae141212115657ad91ad918e5d34d882/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | n/a | [`0xa104c0...c35f86`](./contracts/ethereum-1/0xa104c0426e95a5538e89131dbb4163d230c35f86/) | ⚠️ Unaudited |
| ERC20Inbox | token | ethereum | n/a | [`0xea83e8...328631`](./contracts/ethereum-1/0xea83e8907c89bc0d9517632f0ba081972e328631/) | ⚠️ Unaudited |
| ERC20Outbox | token | ethereum | n/a | [`0xb360b2...6f707d`](./contracts/ethereum-1/0xb360b2f57c645e847148d7c479b7468abf6f707d/) | ⚠️ Unaudited |
| ERC20RollupEventInbox | token | ethereum | n/a | [`0x9f1045...7a81e3`](./contracts/ethereum-1/0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xddb901...7c3dfa`](./contracts/ethereum-1/0xddb901e4e9a2e659aa1d6476d5d7a2833e7c3dfa/) | ⚠️ Unaudited |
| L1OrbitERC20Gateway | token | ethereum | n/a | [`0xb4968c...abaa91`](./contracts/ethereum-1/0xb4968c66becc8fb4f73b50354301c1adb2abaa91/) | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | ethereum | n/a | [`0x5f0044...06438a`](./contracts/ethereum-1/0x5f00446d785421d65b50c192d7129e3c3906438a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xe8606a...f8f497`](./contracts/ethereum-1/0xe8606a55d105ef857f187c32ae0e9a168af8f497/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | ethereum | n/a | [`0x36c6c6...e5e11f`](./contracts/ethereum-1/0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xa4c325...c8d24c`](./contracts/ethereum-1/0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c/) | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | n/a | [`0xd80a80...18fc0c`](./contracts/ethereum-1/0xd80a805c86c14c879420ec6acb366d04d318fc0c/) | ⚠️ Unaudited |
| SportX | unknown | ethereum | n/a | [`0x99fe3b...f41452`](./contracts/ethereum-1/0x99fe3b1391503a1bc1788051347a1324bff41452/) | ⚠️ Unaudited |
| SX | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd26ea9...b38a1a`](./contracts/ethereum-1/0xd26ea9134d0bd0534ed8e546e2d2c5184ab38a1a/); ethereum `0xf6db95...50ea4a` | ⚠️ Unaudited |
| SXNetwork | unknown | ethereum | n/a | [`0xbe9f61...d96624`](./contracts/ethereum-1/0xbe9f61555f50dd6167f2772e9cf7519790d96624/) | ⚠️ Unaudited |
| SXNTokenClaim | token | ethereum | n/a | [`0xe8f92b...b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | ⚠️ Unaudited |
| UpgradeExecutor | unknown | ethereum | n/a | [`0x44ec40...ad2d3a`](./contracts/ethereum-1/0x44ec40d86b4643bd5110ed07be188f8473ad2d3a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01af28...3d2ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x041670...bab8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08c53a...cc2435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x093650...e54eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x093dc8...6a9f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c9c2...8fee91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x179fc2...1d9780` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x198319...393067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d730f...4a6cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x218e3e...470d26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23340e...4863a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28fd7c...e26193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2add68...ec079b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bd34a...0c6dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37acc5...5abade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37ec9a...6186b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38aef2...4e9936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x398995...695d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e96b0...39968f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fc109...0b9c95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4109a2...8cf468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41ec5a...b6ccd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x481675...a8399d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4891f4...0c27a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49046f...499538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a507d...9aaa1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a7a27...8b8700` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eeb63...e033c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b0226...83107d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5744...2da6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x618021...3dc49f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b59c...d39931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x620ab4...0b5a1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672961...af3d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6abde3...4153ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7010e7...b1d925` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eabe5...2c5bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83e894...9c45a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f7bf...7a48e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c1f2f...ad2f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9039a2...87ede7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b90d...ffb06d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e287...6a1c9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b1d83...c6dad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21ac1...222fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6ea1e...c1fe7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadcc70...378dc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb07043...ca4d75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1562b...b78792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6cd10...e53a8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc077b...e0c24d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc4fbb...2ad55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2d948...f9af8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddbbd4...79636a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe40329...74cc66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5c7da...25b1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec2452...88725d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeebec...6e858c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0890b...981984` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf15885...0bec6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf859c9...f59fcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacf5f...61f5ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb28cc...b9a412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd92bd...6847b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd960a...f955e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 82 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
