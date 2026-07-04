# Agentic Audit Brief: Brickken

## Project Overview

- Project: Brickken (`brickken`)
- Website: [https://www.brickken.com](https://www.brickken.com)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:40.791Z
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
| STOEscrowManagedUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x445943...9c4a6f`](./contracts/ethereum-1/0x4459432f1626cc4de0e0a004e74ff282ae9c4a6f/); ethereum `0xe2f8f2...7a713d` | ✅ Audited |
| STOEscrowManagedUpgradeable | unknown | polygon | n/a | 2 deployments: polygon [`0x27576e...476f14`](./contracts/polygon-137/0x27576e72f8cd047e4de23c683acfbf8576476f14/); polygon `0xd1ba50...76ea5c` | ✅ Audited |
| STOEscrowManagedUpgradeable | unknown | base | n/a | 2 deployments: base [`0x2c82a5...2aca94`](./contracts/base-8453/0x2c82a5eac210667e807b409d9e92cf607f2aca94/); base `0xd1ba50...76ea5c` | ✅ Audited |
| STOTokenManagedUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5dc006...09618a`](./contracts/ethereum-1/0x5dc006a13c0f2cb4ea104b3b6ea1d1514a09618a/); ethereum `0x643630...e3af54` | ✅ Audited |
| STOTokenManagedUpgradeable | unknown | polygon | n/a | 2 deployments: polygon [`0x5e4e3a...d13666`](./contracts/polygon-137/0x5e4e3a4ca61c1f8b3cd4bb560a0040270ad13666/); polygon `0xff3624...4aeb07` | ✅ Audited |
| STOTokenManagedUpgradeable | unknown | base | n/a | 2 deployments: base [`0x478dff...158477`](./contracts/base-8453/0x478dff0e27ca0f8e4d6cd5dd586b9f8d28158477/); base `0x8bedc6...01ad48` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xee0462...e8a546`](./contracts/ethereum-1/0xee046214759b58bb0eb10d760448e2783de8a546/); ethereum `0xf4f74d...2e7713` | ⚠️ Unaudited |
| P2PHandler | unknown | base | n/a | 2 deployments: polygon `0x8ed660...0c5800`; base [`0x89b281...c7ba3b`](./contracts/base-8453/0x89b281df2702f19189fdd73f1d7865707bc7ba3b/) | ⚠️ Unaudited |
| PriceAndSwapManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x36fb65...af8fd6`](./contracts/ethereum-1/0x36fb65754b70982d1aa0d5cedefd8bc614af8fd6/); polygon `0xd84620...bd19b0`; base `0xff3624...4aeb07` | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | unknown | polygon | n/a | 8 deployments: ethereum `0x513f0b...7cbdeb`; ethereum `0xa6df46...f523d8`; ethereum `0xb75260...b6b3ee`; polygon [`0x409a37...9d86f7`](./contracts/polygon-137/0x409a37fa3636519380624cfb437e48ccaa9d86f7/); polygon `0xc6c230...bcde61`; base [`0x409a37...9d86f7`](./contracts/base-8453/0x409a37fa3636519380624cfb437e48ccaa9d86f7/); base `0x6d0432...685e89`; base `0xf6b623...079977` | ⚠️ Unaudited |
| STOFactoryManagedUpgradeable | unknown | polygon | n/a | 8 deployments: ethereum `0xbb0b08...9e1b69`; ethereum `0xccda54...8bbd88`; ethereum `0xf48a42...83f0fa`; polygon [`0x26840f...1d40ff`](./contracts/polygon-137/0x26840ff7cb44ea734c68616714e3a5692d1d40ff/); polygon `0xd515ca...0a0634`; base `0x816e88...984607`; base `0xbc2074...d3f074`; base `0xe19619...703fe2` | ⚠️ Unaudited |
| WBrickken | unknown | ethereum | n/a | [`0xf6b623...079977`](./contracts/ethereum-1/0xf6b6235f6725f84457f5d6f0b0aa3c962a079977/) | ⚠️ Unaudited |

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
| PerpetualStakingV4 | unknown | ethereum | n/a | `0x8f523d...46ceb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21b78b...5384f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52292d...99238d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75509c...f62482` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b823e...ad1915` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe851c3...efba18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7a06b...9dd5a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdecbcb...e06f5a` | ❓ Unverified |
| WBKNVault | unknown | ethereum | n/a | `0xcaefc1...309c73` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/brickken](https://skynet.certik.com/projects/brickken) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | 6 | high |
| [69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf](https://cdn.prod.website-files.com/680a2df699085611f5f9221a/69e0f131a3c7f0b39a48f86d_BRICKKEN_AI%202026_signed.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

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
