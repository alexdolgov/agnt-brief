# Agentic Audit Brief: Noon

## Project Overview

- Project: Noon (`noon`)
- Website: [https://app.noon.capital](https://app.noon.capital)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T01:35:07.729Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: ethereum, hyperliquid, zksync-era
- Contract surface: 23 unique implementations (40 raw deployments)
- DeFi Llama TVL: $34,051,322.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Noon is a yield-generating stablecoin and yield optimization protocol for USN. The protocol allocates collateral into delta-neutral strategies and distributes raw yield and governance-token rewards. NOON is its governance token, and the protocol integrates cross-chain functionality via Hyperlane and uses oracles for price feeds.

### Architecture

The Noon family relies on the Oracles family for price feeds to manage staking and stablecoin minting. The Protocol smart contracts family provides operational support for minting, redeeming, and rewards, while Token deployments enable cross-chain token transfers via Hyperlane, all governed by the Timelock and multisig wallets.

## Contract Surface Quality

- Indexed contracts: 85; live-surface contracts included: 40 (37 live, 3 unknown).
- Excluded by liveness: 23 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 2/12 live.
- Detected codebases: none
- Dependencies extracted: 17; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 23
- Raw deployments: 40
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DomainMapper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7a3619...020992`](./contracts/ethereum-1/0x7a3619213cc83c1d21c1374f4f8dad343f020992/); ethereum `0xe63fb6...725ae0`; ethereum `0xf8a371...3bec26` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-33929 | [`0x365bd6...e6d089`](./contracts/ethereum-1/0x365bd6fb4200e422a2b1f7b9dfb1c00471e6d089/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | [`0xbeefff...86f5bc`](./contracts/ethereum-1/0xbeefff209270748ddd194831b3fa287a5386f5bc/) | ⚠️ Unaudited |
| MinterHandler | unknown | ethereum | n/a | [`0x34a279...4d999f`](./contracts/ethereum-1/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/) | ⚠️ Unaudited |
| MinterHandlerV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x054f96...0e3cc0`](./contracts/ethereum-1/0x054f96a1733be7e6916e93e0be30f9f1400e3cc0/); ethereum `0x7d6f00...9cc0be`; ethereum `0xb91b36...9ac058`; ethereum `0xfc9249...197259` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3b26be...52ed01`](./contracts/ethereum-1/0x3b26bee26e7ea5225b459abb7433eab4ea52ed01/); ethereum `0xc415cc...9a94aa` | ⚠️ Unaudited |
| MultichainHandlerEthereum | unknown | ethereum | n/a | 3 deployments: ethereum [`0xa759a0...6684f8`](./contracts/ethereum-1/0xa759a06df6d28b8954baa78bf454f858946684f8/); ethereum `0xaef423...53834c`; ethereum `0xb488c7...44b405` | ⚠️ Unaudited |
| RedeemHandler | unknown | ethereum | n/a | [`0xf5deaf...6173e8`](./contracts/ethereum-1/0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8/) | ⚠️ Unaudited |
| RedeemHandlerV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3db326...6eb566`](./contracts/ethereum-1/0x3db3260fff8f5f97c96ae2fe871a9359d46eb566/); ethereum `0x9f8d0a...fa0086` | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-33925 (4 proxies) | 4 deployments: ethereum [`0x1b2262...0c4503`](./contracts/ethereum-1/0x1b2262903fdb0a8eb84291cc227426be590c4503/); ethereum `0x1ea169...77327f`; ethereum `0x364a77...0f68b9`; ethereum `0x646db2...d89daa` | ⚠️ Unaudited |
| SpectraPriceOracle | operational_periphery | ethereum | n/a | [`0x76d048...31a393`](./contracts/ethereum-1/0x76d048e47e1d77940416b656d8d7fed34931a393/) | ⚠️ Unaudited |
| StakedUSNOFTHyperlane | token | ethereum | n/a | [`0x97e1d6...751e07`](./contracts/ethereum-1/0x97e1d6ee6005f0038df3076fb0337f315e751e07/) | ⚠️ Unaudited |
| stakeNOON | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37527c...a06bff`](./contracts/ethereum-1/0x37527c83d6804c35c6b36c6ef173c3bffea06bff/); ethereum `0x9ade34...846dd6` | ⚠️ Unaudited |
| stakeNOONVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xb6aced...558e05`](./contracts/ethereum-1/0xb6aced50a83c893949680ad830651ea969558e05/); ethereum `0xc6bd83...cd2cc1` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | core_logic | ethereum | n/a | [`0xb9e5b8...aca6e7`](./contracts/ethereum-1/0xb9e5b8d826939580db142faba61fcdea9aaca6e7/) | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x6e4635...93219e`](./contracts/ethereum-1/0x6e46353f6ba66e22289aae9ffa79e1bfd593219e/); hyperliquid `0x9a137f...20659b`; hyperliquid `0xf08c4a...c01e0e` | ⚠️ Unaudited |
| Timelock | governance | hyperliquid | n/a | 2 deployments: ethereum `0xe5e412...315a7f`; hyperliquid [`0x73d590...11550d`](./contracts/hyperliquid-999/0x73d59063212c1a3fd32882d46a84efb37911550d/) | ⚠️ Unaudited |
| WithdrawalHandler | operational_periphery | ethereum | n/a | [`0x0dabc0...0f9178`](./contracts/ethereum-1/0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x89634c...59b834` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0469d9...84c0b6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb6a09d...b04c4f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0ada1c...6391b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x376adc...7cdef0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view](https://drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view?usp=drive_link) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view](https://drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view?usp=drive_link) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |
| [Link](https://hashlock.com/audits/noon-capital) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view](https://drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view?usp=sharing) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7a3619...020992`](./contracts/ethereum-1/0x7a3619213cc83c1d21c1374f4f8dad343f020992/) | DomainMapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34a279...4d999f`](./contracts/ethereum-1/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/) | MinterHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054f96...0e3cc0`](./contracts/ethereum-1/0x054f96a1733be7e6916e93e0be30f9f1400e3cc0/) | MinterHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5deaf...6173e8`](./contracts/ethereum-1/0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8/) | RedeemHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3db326...6eb566`](./contracts/ethereum-1/0x3db3260fff8f5f97c96ae2fe871a9359d46eb566/) | RedeemHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37527c...a06bff`](./contracts/ethereum-1/0x37527c83d6804c35c6b36c6ef173c3bffea06bff/) | stakeNOON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dabc0...0f9178`](./contracts/ethereum-1/0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178/) | WithdrawalHandler | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=5

Zero-match audit list:

- [4259] drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view
- [4260] drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view
- [4261] Link
- [4262] Link
- [4263] drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view

Fork inheritance lineage and inherited audits are included when available.
