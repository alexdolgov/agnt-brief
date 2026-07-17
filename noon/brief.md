# Agentic Audit Brief: Noon

## Project Overview

- Project: Noon (`noon`)
- Website: [https://app.noon.capital](https://app.noon.capital)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.812Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum, hyperliquid, zksync-era
- Contract surface: 30 unique implementations (50 raw deployments)
- DeFi Llama TVL: $32,597,965.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 28 project-authored contract(s) across 2 chain(s); 4 ERC4626 vaults, 7 ERC20 tokens, 2 ERC721 NFTs, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 9 common project-authored base contract(s) (oftupgradeable, oftcoreupgradeable, oappupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 50 (40 live, 10 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/15 (13.3%)
- Deployed-live implementations: 20 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/20
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 30
- Raw deployments: 50
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 2 | 10.0% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingVaultOFTUpgradeableHyperlane | unknown | ethereum | n/a | 3 deployments: ethereum [`0x20548dc8b015ab92e5afc64c50f6a6b9c0bca8b4`](./contracts/ethereum-1/0x20548dc8b015ab92e5afc64c50f6a6b9c0bca8b4/); ethereum `0xa939cc696642da8d2b2b83844d7fc539fa60f895`; ethereum `0xd876130832bc6da605eed9fee6ceb4f45666aa42` | ✅ Audited |
| StakingVaultOFTUpgradeableHyperlane | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd1ffb6a6a42c86b931b2a6d388d1f25c1c775b34`](./contracts/ethereum-1/0xd1ffb6a6a42c86b931b2a6d388d1f25c1c775b34/); ethereum `0xe24a3dc889621612422a64e6388927901608b91d` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DomainMapper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7a3619213cc83c1d21c1374f4f8dad343f020992`](./contracts/ethereum-1/0x7a3619213cc83c1d21c1374f4f8dad343f020992/); ethereum `0xe63fb61f3c83722bb87ec2ebf8ff4cff0d725ae0`; ethereum `0xf8a3713d4f1e922f40e6738929152d41e73bec26` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x365bd6fb4200e422a2b1f7b9dfb1c00471e6d089`](./contracts/ethereum-1/0x365bd6fb4200e422a2b1f7b9dfb1c00471e6d089/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | [`0xbeefff209270748ddd194831b3fa287a5386f5bc`](./contracts/ethereum-1/0xbeefff209270748ddd194831b3fa287a5386f5bc/) | ⚠️ Unaudited |
| MinterHandler | unknown | ethereum | n/a | [`0x34a2798d47b238a7cba9d87d49618dee6c4d999f`](./contracts/ethereum-1/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/) | ⚠️ Unaudited |
| MinterHandlerV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x054f96a1733be7e6916e93e0be30f9f1400e3cc0`](./contracts/ethereum-1/0x054f96a1733be7e6916e93e0be30f9f1400e3cc0/); ethereum `0x7d6f00026e6e29bbcf89cf0c5e02cb5c569cc0be`; ethereum `0xb91b361ebe4022bb62df0651bdd09b21209ac058`; ethereum `0xfc9249b1e027d22c10d27292cb1ed00675197259` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3b26bee26e7ea5225b459abb7433eab4ea52ed01`](./contracts/ethereum-1/0x3b26bee26e7ea5225b459abb7433eab4ea52ed01/); ethereum `0xc415cc3f04f9074a9562aeee02591e65d39a94aa` | ⚠️ Unaudited |
| MultichainHandlerEthereum | unknown | ethereum | n/a | 3 deployments: ethereum [`0xa759a06df6d28b8954baa78bf454f858946684f8`](./contracts/ethereum-1/0xa759a06df6d28b8954baa78bf454f858946684f8/); ethereum `0xaef42361640e6f88de2c8987b5af0bb8b553834c`; ethereum `0xb488c7f383871c640d0f396dc501cb9d0d44b405` | ⚠️ Unaudited |
| RedeemHandler | unknown | ethereum | n/a | [`0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8`](./contracts/ethereum-1/0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8/) | ⚠️ Unaudited |
| RedeemHandlerV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3db3260fff8f5f97c96ae2fe871a9359d46eb566`](./contracts/ethereum-1/0x3db3260fff8f5f97c96ae2fe871a9359d46eb566/); ethereum `0x9f8d0a683871125083170f65430f8a15affa0086` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1b2262903fdb0a8eb84291cc227426be590c4503`](./contracts/ethereum-1/0x1b2262903fdb0a8eb84291cc227426be590c4503/); ethereum `0x1ea169ecccf7714e7ba04900e1a3357cca77327f`; ethereum `0x364a77729fc3eddf7fc430c9f4913e055b0f68b9`; ethereum `0x646db2928d04a947d485fd8267b236b817d89daa` | ⚠️ Unaudited |
| SpectraPriceOracle | operational_periphery | ethereum | n/a | [`0x76d048e47e1d77940416b656d8d7fed34931a393`](./contracts/ethereum-1/0x76d048e47e1d77940416b656d8d7fed34931a393/) | ⚠️ Unaudited |
| StakedUSNOFTHyperlane | token | ethereum | n/a | [`0x97e1d6ee6005f0038df3076fb0337f315e751e07`](./contracts/ethereum-1/0x97e1d6ee6005f0038df3076fb0337f315e751e07/) | ⚠️ Unaudited |
| stakeNOON | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37527c83d6804c35c6b36c6ef173c3bffea06bff`](./contracts/ethereum-1/0x37527c83d6804c35c6b36c6ef173c3bffea06bff/); ethereum `0x9ade3418fb6199ae36c29ac2eb4f5bc889846dd6` | ⚠️ Unaudited |
| stakeNOONVesting | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xb6aced50a83c893949680ad830651ea969558e05`](./contracts/ethereum-1/0xb6aced50a83c893949680ad830651ea969558e05/); ethereum `0xc6bd83ec60ae3ab25d0eee700ed2b7c0cdcd2cc1` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | core_logic | ethereum | n/a | [`0xb9e5b8d826939580db142faba61fcdea9aaca6e7`](./contracts/ethereum-1/0xb9e5b8d826939580db142faba61fcdea9aaca6e7/) | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x6e46353f6ba66e22289aae9ffa79e1bfd593219e`](./contracts/ethereum-1/0x6e46353f6ba66e22289aae9ffa79e1bfd593219e/); hyperliquid `0x9a137fdbe8bbb6065626098818dc82d26c20659b`; hyperliquid `0xf08c4a8f113c8a90788f02b8151085eb9bc01e0e` | ⚠️ Unaudited |
| Timelock | governance | hyperliquid | n/a | 2 deployments: ethereum `0xe5e412c212b4fbbf550a94e7bd5e83db0b315a7f`; hyperliquid [`0x73d59063212c1a3fd32882d46a84efb37911550d`](./contracts/hyperliquid-999/0x73d59063212c1a3fd32882d46a84efb37911550d/) | ⚠️ Unaudited |
| WithdrawalHandler | operational_periphery | ethereum | n/a | [`0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178`](./contracts/ethereum-1/0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06e4a0f2a5e1952126c164a04d4e95e2c8d91852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x112e4217563b1d109f1c131c80a0b385d12e9376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80544a71d42d924a1217a570623fd050d9f2414a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89634c8252fd97dc4a270c8ec2ea9944f759b834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe13dc4dbd5d028f670c7cb10b3f41783383d65ba` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0469d9d1de0ee58fa1153ef00836b9bbcb84c0b6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb6a09d426861c63722aa0b333a9ce5d5a9b04c4f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0ada1cb43ac67fffa2773b169920bfab4c6391b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x376adc2c9698e6f3a8ad7a52810c5341dc7cdef0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf89cef90cf229c564596cf105d19bc92e17b98c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view](https://drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view?usp=drive_link) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view](https://drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view?usp=drive_link) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef](https://www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [hashlock.com/audits/noon-capital](https://hashlock.com/audits/noon-capital) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view](https://drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view?usp=sharing) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7a3619213cc83c1d21c1374f4f8dad343f020992`](./contracts/ethereum-1/0x7a3619213cc83c1d21c1374f4f8dad343f020992/) | DomainMapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34a2798d47b238a7cba9d87d49618dee6c4d999f`](./contracts/ethereum-1/0x34a2798d47b238a7cba9d87d49618dee6c4d999f/) | MinterHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054f96a1733be7e6916e93e0be30f9f1400e3cc0`](./contracts/ethereum-1/0x054f96a1733be7e6916e93e0be30f9f1400e3cc0/) | MinterHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8`](./contracts/ethereum-1/0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8/) | RedeemHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3db3260fff8f5f97c96ae2fe871a9359d46eb566`](./contracts/ethereum-1/0x3db3260fff8f5f97c96ae2fe871a9359d46eb566/) | RedeemHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76d048e47e1d77940416b656d8d7fed34931a393`](./contracts/ethereum-1/0x76d048e47e1d77940416b656d8d7fed34931a393/) | SpectraPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97e1d6ee6005f0038df3076fb0337f315e751e07`](./contracts/ethereum-1/0x97e1d6ee6005f0038df3076fb0337f315e751e07/) | StakedUSNOFTHyperlane | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37527c83d6804c35c6b36c6ef173c3bffea06bff`](./contracts/ethereum-1/0x37527c83d6804c35c6b36c6ef173c3bffea06bff/) | stakeNOON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6aced50a83c893949680ad830651ea969558e05`](./contracts/ethereum-1/0xb6aced50a83c893949680ad830651ea969558e05/) | stakeNOONVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9e5b8d826939580db142faba61fcdea9aaca6e7`](./contracts/ethereum-1/0xb9e5b8d826939580db142faba61fcdea9aaca6e7/) | StakingVaultOFTUpgradeable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e46353f6ba66e22289aae9ffa79e1bfd593219e`](./contracts/ethereum-1/0x6e46353f6ba66e22289aae9ffa79e1bfd593219e/) | StorkChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x73d59063212c1a3fd32882d46a84efb37911550d`](./contracts/hyperliquid-999/0x73d59063212c1a3fd32882d46a84efb37911550d/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178`](./contracts/ethereum-1/0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178/) | WithdrawalHandler | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 10 |

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
- [4262] hashlock.com/audits/noon-capital
- [4263] drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view

Fork inheritance lineage and inherited audits are included when available.
