# Agentic Audit Brief: Alium Swap

⚠️ Lifecycle status: DECLINING - TVL dropped 6.8% over 90 days

## Project Overview

- Project: Alium Swap (`alium-swap`)
- Lifecycle: declining (Tier 0, 96% below peak)
- Generated: 2026-07-03T21:05:26.579Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc
- Contract surface: 49 unique implementations (50 raw deployments)
- DeFi Llama TVL: $14,224.32
- On-chain TVL (included contracts): $497,493.04
- TVL by chain: Bsc $497,493.04

## Project Description

Dexs. Structurally: 28 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (privilegeable, rbac, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 50 (5 live, 45 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 49 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 49
- Raw deployments: 50
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $497,493.04
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $497,493.04 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 50.0% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AliumFactory | registry | bsc | n/a | 2 deployments: bsc [`0x3379b4...e0e8b5`](./contracts/bsc-56/0x3379b4a4fc0e1614c0687c9f613024e83fe0e8b5/); bsc `0x89aab5...b752ee` | ✅ Audited |
| AliumRouter | adapter | bsc | n/a | [`0xd646e1...31f7ef`](./contracts/bsc-56/0xd646e168d59b317036d97971183a35223d31f7ef/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AliumToken | token | bsc | n/a | [`0x7c3887...8aac11`](./contracts/bsc-56/0x7c38870e93a1f959cb6c533eb10bbc3e438aac11/) | ⚠️ Unaudited |
| AliumSideSwapWithPancakeRouter | adapter | bsc | n/a | [`0x591575...e5510a`](./contracts/bsc-56/0x591575579d607c8bdc5e1f15f1aa443fd5e5510a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x1838b5...e4f400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a4575...8b65ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d5631...66a099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x379dcf...efa961` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e8ace...ff6491` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48a194...5188eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dbe17...7a2b3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f27d2...b1dcaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511ab9...e0e91d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52bacd...c4f202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5427d6...67aa89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59af25...a08997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b3bdf...399606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x603bc4...660299` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc9eb...4d3a66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d8725...b071f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x760002...457b39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x769d34...098b05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7be433...0c190d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x849a47...78a009` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x894756...acbba3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x929c06...1cb518` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99aae8...bb3bc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa14b3d...94892e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9ce9d...63fa92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabfbe2...5a6070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac22d8...9d1ba8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac2ce6...c441b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacb225...316628` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae7401...7f6987` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb478bf...54e80c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4fd8a...237653` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc5df9...7d09d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc14e47...8c8713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc37034...4849bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca6c75...1656d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6f98d...e317e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe28a96...c8ed64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4e690...6d0957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe984da...635168` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebf8d6...c932b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec6982...900a45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf72738...bc8949` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf880cc...5031d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc2f1e...562436` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [02_Smart Contract Audit_Aliumswap.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/Aliumswap/02_Smart%20Contract%20Audit_Aliumswap.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [02_Smart Contract Audit_AliumSwap_Core.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/Aliumswap/02_Smart%20Contract%20Audit_AliumSwap_Core.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 2 | n/a |
| [skynet.certik.com/projects/aliumswap](https://skynet.certik.com/projects/aliumswap) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7c3887...8aac11`](./contracts/bsc-56/0x7c38870e93a1f959cb6c533eb10bbc3e438aac11/) | AliumToken | token | $497,493.04 | Verified native implementation with $497,493.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x591575...e5510a`](./contracts/bsc-56/0x591575579d607c8bdc5e1f15f1aa443fd5e5510a/) | AliumSideSwapWithPancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [12644] 02_Smart Contract Audit_Aliumswap.pdf
- [12646] skynet.certik.com/projects/aliumswap

Fork inheritance lineage and inherited audits are included when available.
