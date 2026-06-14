# Agentic Audit Brief: ioTube

⚠️ Lifecycle status: DECLINING - TVL dropped 10.2% over 90 days

## Project Overview

- Project: ioTube (`iotube`)
- Website: [https://iotube.org](https://iotube.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-14T08:13:30.836Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-403f
- Chains: bsc, ethereum, polygon
- Contract surface: 39 unique implementations (97 raw deployments)
- DeFi Llama TVL: $2,752,129.96
- On-chain TVL (included contracts): $2,232,712.67
- TVL by chain: Ethereum $1,885,249.34 | Bsc $243,957.22 | Polygon $103,506.11

## Project Description

ioTube is a cross-chain bridge centered on IoTeX that enables token transfers between IoTeX and EVM networks such as Ethereum, BSC, and Polygon using bridge components such as MinterPool and TokenSafe. Avalanche and other network support should be treated as homepage-claimed unless backed by verified contract or TVL evidence in the dataset.

### Architecture

The chain-specific families (BSC, Ethereum, Polygon) share a common architecture of MinterPool, TokenSafe, and TokenCashierWithPayload, with supporting TokenList and WitnessList contracts. The CrossChain IOTX family provides wrapped IoTeX tokens that can be used across these chains, while the Web3 Address Format family may serve as a shared utility for address validation.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 1
- Unverified implementations: 23
- Unique implementations: 39
- Raw deployments: 97
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,232,712.67
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,232,712.67 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrosschainERC20 | token | bsc | 8 deployments: ethereum `0x300211...74d388`; ethereum `0x30e68f...f40c63`; ethereum `0x9f90b4...1d8fe1`; ethereum `0xb0ed1f...6f5275`; ethereum `0xf79dea...b77e68`; bsc [`0x2aaf50...b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/); bsc `0x8dfb10...b37d43`; polygon `0x300211...74d388` | ⚠️ Unaudited |
| TokenSafe | token | bsc | 4 deployments: ethereum `0xc2e0f3...7f0d7a`; bsc [`0xa239f0...399e45`](./contracts/bsc-56/0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45/); bsc `0xfbe9a4...c4ce4b`; polygon [`0xa239f0...399e45`](./contracts/polygon-137/0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45/) | ⚠️ Unaudited |
| TokenCashierWithPayload | token | ethereum | 5 deployments: ethereum [`0x1b9aa8...43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/); ethereum `0xd57bde...a8d7d4`; bsc `0x78de1e...940204`; polygon `0x6bba6b...21e049`; polygon `0x990b50...18d731` | ⚠️ Unaudited |
| CrosschainTokenCashierRouter | adapter | bsc | 4 deployments: ethereum `0x4c8d28...866044`; ethereum `0xc0ee09...606882`; ethereum `0xc7ac44...91d7b2`; bsc [`0x2a26fe...48391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | ⚠️ Unaudited |
| CrosschainTokenCashierRouterWithoutPreapproval | adapter | ethereum | [`0xc2a855...7395c2`](./contracts/ethereum-1/0xc2a855056453a8c81d154b47e926f0c46c7395c2/) | ⚠️ Unaudited |
| CrosschainTokenCashierWithPayloadRouter | adapter | polygon | 2 deployments: ethereum `0x3030bd...d33305`; polygon [`0x2c43e5...a713a8`](./contracts/polygon-137/0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8/) | ⚠️ Unaudited |
| MinterPool | core_logic | bsc | 10 deployments: ethereum `0x964f4f...f63b45`; bsc [`0x12af43...a30a5f`](./contracts/bsc-56/0x12af43ef94b05a0a3447a05eee629c7d88a30a5f/); bsc `0xd2165d...1ee623`; bsc `0xf72cfb...1a29be`; polygon [`0x12af43...a30a5f`](./contracts/polygon-137/0x12af43ef94b05a0a3447a05eee629c7d88a30a5f/); polygon `0x3233eb...f4b71c`; polygon `0x4799d5...a5a454`; polygon `0x5cc65d...25e676`; polygon `0xa1dae1...db50f9`; polygon `0xb525af...6c82b0` | ⚠️ Unaudited |
| TokenCashier | token | ethereum | [`0xa0fd74...4e1682`](./contracts/ethereum-1/0xa0fd7430852361931b23a31f84374ba3314e1682/) | ⚠️ Unaudited |
| TokenList | token | bsc | 10 deployments: ethereum `0x73ffdf...e35b3e`; ethereum `0x7c0bef...08aede`; bsc [`0x0d793f...743b34`](./contracts/bsc-56/0x0d793f4d4287265b9bda86b7a4083193e8743b34/); bsc `0xa6ae93...321ee3`; bsc `0xc8dc8d...303f3e`; bsc `0xde9395...4bb0f7`; polygon `0x14bf34...966277`; polygon `0xb4d3ce...9d6ad1`; polygon `0xc8dc8d...303f3e`; polygon `0xde9395...4bb0f7` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | polygon | 4 deployments: ethereum `0xe7eba1...0c59d5`; bsc `0x95c6f6...fc794a`; polygon [`0x86b7a9...6c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/); polygon `0x87e2d4...890cd6` | ⚠️ Unaudited |
| Unwrapper | unknown | polygon | 2 deployments: ethereum `0xedec2d...1b4287`; polygon [`0xc3b3fc...304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | ⚠️ Unaudited |
| VestingManager | operational_periphery | bsc | 2 deployments: bsc [`0x31603c...00b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/); bsc `0x668b60...3baae0` | ⚠️ Unaudited |
| WIOTXUnwrapper | unknown | ethereum | [`0xc05157...3eb894`](./contracts/ethereum-1/0xc051572665a00d55a534f6483b906297613eb894/) | ⚠️ Unaudited |
| WitnessList | unknown | bsc | 5 deployments: ethereum `0x8598df...0ad83f`; bsc [`0x1e58ca...292c17`](./contracts/bsc-56/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/); bsc `0x2f1a0b...c2aed2`; bsc `0x811941...a1ee3f`; polygon [`0x1e58ca...292c17`](./contracts/polygon-137/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | ⚠️ Unaudited |
| XCashier | unknown | polygon | 2 deployments: ethereum `0xe58997...24006b`; polygon [`0x6ccf30...3fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrosschainERC20V2 | token | ethereum | 13 deployments: ethereum [`0x03f353...a34284`](./contracts/ethereum-1/0x03f353dd6a5d65d533f4746aebc927e7fea34284/); ethereum `0x2babab...c12687`; ethereum `0x33c934...a81b5c`; ethereum `0x370f98...8e1343`; ethereum `0x6ed842...6d2116`; ethereum `0x77480e...d3dca4`; ethereum `0x9c3af6...6c13b5`; ethereum `0xacf461...378751`; ethereum `0xc4ffc1...ff7127`; ethereum `0xdff04a...c2fe7e`; ethereum `0xedf708...cf9757`; ethereum `0xf96c9e...958d50`; bsc `0x52702a...772fde` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0a60b0...9c0b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62ee79...3ebcca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb7606...54c891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd81651...53d955` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe97a3c...0a1c86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf70bdf...f701ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7f73a...4cddd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfbe9a4...c4ce4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x082020...20f400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x116404...ad3123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x797f14...bba1ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c0bef...08aede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x80ad2e...6b0627` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd20a13...b9f0f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0aaea7...71b446` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2f1a0b...c2aed2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x33193d...203f32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x811941...a1ee3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8dd2f9...f2ec1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x964f4f...f63b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa0fd74...4e1682` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf72cfb...1a29be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbe9a4...c4ce4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2aaf50...b60598`](./contracts/bsc-56/0x2aaf50869739e317ab80a57bf87caa35f5b60598/) | CrosschainERC20 | token | $2,016,297.84 | Verified native implementation with $2,016,297.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa239f0...399e45`](./contracts/bsc-56/0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45/) | TokenSafe | token | $216,189.47 | Verified native implementation with $216,189.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b9aa8...43bac4`](./contracts/ethereum-1/0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4/) | TokenCashierWithPayload | token | $225.35 | Verified native implementation with $225.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f353...a34284`](./contracts/ethereum-1/0x03f353dd6a5d65d533f4746aebc927e7fea34284/) | CrosschainERC20V2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a26fe...48391a`](./contracts/bsc-56/0x2a26fede01bfa03e65cd3c68f421cab83648391a/) | CrosschainTokenCashierRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2a855...7395c2`](./contracts/ethereum-1/0xc2a855056453a8c81d154b47e926f0c46c7395c2/) | CrosschainTokenCashierRouterWithoutPreapproval | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c43e5...a713a8`](./contracts/polygon-137/0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8/) | CrosschainTokenCashierWithPayloadRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12af43...a30a5f`](./contracts/bsc-56/0x12af43ef94b05a0a3447a05eee629c7d88a30a5f/) | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0fd74...4e1682`](./contracts/ethereum-1/0xa0fd7430852361931b23a31f84374ba3314e1682/) | TokenCashier | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d793f...743b34`](./contracts/bsc-56/0x0d793f4d4287265b9bda86b7a4083193e8743b34/) | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x86b7a9...6c85b2`](./contracts/polygon-137/0x86b7a9470d93e5ebfd1c099e173bce86196c85b2/) | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc3b3fc...304efe`](./contracts/polygon-137/0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe/) | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31603c...00b001`](./contracts/bsc-56/0x31603c352dcb06e5973afcf7d831824e4900b001/) | VestingManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc05157...3eb894`](./contracts/ethereum-1/0xc051572665a00d55a534f6483b906297613eb894/) | WIOTXUnwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e58ca...292c17`](./contracts/bsc-56/0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17/) | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ccf30...3fc8db`](./contracts/polygon-137/0x6ccf305a21defff295e616ba5aa423eb563fc8db/) | XCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
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
