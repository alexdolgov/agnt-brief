# Agentic Audit Brief: Conic Finance

## Project Overview

- Project: Conic Finance (`conic-finance`)
- Website: [https://conic.finance](https://conic.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.070Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 16 unique implementations (29 raw deployments)
- DeFi Llama TVL: $51,237.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 37 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (baseminter, erc165storage, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Unverified dependencies: 2/34.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/16 (31.3%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/16
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 29
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 25.0% (ChainSecurity, MixBytes)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 25.0% | 2023-12 |
| PeckShield | Tier 2 | 3 | 18.8% | 2023-02 |
| MixBytes | Tier 1 | 2 | 12.5% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bonding | unknown | ethereum | n/a | [`0xc3d0d5...7d6b9c`](./contracts/ethereum-1/0xc3d0d54aff5209118aed32253cc8ec5f417d6b9c/) | ✅ Audited |
| CNCLockerV3 | unknown | ethereum | n/a | [`0x8b318d...5b2c93`](./contracts/ethereum-1/0x8b318d1d27ee1e4329d88f0c1e9bc3a1025b2c93/) | ✅ Audited |
| CNCToken | token | ethereum | n/a | [`0x9ae380...0f5cfc`](./contracts/ethereum-1/0x9ae380f0272e2162340a5bb646c354271c0f5cfc/) | ✅ Audited |
| ConicPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x72c23c...263140`](./contracts/ethereum-1/0x72c23c94f68669c7b6a5b6e8c87aa9b70c263140/); ethereum `0x80a360...a64316`; ethereum `0x89dc3e...591988`; ethereum `0xb083ad...b6df77` | ✅ Audited |
| LpToken | token | ethereum | n/a | [`0x9961bd...564a8c`](./contracts/ethereum-1/0x9961bdbe8b7091e584c2bf9d0a160c583f564a8c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BondingHelper | unknown | ethereum | n/a | [`0x447528...6a6c07`](./contracts/ethereum-1/0x447528a9f8423a68819b2da43e157205e26a6c07/) | ⚠️ Unaudited |
| ConicEthPool | unknown | ethereum | n/a | [`0x336707...6f3543`](./contracts/ethereum-1/0x3367070ed152e2b715eef48d157685cf496f3543/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x013a3d...9b587e`](./contracts/ethereum-1/0x013a3da6591d3427f164862793ab4e388f9b587e/); ethereum `0x2790ec...f57eae` | ⚠️ Unaudited |
| ConvexHandlerV3 | unknown | ethereum | unit-13 (3 proxies) | 3 deployments: ethereum [`0x07b577...9175a5`](./contracts/ethereum-1/0x07b577f10d4e00f3018542d08a87f255a49175a5/); ethereum `0x369cbc...5b971f`; ethereum `0xbb787d...9691e9` | ⚠️ Unaudited |
| CurveHandler | unknown | ethereum | unit-14 (2 proxies) | 2 deployments: ethereum [`0x402933...f07f94`](./contracts/ethereum-1/0x40293380f5292bb13905608b35a936c332f07f94/); ethereum `0xabb735...23eae9` | ⚠️ Unaudited |
| GenericOracleV2 | unknown | ethereum | n/a | [`0x286ef8...a344b0`](./contracts/ethereum-1/0x286ef89cd2da6728fd2cb3e1d1c5766bcea344b0/) | ⚠️ Unaudited |
| InflationManager | unknown | ethereum | n/a | [`0xf4a364...88fd7b`](./contracts/ethereum-1/0xf4a364d6b513158dc880d0e8da6ae65b9688fd7b/) | ⚠️ Unaudited |
| InflationRedirectionPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb65271...4562c2`](./contracts/ethereum-1/0xb652710eab40b6ed32d6c32053fc37ef234562c2/); ethereum `0xdfc4e0...cec02f` | ⚠️ Unaudited |
| LpTokenStaker | unknown | ethereum | n/a | [`0xec0374...99ca3d`](./contracts/ethereum-1/0xec037423a61b634bfc490dcc215236349999ca3d/) | ⚠️ Unaudited |
| RewardManager | unknown | ethereum | n/a | 5 deployments: ethereum [`0x15c606...119532`](./contracts/ethereum-1/0x15c606c60afcfaa8e57777d947c40e9204119532/); ethereum `0x3213ee...1cd255`; ethereum `0x49f3d1...1df7bb`; ethereum `0x71e182...d1c558`; ethereum `0xbf65fa...60f9ad` | ⚠️ Unaudited |
| RewardManagerV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39f15f...66ff02`](./contracts/ethereum-1/0x39f15f704c1f4678f7e6359a58a196228266ff02/); ethereum `0xf59e74...8690b3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-ConicFinance.pdf](https://conic.finance/media/PeckShield-Audit-Report-ConicFinance.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | 3 | n/a |
| [ChainSecurity-Audit-Report-ConicFinance.pdf](https://conic.finance/media/ChainSecurity-Audit-Report-ConicFinance.pdf) | ChainSecurity | Audit | 2023-12 | stale | Direct | contract_name | 4 | n/a |
| [MixBytes-Audit-Report-ConicFinance.pdf](https://conic.finance/media/MixBytes-Audit-Report-ConicFinance.pdf) | MixBytes | Audit | 2024-01 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Fork inheritance lineage and inherited audits are included when available.
