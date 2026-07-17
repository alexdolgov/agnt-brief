# Agentic Audit Brief: SuperFarm

## Project Overview

- Project: SuperFarm (`superfarm`)
- Website: [https://superverse.co/](https://superverse.co/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.022Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 31 unique implementations (48 raw deployments)
- DeFi Llama TVL: $847,836.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 48 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 4 ERC721 NFTs, 6 ERC1155 multi-tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 49 common project-authored base contract(s) (erc165, fixedorderinventorysale, fixedpricessale). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 48 (41 live, 7 unknown).
- Excluded by liveness: 30 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 24 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 31
- Raw deployments: 48
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
| DeltaTimeInventory | unknown | ethereum | n/a | [`0x2af75676692817d85121353f0d6e8e9ae6ad5576`](./contracts/ethereum-1/0x2af75676692817d85121353f0d6e8e9ae6ad5576/) | ⚠️ Unaudited |
| DeltaTimeStakingBeta | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b`](./contracts/ethereum-1/0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b/); ethereum `0xfacbd97da672fb9883b420e77cd73b64ca775368` | ⚠️ Unaudited |
| ERC20FixedSupply | token | ethereum | n/a | [`0x9cb7a4ef0cae65b07362bc679a0b874041e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ⚠️ Unaudited |
| F1DTCrateKey | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5694bce5b6f06dcd69028d40ab856efc295a524b`](./contracts/ethereum-1/0x5694bce5b6f06dcd69028d40ab856efc295a524b/); ethereum `0x7e439a012e06b9bd4a9a08a0a945b46bea3a215b` | ⚠️ Unaudited |
| GameeVouchers | unknown | ethereum | n/a | [`0xe114bce907a86d81f321c6fd8d8c51d542022c92`](./contracts/ethereum-1/0xe114bce907a86d81f321c6fd8d8c51d542022c92/) | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | n/a | [`0xe28b3b32b6c345a34ff64674606124dd5aceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| MintShop1155 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x681a4241c73037928838efde2fb5af401aa51824`](./contracts/ethereum-1/0x681a4241c73037928838efde2fb5af401aa51824/); ethereum `0xcf4286db00f43f52a3f1188e61dd4581a30f3bd3` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | 5 deployments: ethereum [`0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2`](./contracts/ethereum-1/0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2/); ethereum `0x8179d22607b64fd23b9ef818b3009e101edbb4fc`; ethereum `0xeb55451173b3efb3950129e7f344d81da3814edf`; ethereum `0xebaabac3e56e06d4ce4056593f98599d316557e6`; ethereum `0xfc45041d88ef70f87e7bbe4092f0f9471bf25197` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | n/a | [`0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1`](./contracts/ethereum-1/0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1/) | ⚠️ Unaudited |
| NFTRepairCentre | unknown | ethereum | n/a | [`0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996`](./contracts/ethereum-1/0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996/) | ⚠️ Unaudited |
| OFTAdapterFixedSupply | adapter | ethereum | n/a | [`0xea614f1d42af662199b0aac8e70ddabb7863b793`](./contracts/ethereum-1/0xea614f1d42af662199b0aac8e70ddabb7863b793/) | ⚠️ Unaudited |
| PrePaid | unknown | ethereum | n/a | [`0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8`](./contracts/ethereum-1/0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8/) | ⚠️ Unaudited |
| REVV | unknown | ethereum | n/a | [`0x557b933a7c2c45672b610f8954a3deb39a51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | ⚠️ Unaudited |
| REVVInventory | unknown | ethereum | n/a | [`0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954`](./contracts/ethereum-1/0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954/) | ⚠️ Unaudited |
| REVVSale | unknown | ethereum | n/a | [`0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27`](./contracts/ethereum-1/0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27/) | ⚠️ Unaudited |
| RewardStaker | core_logic | ethereum | n/a | [`0xba48bcc66b6665495ec643ece7811db5723aaf91`](./contracts/ethereum-1/0xba48bcc66b6665495ec643ece7811db5723aaf91/) | ⚠️ Unaudited |
| Staker | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4391940003ee5d7502c41c539aa12d3f2aed4430`](./contracts/ethereum-1/0x4391940003ee5d7502c41c539aa12d3f2aed4430/); ethereum `0x8e586d927ace36a3ef7bddf9f899d2e385d5fc9b`; ethereum `0xb3ea98747440addc6a262735e71b5a5cb29edd80`; ethereum `0xf35a92585ceee7251388e14f268d9065f5206207` | ⚠️ Unaudited |
| Super1155 | unknown | ethereum | n/a | [`0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | ⚠️ Unaudited |
| SuperVerseStaker | core_logic | ethereum | n/a | [`0x8c96edc82d111e3c5686f5abe738a82d54d0b887`](./contracts/ethereum-1/0x8c96edc82d111e3c5686f5abe738a82d54d0b887/) | ⚠️ Unaudited |
| TimeTrialEliteLeague | unknown | ethereum | n/a | 3 deployments: ethereum [`0x654291175cdedc48679f290c318949d9b6b6cead`](./contracts/ethereum-1/0x654291175cdedc48679f290c318949d9b6b6cead/); ethereum `0x736a68f4149a0a73fb869917cb13b7707925a393`; ethereum `0x9d5919e2ec96d02008ba9bb56c45fabe1652c91e` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | ⚠️ Unaudited |
| TokenLaunchpadVouchers | token | ethereum | n/a | [`0x87a3747c9942d8351cc85aac2f94807b27a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | ⚠️ Unaudited |
| TokenVault | unknown | ethereum | n/a | 6 deployments: ethereum [`0x23a1fd006d151e1d920d5de860e82c697e73fbcf`](./contracts/ethereum-1/0x23a1fd006d151e1d920d5de860e82c697e73fbcf/); ethereum `0x701354d1f4a808318327bdfb4a938edd0bf66da7`; ethereum `0x7080f65abb8834259668900de238fcfb73ac3f2c`; ethereum `0x72267d7090dcab8cb832fc77048f47333c250cb1`; ethereum `0xbda122ff9d13e7b5baee2502fa35f8ceb23a4700`; ethereum `0xf6e4795173cafa138c76df176dde7c3bda2e14ca` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x25647e01bd0967c1b9599fa3521939871d1d0888`](./contracts/ethereum-1/0x25647e01bd0967c1b9599fa3521939871d1d0888/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x038b0a47712e27fc3194781ba0393d8a6797e26b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d592a6b40cb7ff7656f62e386e39886c4313921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581d18911344f02b38b55c4fafdfaaa808bd2954` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f698bd4502d6b214520a644d661231f0c3cfc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9748c651c8af8d6c94160f83e61905fa7035b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34bf59caf10df69af433cc4b49e956b4d9c31d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe17baefc002f5922dc04ac837a1b6ebb9ead52ee` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2af75676692817d85121353f0d6e8e9ae6ad5576`](./contracts/ethereum-1/0x2af75676692817d85121353f0d6e8e9ae6ad5576/) | DeltaTimeInventory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b`](./contracts/ethereum-1/0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b/) | DeltaTimeStakingBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cb7a4ef0cae65b07362bc679a0b874041e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ERC20FixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5694bce5b6f06dcd69028d40ab856efc295a524b`](./contracts/ethereum-1/0x5694bce5b6f06dcd69028d40ab856efc295a524b/) | F1DTCrateKey | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe114bce907a86d81f321c6fd8d8c51d542022c92`](./contracts/ethereum-1/0xe114bce907a86d81f321c6fd8d8c51d542022c92/) | GameeVouchers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe28b3b32b6c345a34ff64674606124dd5aceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | InjectiveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x681a4241c73037928838efde2fb5af401aa51824`](./contracts/ethereum-1/0x681a4241c73037928838efde2fb5af401aa51824/) | MintShop1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2`](./contracts/ethereum-1/0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1`](./contracts/ethereum-1/0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1/) | MyOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996`](./contracts/ethereum-1/0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996/) | NFTRepairCentre | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea614f1d42af662199b0aac8e70ddabb7863b793`](./contracts/ethereum-1/0xea614f1d42af662199b0aac8e70ddabb7863b793/) | OFTAdapterFixedSupply | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8`](./contracts/ethereum-1/0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8/) | PrePaid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x557b933a7c2c45672b610f8954a3deb39a51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | REVV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954`](./contracts/ethereum-1/0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954/) | REVVInventory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27`](./contracts/ethereum-1/0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27/) | REVVSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba48bcc66b6665495ec643ece7811db5723aaf91`](./contracts/ethereum-1/0xba48bcc66b6665495ec643ece7811db5723aaf91/) | RewardStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4391940003ee5d7502c41c539aa12d3f2aed4430`](./contracts/ethereum-1/0x4391940003ee5d7502c41c539aa12d3f2aed4430/) | Staker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | Super1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c96edc82d111e3c5686f5abe738a82d54d0b887`](./contracts/ethereum-1/0x8c96edc82d111e3c5686f5abe738a82d54d0b887/) | SuperVerseStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x654291175cdedc48679f290c318949d9b6b6cead`](./contracts/ethereum-1/0x654291175cdedc48679f290c318949d9b6b6cead/) | TimeTrialEliteLeague | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87a3747c9942d8351cc85aac2f94807b27a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | TokenLaunchpadVouchers | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23a1fd006d151e1d920d5de860e82c697e73fbcf`](./contracts/ethereum-1/0x23a1fd006d151e1d920d5de860e82c697e73fbcf/) | TokenVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
