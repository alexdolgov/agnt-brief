# Agentic Audit Brief: sDAI

## Project Overview

- Project: sDAI (`sdai`)
- Lifecycle: active (Tier 0, 40.7% below peak)
- Generated: 2026-06-17T07:00:45.549Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, gnosis
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $70,687,360.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

sDAI on Gnosis Chain is a yield-bearing token for deposits into the Savings xDAI contract at 0xaf204776c7245bf4147c2612bf6e5972ee483701, allowing users to earn MakerDAO DAI Savings Rate-derived interest on bridged DAI/xDAI. Aave, Agave, StaticATokenLM/aToken, Uniswap, Angle, and generic library or periphery contracts should be treated as external integrations or infrastructure unless separately proven to be owned sDAI core contracts.

### Architecture

The SavingsXDai contract is the core savings pool, while the StaticATokenLM implementations serve as upgradeable proxies that likely wrap the underlying aToken logic to provide the sDAI token interface.

## Contract Surface Quality

- Indexed contracts: 188; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 159 inactive, 16 singleton, 0 uninitialized.
- Deployment units: 5/15 live.
- Detected codebases: aave-v2, uniswap-v3
- Unverified dependencies: 4/71.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgaveTreasuryRedeemer | operational_periphery | gnosis | n/a | [`0x33805e...bbc457`](./contracts/gnosis-100/0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457/) | ⚠️ Unaudited |
| AgaveTreasuryWithdrawer | operational_periphery | gnosis | n/a | [`0x91ed56...890018`](./contracts/gnosis-100/0x91ed5609e5b9d6991f024570025c872382890018/) | ⚠️ Unaudited |
| BridgeInterestReceiver | operational_periphery | gnosis | n/a | [`0x670dae...059088`](./contracts/gnosis-100/0x670daeaf0f1a5e336090504c68179670b5059088/) | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | ethereum | unit-27612 | [`0x9a8736...66a0b0`](./contracts/ethereum-1/0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-27610 | [`0x42f38e...e7a3f6`](./contracts/ethereum-1/0x42f38ec5a75accec50054671233dfac9c0e7a3f6/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | gnosis | unit-27622 | [`0x7a48da...0875bd`](./contracts/gnosis-100/0x7a48dac683da91e4faa5ab13d91ab5fd170875bd/) | ⚠️ Unaudited |
| HomeBridgeErcToNative | operational_periphery | gnosis | unit-27621 | [`0x7301cf...eb0aa6`](./contracts/gnosis-100/0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6/) | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f...42beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| SavingsXDai | unknown | gnosis | n/a | [`0xaf2047...483701`](./contracts/gnosis-100/0xaf204776c7245bf4147c2612bf6e5972ee483701/) | ⚠️ Unaudited |
| SavingsXDaiAdapter | adapter | gnosis | n/a | [`0xd499b5...591a94`](./contracts/gnosis-100/0xd499b51fcfc66bd31248ef4b28d656d67e591a94/) | ⚠️ Unaudited |
| USDSDepositContract | core_logic | gnosis | n/a | [`0x5c183c...7ff8c9`](./contracts/gnosis-100/0x5c183c8a49aba6e31049997a56d75600e27ff8c9/) | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | n/a | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |
| XDaiForeignBridge | operational_periphery | ethereum | unit-27611 | [`0x4aa421...045016`](./contracts/ethereum-1/0x4aa42145aa6ebf72e164c9bbc74fbd3788045016/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
