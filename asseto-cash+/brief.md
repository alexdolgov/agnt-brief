# Agentic Audit Brief: Asseto CASH+

⚠️ Lifecycle status: DECLINING - TVL dropped 86.7% over 90 days

## Project Overview

- Project: Asseto CASH+ (`asseto-cash+`)
- Website: [https://asseto.finance/#invest](https://asseto.finance/#invest)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:04.176Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc, ethereum
- Contract surface: 15 unique implementations (57 raw deployments)
- DeFi Llama TVL: $880,002.04
- On-chain TVL (included contracts): $15,361.13
- TVL by chain: Ethereum $15,361.13

## Project Description

RWA. Structurally: 4 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 48 (47 live, 1 unknown).
- Excluded by liveness: 30 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 14 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 57
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,361.13
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $15,361.13 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | n/a | [`0xdba395588a758c6075052e194bf5b5a88cfeefc3`](./contracts/ethereum-1/0xdba395588a758c6075052e194bf5b5a88cfeefc3/) | ⚠️ Unaudited |
| FundYieldManualTraceV1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x50bdaff4bceb852f006f657f47c68fcc417f7beb`](./contracts/ethereum-1/0x50bdaff4bceb852f006f657f47c68fcc417f7beb/); ethereum `0x63e19fb814eb737730ac0afbb52b351695b97176`; ethereum `0xef62080cd8648cf996932dc27544606e6ae45ee9` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| SAmMMF | unknown | ethereum | n/a | 20 deployments: ethereum [`0x048a8afa8cf69ea53b72298d50033d1e2560b809`](./contracts/ethereum-1/0x048a8afa8cf69ea53b72298d50033d1e2560b809/); ethereum `0x0d90a6ee85d5668734bb3a515147f53ebdfe866c`; ethereum `0x1c79523d5176ae6d7d347ec5fd3314cc7bef9f8e`; ethereum `0x4013361546efe989efd4a1242add5ea88915e980`; ethereum `0x45c5bd76f424808728b5c5753cc42a8692964303`; ethereum `0x5081c66e72241d3362b4889e26d55ffdd0a2431f`; ethereum `0x5142df9767b2a28e1356953718e4bc47d0b3e2b1`; ethereum `0x5b0c6ad272e110970122b2651786131aa2c767d2`; ethereum `0x640eb8927efbe64ab6c66f1dd987409feb1ae3f8`; ethereum `0x6c3de46246b24ba48a9fb2040c9fc6060c48483f`; ethereum `0x734bb43b503ea50ebe58eb371e34263551cc3d28`; ethereum `0x9233690f85daf79970d9345473d8a607b9e49e72`; ethereum `0xab935a4d74540e6306e1d8b8c617999c7e5d4459`; ethereum `0xafdfd8dc1f0fbf2a0b2f181717397491d9a960c0`; ethereum `0xc43ce4c39ddc1ad8dd16e4c394935546bbdd3e19`; ethereum `0xc8faf639243f430f41c7178690dd0c631082e5a8`; ethereum `0xcd01a9197c71d844a2afced2d2fd7102fbb3fa83`; ethereum `0xd37295054fbefe1d127f329a7d55a56965f3c05f`; ethereum `0xd9ffec462793e6627f223671e9c9b217c8103940`; ethereum `0xde2ac02c9e660378fa66097c98b9b65c1cd032ff` | ⚠️ Unaudited |
| SAmMMF | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10136379a5a0c7003a33cc1d0db00ecd52a0f75f`](./contracts/ethereum-1/0x10136379a5a0c7003a33cc1d0db00ecd52a0f75f/); ethereum `0x28d77ea7c61cd9055983ef8b0806778d8bb12c88`; ethereum `0x37d03d8cabfb617e455d0caa0cf1cdc5b8f3bdee`; ethereum `0xf252c5bd43907a6cab079e990845a37a7c5730d9` | ⚠️ Unaudited |
| SAmMMF | unknown | ethereum | n/a | 3 deployments: ethereum [`0x212624ee086bf0a8393f3be84f4e21f54372f8af`](./contracts/ethereum-1/0x212624ee086bf0a8393f3be84f4e21f54372f8af/); ethereum `0x498d9329555471bf6073a5f2d047f746d522a373`; ethereum `0xeaa41f9d01fe04ab7489daa1b57e352531d0251f` | ⚠️ Unaudited |
| SAmMMF | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3be5dd4a34f1c6a112048b9df908ced4372d5049`](./contracts/ethereum-1/0x3be5dd4a34f1c6a112048b9df908ced4372d5049/); ethereum `0xb918652fc5c3fc3ddaeaa17049e172e3fd07a77e` | ⚠️ Unaudited |
| SAmMMF | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78e80da0616887b46a31f39310c2a8b0fbd6a42d`](./contracts/ethereum-1/0x78e80da0616887b46a31f39310c2a8b0fbd6a42d/); ethereum `0xa4dbaa95f78ecea5b984b38e62659f34523bd261` | ⚠️ Unaudited |
| SAmMMF | unknown | bsc | n/a | 2 deployments: bsc [`0x048a8afa8cf69ea53b72298d50033d1e2560b809`](./contracts/bsc-56/0x048a8afa8cf69ea53b72298d50033d1e2560b809/); bsc `0x27c3735c1996ead0932c244659ae857826b2a57a` | ⚠️ Unaudited |
| SAmMMF | unknown | bsc | n/a | 3 deployments: bsc [`0x0ba0443a7a2d4bfeb44ec5c1234106cbc2557a91`](./contracts/bsc-56/0x0ba0443a7a2d4bfeb44ec5c1234106cbc2557a91/); bsc `0x51b7178e518c0f272102361453558f512a0e796d`; bsc `0xef663399110a76b3668e97fe697d721dcbb0c316` | ⚠️ Unaudited |
| SAmMMF | unknown | bsc | n/a | 3 deployments: bsc [`0x1775504c5873e179ea2f8abfce3861ec74d159bc`](./contracts/bsc-56/0x1775504c5873e179ea2f8abfce3861ec74d159bc/); bsc `0x1ec3aa07e3898f1e6d4f23b5dce1bdbecb5c1fe1`; bsc `0xb715931f462424a6c538d12bd143db3124e97d52` | ⚠️ Unaudited |
| SAmMMF | unknown | bsc | n/a | 3 deployments: bsc [`0x50bf2924cee59737ead76e881643ed8569bae6e8`](./contracts/bsc-56/0x50bf2924cee59737ead76e881643ed8569bae6e8/); bsc `0x804063066723cbc79d5c41452eb581c05065d520`; bsc `0xcca4656f736490cf2155589aecd8382765a3e691` | ⚠️ Unaudited |
| SAmMMF | unknown | bsc | n/a | 3 deployments: bsc [`0x640eb8927efbe64ab6c66f1dd987409feb1ae3f8`](./contracts/bsc-56/0x640eb8927efbe64ab6c66f1dd987409feb1ae3f8/); bsc `0xc9f2d7a009e485760dd6b12cefc07ffbc8f86f64`; bsc `0xcd01a9197c71d844a2afced2d2fd7102fbb3fa83` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 6 deployments: ethereum [`0x15cf9c4bdf3cc1b6743cc09e3f7c49b4f2043a56`](./contracts/ethereum-1/0x15cf9c4bdf3cc1b6743cc09e3f7c49b4f2043a56/); ethereum `0x493127fb112d1d93f30f0525ed77978882a8ed91`; ethereum `0x50bf2924cee59737ead76e881643ed8569bae6e8`; ethereum `0x67330c5437b3efc9bfac0c812a4f9f7721063bba`; ethereum `0x7002e6b67b6584dae752968ffb0468976ad9a4ec`; bsc `0x6e11d3e6a1ba162469be618b32a46f975a149d07` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xc9f2d7a009e485760dd6b12cefc07ffbc8f86f64` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cash+-smart-contract-audit-report.md](https://reale-assets.gitbook.io/reale/product/cash+/appendix/cash+-smart-contract-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x048a8afa8cf69ea53b72298d50033d1e2560b809`](./contracts/ethereum-1/0x048a8afa8cf69ea53b72298d50033d1e2560b809/) | SAmMMF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10136379a5a0c7003a33cc1d0db00ecd52a0f75f`](./contracts/ethereum-1/0x10136379a5a0c7003a33cc1d0db00ecd52a0f75f/) | SAmMMF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3093] cash+-smart-contract-audit-report.md

Fork inheritance lineage and inherited audits are included when available.
