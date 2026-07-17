# Agentic Audit Brief: The Parallel

## Project Overview

- Project: The Parallel (`the-parallel`)
- Website: [https://theparallel.io](https://theparallel.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.379Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 46 unique implementations (46 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 46 (3 live, 43 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ParallelToken | token | bsc | n/a | [`0xd07e82440a395f3f3551b42da9210cd1ef4f8b24`](./contracts/bsc-56/0xd07e82440a395f3f3551b42da9210cd1ef4f8b24/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DMMPool | core_logic | bsc | n/a | [`0x3e95e07550e9798272130ab65b58f2f17b3f7c57`](./contracts/bsc-56/0x3e95e07550e9798272130ab65b58f2f17b3f7c57/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e`](./contracts/bsc-56/0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x098460be57b49be7c823e54910192a859c4c7636` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b1bc25784cdb43a0bcfc8798f77f1b3e5aae048` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d18c6b117307214373c5793865fb5bcfeb1f20f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15b22dc3f6d67d0d34ba6cd4e66a85ecee8a5bb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d139c4ffada50e1c94b7e194d75c1fc172ded1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d7f02e5b0cec45d4e739fa268a23906e1882c5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d825134518e334806dfad8a0c4fd8ef82e06cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21efc3dde8a69fb8a5403406ebdd23e08c924785` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b8828474aac9c39171a0e277a3ee53c5c7d0deb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fdc0b068c1658327b6000855860e3d032c681e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37214a7c652856e16b1e4861676d9a66a9086020` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ec78da8b61f233fe89ce36c05f6ad7e91e8d766` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x406020faaab1bceba1a70455556343d4da8ba356` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43b1a848a4db67fae6bfe39385b1d7d236794a0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ba24624abbdaec86d0ee4413a3d9b6b5b39a137` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c0e6947f381c598c42b8d8373cd1a7edd06a0f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a7dd9a5b35f1abe399c2310f74f8b2f6d7716dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b382005bef8cbf7f0207ceb2123d3c1bb5fc7cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64c00363cee56b530a94e34afba88672418a71c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b0cd6dc1bcb33afe611a843d74a60815020b1e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3c7492e7cf7b37d18b342d435745d64c9cd880` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70ab3ecb806a1560820d3c5abe7bdb9d1f10d7dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bdd07dc3b3927808db612015bcff9295673b727` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x887972d9dd75662407dfa737df2cd180f9266caa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fb2a6bcc8b097fdc9a5ae67cccdb231960de7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94ede25f6d01b76a0a2e44397a741bc92d9458a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96526a82ef63d28c0bd9983807effd2195368770` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad0da4b8f4998bf010b10007cd3e447556c04dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b22b6ecda45c2bc8db02700fd4bd85773f6d5b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bf6070904a46ba4cefccd5048f423c32c32be7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa31feb6aefb4758d20c734b878423308e70e2ba4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6a52085716085071197fe986aba62f726bdfeb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf09deaa442c10044ea251dd99b6952af7433b1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb45e62d1de67b719439fcc7d1b3d76fcaffa7ba5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdc021476e5ecb4ad750d4e4dc083da1db092aeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf8b40e3ab945b0ca6e8cd81c83b18108d65884e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfdf2c1fcafabea9e95a8264b71f0e6d8397465f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce6c2299122c6e91134842c290188db032330015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd992683a090608bd9b1c617057f76afb62489dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcd450d1d5f1e0ef2866117a4f6e6d900af207f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0414b451e7ffec6694ca09ed598153d24e31912` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe103e1d633a6878ef708f7e0c7b06a83dd476bf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6c683e8cdce253de6cf7344fa65ec80579eae95` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Public Audit Report - TheParallel - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20TheParallel%20-%20v1.1.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3e95e07550e9798272130ab65b58f2f17b3f7c57`](./contracts/bsc-56/0x3e95e07550e9798272130ab65b58f2f17b3f7c57/) | DMMPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e`](./contracts/bsc-56/0xb5feae037c2330a8f298f39bce96dd6e69f4fa0e/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
