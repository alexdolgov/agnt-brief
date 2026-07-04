# Agentic Audit Brief: SuperFarm

## Project Overview

- Project: SuperFarm (`superfarm`)
- Website: [https://superverse.co/](https://superverse.co/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.114Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 37 unique implementations (54 raw deployments)
- DeFi Llama TVL: $847,836.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 48 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 4 ERC721 NFTs, 6 ERC1155 multi-tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 49 common project-authored base contract(s) (erc165, fixedorderinventorysale, fixedpricessale). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 84; live-surface contracts included: 54 (41 live, 13 unknown).
- Excluded by liveness: 30 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/24 (0.0%)
- Deployed-live implementations: 24 of 37 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 37
- Raw deployments: 54
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeltaTimeInventory | unknown | ethereum | n/a | [`0x2af756...ad5576`](./contracts/ethereum-1/0x2af75676692817d85121353f0d6e8e9ae6ad5576/) | ⚠️ Unaudited |
| DeltaTimeStakingBeta | unknown | ethereum | n/a | 2 deployments: ethereum [`0x820489...fde63b`](./contracts/ethereum-1/0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b/); ethereum `0xfacbd9...775368` | ⚠️ Unaudited |
| ERC20FixedSupply | token | ethereum | n/a | [`0x9cb7a4...e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ⚠️ Unaudited |
| F1DTCrateKey | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5694bc...5a524b`](./contracts/ethereum-1/0x5694bce5b6f06dcd69028d40ab856efc295a524b/); ethereum `0x7e439a...3a215b` | ⚠️ Unaudited |
| GameeVouchers | unknown | ethereum | n/a | [`0xe114bc...022c92`](./contracts/ethereum-1/0xe114bce907a86d81f321c6fd8d8c51d542022c92/) | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| MintShop1155 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x681a42...a51824`](./contracts/ethereum-1/0x681a4241c73037928838efde2fb5af401aa51824/); ethereum `0xcf4286...0f3bd3` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | 5 deployments: ethereum [`0x4289f1...7f91d2`](./contracts/ethereum-1/0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2/); ethereum `0x8179d2...dbb4fc`; ethereum `0xeb5545...814edf`; ethereum `0xebaaba...6557e6`; ethereum `0xfc4504...f25197` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x879645...b4d5b1`](./contracts/ethereum-1/0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1/) | ⚠️ Unaudited |
| NFTRepairCentre | unknown | ethereum | n/a | [`0xe4f3c9...d63996`](./contracts/ethereum-1/0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996/) | ⚠️ Unaudited |
| OFTAdapterFixedSupply | adapter | ethereum | n/a | [`0xea614f...63b793`](./contracts/ethereum-1/0xea614f1d42af662199b0aac8e70ddabb7863b793/) | ⚠️ Unaudited |
| PrePaid | unknown | ethereum | n/a | [`0x590df9...c730b8`](./contracts/ethereum-1/0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8/) | ⚠️ Unaudited |
| REVV | unknown | ethereum | n/a | [`0x557b93...51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | ⚠️ Unaudited |
| REVVInventory | unknown | ethereum | n/a | [`0xa7a05e...a6f954`](./contracts/ethereum-1/0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954/) | ⚠️ Unaudited |
| REVVSale | unknown | ethereum | n/a | [`0xfb9ffb...466e27`](./contracts/ethereum-1/0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27/) | ⚠️ Unaudited |
| RewardStaker | core_logic | ethereum | n/a | [`0xba48bc...3aaf91`](./contracts/ethereum-1/0xba48bcc66b6665495ec643ece7811db5723aaf91/) | ⚠️ Unaudited |
| Staker | unknown | ethereum | n/a | 4 deployments: ethereum [`0x439194...ed4430`](./contracts/ethereum-1/0x4391940003ee5d7502c41c539aa12d3f2aed4430/); ethereum `0x8e586d...d5fc9b`; ethereum `0xb3ea98...9edd80`; ethereum `0xf35a92...206207` | ⚠️ Unaudited |
| Super1155 | unknown | ethereum | n/a | [`0x6110dd...009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | ⚠️ Unaudited |
| SuperVerseStaker | core_logic | ethereum | n/a | [`0x8c96ed...d0b887`](./contracts/ethereum-1/0x8c96edc82d111e3c5686f5abe738a82d54d0b887/) | ⚠️ Unaudited |
| TimeTrialEliteLeague | unknown | ethereum | n/a | 3 deployments: ethereum [`0x654291...b6cead`](./contracts/ethereum-1/0x654291175cdedc48679f290c318949d9b6b6cead/); ethereum `0x736a68...25a393`; ethereum `0x9d5919...52c91e` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0xe53ec7...b40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | ⚠️ Unaudited |
| TokenLaunchpadVouchers | token | ethereum | n/a | [`0x87a374...a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | ⚠️ Unaudited |
| TokenVault | unknown | ethereum | n/a | 6 deployments: ethereum [`0x23a1fd...73fbcf`](./contracts/ethereum-1/0x23a1fd006d151e1d920d5de860e82c697e73fbcf/); ethereum `0x701354...f66da7`; ethereum `0x7080f6...ac3f2c`; ethereum `0x72267d...250cb1`; ethereum `0xbda122...3a4700`; ethereum `0xf6e479...2e14ca` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x25647e...1d0888`](./contracts/ethereum-1/0x25647e01bd0967c1b9599fa3521939871d1d0888/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x038023...1bae08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038b0a...97e26b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fdb1...9b5d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d592a...313921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581d18...bd2954` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5869b6...c7d155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f698b...3cfc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9748c...035b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafc407...e5bb5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c2bc...7039ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdf230...2fb10d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34bf5...9c31d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe17bae...ad52ee` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
