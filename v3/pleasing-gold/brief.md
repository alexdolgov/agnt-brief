# Agentic Audit Brief: Pleasing Gold

## Project Overview

- Project: Pleasing Gold (`pleasing-gold`)
- Website: [https://www.pleasinggold.com/](https://www.pleasinggold.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.415Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, ethereum
- Contract surface: 11 unique implementations (14 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 8 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (tokenpool). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 14 (9 live, 5 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 11
- Raw deployments: 14
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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnMintTokenPool | core_logic | ethereum | n/a | [`0xf30676...2f810a`](./contracts/ethereum-1/0xf3067615579d59c64f16f1382b6a8032622f810a/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | ethereum | n/a | [`0xfb0bd8...a5334f`](./contracts/ethereum-1/0xfb0bd86210d2a10543bb40289e92d108b3a5334f/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | arbitrum | n/a | [`0x5b5ce7...7ccdc4`](./contracts/arbitrum-42161/0x5b5ce779709360a6b6906b79cac5029a5b7ccdc4/) | ⚠️ Unaudited |
| MyOFTAdapter | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x0f7c3d...48441e`](./contracts/arbitrum-42161/0x0f7c3de66af37aac0c0668db05f9d4e0ce48441e/); arbitrum `0x17cd53...d0f5cb`; arbitrum `0x793188...59fb7d`; arbitrum `0xd77d2c...ed29c6` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0x50ead2...a2e9ce`](./contracts/arbitrum-42161/0x50ead2d211d84d111c692b86e02a489d3aa2e9ce/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x79eb05...f10c42`](./contracts/arbitrum-42161/0x79eb05046d0017e710cabc0caee816e710f10c42/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | n/a | [`0x2a0c9a...739ac6`](./contracts/arbitrum-42161/0x2a0c9a36a640797a8430a218428f3f3dd3739ac6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x087b91...8aed9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ad526...e9574e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32fcce...53eca0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x612b79...929b74` | ❓ Unverified |

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
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
