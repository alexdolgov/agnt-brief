# Agentic Audit Brief: HashDAO Finance

## Project Overview

- Project: HashDAO Finance (`hashdao-finance`)
- Website: [https://www.hashdao.finance](https://www.hashdao.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.307Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, optimism
- Contract surface: 40 unique implementations (44 raw deployments)
- DeFi Llama TVL: $1,236,912.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 23 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 8 common project-authored base contract(s) (erc20permit, eip712, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 124; live-surface contracts included: 44 (10 live, 34 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/7 (42.9%)
- Deployed-live implementations: 7 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/7
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 40
- Raw deployments: 44
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 42.9% | 2023-04 |
| SolidProof | Tier 2 | 1 | 14.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | optimism | n/a | 2 deployments: optimism [`0x5556af...771bce`](./contracts/optimism-10/0x5556af10c1966ebf0b131295a2af13deec771bce/); optimism `0x584a4f...07fca8` | ✅ Audited |
| AdminUpgradeabilityProxy | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x019622...e3a61f`](./contracts/arbitrum-42161/0x019622fb05dd0c80751798949e795ff5d5e3a61f/); arbitrum `0xcd7a1b...32dbc4` | ✅ Audited |
| Token | token | arbitrum | n/a | [`0x2e8025...61b93f`](./contracts/arbitrum-42161/0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xaa1919...e4ff03`](./contracts/arbitrum-42161/0xaa1919fd3b6f6e11e2c7f22147c48af2b0e4ff03/) | ⚠️ Unaudited |
| LPToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x7d5332...cf021f`](./contracts/arbitrum-42161/0x7d5332df67aec9cb1df73ba8115e6a9211cf021f/); arbitrum `0x947af1...e551cd` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0xa01729...750f11`](./contracts/optimism-10/0xa0172947b886eedc8d8b2177d6213083fd750f11/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x8dc6ef...190703`](./contracts/arbitrum-42161/0x8dc6efd57a13b7ba3ff7824c9708db24d3190703/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x989cc0e3726feae27bbea934bb040214ea953476) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x597f5a...a818f2`; arbitrum `0x989cc0...953476` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b9c8b...becd19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2c7505...7701c4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x303cc9...8cf6d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x375729...d33700` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x52d510...5048e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x60d755...ed3cbe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x722b76...0984e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92aee2...e6a39d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x95e924...aec878` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x963a0a...1be81f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98293e...bd4972` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa18be6...51561b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcd00be...3a9b2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd6c52a...c2345b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdf40b7...c2a2b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f48ac...d28ee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x172ef9...2a3002` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x278fe1...d1f398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x286fa4...fd8b87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x349c06...76c6dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5556af...771bce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5905e0...141c76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c8210...b64f84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f5be3...1b0330` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97d4b0...273d95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0a60e...070e18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb37c07...7e1a3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6a06d...bd917f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe80cdc...f1ed51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec161c...beacc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfdacc1...54e7a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff0ebb...3a0fe8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HashDAO.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/April_2023/HashDAO.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |
| [app.solidproof.io/projects/hashdao](https://app.solidproof.io/projects/hashdao) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [app.solidproof.io/projects/hashdao](https://app.solidproof.io/projects/hashdao?audit=dc54b5c8-2954-4939-a653-7272083fe7b3) | SolidProof | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
