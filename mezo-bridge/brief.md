# Agentic Audit Brief: Mezo Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:07.703Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $21,293,979.43
- On-chain TVL (included contracts): $2,629,300.40
- TVL by chain: Ethereum $2,629,300.40

## Project Description

Mezo Bridge is the bridge/application surface associated with Mezo for moving supported assets between Ethereum and the Mezo network. Its owned contract surface should be limited to verified Mezo bridge, lockbox, borrowing, MUSD, or vault contracts, and should exclude upstream asset tokens, external vaults, and other contracts not evidenced as Mezo-controlled.

### Architecture

The Mezo Bridge family integrates multiple components: MezoBridge and Portal handle core bridging logic, while BitcoinDepositor and BitcoinRedeemer manage Bitcoin-specific flows. NttManager and WormholeTransceiver enable cross-chain token transfers via Wormhole. Staking is managed by TokenStaking and GrantStaking, with yield-bearing tokens like stBTC and SolvBTCYieldTokenV3_1. Infrastructure contracts like WalletRegistry, WalletCoordinator, and RedemptionWatchtower support tBTC custody, and KeepRandomBeaconService provides randomness for beacon operations.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,629,300.40
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,629,300.40 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SolvBTCYieldTokenV3_1 | token | ethereum | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| MezoBridge | operational_periphery | ethereum | [`0xf6680e...e6908c`](./contracts/ethereum-1/0xf6680ea3b480ca2b72d96ea13ccaf2cfd8e6908c/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/) | ⚠️ Unaudited |
| T | unknown | ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | T | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
