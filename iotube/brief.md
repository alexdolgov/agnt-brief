# Agentic Audit Brief: ioTube

⚠️ Lifecycle status: DECLINING - TVL dropped 10.2% over 90 days

## Project Overview

- Project: ioTube (`iotube`)
- Website: [https://iotube.org](https://iotube.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:41.731Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, polygon
- Contract surface: 15 unique implementations (32 raw deployments)
- DeFi Llama TVL: $2,752,129.96
- On-chain TVL (included contracts): $2,016,766.18
- TVL by chain: Ethereum $1,885,249.34 | Polygon $103,506.11 | Bsc $28,010.73

## Project Description

ioTube is a cross-chain bridge centered on IoTeX that enables token transfers between IoTeX and EVM networks such as Ethereum, BSC, and Polygon using bridge components such as MinterPool and TokenSafe. Avalanche and other network support should be treated as homepage-claimed unless backed by verified contract or TVL evidence in the dataset.

### Architecture

The chain-specific families (BSC, Ethereum, Polygon) share a common architecture of MinterPool, TokenSafe, and TokenCashierWithPayload, with supporting TokenList and WitnessList contracts. The CrossChain IOTX family provides wrapped IoTeX tokens that can be used across these chains, while the Web3 Address Format family may serve as a shared utility for address validation.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 65 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 2/7.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 15
- Raw deployments: 32
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,016,766.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,016,766.18 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrosschainERC20 | token | bsc | n/a | 4 deployments: ethereum `0x9f90b4...1d8fe1`; ethereum `0xf79dea...b77e68`; bsc [`0x2aaf50...b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/); polygon `0x300211...74d388` | ⚠️ Unaudited |
| TokenSafe | token | ethereum | n/a | [`0xc2e0f3...7f0d7a`](./contracts/ethereum-1/0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a/) | ⚠️ Unaudited |
| TokenCashierWithPayload | token | ethereum | n/a | 5 deployments: ethereum [`0x1b9aa8...43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/); ethereum `0xd57bde...a8d7d4`; bsc `0x78de1e...940204`; polygon `0x6bba6b...21e049`; polygon `0x990b50...18d731` | ⚠️ Unaudited |
| CrosschainERC20V2 | token | ethereum | n/a | [`0x9c3af6...6c13b5`](./contracts/ethereum-1/0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5/) | ⚠️ Unaudited |
| CrosschainTokenCashierRouter | adapter | bsc | n/a | [`0x2a26fe...48391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | ⚠️ Unaudited |
| CrosschainTokenCashierWithPayloadRouter | adapter | polygon | n/a | 2 deployments: ethereum `0x3030bd...d33305`; polygon [`0x2c43e5...a713a8`](./contracts/polygon-137/0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8/) | ⚠️ Unaudited |
| MinterPool | core_logic | polygon | n/a | 2 deployments: ethereum `0x964f4f...f63b45`; polygon [`0x4799d5...a5a454`](./contracts/polygon-137/0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454/) | ⚠️ Unaudited |
| TokenList | token | polygon | n/a | 2 deployments: bsc `0xa6ae93...321ee3`; polygon [`0x14bf34...966277`](./contracts/polygon-137/0x14bf347a597aac623240ae7ac8383ae198966277/) | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | polygon | n/a | 4 deployments: ethereum `0xe7eba1...0c59d5`; bsc `0x95c6f6...fc794a`; polygon [`0x86b7a9...6c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/); polygon `0x87e2d4...890cd6` | ⚠️ Unaudited |
| Unwrapper | unknown | polygon | n/a | 2 deployments: ethereum `0xedec2d...1b4287`; polygon [`0xc3b3fc...304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | ⚠️ Unaudited |
| VestingManager | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x31603c...00b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/); bsc `0x668b60...3baae0` | ⚠️ Unaudited |
| WitnessList | unknown | polygon | n/a | 2 deployments: bsc `0x811941...a1ee3f`; polygon [`0x1e58ca...292c17`](./contracts/polygon-137/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | ⚠️ Unaudited |
| XCashier | unknown | polygon | n/a | 2 deployments: ethereum `0xe58997...24006b`; polygon [`0x6ccf30...3fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x797f14...bba1ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33193d...203f32` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2aaf50...b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/) | CrosschainERC20 | token | $2,016,297.84 | Verified native implementation with $2,016,297.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2e0f3...7f0d7a`](./contracts/ethereum-1/0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a/) | TokenSafe | token | $242.99 | Verified native implementation with $242.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b9aa8...43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/) | TokenCashierWithPayload | token | $225.35 | Verified native implementation with $225.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c3af6...6c13b5`](./contracts/ethereum-1/0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5/) | CrosschainERC20V2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a26fe...48391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | CrosschainTokenCashierRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c43e5...a713a8`](./contracts/polygon-137/0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8/) | CrosschainTokenCashierWithPayloadRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4799d5...a5a454`](./contracts/polygon-137/0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454/) | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14bf34...966277`](./contracts/polygon-137/0x14bf347a597aac623240ae7ac8383ae198966277/) | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x86b7a9...6c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/) | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc3b3fc...304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31603c...00b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/) | VestingManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1e58ca...292c17`](./contracts/polygon-137/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ccf30...3fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | XCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
