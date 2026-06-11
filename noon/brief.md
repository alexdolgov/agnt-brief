# Agentic Audit Brief: Noon

## Project Overview

- Project: Noon (`noon`)
- Website: [https://app.noon.capital/get?referralCode=f6f6df83-3c3a-479f-950a-d6f24907b4fa](https://app.noon.capital/get?referralCode=f6f6df83-3c3a-479f-950a-d6f24907b4fa)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T01:32:03.258Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-1f48
- Chains: ethereum, hyperliquid, zksync-era
- Contract surface: 40 unique implementations (83 raw deployments)
- DeFi Llama TVL: $30,422,226.01
- On-chain TVL (included contracts): $20,394,021.23
- TVL by chain: Ethereum $20,394,021.23

## Project Description

Noon is a yield-generating stablecoin and yield optimization protocol for USN. The protocol allocates collateral into delta-neutral strategies and distributes raw yield and governance-token rewards. NOON is its governance token, and the protocol integrates cross-chain functionality via Hyperlane and uses oracles for price feeds.

### Architecture

The Noon family relies on the Oracles family for price feeds to manage staking and stablecoin minting. The Protocol smart contracts family provides operational support for minting, redeeming, and rewards, while Token deployments enable cross-chain token transfers via Hyperlane, all governed by the Timelock and multisig wallets.

## Audit Coverage Summary

- Verified implementations audited: 1/30 (3.3%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 40
- Raw deployments: 83
- Audits discovered: 5
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $17.99
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 3.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakingVaultOFTUpgradeableHyperlane | core_logic | ethereum | 5 deployments: ethereum [`0x20548d...bca8b4`](./contracts/ethereum-1/0x20548dc8b015ab92e5afc64c50f6a6b9c0bca8b4/); ethereum `0xa939cc...60f895`; ethereum `0xd1ffb6...775b34`; ethereum `0xd87613...66aa42`; ethereum `0xe24a3d...08b91d` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakingVault | core_logic | ethereum | [`0x6086d5...08c2bd`](./contracts/ethereum-1/0x6086d52f28c7b7481d8ae0fadd4349cbb608c2bd/) | ⚠️ Unaudited |
| ChainlinkInfrequentOracle | operational_periphery | ethereum | [`0xc0d62e...3af8ae`](./contracts/ethereum-1/0xc0d62e2470a585c8a638b123a78ff31b593af8ae/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | 6 deployments: ethereum [`0x038407...c3c9d2`](./contracts/ethereum-1/0x0384078cfc17efc6dc346a5370addd7f09c3c9d2/); ethereum `0x148401...cb7c9d`; ethereum `0x1eed4b...39ccfe`; ethereum `0x633804...9241a7`; ethereum `0xdebe44...516385`; ethereum `0xf60310...a497fe` | ⚠️ Unaudited |
| DomainMapper | unknown | ethereum | 3 deployments: ethereum [`0x7a3619...020992`](./contracts/ethereum-1/0x7a3619213cc83c1d21c1374f4f8dad343f020992/); ethereum `0xe63fb6...725ae0`; ethereum `0xf8a371...3bec26` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x7e66ec...d9eb1b`](./contracts/ethereum-1/0x7e66ecd575f8a469c1be2bd282e387d62dd9eb1b/); ethereum `0xbd1547...a421b0` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x365bd6...e6d089`](./contracts/ethereum-1/0x365bd6fb4200e422a2b1f7b9dfb1c00471e6d089/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | [`0xbeefff...86f5bc`](./contracts/ethereum-1/0xbeefff209270748ddd194831b3fa287a5386f5bc/) | ⚠️ Unaudited |
| MinterHandler | unknown | ethereum | [`0x34a279...4d999f`](./contracts/ethereum-1/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/) | ⚠️ Unaudited |
| MinterHandlerV2 | unknown | ethereum | 4 deployments: ethereum [`0x054f96...0e3cc0`](./contracts/ethereum-1/0x054f96a1733be7e6916e93e0be30f9f1400e3cc0/); ethereum `0x7d6f00...9cc0be`; ethereum `0xb91b36...9ac058`; ethereum `0xfc9249...197259` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x3b26be...52ed01`](./contracts/ethereum-1/0x3b26bee26e7ea5225b459abb7433eab4ea52ed01/); ethereum `0xc415cc...9a94aa` | ⚠️ Unaudited |
| MultichainHandlerEthereum | unknown | ethereum | 3 deployments: ethereum [`0xa759a0...6684f8`](./contracts/ethereum-1/0xa759a06df6d28b8954baa78bf454f858946684f8/); ethereum `0xaef423...53834c`; ethereum `0xb488c7...44b405` | ⚠️ Unaudited |
| NOON | unknown | ethereum | 3 deployments: ethereum [`0x1bb432...41c6e1`](./contracts/ethereum-1/0x1bb4324553e156570317ea203b6ae6536c41c6e1/); ethereum `0x62977f...3bc2da`; ethereum `0xd3f583...58a0fb` | ⚠️ Unaudited |
| RateProvider | unknown | ethereum | [`0x3a89f8...d2eeaa`](./contracts/ethereum-1/0x3a89f87ea1d5b9fd0fede73b5098678190d2eeaa/) | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | ethereum | [`0x7f7414...6e1a79`](./contracts/ethereum-1/0x7f741401422afff770360fd13127f7462c6e1a79/) | ⚠️ Unaudited |
| RedeemHandler | unknown | ethereum | [`0xf5deaf...6173e8`](./contracts/ethereum-1/0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8/) | ⚠️ Unaudited |
| RedeemHandlerV2 | unknown | ethereum | 2 deployments: ethereum [`0x3db326...6eb566`](./contracts/ethereum-1/0x3db3260fff8f5f97c96ae2fe871a9359d46eb566/); ethereum `0x9f8d0a...fa0086` | ⚠️ Unaudited |
| Safe | unknown | ethereum | 4 deployments: ethereum [`0x1b2262...0c4503`](./contracts/ethereum-1/0x1b2262903fdb0a8eb84291cc227426be590c4503/); ethereum `0x1ea169...77327f`; ethereum `0x364a77...0f68b9`; ethereum `0x646db2...d89daa` | ⚠️ Unaudited |
| SpectraPriceOracle | operational_periphery | ethereum | [`0x76d048...31a393`](./contracts/ethereum-1/0x76d048e47e1d77940416b656d8d7fed34931a393/) | ⚠️ Unaudited |
| StakedUSNHyperlane | token | hyperliquid | 3 deployments: hyperliquid [`0x34a279...4d999f`](./contracts/hyperliquid-999/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/); hyperliquid `0x6086d5...08c2bd`; hyperliquid `0xda67b4...7dc1ed` | ⚠️ Unaudited |
| stakeNOON | unknown | ethereum | 6 deployments: ethereum [`0x2467bc...01333e`](./contracts/ethereum-1/0x2467bcbdab456d732772c4304ed62639ce01333e/); ethereum `0x37527c...a06bff`; ethereum `0x5f9ee6...b471d7`; ethereum `0x630886...8f0701`; ethereum `0x6c243e...d11f93`; ethereum `0x9ade34...846dd6` | ⚠️ Unaudited |
| stakeNOONRewarder | unknown | ethereum | 2 deployments: ethereum [`0x22c9e2...a92ed5`](./contracts/ethereum-1/0x22c9e2ed2f016ae4a0131c251bf3fce882a92ed5/); ethereum `0xb8a609...b6b19e` | ⚠️ Unaudited |
| stakeNOONVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0x56993a...a070d2`](./contracts/ethereum-1/0x56993afd8cdf9409acf3b3aa96f0c10595a070d2/); ethereum `0x628c2b...3642c7`; ethereum `0xb6aced...558e05`; ethereum `0xc6bd83...cd2cc1` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | core_logic | ethereum | 2 deployments: ethereum [`0x1ceaa8...ff5a56`](./contracts/ethereum-1/0x1ceaa8ba832c5bbf486a3d8e170796308cff5a56/); ethereum `0x78fc48...374f97` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | ethereum | 3 deployments: ethereum [`0x6e4635...93219e`](./contracts/ethereum-1/0x6e46353f6ba66e22289aae9ffa79e1bfd593219e/); hyperliquid `0x9a137f...20659b`; hyperliquid `0xf08c4a...c01e0e` | ⚠️ Unaudited |
| Timelock | governance | hyperliquid | 2 deployments: ethereum `0xe5e412...315a7f`; hyperliquid [`0x73d590...11550d`](./contracts/hyperliquid-999/0x73d59063212c1a3fd32882d46a84efb37911550d/) | ⚠️ Unaudited |
| UpgradeableStork | unknown | hyperliquid | 2 deployments: hyperliquid [`0x6e498b...0bd889`](./contracts/hyperliquid-999/0x6e498b02c0036235c8164a502b0eecc7660bd889/); hyperliquid `0xacc0a0...d4fd62` | ⚠️ Unaudited |
| USNUpgradeable | unknown | ethereum | [`0x0ada1c...6391b7`](./contracts/ethereum-1/0x0ada1cb43ac67fffa2773b169920bfab4c6391b7/) | ⚠️ Unaudited |
| USNUpgradeableHyperlane | unknown | ethereum | 3 deployments: ethereum [`0x6bdc81...bc8397`](./contracts/ethereum-1/0x6bdc8104ec827cd48b9cac526420b59a31bc8397/); ethereum `0x7fbd64...fa3ec0`; ethereum `0xda67b4...7dc1ed` | ⚠️ Unaudited |
| WithdrawalHandler | operational_periphery | ethereum | 2 deployments: ethereum [`0x0dabc0...0f9178`](./contracts/ethereum-1/0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178/); ethereum `0x6b872f...f15f12` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x06e4a0...d91852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x112e42...2e9376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80544a...f2414a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89634c...59b834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe13dc4...3d65ba` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x0469d9...84c0b6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xb6a09d...b04c4f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0ada1c...6391b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x376adc...7cdef0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf89cef...7b98c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view](https://drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view?usp=drive_link) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view](https://drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view?usp=drive_link) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Link](https://hashlock.com/audits/noon-capital) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view](https://drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view?usp=sharing) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6086d5...08c2bd`](./contracts/ethereum-1/0x6086d52f28c7b7481d8ae0fadd4349cbb608c2bd/) | StakingVault | core_logic | $17.99 | Verified native implementation with $17.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038407...c3c9d2`](./contracts/ethereum-1/0x0384078cfc17efc6dc346a5370addd7f09c3c9d2/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3619...020992`](./contracts/ethereum-1/0x7a3619213cc83c1d21c1374f4f8dad343f020992/) | DomainMapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e66ec...d9eb1b`](./contracts/ethereum-1/0x7e66ecd575f8a469c1be2bd282e387d62dd9eb1b/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34a279...4d999f`](./contracts/ethereum-1/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/) | MinterHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054f96...0e3cc0`](./contracts/ethereum-1/0x054f96a1733be7e6916e93e0be30f9f1400e3cc0/) | MinterHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa759a0...6684f8`](./contracts/ethereum-1/0xa759a06df6d28b8954baa78bf454f858946684f8/) | MultichainHandlerEthereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a89f8...d2eeaa`](./contracts/ethereum-1/0x3a89f87ea1d5b9fd0fede73b5098678190d2eeaa/) | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f7414...6e1a79`](./contracts/ethereum-1/0x7f741401422afff770360fd13127f7462c6e1a79/) | RateProviderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5deaf...6173e8`](./contracts/ethereum-1/0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8/) | RedeemHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3db326...6eb566`](./contracts/ethereum-1/0x3db3260fff8f5f97c96ae2fe871a9359d46eb566/) | RedeemHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76d048...31a393`](./contracts/ethereum-1/0x76d048e47e1d77940416b656d8d7fed34931a393/) | SpectraPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2467bc...01333e`](./contracts/ethereum-1/0x2467bcbdab456d732772c4304ed62639ce01333e/) | stakeNOON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e4635...93219e`](./contracts/ethereum-1/0x6e46353f6ba66e22289aae9ffa79e1bfd593219e/) | StorkChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x73d590...11550d`](./contracts/hyperliquid-999/0x73d59063212c1a3fd32882d46a84efb37911550d/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ada1c...6391b7`](./contracts/ethereum-1/0x0ada1cb43ac67fffa2773b169920bfab4c6391b7/) | USNUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdc81...bc8397`](./contracts/ethereum-1/0x6bdc8104ec827cd48b9cac526420b59a31bc8397/) | USNUpgradeableHyperlane | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dabc0...0f9178`](./contracts/ethereum-1/0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178/) | WithdrawalHandler | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 3 |
| standard_library | 7 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [4259] drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view
- [4260] drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view
- [4262] Link
- [4263] drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view

Fork inheritance lineage and inherited audits are included when available.
