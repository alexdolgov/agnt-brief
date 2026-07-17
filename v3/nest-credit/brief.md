# Agentic Audit Brief: Nest Credit

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 16 (2 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Nest Credit (`nest-credit`)
- Website: [https://nest.credit/](https://nest.credit/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 49 unique implementations (85 raw deployments)
- Coverage basis: 2/8 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $73,665,389.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Nest Credit. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, bsc, ethereum, plasma. Structural roles: 8 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (8)
- Contract kinds: contract (8)
- Detected standards: erc165 (6), erc20permit (6), erc1967proxy (2)
- Frameworks: openzeppelin (8), solmate (6)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0342ee795e7864319fb8d48651b47febf1163c34`, chain 1)
- UnnamedContract (`0x066d10e240999aea6798b2e2ca0bdac2923cbdff`, chain 1)
- UnnamedContract (`0x116dea23ad6d8122b7e94edf989762eed1cae3d2`, chain 1)
- UnnamedContract (`0x250c2d14ed6376fb392fba1edd2cfd11d2bf7f12`, chain 1)
- UnnamedContract (`0x2a3e301dbd45c143dfbb7b1ce1c55bf0bbf161cb`, chain 1)
- UnnamedContract (`0x4738386d69cf5a7ac088da2887fc0df02795c5e7`, chain 1)
- UnnamedContract (`0x5f35d1cef957467f4c7b35b36371355170a0dbb1`, chain 1)
- UnnamedContract (`0x6330a14fc1520cfdf0834ccf23b15fd47a89a651`, chain 1)
- UnnamedContract (`0x63810d7f1c7b4dbfb60c173ba120a2be98b59e13`, chain 1)
- UnnamedContract (`0x7195de4eab3e43910e3bad93882a7b15b9eb6c8e`, chain 1)
- UnnamedContract (`0x84c18cd8a256bbcb98064558532235d25550d9e3`, chain 1)
- UnnamedContract (`0x93786916e1ee5913a45662a5986559f5785a5ba4`, chain 1)
- UnnamedContract (`0xd258029cf5a177e3306e09fbea63424543a505c0`, chain 1)
- UnnamedContract (`0xd99076fcfd61b3695c5a00740364a84ac8c46cba`, chain 1)
- UnnamedContract (`0xd9b432376cb18c99716865e540bb32c67d795440`, chain 1)
- UnnamedContract (`0xdf45b8322ea4ce898331602e2d1f3d1a67ae0ee8`, chain 1)
- UnnamedContract (`0xec593cf6d9f6e03339914928a82da064956fabee`, chain 1)
- UnnamedContract (`0xf6c00a6ac137680a5e9ecc7ab342df2c4d190510`, chain 1)
- UnnamedContract (`0xf991a58e1cfd4ac26843c33e0eb2adf47d341f2b`, chain 1)
- UnnamedContract (`0xfabd98aee7f100ff31632b5d8124488a39a26835`, chain 1)
- UnnamedContract (`0xfc0c4222b3a0c9b060c0b959dec62442036b9035`, chain 1)
- BoringVault (`0x11113ff3a60c2450f4b22515cb760417259ee94b`, chain 1)
- BoringVault (`0x119dd7daff816f29d7ee47596ae5e4bdc4299165`, chain 1)
- BoringVault (`0x29bf22381a5811dec89dc7b46a5ce57ad02c0240`, chain 1)
- BoringVault (`0x593ccca4c4bf58b7526a4c164ceef4003c6388db`, chain 1)
- BoringVault (`0xa5f78b2a0ab85429d2dfbf8b60abc70f4cec066c`, chain 1)
- BoringVault (`0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9`, chain 1)
- TransparentUpgradeableProxy (`0x5e949fa6401d7c49cdcb48e3a8bdc28f60657a2c`, chain 1)
- TransparentUpgradeableProxy (`0xb7285655b17e28c343a8d5cb340947576fbc14a0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/8 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 29 of 49 unique; 20 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/16
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 49
- Raw deployments: 85
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 25.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 12.5% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NestVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-248901 | `0xb7285655b17e28c343a8d5cb340947576fbc14a0` | ✅ Audited |
| NestVaultOFT | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-248902 | `0x5e949fa6401d7c49cdcb48e3a8bdc28f60657a2c` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0b738cd187872b265a689e8e4130c336e76892ec`; ethereum `0x2ed2f77a961fc92f73d1087786099c39c894ed1d`; ethereum `0x3d649799a16aefadb3fb1033192182b0f9836b32`; ethereum `0x486e0362b0641c0fca21cac2e317f6e21a8b19f3`; ethereum `0xa67d20a49e6fe68cf97e556db6b2f5de1df4dc2f`; ethereum `0xadb076707abed7d19e3a75d98e77fcdfa4c15d93`; ethereum `0xb00bbbd72a377a34eac434226dd3e0e12d12a55b`; ethereum `0xe0cf451d6e373ff04e8ee3c50340f18afa6421e1`; bsc `0x2ed2f77a961fc92f73d1087786099c39c894ed1d`; bsc `0x3d649799a16aefadb3fb1033192182b0f9836b32`; arbitrum `0x0b738cd187872b265a689e8e4130c336e76892ec` | ⚠️ Unaudited |
| AtomicQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x220dc6d4569c1f406d532f9633d5be5bc86e8264`; plasma `0x220dc6d4569c1f406d532f9633d5be5bc86e8264` | ⚠️ Unaudited |
| AtomicQueueUCP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228c44bb4885c6633f4b6c83f14622f37d5112e5` | ⚠️ Unaudited |
| AtomicSolverV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974`; bsc `0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974`; plasma `0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-248868 | `0x11113ff3a60c2450f4b22515cb760417259ee94b` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-248870 | `0x119dd7daff816f29d7ee47596ae5e4bdc4299165` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-248872 | `0x29bf22381a5811dec89dc7b46a5ce57ad02c0240` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-248880 | `0x593ccca4c4bf58b7526a4c164ceef4003c6388db` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-248889 | `0xa5f78b2a0ab85429d2dfbf8b60abc70f4cec066c` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-248895 | `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x1639dcec3ece7f610f96a8935db6bcffbca2fbfb`; ethereum `0x9fbc367b9bb966a2a537989817a088afcaffdc4c`; ethereum `0xbfc5770631641719cd1cf809d8325b146aed19de`; bsc `0x119dd7daff816f29d7ee47596ae5e4bdc4299165`; bsc `0x1639dcec3ece7f610f96a8935db6bcffbca2fbfb`; plasma `0x119dd7daff816f29d7ee47596ae5e4bdc4299165`; plasma `0x1639dcec3ece7f610f96a8935db6bcffbca2fbfb`; arbitrum `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` | ⚠️ Unaudited |
| BoringVaultSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa08c5b18a05317dc0ed43c9eea9ea6db85d84ed1` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8226b661ebaf1cba4e2a92ae2616ccf2348f18cc`; ethereum `0xd476b79dc4b805e5dd1fa002aa6f9d432d600262`; ethereum `0xea452b14fc86847182f8dd0486206eb56dda0393`; bsc `0xd476b79dc4b805e5dd1fa002aa6f9d432d600262`; bsc `0xea452b14fc86847182f8dd0486206eb56dda0393`; plasma `0xd476b79dc4b805e5dd1fa002aa6f9d432d600262`; plasma `0xea452b14fc86847182f8dd0486206eb56dda0393` | ⚠️ Unaudited |
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x1492062b3ae7996c71f87a2b390b6b82afea0c59`; ethereum `0x27200293aac3d04d2b305244f78d013b3c759f9d`; ethereum `0x7d218b7ce9ee5ee4d500ba048240537b728e0d25`; ethereum `0x8034c2c6c5815f5935873279716abf5c1d6f4ab9`; ethereum `0xa5f8e5843dd597a179453bf782844e8bf808a90b`; ethereum `0xad60d43a33ca26e40eacc5bbc60f1c7136ffb89b`; ethereum `0xc9f6a492fb1d623690dc065bbced6dfb4a324a35`; ethereum `0xd65d39c859c6754b3bc14f5c03c4a1ae80fc4c15`; ethereum `0xf288a085622808b5c616ff45d740459741a6551c`; bsc `0x8034c2c6c5815f5935873279716abf5c1d6f4ab9`; bsc `0xa5f8e5843dd597a179453bf782844e8bf808a90b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248865 | `0x0342ee795e7864319fb8d48651b47febf1163c34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248866 | `0x066d10e240999aea6798b2e2ca0bdac2923cbdff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248867 | `0x09a21713265d80da0ad088f903f6fc47054cd6dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248869 | `0x116dea23ad6d8122b7e94edf989762eed1cae3d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248871 | `0x250c2d14ed6376fb392fba1edd2cfd11d2bf7f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248874 | `0x2a3e301dbd45c143dfbb7b1ce1c55bf0bbf161cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248876 | `0x2de3ecaba30c3ae5f12d19a70064f73538a113ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248878 | `0x4738386d69cf5a7ac088da2887fc0df02795c5e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248882 | `0x5f35d1cef957467f4c7b35b36371355170a0dbb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248883 | `0x6330a14fc1520cfdf0834ccf23b15fd47a89a651` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248884 | `0x63810d7f1c7b4dbfb60c173ba120a2be98b59e13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248885 | `0x7195de4eab3e43910e3bad93882a7b15b9eb6c8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248886 | `0x7de01896d36bea9cf072ac64e41685418941d8be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248887 | `0x84c18cd8a256bbcb98064558532235d25550d9e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248888 | `0x93786916e1ee5913a45662a5986559f5785a5ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d572b63c963c6421236c22a10140305c6d41fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248891 | `0xd258029cf5a177e3306e09fbea63424543a505c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248892 | `0xd99076fcfd61b3695c5a00740364a84ac8c46cba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248893 | `0xd9b432376cb18c99716865e540bb32c67d795440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ec26255ffa085af8bca8e42d5e930d4a466063` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248894 | `0xdf45b8322ea4ce898331602e2d1f3d1a67ae0ee8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248896 | `0xec593cf6d9f6e03339914928a82da064956fabee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248897 | `0xf6c00a6ac137680a5e9ecc7ab342df2c4d190510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf76bc95969e5aa32b7b95bb4caaa1bcbb2ddcab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248898 | `0xf991a58e1cfd4ac26843c33e0eb2adf47d341f2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248899 | `0xfabd98aee7f100ff31632b5d8124488a39a26835` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248900 | `0xfc0c4222b3a0c9b060c0b959dec62442036b9035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2ed2f77a961fc92f73d1087786099c39c894ed1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3d649799a16aefadb3fb1033192182b0f9836b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8034c2c6c5815f5935873279716abf5c1d6f4ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa5f8e5843dd597a179453bf782844e8bf808a90b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1492062b3ae7996c71f87a2b390b6b82afea0c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf713a353f38d2e90245b94c1b004c10ab3a34857` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [slowmist.pdf](https://github.com/plumenetwork/contracts/blob/main/staking/audit/slowmist.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [slowmist2.pdf](https://github.com/plumenetwork/contracts/blob/main/staking/audit/slowmist2.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [report_cantinacode_2601.pdf](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report_cantinacode_2601.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 24 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-boring-vault.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-hyperlane.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [report-cantinacode-plume-2511.pdf](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report-cantinacode-plume-2511.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [report-cantinacode-plume-pr11.pdf](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report-cantinacode-plume-pr11.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | zenith | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | zenith | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4751] slowmist.pdf — no match: Extracted from audit report sections 3.1 and 4.1. The audit covers RWAStaking and SBTCStaking contracts, with PlumePreStaking as proxy. Date from audit result table: 2024.10.08 - 2024.10.09, using end date.
- [4752] slowmist2.pdf — no match: Extracted from scope table and contract descriptions. Audit date from audit result section: 2024.10.23 - 2024.10.24, using end date.
- [4753] report_cantinacode_2601.pdf — matched: No reason recorded
- [4754] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: 'March 20, 2024'.
- [4756] 0xmacro-boring-vault-arctic-1.pdf — no match: All contracts listed in the 'Source Code' section with file paths and SHA256 hashes.
- [4757] pashov-boring-vault.pdf — no match: Scope section lists 10 smart contracts. Audit date is July 13th 2024 (end date of review period).
- [4758] pashov-hyperlane.pdf — no match: Scope section lists 5 contracts. Audit date from header: December 14th - December 16th, using end date.
- [4759] report-cantinacode-plume-2511.pdf — matched: No reason recorded
- [4760] report-cantinacode-plume-pr11.pdf — no match: Scope section lists three contracts: BaseCCTPRelayer.sol, NestCCTPRelayer.sol, NestVaultComposer.sol. Additional contracts (VaultComposerSyncUpgradeable, NestVaultCore) are referenced in findings but not explicitly listed in scope; they are included as they are part of the audited codebase.
- [4761] pashov-hlp-controller:account.pdf — no match: Scope section explicitly lists 4 contracts. Audit date is July 30th 2025 (end date of timeline).
- [4762] pashov-one-to-one-queue.pdf — no match: Scope section explicitly lists 10 contracts/files. Audit date from cover page: November 22nd 2025 - November 26th 2025, using end date.
- [4763] pashov-predicate-freeze-supply-cap.pdf — no match: All contracts listed in the Scope section of the report. Audit date is March 5th 2026 (end date of timeline).
- [4764] pashov-withdraw-queue.pdf — no match: Scope section explicitly lists four contracts: WithdrawQueue.sol, TellerWithMultiAssetSupport.sol, CrossChainTellerBase.sol, AccountantWithRateProviders.sol. Audit date is the end date of the timeline: February 5th 2026.
- [4765] zenith-one-to-one-queue.pdf — no match: Scope section lists two targets: CommunityCodeDepositor (wildcard path) and OneToOneQueue (with additional files). All contract names extracted from file paths and findings.
- [4766] zenith-withdraw-queue.pdf — no match: Scope section lists 4 files; all are in scope.
- [14375] spearbit-boring-vault-arctic-0.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings and context throughout the report. The audit date is explicitly stated on the cover page as 'April 19, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| slowmist.pdf | RWAStaking | unmatched — not counted | — | listed in scope and deployed address | no |
| slowmist.pdf | SBTCStaking | unmatched — not counted | — | listed in scope | no |
| slowmist.pdf | PlumePreStaking | unmatched — not counted | — | deployed proxy contract mentioned in scope | no |
| slowmist2.pdf | ReserveStaking | unmatched — not counted | — | listed in scope table | no |
| slowmist2.pdf | SBTC | unmatched — not counted | — | listed in scope table | no |
| slowmist2.pdf | STONE | unmatched — not counted | — | listed in scope table | no |
| slowmist2.pdf | PlumePreReserveFund | unmatched — not counted | — | listed in scope table | no |
| slowmist2.pdf | PlumePreStaking | unmatched — not counted | — | listed in scope table | no |
| slowmist2.pdf | RWAStaking | unmatched — not counted | — | listed in scope table | no |
| report_cantinacode_2601.pdf | AddressUtils | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | BlacklistHook | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | BurnMessage | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | BurnMessageV2 | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | MessageV2 | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestAccountant | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestCCTPRelayer | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestShareOFT | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestShareSeizer | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb7285655b17e28c343a8d5cb340947576fbc14a0` — deployed 2026-06-03 18:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report_cantinacode_2601.pdf | NestVaultAccountingLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultAdminLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultComposer | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultCore | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultCoreTypes | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultCoreValidationLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultDepositLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultOFT | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e949fa6401d7c49cdcb48e3a8bdc28f60657a2c` — deployed 2026-06-02 17:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report_cantinacode_2601.pdf | NestVaultOperatorLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultPermit2 | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultRedeemLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultRedeemOperator | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | NestVaultTransferLogic | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | TypedMemView | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | VaultComposerAsyncUpgradeable | unmatched — not counted | — | — | no |
| report_cantinacode_2601.pdf | VaultComposerSyncUpgradeable | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | ambiguous — not counted | BoringVault (alternative) `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` — deployed 2024-12-18 08:12:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x11113ff3a60c2450f4b22515cb760417259ee94b` — deployed 2025-04-01 05:17:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x29bf22381a5811dec89dc7b46a5ce57ad02c0240` — deployed 2025-10-27 05:32:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0xa5f78b2a0ab85429d2dfbf8b60abc70f4cec066c` — deployed 2025-04-14 00:16:47+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x593ccca4c4bf58b7526a4c164ceef4003c6388db` — deployed 2025-04-04 00:11:47+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x119dd7daff816f29d7ee47596ae5e4bdc4299165` — deployed 2025-10-30 16:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | AaveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | BoringDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBContractDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | Ownable2StepDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | WithdrawableDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveAndConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveNoConfigDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| pashov-boring-vault.pdf | CrossChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuth | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthReceiver | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthSender | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultCrossChainDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultL2OFT | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultOFTAdapter | unmatched — not counted | — | listed in scope | no |
| pashov-hyperlane.pdf | MultiChainHyperlaneTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | MultiChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | AtomicQueueUCP | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-plume-2511.pdf | NestAccountant | unmatched — not counted | — | — | no |
| report-cantinacode-plume-2511.pdf | NestShare | unmatched — not counted | — | — | no |
| report-cantinacode-plume-2511.pdf | NestVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb7285655b17e28c343a8d5cb340947576fbc14a0` — deployed 2026-06-03 18:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-plume-2511.pdf | NestVaultCore | unmatched — not counted | — | — | no |
| report-cantinacode-plume-2511.pdf | NestVaultOFT | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e949fa6401d7c49cdcb48e3a8bdc28f60657a2c` — deployed 2026-06-02 17:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-cantinacode-plume-2511.pdf | NestVaultPredicateProxy | unmatched — not counted | — | — | no |
| report-cantinacode-plume-pr11.pdf | BaseCCTPRelayer | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-plume-pr11.pdf | NestCCTPRelayer | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-plume-pr11.pdf | NestVaultComposer | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-plume-pr11.pdf | VaultComposerSyncUpgradeable | unmatched — not counted | — | mentioned in finding context | no |
| report-cantinacode-plume-pr11.pdf | NestVaultCore | unmatched — not counted | — | mentioned in finding context | no |
| pashov-hlp-controller:account.pdf | CoreWriterDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | WHLPDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | HLPAccount | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | HLPController | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | CommunityCodeDepositor | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | DistributorCodeDepositor | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | OneToOneQueue | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | QueueAccessAuthority | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | SimpleFeeModule | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | AccessAuthority | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | Pausable | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | VerboseAuth | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | IAccessAuthorityHook | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | IFeeModule | unmatched — not counted | — | listed in scope section | no |
| pashov-predicate-freeze-supply-cap.pdf | BoringVault | ambiguous — not counted | BoringVault (alternative) `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` — deployed 2024-12-18 08:12:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x11113ff3a60c2450f4b22515cb760417259ee94b` — deployed 2025-04-01 05:17:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x29bf22381a5811dec89dc7b46a5ce57ad02c0240` — deployed 2025-10-27 05:32:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0xa5f78b2a0ab85429d2dfbf8b60abc70f4cec066c` — deployed 2025-04-14 00:16:47+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x593ccca4c4bf58b7526a4c164ceef4003c6388db` — deployed 2025-04-04 00:11:47+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x119dd7daff816f29d7ee47596ae5e4bdc4299165` — deployed 2025-10-30 16:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| pashov-predicate-freeze-supply-cap.pdf | NucleusDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | MultiChainHyperlaneTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | MultiChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | TellerWithMultiAssetSupportPredicateProxy | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | AssetSpecificFeeModule | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | DexAggregatorWrapperWithPredicateProxy | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | DistributorCodeDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | FreezeListBeforeTransferHook | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | WarpRouteWrapper | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | IFallbackHook | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | CommunityCodeDepositor | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | OneToOneQueue | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | QueueAccessAuthority | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | SimpleFeeModule | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | AccessAuthority | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | VerboseAuth | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.1.1) | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | Listed in findings context (e.g., 3.1.2) | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | Listed in findings context (e.g., 3.1.2) | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | Listed in findings context (e.g., 3.1.4) | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | ambiguous — not counted | BoringVault (alternative) `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` — deployed 2024-12-18 08:12:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x11113ff3a60c2450f4b22515cb760417259ee94b` — deployed 2025-04-01 05:17:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x29bf22381a5811dec89dc7b46a5ce57ad02c0240` — deployed 2025-10-27 05:32:59+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0xa5f78b2a0ab85429d2dfbf8b60abc70f4cec066c` — deployed 2025-04-14 00:16:47+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x593ccca4c4bf58b7526a4c164ceef4003c6388db` — deployed 2025-04-04 00:11:47+03 — liveness: live (current_address_book_code)<br>BoringVault (alternative) `0x119dd7daff816f29d7ee47596ae5e4bdc4299165` — deployed 2025-10-30 16:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | Listed in findings context (e.g., 3.2.2) | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | Listed in findings context (e.g., 3.2.4) | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.2.5) | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.2.1) | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context (e.g., 3.3.8) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x11113ff3a60c2450f4b22515cb760417259ee94b` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x119dd7daff816f29d7ee47596ae5e4bdc4299165` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29bf22381a5811dec89dc7b46a5ce57ad02c0240` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x593ccca4c4bf58b7526a4c164ceef4003c6388db` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5f78b2a0ab85429d2dfbf8b60abc70f4cec066c` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 156 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14
- Match method counts: unique_name=4

Zero-match audit list:

- [4751] slowmist.pdf
- [4752] slowmist2.pdf
- [4754] 0xmacro-boring-vault-arctic-0.pdf
- [4756] 0xmacro-boring-vault-arctic-1.pdf
- [4757] pashov-boring-vault.pdf
- [4758] pashov-hyperlane.pdf
- [4760] report-cantinacode-plume-pr11.pdf
- [4761] pashov-hlp-controller:account.pdf
- [4762] pashov-one-to-one-queue.pdf
- [4763] pashov-predicate-freeze-supply-cap.pdf
- [4764] pashov-withdraw-queue.pdf
- [4765] zenith-one-to-one-queue.pdf
- [4766] zenith-withdraw-queue.pdf
- [14375] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
