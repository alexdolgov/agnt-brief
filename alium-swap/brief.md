# Agentic Audit Brief: Alium Swap

⚠️ Lifecycle status: DECLINING - TVL dropped 6.8% over 90 days

## Project Overview

- Project: Alium Swap (`alium-swap`)
- Lifecycle: declining (Tier 0, 96% below peak)
- Generated: 2026-07-04T14:52:59.774Z
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
| AliumFactory | registry | bsc | n/a | 2 deployments: bsc [`0x3379b4a4fc0e1614c0687c9f613024e83fe0e8b5`](./contracts/bsc-56/0x3379b4a4fc0e1614c0687c9f613024e83fe0e8b5/); bsc `0x89aab5f151d9f6568eacb218824acc3431b752ee` | ✅ Audited |
| AliumRouter | adapter | bsc | n/a | [`0xd646e168d59b317036d97971183a35223d31f7ef`](./contracts/bsc-56/0xd646e168d59b317036d97971183a35223d31f7ef/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AliumToken | token | bsc | n/a | [`0x7c38870e93a1f959cb6c533eb10bbc3e438aac11`](./contracts/bsc-56/0x7c38870e93a1f959cb6c533eb10bbc3e438aac11/) | ⚠️ Unaudited |
| AliumSideSwapWithPancakeRouter | adapter | bsc | n/a | [`0x591575579d607c8bdc5e1f15f1aa443fd5e5510a`](./contracts/bsc-56/0x591575579d607c8bdc5e1f15f1aa443fd5e5510a/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x1838b50a216954a478fa17ad74a2ef1416e4f400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a45757bb3e81928a976aaa2cdd55081278b65ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d5631ed83be70a5a7ede2c16ff1946c7966a099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x379dcf303b76ba7ae7ce03b6efb06caca5efa961` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e8ace667eef586f92a9b014dd740f6333ff6491` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48a194117035ffee3c2bb4b352eb8e97d85188eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dbe1748cdc5ed307d52cadff582a93afc7a2b3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f27d2c7a4e5769ea7a08600f62a60ed31b1dcaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511ab9fc36fb4ecdd960bef16db78b72f9e0e91d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52bacd12a0e9c6376f6a6789a9f3d6fd19c4f202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5427d6ce028ac56bc9957a4379a9551e3467aa89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59af25f54c3ebea86a2bd0a39d3e912612a08997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b3bdf6526d6b7cd579586d4d12d112542399606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x603bc4530ad41153859bd4c0ae1fba4d10660299` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc9eb8bf3b60e843de70ed2f9deba2fd54d3a66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d872555e2747e72db7ec2bf137cdd44bdb071f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7600025d3b0c85f576045ceac96002e140457b39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x769d346e33cf7efdf44e98e803a0738890098b05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7be43307f818b55201ab6b17a047fdf44b0c190d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x849a4780b4a292b6ce1e0fa07eab533d8d78a009` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89475683b0ed548eac5840d5fbdb0b442facbba3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x929c06a2a3d286d49733bff5b3976d52d41cb518` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99aae8f7820d39e5560e0ad7803de730a2bb3bc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa14b3d8881cc8bdbe4aff34439c1223f0c94892e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9ce9d3eab1227dbb438c4007d5111514963fa92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabfbe26bbfac04ca1bc600d18c1e52e7335a6070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac22d8c833079393a703b22a5ec1122f569d1ba8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac2ce68b43d0827b76eb881b3a9719afcec441b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacb22566fa3381b956d88667ea3544ea66316628` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae74019efb85ff81dd85f060686be803aa7f6987` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb478bfeec7f9051e1fc0881e75f0301bdf54e80c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4fd8aaee0eecce24830b84c6cb6bcd935237653` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc5df9e34870c0b30a66600d5d5cf654c67d09d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc14e4723ce81a63adb29239a487cf486418c8713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc370347dd7030fcd52a55faf347296a74d4849bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca6c759060c0a9994922e3a9d3de4e33661656d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6f98dc4faba57eea40d058af2b90cd21fe317e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe28a96ec073cb687aaf3feff4f8ecf9080c8ed64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4e690ce68f531ecce6d78f8339184032d6d0957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe984da9ffcfe61b0713825ea6604622e92635168` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebf8d61151cb150ad6c95abed1ad14ff6bc932b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec6982843cb5f9625fe81483faa4db022d900a45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf727384f8f9d54c8ae1143c16fad71922bbc8949` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf880cc016de15d132c4f11eefb343bf0015031d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc2f1e4659a42944ff6e449442de7af63d562436` | ❓ Unverified |

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
| bsc | [`0x7c38870e93a1f959cb6c533eb10bbc3e438aac11`](./contracts/bsc-56/0x7c38870e93a1f959cb6c533eb10bbc3e438aac11/) | AliumToken | token | $497,493.04 | Verified native implementation with $497,493.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x591575579d607c8bdc5e1f15f1aa443fd5e5510a`](./contracts/bsc-56/0x591575579d607c8bdc5e1f15f1aa443fd5e5510a/) | AliumSideSwapWithPancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
