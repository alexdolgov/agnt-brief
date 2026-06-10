# Agentic Audit Brief: Ambient

⚠️ Lifecycle status: DECLINING - TVL dropped 12.0% over 90 days

## Project Overview

- Project: Ambient (`ambient`)
- Website: [https://ambient.finance/](https://ambient.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:58:56.840Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: blast, canto, ethereum, scroll, swellchain
- Contract surface: 30 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,695,530.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ambient is a decentralized exchange protocol that enables single-contract, multi-chain concentrated and ambient liquidity pools. It supports efficient token swaps, liquidity provision, and on-chain governance across multiple EVM chains.

### Architecture

All chain-specific DEX families (Ambient, Blast, Scroll, Swell Chain) share the same core contract logic (WarmPath/HotProxy) and are governed by the Governance Contracts family. Router contracts on each chain provide user-facing swap interfaces that interact with the respective CrocSwapDex proxy.

## Audit Coverage Summary

- Verified implementations audited: 11/17 (64.7%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 30
- Raw deployments: 52
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 11 | 64.7% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ColdPath | unknown | blast | 2 deployments: ethereum `0xf8fe6f...1dd710`; blast [`0x70b161...e9dc4f`](./contracts/blast-81457/0x70b161f2f0a18bd1865021f25f9e895021e9dc4f/) | ✅ Audited |
| CrocImpact | unknown | ethereum | 2 deployments: ethereum [`0x3e3edd...94c0d0`](./contracts/ethereum-1/0x3e3edd3ed7621891e574e5d7f47b1f30a994c0d0/); blast `0x6a699a...5efdb9` | ✅ Audited |
| CrocPolicy | unknown | ethereum | 3 deployments: ethereum [`0x0b6cd0...0b68a3`](./contracts/ethereum-1/0x0b6cd0ecb176cb39ad99b3a0e4294167a80b68a3/); blast `0x503e3d...8c162c`; scroll `0x70b161...e9dc4f` | ✅ Audited |
| CrocQuery | unknown | scroll | 5 deployments: ethereum `0xbc75a2...79b305`; ethereum `0xc2e1f7...2004c8`; ethereum `0xca0092...7b6b56`; blast `0xa3bd3b...36a8a7`; scroll [`0x62223e...0d6ddf`](./contracts/scroll-534352/0x62223e90605845cf5cc6dae6e0de4cda130d6ddf/) | ✅ Audited |
| CrocSwapDex | proxy | scroll | [`0xaaaaaa...a74106`](./contracts/scroll-534352/0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106/) | ✅ Audited |
| HotProxy | unknown | ethereum | 3 deployments: ethereum [`0x37e005...9ff81f`](./contracts/ethereum-1/0x37e00522ce66507239d59b541940f99ea19ff81f/); blast `0x79cf6e...7ef6e9`; blast `0xaaaaaa...1fb958` | ✅ Audited |
| KnockoutFlagPath | unknown | ethereum | 2 deployments: ethereum [`0x509de5...23c957`](./contracts/ethereum-1/0x509de582af6b4658a1830f7882077fba5523c957/); blast `0xe3150c...fe0bfe` | ✅ Audited |
| KnockoutLiqPath | unknown | blast | 2 deployments: ethereum `0x7f5d75...7ea794`; blast [`0x67231c...6a53aa`](./contracts/blast-81457/0x67231c7db63e5d7378596aadd6ba69345e6a53aa/) | ✅ Audited |
| LongPath | unknown | ethereum | 2 deployments: ethereum [`0x13242b...f2389b`](./contracts/ethereum-1/0x13242bd05b1d3d6b79ada2b28678c235f3f2389b/); blast `0x646929...d93fa9` | ✅ Audited |
| MicroPaths | unknown | blast | 2 deployments: ethereum `0xf241be...752367`; blast [`0xc58f7a...220066`](./contracts/blast-81457/0xc58f7a96a3a8e82da0747a6e1411c3a531220066/) | ✅ Audited |
| WarmPath | unknown | blast | 3 deployments: ethereum `0xaaaaaa...34f688`; ethereum `0xd26876...6cb195`; blast [`0x62223e...0d6ddf`](./contracts/blast-81457/0x62223e90605845cf5cc6dae6e0de4cda130d6ddf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrocDeployer | unknown | ethereum | [`0x25662c...b4b349`](./contracts/ethereum-1/0x25662c94d28da775c4e4fdca987b14d704b4b349/) | ⚠️ Unaudited |
| CrocSwapRouter | adapter | ethereum | 2 deployments: ethereum [`0x533e16...278035`](./contracts/ethereum-1/0x533e164ded63f4c55e83e1f409bdf2bac5278035/); scroll `0xfb5f26...5fd1fc` | ⚠️ Unaudited |
| CrocSwapRouterBypass | adapter | ethereum | 2 deployments: ethereum [`0xa3e58b...2efed2`](./contracts/ethereum-1/0xa3e58b0cb05447398358b6c59e4b2465342efed2/); scroll `0xed5535...b4c4e4` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x9facdc...503a6e`](./contracts/ethereum-1/0x9facdcfb3b58d85d0440af292d64480ad2503a6e/); ethereum `0xdbd8d5...62dac3` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | blast | [`0xc73c8c...1e36ed`](./contracts/blast-81457/0xc73c8c60ea7d7f4338f9a8542927f4f1471e36ed/) | ⚠️ Unaudited |
| TimelockAccepts | governance | blast | 4 deployments: ethereum `0x41114a...38cb7b`; ethereum `0x7237c1...4962b7`; blast [`0x19d005...2dee94`](./contracts/blast-81457/0x19d005f3d4a9c5b0211457339dda9822dc2dee94/); blast `0x786fbc...71eb8f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xa8f881...4eb56f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf9c4f...730c77` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0x79cf6e...7ef6e9` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0x983a06...eb1038` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0xaaaaaa...237d85` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0xaaaaaa...3bf24d` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0xaab174...3f6194` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | `0xd83ef4...7e0362` | ❓ Unverified |
| UnnamedContract | unknown | canto | `0x9290c8...793618` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x754eef...928285` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaab174...3f6194` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd83ef4...7e0362` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xc2c301...2f3ae3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [QuantstampV1.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV1.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | 23 | high |
| [QuantstampV2.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV2.pdf) | Quantstamp | Audit | 2023-05 | stale | Direct | contract_name | 21 | high |
| [Zellic.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/Zellic.pdf) | Zellic | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25662c...b4b349`](./contracts/ethereum-1/0x25662c94d28da775c4e4fdca987b14d704b4b349/) | CrocDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533e16...278035`](./contracts/ethereum-1/0x533e164ded63f4c55e83e1f409bdf2bac5278035/) | CrocSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3e58b...2efed2`](./contracts/ethereum-1/0xa3e58b0cb05447398358b6c59e4b2465342efed2/) | CrocSwapRouterBypass | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x19d005...2dee94`](./contracts/blast-81457/0x19d005f3d4a9c5b0211457339dda9822dc2dee94/) | TimelockAccepts | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=44

Zero-match audit list:

- [8691] Zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
