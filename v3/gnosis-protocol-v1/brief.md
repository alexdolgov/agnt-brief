# Agentic Audit Brief: Gnosis Protocol v1

## Project Overview

- Project: Gnosis Protocol v1 (`gnosis-protocol-v1`)
- Website: [https://gnosis.io/](https://gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.312Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 62 unique implementations (69 raw deployments)
- DeFi Llama TVL: $1,808,350.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 74 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 28 common project-authored base contract(s) (initializablegovernablewhitelist, initializablemodule, initializablemodulekeys). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Rari Capital** (`rari-capital`) in the FeederLogic, Masset, MusdV3 subsystem.
1 audits inherited from `rari-capital`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 128; live-surface contracts included: 66 (35 live, 31 unknown).
- Excluded by liveness: 62 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/31 (9.7%)
- Deployed-live implementations: 31 of 62 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/31
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 62
- Raw deployments: 69
- Audits discovered: 2 (1 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 2 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 9.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeederLogic | unknown | ethereum | n/a | [`0x2837c7...4125de`](./contracts/ethereum-1/0x2837c77527c37d61d9763f53005211dacb4125de/) | ✅ Audited |
| Masset | unknown | ethereum | n/a | 4 deployments: ethereum [`0x69ad13...2b587f`](./contracts/ethereum-1/0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f/); ethereum `0xb83a5a...686f7e`; ethereum `0xe0d0d0...3df1c4`; ethereum `0xe4c5b1...a7668e` | ✅ Audited |
| MusdV3 | unknown | ethereum | n/a | [`0x15b283...945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveIntegration | unknown | ethereum | n/a | [`0xf61734...3d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | ⚠️ Unaudited |
| Api3Token | token | ethereum | n/a | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| BaseToken | token | ethereum | n/a | [`0x22eeab...a0f0e4`](./contracts/ethereum-1/0x22eeab2f980e8ed7824f8ea548c9595564a0f0e4/) | ⚠️ Unaudited |
| BasketManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66126b...dea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/); ethereum `0x6efa26...79bf61` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0x760ea8...dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xadeedd...343c99`](./contracts/ethereum-1/0xadeedd3e5768f7882572ad91065f93ba88343c99/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xd124b5...2a6207`](./contracts/ethereum-1/0xd124b55f70d374f58455c8aedf308e52cf2a6207/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xf65d53...75e35c`](./contracts/ethereum-1/0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c/) | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | ethereum | n/a | [`0xf38522...8a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | n/a | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| CompoundIntegration | unknown | ethereum | n/a | [`0xd55684...9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | ⚠️ Unaudited |
| ConditionalTokens | token | ethereum | n/a | [`0xc59b0e...407e0c`](./contracts/ethereum-1/0xc59b0e4de5f1248c1140964e0ff287b192407e0c/) | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | ethereum | n/a | [`0xa1d65e...725521`](./contracts/ethereum-1/0xa1d65e8fb6e87b60feccbc582f7f97804b725521/) | ⚠️ Unaudited |
| DIAToken | token | ethereum | n/a | [`0x84ca8b...3c9419`](./contracts/ethereum-1/0x84ca8bc7997272c7cfb4d0cd3d55cd942b3c9419/) | ⚠️ Unaudited |
| FeederPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48c591...2c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/); ethereum `0xbb128b...060c64` | ⚠️ Unaudited |
| FeederPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa88328...22b9ea`](./contracts/ethereum-1/0xa88328ed84c31c98d81237c354cc852a5022b9ea/); ethereum `0xb61a6f...4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/); ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | n/a | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | n/a | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xe595d6...1f1dbd`](./contracts/ethereum-1/0xe595d67181d701a5356e010d9a58eb9a341f1dbd/) | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | n/a | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MetaToken | token | ethereum | n/a | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | n/a | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | n/a | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | n/a | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x9b4aba...6c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | n/a | [`0xf4a7d2...f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | ⚠️ Unaudited |
| YieldContract | unknown | ethereum | n/a | [`0x90ef22...2a5f4f`](./contracts/ethereum-1/0x90ef220f222e8c319504bdb510a2b739222a5f4f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x08eee5...0affad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19f7f0...ee2973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a1bab...f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bf9f7...290dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c676...64721f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25dd5b...f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x321899...20efd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f74b...95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4186c5...17f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x423998...5a6671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a38c...335a77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539c54...6d81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca061...65b7ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60cbf3...fad4d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657bd4...428ef9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x880d95...006788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9827b8...6b5883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d066c...48a673` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa20f2a...66dca6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa64d0b...aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa05a0...dec8bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1dba9...4cdacd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd88e1...3c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4a510...85b102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7b94f...bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf4482...973d20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe290c1...3c5c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97b78...8a9114` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaa5a2...d6d709` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2abc...9a4af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf02391...7388b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | n/a | unknown | Inherited from Rari Capital — forked code, scoped to FeederLogic, Masset, MusdV3 | inherited | 6 | n/a |
| [Exchange_audit_report.pdf](https://github.com/gnosis/dex-contracts/blob/master/Exchange_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=6

Zero-match audit list:

- [20631] Exchange_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
