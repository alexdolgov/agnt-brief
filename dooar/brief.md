# Agentic Audit Brief: DOOAR

## Project Overview

- Project: DOOAR (`dooar`)
- Website: [https://beta.dooar.com/swap](https://beta.dooar.com/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.210Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, ethereum, polygon
- Contract surface: 76 unique implementations (78 raw deployments)
- DeFi Llama TVL: $4,621,058.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 3 ERC20 tokens, 5 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (erc2771context). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 126; live-surface contracts included: 78 (4 live, 74 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 74
- Unique implementations: 76
- Raw deployments: 78
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DooarSwapV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c`](./contracts/ethereum-1/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/); bsc [`0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c`](./contracts/bsc-56/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | ⚠️ Unaudited |
| DooarSwapV2Router02 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x53e0e51b5ed9202110d7ecd637a4581db8b9879f`](./contracts/ethereum-1/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/); bsc [`0x53e0e51b5ed9202110d7ecd637a4581db8b9879f`](./contracts/bsc-56/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (74)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x17db7a395bcc1ec828e732a014dd2a7c43ed30f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f5d385397095aaed4daffe336f9815ac598dff5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba5ae86960fe468ff02d83022c0079670bd8f6a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x06a851cb8ea6ba8761ede8d543210836aa27930a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08766ce393fde189409f536c15d0d5d2fa20377f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a659b3791ed4c6baa0189fca8878f5a17679d15` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d6f2e9663f6d6894e215940808ef9678635662a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x198cc50edf20eaaae565d3fa77d0cb28a867c890` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bfc619480c821fcfccccf7723da10986ab1323d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c60512eb376c13b1e2c8e240e1d39c456af9624` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d0fee93e08d615900c310f40e9f39fd9d731c97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x247f9d3e97aa2bcc3177de80787400b00d35d9ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2caa2bd7495d8cf8142d87805dbb33412e401bf8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30fe36969b1b6f2b4bfc62fff1f3e2c7713ceed6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3113206f7fd3260ac6751922528a75a9bfa15ddf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3415b90ce755ff54e15b1eca2579da9bb3563a0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36d394803c33b58c6c4d580d5c39adb1f93ac670` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39a17e068da91f413bbac0227e085fbea79f721d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39fb309f204dc3739cd448db4a5fcc20253d11e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41fc5635fc878d13934dc576134c139941b854f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45842d4cc72e845055a9caf02f363e57e48ac1e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x468736bee54e27d54682af1cf21454d42dd26cb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x472dc538a716f6161bd087eb4541cfb3b92e3750` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cb5378a6b44f85eb3c60a2e7f6e9215b361e2bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e80022a01cd8802ac218ebc9fa37ddf81a68c55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fd478241a6e9c205c2182f2751b60427bd79d84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x55d9cf5218cb6742840f83c572dd82653413b0d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ef792f70fac063da4065376069d3b89956e145f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x619d8f54cfe7ac97cae56b06e4ee165ead32bae1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6aff345d4b9ead0a565f741659a4fab109be3eff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70aa1ca9ed8cee008bad161b870e95c2b4347ad6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x726b0317f448d2cc0bba60718f34e0eb41040ab3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x738f530dc2868f586ff09619f782dae3ef0e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x785112c90fbbbf526a44703ba2074d75d1b470b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78aaa3775999503e439112dc8801fb4a839934ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7dd732700504936f87928e524b17eddd71cc3cfd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81500a29bdc8c58dd405e27c0f71a12bd1254aef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82eb5c1f39afdda183eb402e9181eaadeb8945ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x862c5d8b6ee00e2c176f8101a53a374ea98dd330` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x894f77e879f34f3aaa23fef2a8a8dee271ef51e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d1cfcb35662a733642e0e6bedca30b4c0eb63f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d6d4170ed68f14c226994e93ffc487482e24069` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f516a5be143438b229c89aa58cec4cd915dbe59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90b8a5db1f7eb2bbf6981f86bc45dbb51dea31d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92985fbfd15e23affe3cd857f36f834a0a2f7bc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x940ffa3627facd1b68be77cad68d4e677cc5623e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x976d26b12f6e982e7aaf94dfe2daf41603b19bb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9964317eb7afbfb8cb266f8c81f1fb6979453301` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d2fd91370e8551a8f2705b31fe1de9953b880ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xacc8e414ceecf0bbf438f6c4b7417ca59dcf7e47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae274b51325984ee679d5fd4af6630511d1374c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1da83f13a2f699ab365c273eca931940c460880` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb22ea796d50b5510544c0769076982cd01f86312` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2b68e168c09c5eaa0ed53a38e04dd05aeecc3e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5f158be24a5d7aa4be7537a9472fee92ca0c527` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb7f473915070f76d8365f59977c278033f1e3be5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc0c0d36eaefbb434d3a0ecc3783713135747de3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbcbcc256cda501bb6573b2eb7cd6ceb5456bdf71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc205b28040a51e1e2c1b407cab3ef804d6c048ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc374982c4daa37b57d1aa428bc6489bdb39570e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5997d30424c2d151c5915f8a18ee08e802abede` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5b17b711f9db9bb54d155b6238a0181f6f1e5af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6766433f8c6d4eabd6e5d8fb6efd430560768ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7dc9fd444d338d0cef2fe9efb00c7ff13f78df9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce93b21356271b2cb80a36abf066e9013d288e90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf0a4ea2536a333b7706dddbcf1f5edf4d50b9f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf1f77e4cc49eaf8d702baafcbc57c4573366c89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda70fe8342fcab5157c7707dd3fa81da462d730d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd0d4f773862eb1cb4d713444f4834c64f798f7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd57c1cb6d04ad5fb19cfd173460276e45ac3b43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe32b74ceb7416fdd8f558887706db15153fe98ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9fcea6bb5129de1de4419fdfe2342c8e46039f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecf0aec19675029030db03c3bdabf935a4d835b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee7beb13ba4df0bdf569119db2fd32d0a267223c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c`](./contracts/ethereum-1/0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c/) | DooarSwapV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53e0e51b5ed9202110d7ecd637a4581db8b9879f`](./contracts/ethereum-1/0x53e0e51b5ed9202110d7ecd637a4581db8b9879f/) | DooarSwapV2Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
