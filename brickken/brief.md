# Agentic Audit Brief: Brickken

## Project Overview

- Project: Brickken (`brickken`)
- Website: [https://www.brickken.com](https://www.brickken.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.560Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: base, ethereum, polygon
- Contract surface: 21 unique implementations (45 raw deployments)
- DeFi Llama TVL: $42,164,586.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 41 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 14 common project-authored base contract(s) (stoescrowupgradeable, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 42 (31 live, 11 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/11 (54.5%)
- Deployed-live implementations: 11 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/12
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 21
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 6 | 50.0% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| STOEscrowManagedUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4459432f1626cc4de0e0a004e74ff282ae9c4a6f`](./contracts/ethereum-1/0x4459432f1626cc4de0e0a004e74ff282ae9c4a6f/); ethereum `0xe2f8f2910d923e660a4a526f7c08ef3ddd7a713d` | ✅ Audited |
| STOEscrowManagedUpgradeable | unknown | polygon | n/a | 2 deployments: polygon [`0x27576e72f8cd047e4de23c683acfbf8576476f14`](./contracts/polygon-137/0x27576e72f8cd047e4de23c683acfbf8576476f14/); polygon `0xd1ba506b8c0af146d528ab02a6ab5f4ebf76ea5c` | ✅ Audited |
| STOEscrowManagedUpgradeable | unknown | base | n/a | 2 deployments: base [`0x2c82a5eac210667e807b409d9e92cf607f2aca94`](./contracts/base-8453/0x2c82a5eac210667e807b409d9e92cf607f2aca94/); base `0xd1ba506b8c0af146d528ab02a6ab5f4ebf76ea5c` | ✅ Audited |
| STOTokenManagedUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5dc006a13c0f2cb4ea104b3b6ea1d1514a09618a`](./contracts/ethereum-1/0x5dc006a13c0f2cb4ea104b3b6ea1d1514a09618a/); ethereum `0x643630f8bd8fc10c4b72669ff899d64ecbe3af54` | ✅ Audited |
| STOTokenManagedUpgradeable | unknown | polygon | n/a | 2 deployments: polygon [`0x5e4e3a4ca61c1f8b3cd4bb560a0040270ad13666`](./contracts/polygon-137/0x5e4e3a4ca61c1f8b3cd4bb560a0040270ad13666/); polygon `0xff362452d0969f61d8a7fe1ea70a7caa534aeb07` | ✅ Audited |
| STOTokenManagedUpgradeable | unknown | base | n/a | 2 deployments: base [`0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477`](./contracts/base-8453/0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477/); base `0x8bedc6dabef2d289db22ace495f9bd300001ad48` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xee046214759b58bb0eb10d760448e2783de8a546`](./contracts/ethereum-1/0xee046214759b58bb0eb10d760448e2783de8a546/); ethereum `0xf4f74dba118aa076ecae9c42167ce5647f2e7713` | ⚠️ Unaudited |
| P2PHandler | unknown | base | n/a | 2 deployments: polygon `0x8ed6601a5bb34396fc93c9b1fea3da24ed0c5800`; base [`0x89b281df2702f19189fdd73f1d7865707bc7ba3b`](./contracts/base-8453/0x89b281df2702f19189fdd73f1d7865707bc7ba3b/) | ⚠️ Unaudited |
| PriceAndSwapManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x36fb65754b70982d1aa0d5cedefd8bc614af8fd6`](./contracts/ethereum-1/0x36fb65754b70982d1aa0d5cedefd8bc614af8fd6/); polygon `0xd84620b75d0e7183491dc5188e14db89fdbd19b0`; base `0xff362452d0969f61d8a7fe1ea70a7caa534aeb07` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | polygon | n/a | 8 deployments: ethereum `0x513f0b5f188d33d6b0efbba0b5f07f37cb7cbdeb`; ethereum `0xa6df4685bb512ddf8707ce6966e596a1dbf523d8`; ethereum `0xb7526069485e760612294b23240eecde2bb6b3ee`; polygon [`0x409a37fa3636519380624cfb437e48ccaa9d86f7`](./contracts/polygon-137/0x409a37fa3636519380624cfb437e48ccaa9d86f7/); polygon `0xc6c230fa8f40022de997727436fae01caabcde61`; base [`0x409a37fa3636519380624cfb437e48ccaa9d86f7`](./contracts/base-8453/0x409a37fa3636519380624cfb437e48ccaa9d86f7/); base `0x6d04327079a19297180004891051de7ac5685e89`; base `0xf6b6235f6725f84457f5d6f0b0aa3c962a079977` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | polygon | n/a | 8 deployments: ethereum `0xbb0b08a9bf9b31185c5b925b1e32baf2d29e1b69`; ethereum `0xccda54c76724edaf4591373f29d18648518bbd88`; ethereum `0xf48a4248c1dcd17dc2afd9eddaf9f6687983f0fa`; polygon [`0x26840ff7cb44ea734c68616714e3a5692d1d40ff`](./contracts/polygon-137/0x26840ff7cb44ea734c68616714e3a5692d1d40ff/); polygon `0xd515ca5b14330ed1f25f8f9bc7fd8b08050a0634`; base `0x816e88407c5edaa8b471b78f72bc3ec695984607`; base `0xbc2074b87828c30e1ac6285da672602ffdd3f074`; base `0xe1961920e5e47dde355492ca56af6ee511703fe2` | ⚠️ Unaudited |
| WBrickken | unknown | ethereum | n/a | [`0xf6b6235f6725f84457f5d6f0b0aa3c962a079977`](./contracts/ethereum-1/0xf6b6235f6725f84457f5d6f0b0aa3c962a079977/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PerpetualStakingV4 | unknown | ethereum | n/a | `0x8f523d7e1acbbc6d0e3ca19b7d8c1981b346ceb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21b78b5dbbadafec9690002bbf9b66b1175384f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52292de889c4f00ab9e38f578f4c30711d99238d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75509ce41a846e4af4426e77716c7b1b81f62482` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b823ec09d8a772391501055374f7dc0c4ad1915` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe851c34fb3ebd25c5bbb7425013f16636aefba18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7a06bfd2edca7bb19cab99b4335cc2f559dd5a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdecbcba39a5defcfaebbaec076a66d6721e06f5a` | ❓ Unverified |
| WBKNVault | unknown | ethereum | n/a | `0xcaefc11571955a244070638d42356ff398309c73` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/brickken](https://skynet.certik.com/projects/brickken) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | 6 | high |
| [69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf](https://cdn.prod.website-files.com/680a2df699085611f5f9221a/69e0f131a3c7f0b39a48f86d_BRICKKEN_AI%202026_signed.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x89b281df2702f19189fdd73f1d7865707bc7ba3b`](./contracts/base-8453/0x89b281df2702f19189fdd73f1d7865707bc7ba3b/) | P2PHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36fb65754b70982d1aa0d5cedefd8bc614af8fd6`](./contracts/ethereum-1/0x36fb65754b70982d1aa0d5cedefd8bc614af8fd6/) | PriceAndSwapManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x409a37fa3636519380624cfb437e48ccaa9d86f7`](./contracts/polygon-137/0x409a37fa3636519380624cfb437e48ccaa9d86f7/) | STOEscrowManagedUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x26840ff7cb44ea734c68616714e3a5692d1d40ff`](./contracts/polygon-137/0x26840ff7cb44ea734c68616714e3a5692d1d40ff/) | STOFactoryManagedUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6b6235f6725f84457f5d6f0b0aa3c962a079977`](./contracts/ethereum-1/0xf6b6235f6725f84457f5d6f0b0aa3c962a079977/) | WBrickken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf

Fork inheritance lineage and inherited audits are included when available.
