# Agentic Audit Brief: Generic.Money

⚠️ Lifecycle status: DECLINING - TVL changed 52.3% over 90 days

## Project Overview

- Project: Generic.Money (`generic.money`)
- Website: [https://www.generic.money/](https://www.generic.money/)
- Lifecycle: declining (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:35.994Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 9 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,146,891.78
- On-chain TVL (included contracts): $3,742,840.77
- TVL by chain: Ethereum $3,742,840.77

## Project Description

Generic.Money provides GUSD, a fully collateralized stablecoin-as-a-service/onchain dollar backed by stablecoin collateral. The protocol includes vault-based yield routing, shared liquidity and accounting, cross-chain messaging, and marketed privacy features including confidential payments and an FHE-powered Privacy Pool, with sGUSD/staking usage and live deployments or usage on networks including StatusL2 and Citrea that should be evaluated for scope.

### Architecture

The Core Protocol Contracts issue GenericUSD, which is used by the Mainnet GUSD vaults for payments and yield. The Bridging Infrastructure enables cross-chain movement of GenericUSD, while Periphery Contracts facilitate deposits and swaps, all governed by the DAO.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 8/9 (88.9%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 88.9% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 8 | 88.9% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenericVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x4825ef...3c1c3f`](./contracts/ethereum-1/0x4825eff24f9b7b76eeafa2ecc6a1d5dfcb3c1c3f/); ethereum `0x6133da...89892a`; ethereum `0x844584...d71b1b`; ethereum `0xb82809...8157fe`; ethereum `0xfce133...6b73cf` | ✅ Audited |
| Controller | governance | ethereum | n/a | [`0x1e4b88...086b28`](./contracts/ethereum-1/0x1e4b88b37bae84b2975a09e5811cc0312c086b28/) | ✅ Audited |
| Controller | governance | ethereum | unit-21668 | [`0x3a64d2...c973ae`](./contracts/ethereum-1/0x3a64d23313e1beaaba25ec13149bd8d514c973ae/) | ✅ Audited |
| GenericDepositor | unknown | ethereum | n/a | [`0x79b4cd...35f919`](./contracts/ethereum-1/0x79b4cdb14a31e8b0e21c0120c409ac14af35f919/) | ✅ Audited |
| GenericUnit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c307b...172502`](./contracts/ethereum-1/0x8c307badbd78bea5a1ccf9677caa58e7a2172502/); ethereum `0xee77df...3d69d7` | ✅ Audited |
| LayerZeroAdapter | adapter | ethereum | n/a | [`0x05a166...b0144e`](./contracts/ethereum-1/0x05a166797e784d49ba880b289647eccb29b0144e/) | ✅ Audited |
| LineaBridgeAdapter | operational_periphery | ethereum | n/a | [`0xe39d67...b9ab93`](./contracts/ethereum-1/0xe39d672416421ce1536997ff892c8b339eb9ab93/) | ✅ Audited |
| OneInchSwapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0xb23684...7aeffc`](./contracts/ethereum-1/0xb2368497691f4c6e9b7acede4efc7831417aeffc/); ethereum `0xc1c8db...200a50` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DAO | unknown | ethereum | unit-21667 | [`0x3794d7...5e3d17`](./contracts/ethereum-1/0x3794d7f91b3dd3b338fee671ac6aa42bea5e3d17/) | ⚠️ Unaudited |

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
| [View Report](https://docs.generic.money/audits/2026-01-19-report-cantinacode-generic-money.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=22

Fork inheritance lineage and inherited audits are included when available.
