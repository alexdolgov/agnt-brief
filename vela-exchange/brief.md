# Agentic Audit Brief: Vela Exchange

## Project Overview

- Project: Vela Exchange (`vela-exchange`)
- Website: [https://www.vela.exchange/](https://www.vela.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.779Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, base
- Contract surface: 41 unique implementations (41 raw deployments)
- DeFi Llama TVL: $369,837.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 36 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, constants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (41 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 41 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropPayoutForRebate | unknown | arbitrum | n/a | [`0x2b1b26...2b5540`](./contracts/arbitrum-42161/0x2b1b26bcb845d6ca9bcf73b21d2a3c49662b5540/) | ⚠️ Unaudited |
| ATokenInstance | unknown | arbitrum | n/a | [`0x724dc8...b8c637`](./contracts/arbitrum-42161/0x724dc807b04555b71ed48a6896b6f41593b8c637/) | ⚠️ Unaudited |
| BlackMarketDealRoll | unknown | arbitrum | n/a | [`0x01d090...09b2e2`](./contracts/arbitrum-42161/0x01d090cad4b10e3afe98f11654f2d2ccf409b2e2/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | base | n/a | [`0x5a76a5...21c6ae`](./contracts/base-8453/0x5a76a56ad937335168b30df3aa1327277421c6ae/) | ⚠️ Unaudited |
| ComplexRewarderPerSec | unknown | base | n/a | [`0x0debba...cc767b`](./contracts/base-8453/0x0debba21390946c082e68ce3b8be4395e4cc767b/) | ⚠️ Unaudited |
| DeductFee_Forwarder | unknown | base | n/a | [`0xff34ed...773f3a`](./contracts/base-8453/0xff34ed9d3ca159727a2c73c095b4d78e41773f3a/) | ⚠️ Unaudited |
| eVELA | unknown | base | n/a | [`0xefd5a7...a18102`](./contracts/base-8453/0xefd5a713c5bd85e9ced46070b2532e4a47a18102/) | ⚠️ Unaudited |
| FirstOpFunctionManager | unknown | arbitrum | n/a | [`0x5f0dab...4ff11e`](./contracts/arbitrum-42161/0x5f0dabef2e4fa7d7b1b8153f06d642173d4ff11e/) | ⚠️ Unaudited |
| GrandPrixRewardDistributor | unknown | arbitrum | n/a | [`0x4ecffd...12085d`](./contracts/arbitrum-42161/0x4ecffd9694c7bc7acb45bd44354492bd7d12085d/) | ⚠️ Unaudited |
| GrandPrixRewardDistributorV2 | unknown | arbitrum | n/a | [`0xd6cc89...c14646`](./contracts/arbitrum-42161/0xd6cc89e02fd0d552bed774563f394bcf44c14646/) | ⚠️ Unaudited |
| LockedStaking | unknown | arbitrum | n/a | [`0x5219fd...2d9c3d`](./contracts/arbitrum-42161/0x5219fd82d58c2e949cf44005dbcdefbb412d9c3d/) | ⚠️ Unaudited |
| LuckyTicketReward | unknown | arbitrum | n/a | [`0x26a21a...612905`](./contracts/arbitrum-42161/0x26a21aad6c96ca7a324f631d376cdb8d2d612905/) | ⚠️ Unaudited |
| OpenInterestManager | unknown | base | n/a | [`0x580c56...c5e6d3`](./contracts/base-8453/0x580c5684b65ac5e0618a5c12b3a7e71a32c5e6d3/) | ⚠️ Unaudited |
| Operators | unknown | base | n/a | [`0x23fc7c...1ae684`](./contracts/base-8453/0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684/) | ⚠️ Unaudited |
| PriceManager | unknown | base | n/a | [`0x028b64...23ac04`](./contracts/base-8453/0x028b644e56367c3a151bb8d7e47225420b23ac04/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x10d18f...4e0701`](./contracts/base-8453/0x10d18fc8cd1e0aa28bfd60fd3cec92559d4e0701/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x0cc831...ab44c4`](./contracts/arbitrum-42161/0x0cc8319ee0050f9f4b4ab94b6219f1386cab44c4/) | ⚠️ Unaudited |
| SecondOpFunctionManager | unknown | arbitrum | n/a | [`0x383f80...b184a7`](./contracts/arbitrum-42161/0x383f80b7459a74659b7dc88a3b3c2fbd44b184a7/) | ⚠️ Unaudited |
| SettingsManager | unknown | arbitrum | n/a | [`0x0d7d97...7a66bc`](./contracts/arbitrum-42161/0x0d7d977075b76e7e1d69e385acba59b9927a66bc/) | ⚠️ Unaudited |
| StakingVault | unknown | arbitrum | n/a | [`0x04698b...c4e198`](./contracts/arbitrum-42161/0x04698b2184fa3f68aefc296827900b7394c4e198/) | ⚠️ Unaudited |
| SwapAndAirdrop | unknown | arbitrum | n/a | [`0x0029cf...c336e1`](./contracts/arbitrum-42161/0x0029cf0b8e5e741416709dda22bc3c38a9c336e1/) | ⚠️ Unaudited |
| TierManager | unknown | arbitrum | n/a | [`0x576150...40624b`](./contracts/arbitrum-42161/0x576150fed7209c384560bcc8a5ec8ca40040624b/) | ⚠️ Unaudited |
| TokenRewardDistributor | unknown | arbitrum | n/a | [`0x41768f...8f3258`](./contracts/arbitrum-42161/0x41768f13079e5e12f571e550a1e04218268f3258/) | ⚠️ Unaudited |
| TraderKickback | unknown | arbitrum | n/a | [`0x7ca88e...41bd6e`](./contracts/arbitrum-42161/0x7ca88e153a5ea7947637db7d124cecf75041bd6e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x00b017...5a7bde`](./contracts/base-8453/0x00b01710c2098b883c4f93dd093be8cf605a7bde/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x042a9b...a05122`](./contracts/base-8453/0x042a9b7e12830047df94f6d234cb6538aba05122/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x0f2dc4...192ddc`](./contracts/base-8453/0x0f2dc4001ee768e8a62fc15bde71fbc6c2192ddc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x1e1d8e...d7e8fe`](./contracts/base-8453/0x1e1d8e3463ea647ffa1449f3536f960992d7e8fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x361a5f...10a561`](./contracts/base-8453/0x361a5f8fa6860b5f5c021a5dd370c1180010a561/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x01936e...bdb3ac`](./contracts/arbitrum-42161/0x01936e8f10e9b243f1107582bbf6fb0c43bdb3ac/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x215772...47a9b0`](./contracts/arbitrum-42161/0x21577220586ce9f6410c97d1063b05a5ad47a9b0/) | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | unknown | base | n/a | [`0xd9aaec...10b6ca`](./contracts/base-8453/0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca/) | ⚠️ Unaudited |
| VelaBoost | unknown | arbitrum | n/a | [`0x1e2b9f...07084e`](./contracts/arbitrum-42161/0x1e2b9fe6d886fe1e0a31c7b328cef71e7d07084e/) | ⚠️ Unaudited |
| VelaLottery | unknown | arbitrum | n/a | [`0x24e5c0...a27e66`](./contracts/arbitrum-42161/0x24e5c0461defe8f1493d72fec1908824d7a27e66/) | ⚠️ Unaudited |
| VelaMission | unknown | arbitrum | n/a | [`0x66ca80...b70834`](./contracts/arbitrum-42161/0x66ca8052776c180c319ca65355f128376eb70834/) | ⚠️ Unaudited |
| VelaNFTBoost | unknown | arbitrum | n/a | [`0x8e0f95...c65e70`](./contracts/arbitrum-42161/0x8e0f954d2fb06883e9af0cd9ec2425d8d9c65e70/) | ⚠️ Unaudited |
| VelaReader | unknown | arbitrum | n/a | [`0x15ae93...929592`](./contracts/arbitrum-42161/0x15ae930df70cea3ca108cc64146911bb58929592/) | ⚠️ Unaudited |
| VelaToken | unknown | arbitrum | n/a | [`0x088cd8...0cd704`](./contracts/arbitrum-42161/0x088cd8f5ef3652623c22d48b1605dcfe860cd704/) | ⚠️ Unaudited |
| VLP | unknown | arbitrum | n/a | [`0xc5b2d9...88eb05`](./contracts/arbitrum-42161/0xc5b2d9fda8a82e8dcecd5e9e6e99b78a9188eb05/) | ⚠️ Unaudited |
| VolatilityManager | unknown | base | n/a | [`0x6c1473...437f4f`](./contracts/base-8453/0x6c1473e4ad5a8185324fb39c909676fb46437f4f/) | ⚠️ Unaudited |
| VUSD | unknown | base | n/a | [`0xaa0b39...229268`](./contracts/base-8453/0xaa0b397b0896a864714de56aa33e3df471229268/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Dorado_09112022_SCAudit_Report_FINAL.pdf](https://hacken.io/wp-content/uploads/2023/02/Dorado_09112022_SCAudit_Report_FINAL.pdf) | Hacken | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023](https://hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023) | Hacken | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x2b1b26...2b5540`](./contracts/arbitrum-42161/0x2b1b26bcb845d6ca9bcf73b21d2a3c49662b5540/) | AirdropPayoutForRebate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x724dc8...b8c637`](./contracts/arbitrum-42161/0x724dc807b04555b71ed48a6896b6f41593b8c637/) | ATokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01d090...09b2e2`](./contracts/arbitrum-42161/0x01d090cad4b10e3afe98f11654f2d2ccf409b2e2/) | BlackMarketDealRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5a76a5...21c6ae`](./contracts/base-8453/0x5a76a56ad937335168b30df3aa1327277421c6ae/) | BurnableMintableCappedERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0debba...cc767b`](./contracts/base-8453/0x0debba21390946c082e68ce3b8be4395e4cc767b/) | ComplexRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff34ed...773f3a`](./contracts/base-8453/0xff34ed9d3ca159727a2c73c095b4d78e41773f3a/) | DeductFee_Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xefd5a7...a18102`](./contracts/base-8453/0xefd5a713c5bd85e9ced46070b2532e4a47a18102/) | eVELA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5f0dab...4ff11e`](./contracts/arbitrum-42161/0x5f0dabef2e4fa7d7b1b8153f06d642173d4ff11e/) | FirstOpFunctionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ecffd...12085d`](./contracts/arbitrum-42161/0x4ecffd9694c7bc7acb45bd44354492bd7d12085d/) | GrandPrixRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd6cc89...c14646`](./contracts/arbitrum-42161/0xd6cc89e02fd0d552bed774563f394bcf44c14646/) | GrandPrixRewardDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5219fd...2d9c3d`](./contracts/arbitrum-42161/0x5219fd82d58c2e949cf44005dbcdefbb412d9c3d/) | LockedStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26a21a...612905`](./contracts/arbitrum-42161/0x26a21aad6c96ca7a324f631d376cdb8d2d612905/) | LuckyTicketReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x580c56...c5e6d3`](./contracts/base-8453/0x580c5684b65ac5e0618a5c12b3a7e71a32c5e6d3/) | OpenInterestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23fc7c...1ae684`](./contracts/base-8453/0x23fc7c88402fe3314d4e76ac42f4c5a3e01ae684/) | Operators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x028b64...23ac04`](./contracts/base-8453/0x028b644e56367c3a151bb8d7e47225420b23ac04/) | PriceManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0cc831...ab44c4`](./contracts/arbitrum-42161/0x0cc8319ee0050f9f4b4ab94b6219f1386cab44c4/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x383f80...b184a7`](./contracts/arbitrum-42161/0x383f80b7459a74659b7dc88a3b3c2fbd44b184a7/) | SecondOpFunctionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d7d97...7a66bc`](./contracts/arbitrum-42161/0x0d7d977075b76e7e1d69e385acba59b9927a66bc/) | SettingsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04698b...c4e198`](./contracts/arbitrum-42161/0x04698b2184fa3f68aefc296827900b7394c4e198/) | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0029cf...c336e1`](./contracts/arbitrum-42161/0x0029cf0b8e5e741416709dda22bc3c38a9c336e1/) | SwapAndAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x576150...40624b`](./contracts/arbitrum-42161/0x576150fed7209c384560bcc8a5ec8ca40040624b/) | TierManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x41768f...8f3258`](./contracts/arbitrum-42161/0x41768f13079e5e12f571e550a1e04218268f3258/) | TokenRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7ca88e...41bd6e`](./contracts/arbitrum-42161/0x7ca88e153a5ea7947637db7d124cecf75041bd6e/) | TraderKickback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd9aaec...10b6ca`](./contracts/base-8453/0xd9aaec86b65d86f6a7b5b1b0c42ffa531710b6ca/) | UpgradeableOptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e2b9f...07084e`](./contracts/arbitrum-42161/0x1e2b9fe6d886fe1e0a31c7b328cef71e7d07084e/) | VelaBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24e5c0...a27e66`](./contracts/arbitrum-42161/0x24e5c0461defe8f1493d72fec1908824d7a27e66/) | VelaLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x66ca80...b70834`](./contracts/arbitrum-42161/0x66ca8052776c180c319ca65355f128376eb70834/) | VelaMission | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8e0f95...c65e70`](./contracts/arbitrum-42161/0x8e0f954d2fb06883e9af0cd9ec2425d8d9c65e70/) | VelaNFTBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15ae93...929592`](./contracts/arbitrum-42161/0x15ae930df70cea3ca108cc64146911bb58929592/) | VelaReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x088cd8...0cd704`](./contracts/arbitrum-42161/0x088cd8f5ef3652623c22d48b1605dcfe860cd704/) | VelaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc5b2d9...88eb05`](./contracts/arbitrum-42161/0xc5b2d9fda8a82e8dcecd5e9e6e99b78a9188eb05/) | VLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6c1473...437f4f`](./contracts/base-8453/0x6c1473e4ad5a8185324fb39c909676fb46437f4f/) | VolatilityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaa0b39...229268`](./contracts/base-8453/0xaa0b397b0896a864714de56aa33e3df471229268/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21477] Dorado_09112022_SCAudit_Report_FINAL.pdf
- [21478] hacken.io/audits/vela-exchange/sca-dorado-erc20-dex-jan2023

Fork inheritance lineage and inherited audits are included when available.
