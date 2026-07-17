# Agentic Audit Brief: AlgoBlocks

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: AlgoBlocks (`algoblocks`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:52:59.757Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 19 unique implementations (36 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 15 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (interesthelper, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 36 (23 live, 13 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/5 (20.0%)
- Deployed-live implementations: 6 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 19
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 16.7% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Algoblocks | unknown | bsc | n/a | [`0xfecca80ff6deb2b492e93df3b67f0c523cfd3a48`](./contracts/bsc-56/0xfecca80ff6deb2b492e93df3b67f0c523cfd3a48/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DCBLiqLocker | unknown | bsc | n/a | [`0x1587d7bf992a854a23ffd7b1bcf96393d978dfae`](./contracts/bsc-56/0x1587d7bf992a854a23ffd7b1bcf96393d978dfae/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | n/a | 3 deployments: bsc [`0x5729cdd601a9ddc6fb81c27a7d84558e95ff1523`](./contracts/bsc-56/0x5729cdd601a9ddc6fb81c27a7d84558e95ff1523/); bsc `0x8222e5fad2a9eed6634aa9117a02c4af9f4749a2`; bsc `0xa459daf69670ad1fe6d2834e9a6f852cf045677e` | ⚠️ Unaudited |
| DecubateMasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0xac87de420894eaa8234d288334faec08bb46ffe7`](./contracts/bsc-56/0xac87de420894eaa8234d288334faec08bb46ffe7/); bsc `0xd1748192ae1db982be2fb8c3e6d893c75330884a` | ⚠️ Unaudited |
| DecubateTiers | unknown | bsc | n/a | 14 deployments: bsc [`0x073dd345accc5398138242d8f7b8bcc1a29fac41`](./contracts/bsc-56/0x073dd345accc5398138242d8f7b8bcc1a29fac41/); bsc `0x15a74f281e4911f79f97ec1c5ed54008f29ef81e`; bsc `0x1c03866d059e56478fa6b9111c7f962087c9f27b`; bsc `0x20e858562b9ba2746a2780f26a4023191927e5f6`; bsc `0x3a795d25af9420f0a7fa368061a6f97aad61b2fa`; bsc `0x3c6fcbd7a32023c5f0104d0741dc452386d9221e`; bsc `0x3e954babcdfdbbe7b2de820be6371d020f7f379e`; bsc `0x45a5ea2a8cf4ac16cf66f9446af81233022d79d3`; bsc `0x8befb4b534e711a844aa9a10c3e7d00cbbaebc66`; bsc `0x94b8dc8e81741fb28ac6936c92ff584e7d2ce9be`; bsc `0xbe46969a30095b36fe7b6d17f3e3870972a67e50`; bsc `0xbf792c2847a4a81bb10c2cac21a8ff7a280757f4`; bsc `0xc6153c1ac63701dc3f837b44e43d63279fe77f3d`; bsc `0xe4c32d5d52180e5e94b8f043f0870052b742134a` | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | bsc | n/a | 2 deployments: bsc [`0xc4754dac9c047e3772ddffb8dc641bf15689cd2f`](./contracts/bsc-56/0xc4754dac9c047e3772ddffb8dc641bf15689cd2f/); bsc `0xdb3161a70c379a3ab74d81cb4698a5c370988659` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x235208a31093ae3b2017976cc4d5a03683141fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26c557d1125fde890bf58b65e139d58a7cc78891` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c552711a60db74de4bb8a659b68cd4f833a310f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4946c2b42037198aea8c836903ef7d95ea0f732b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d32277dbb92188a8daf6136c6d592eda57161ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x747bf7e5b0794829570b92b9ae007cfc5e69ceae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d056d4a320ee66fa7bab5de17aea4e276e9db11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa07bfc194cb680b836cd2f637a25ca625dfa0184` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa16fe7d49f555ef3a02eb9b16337efd1b139a13a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf99a75ef3dde0ee775e89a6e52d1ae31314296a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb269ed9729b76210b7c2b724688f0c56a9aeb0fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc38c4a1e8c0d2fb504ea5c964aa00abf9ef3e8f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf83a7ac2988bceb990a2c79721546157348c86c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Security Audit of Project ALGOBLOCKS_report 040622.pdf](https://github.com/ALGOBLOCKS/smart-contracts-audits/blob/main/ALGOBLK/Security%20Audit%20of%20Project%20ALGOBLOCKS_report%20040622.pdf) | yAudit | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5729cdd601a9ddc6fb81c27a7d84558e95ff1523`](./contracts/bsc-56/0x5729cdd601a9ddc6fb81c27a7d84558e95ff1523/) | DCBVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xac87de420894eaa8234d288334faec08bb46ffe7`](./contracts/bsc-56/0xac87de420894eaa8234d288334faec08bb46ffe7/) | DecubateMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x073dd345accc5398138242d8f7b8bcc1a29fac41`](./contracts/bsc-56/0x073dd345accc5398138242d8f7b8bcc1a29fac41/) | DecubateTiers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4754dac9c047e3772ddffb8dc641bf15689cd2f`](./contracts/bsc-56/0xc4754dac9c047e3772ddffb8dc641bf15689cd2f/) | DecubateVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
