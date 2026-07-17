# Agentic Audit Brief: Gnosis Protocol v1

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gnosis Protocol v1 (`gnosis-protocol-v1`)
- Website: [https://gnosis.io/](https://gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-4, ethereum, gnosis
- Contract surface: 129 unique implementations (171 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,808,350.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Gnosis Protocol v1 in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6f400810b62df8e13fded51be75ff5393eaa841f`, chain 1)
- UnnamedContract (`0x7d071fb584b51d9c38572a04e1848afd835cd457`, chain 1)
- UnnamedContract (`0xa1c956d7c3d8ea7fd7e3757062e4ac563f07e68a`, chain 1)
- UnnamedContract (`0xa3b3fbc0225f2f7cb1cf767e2bc566fa0be4ce9e`, chain 1)
- UnnamedContract (`0xcddb32b6bb2808d5b5115daab207479ce98d2636`, chain 1)
- UnnamedContract (`0xed4d05496c71e71cc2a8726af1242c22108d1761`, chain 1)
- UnnamedContract (`0x048e53a455a058462ea58442e1d94fbc955495cb`, chain 100)
- UnnamedContract (`0x25b06305cc4ec6afcf3e7c0b673da1ef8ae26313`, chain 100)
- UnnamedContract (`0x51138aad07ebaba6a1d1254cf740df97b96bfb64`, chain 100)
- UnnamedContract (`0x57e6b987c2ccd421859a244dd22a0d5a62d88f91`, chain 100)
- UnnamedContract (`0xa18c8f9ae6c18d177aa369c64fa4a6956146e1a5`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 11 of 129 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/82
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 129
- Raw deployments: 171
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf617346a0fb6320e9e578e0c9b2a4588283d9d39` | ⚠️ Unaudited |
| Api3Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b38210ea11411557c13457d4da7dc6ea731b88a` | ⚠️ Unaudited |
| BaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22eeab2f980e8ed7824f8ea548c9595564a0f0e4` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d`; ethereum `0x6efa260a268e4afacf7fb91a6bf5f5b37379bf61` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968030d6f08f1b7515ba7b8ba1ff10557a69d7db` | ⚠️ Unaudited |
| BoostDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8892d7a5e018cddb631f4733b5c1654e9de10aaf` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x8dacbe2b439e66f7940e7ca160685b5180476958`; ethereum `0x931420077fc8fb1f7218a1dd23043990bafd7df8`; ethereum `0xa283fcb3c2b8dc908f93f17627e9f90fc8559d5d`; ethereum `0xb1ad72924cd5438f74c6bfc8a6e5c6032d99851b`; ethereum `0xce128488b560632056d9811dd24a59688dd33dc4`; ethereum `0xf5ad2bf1b1a74c1c36503825cf1a07ac4a352107` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadeedd3e5768f7882572ad91065f93ba88343c99` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd124b55f70d374f58455c8aedf308e52cf2a6207` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c` | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf38522f63f40f9dd81abafd2b8efc2ec958a3016` | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78befca7de27d07dc6e71da295cc2946681a6c7b` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43` | ⚠️ Unaudited |
| CompoundIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd55684f4369040c12262949ff78299f2bc9db735` | ⚠️ Unaudited |
| ConditionalTokens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59b0e4de5f1248c1140964e0ff287b192407e0c` | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2825f4ddaa5809da1af2a2d240c4ac4733016cfa`; ethereum `0x334cd6acc94a6f11639f007f8c2e4b62140a7764` | ⚠️ Unaudited |
| DecentralizedAutonomousTrust | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1d65e8fb6e87b60feccbc582f7f97804b725521` | ⚠️ Unaudited |
| DelayedProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386` | ⚠️ Unaudited |
| DIACoingeckoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07e4120dd7411a49e091a20fa0be33a183c35d60` | ⚠️ Unaudited |
| DIACompanyLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaeb4f91cf256036015f5f6c2ddfdab171503d85` | ⚠️ Unaudited |
| DIAToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ca8bc7997272c7cfb4d0cd3d55cd942b3c9419` | ⚠️ Unaudited |
| Disbursement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2e231b3d6260937edc698da5f77b6d3d377370` | ⚠️ Unaudited |
| Dispute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x889cdd162cd5125dcecd465f5accd65fff92af86` | ⚠️ Unaudited |
| DutchXCompleteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba22d73c079ceb97db93f2effb1f1054fe1cfcd6` | ⚠️ Unaudited |
| DutchXSellerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ebeb3a6a535131f2861f866d98d555580aa84d` | ⚠️ Unaudited |
| DXDBurnRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95f8231621c47e64bf7037d399cb4bc3e34635db` | ⚠️ Unaudited |
| DXDPayRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96e6c81a5fd03c95ae83aea810774a5c02e0576` | ⚠️ Unaudited |
| DXDSellRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee210b9b3f4e1bd3f64944c277d4dcbe4e5c095` | ⚠️ Unaudited |
| DXTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a588f15a043913b30c19a80049876e4a21fafb` | ⚠️ Unaudited |
| Ejector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71061e3f432fc5bee3a6763cd35f50d3c77a0434` | ⚠️ Unaudited |
| Enum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e1ae60607f24a6647d0339050cb69c312f43ee` | ⚠️ Unaudited |
| ETHRefund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34af7d560894ba46a02a8c4b496f87ee98ffb7b9` | ⚠️ Unaudited |
| FeederLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2837c77527c37d61d9763f53005211dacb4125de` | ⚠️ Unaudited |
| FeederManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ae544e8cc76d2867987ee4f5456c02c50abd8b` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48c59199da51b7e30ea200a74ea07974e62c4ba7`; ethereum `0xbb128bc208c45b3dd277e001f88e1c6648060c64` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x62aa1d6c2c591443ee32066773eb7b7be09e063c`; ethereum `0x9ab5868f745d8fc6d45ce86dfe057f5b738c90e2` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa88328ed84c31c98d81237c354cc852a5022b9ea`; ethereum `0xb61a6f928b3f069a68469ddb670f20eeeb4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4fb30c5a3ac8e85bc32785518633303c4590752d`; ethereum `0xfe842e95f8911dcc21c943a1daa4bd641a1381c6` | ⚠️ Unaudited |
| FeederWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35` | ⚠️ Unaudited |
| Fixed192x64Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6d6251511af081f77f2b531c14808fb3805f3` | ⚠️ Unaudited |
| ForgeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ca9123afc43dc9dde52a57a51afc44324138ded`; ethereum `0xbb90d06371030ffa150e463621c22950b212eaa1` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf` | ⚠️ Unaudited |
| InterestValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e`; ethereum `0xf1049aed858c4ead6df1de4dbe63ef607cff3262` | ⚠️ Unaudited |
| InvariantValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705`; ethereum `0xd36050b5f28126b5292b59128ed25e489a0f2f3f` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01`; ethereum `0x8bd8ec1e69e19b23db4e9cb31472f143d0e093cc`; ethereum `0xb7c77da6e0a8b4f63384fce953327af59c0d5b9d` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe595d67181d701a5356e010d9a58eb9a341f1dbd` | ⚠️ Unaudited |
| LMSRMarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e91f826fa8aa4fa4d3f595898af3a64dd188848` | ⚠️ Unaudited |
| Masset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f`; ethereum `0xb83a5a51df21321b365c918832e7e8f5de686f7e`; ethereum `0xe0d0d052d5b1082e52c6b8422acd23415c3df1c4`; ethereum `0xe4c5b1765bf420016027177289908c5a3ea7668e` | ⚠️ Unaudited |
| MassetBtcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x945facb997494cc2570096c74b5f66a3507330a1` | ⚠️ Unaudited |
| MassetRedemptionValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944` | ⚠️ Unaudited |
| MassetValidationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c5e03065bc52cce84f3ac94df14bbac27eac89b`; ethereum `0xabcc93c3be238884cc3309c19afd128fafc16911` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5` | ⚠️ Unaudited |
| MetaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda681d409319b1f4122b1402c8b5cd4baedf9001` | ⚠️ Unaudited |
| MStableHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe15aad5d6b7433e5988415274529311f6bf6e8a3` | ⚠️ Unaudited |
| MStableVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e`; ethereum `0x7c4cf0442dbf77f56a4ba8ad2347f136dfa5c78e` | ⚠️ Unaudited |
| MusdV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b2838cd28cc353afbe59385db3f366d8945aee` | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2f2a5c287993345a840db3b0845fbc70f5935a5` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafce80b19a8ce13dec0739a1aab7a028d6845eb3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07ed323e96b5b37f49432ce86277a56015e7fb5e`; ethereum `0x3cd782379ce010fcda43983b490a99f43aace0c0`; ethereum `0xc8451d5e10c952f713642be0afe5242abfd79cc6` | ⚠️ Unaudited |
| PSYieldContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0576577e89485d377de13e76aec99955b8d36eca` | ⚠️ Unaudited |
| ReserveBuyBackLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40da0d076a5004beb0b97d08e8cee2667b286477` | ⚠️ Unaudited |
| RevenueRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa7824292efdee1177a1c1bed0649cfdd6114fed5`; ethereum `0xffe2cdce7babb1422d5976c2fc27448f226b6bec` | ⚠️ Unaudited |
| RewardClaimHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8be713fee0b3f437be4793a23f96fec7eae4316` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50` | ⚠️ Unaudited |
| SaveWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9`; ethereum `0xd7c346c228bddd8a6a4c1a69e6cc82292909dcad` | ⚠️ Unaudited |
| SavingsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39`; ethereum `0x3563cb49a1c3fa725f1888486754758d120b2bf8`; ethereum `0xcf3f73290803fc04425bee135a4caeb2bab2c2a1` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24` | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30647a72dc82d7fbb1123ea74716ab8a317eac19` | ⚠️ Unaudited |
| SavingsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6f05662109b296afb0f02bf490300c6b95e07d3f`; ethereum `0x7046b0bfc4c5eeb90559c0805dd9c1a6f4815370`; ethereum `0x7594ae023979e30a44a2ebff64b7c82de3e46136`; ethereum `0x84e563334b706b5d823b0e0a62a724dd932ee6d1`; ethereum `0x9781c4e9b9cc6ac18405891df20ad3566fb6b301`; ethereum `0xcefcbb45be41331337d49a131faf424d1e50234f` | ⚠️ Unaudited |
| SimpleAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda13e3afed9c112bd906c732684a49dd65b178fd` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4`; ethereum `0x6de3a957b0344e6adeeab4648b02108f35651fb5`; ethereum `0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f`; ethereum `0xe6e6e25efda5f69687aa9914f8d750c523a1d261` | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70`; ethereum `0x881c72d1e6317f10a1cdcbe05040e7564e790c80`; ethereum `0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027`; ethereum `0xf7575d4d4db78f6ba43c734616c51e9fd4baa7fb` | ⚠️ Unaudited |
| StrategyMStableVaultFpMbtcHbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x54d06a0e1ce55a7a60ee175abceac7e363f603f3` | ⚠️ Unaudited |
| StrategyMStableVaultImbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd409c506742b7f76f164909025ab29a47e06d30a` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75dae1eca073cf35ba203e3aca0e21e7d2ab1478` | ⚠️ Unaudited |
| TimelockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41ab01244c3f466294dbc36916a8b62d56ba1f03`; ethereum `0xfaef86994a37f1c8b2a5c73648f07dd4eff02baa` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x18ccbcf6a8a415206838bd1ad6e2f648da69ec79`; ethereum `0xbd12ebb77ef167a5ff93b7e572b33f2526ae3fd0` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9`; ethereum `0x5250b9241d0c63a2b60afb7f2b24b12d94d8ae7d` | ⚠️ Unaudited |
| YieldContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59490052ea18d4fd974657d0aa7c8424d456d353`; ethereum `0x90ef220f222e8c319504bdb510a2b739222a5f4f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eee5214953f8f54e04c3279ce47548700affad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1babf37a61174b30f17244e9dd55a729f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf9f7bac47cdd7e3a1bd3bd60f719ab26290dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c676314988473da0d3312a173979b68e64721f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3218996f84d2596601834f197e29a669d820efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f74bad13019612b33e359a9b263e904a95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4186c5aed424876f7ebe52f9148552a45e17f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4239987bb8c9f7334ae7c16344dda2b2b75a6671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a38ccaec0a5e127decb2b2635973241e335a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539c54bd78b89079f57560ea95080da7a76d81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cbf38a3881048cc3bb0a2b413a6b3083fad4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241063 | `0x6f400810b62df8e13fded51be75ff5393eaa841f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241064 | `0x7d071fb584b51d9c38572a04e1848afd835cd457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880d952cbeb0ee71905bc2dab0951f62e6006788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9827b882671747d096ce5b2d80a6e1ab126b5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d066cdf32c4254129b473ff25d26e0c2148a673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241065 | `0xa1c956d7c3d8ea7fd7e3757062e4ac563f07e68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20f2a3acc8b8efaa2c19c51dffabe6a2f66dca6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241066 | `0xa3b3fbc0225f2f7cb1cf767e2bc566fa0be4ce9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dba98fe6befcbd9398c36a5cf286ab534cdacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd88e1fa7420be158b35e815c3ba07cd743c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241067 | `0xcddb32b6bb2808d5b5115daab207479ce98d2636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b94fdf42affcd99ec2628ba1661f8eb9bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf4482dba212f7bbd8b8769d63bfe86f24973d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe290c18c5d71aa02cb8d931ca1d49cf4fb3c5c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97b78ffd0ee65e389985159f2033b90248a9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa5a221f4406951f748cc87527a15e6f2d6d709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241068 | `0xed4d05496c71e71cc2a8726af1242c22108d1761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2abc065ff0f34233c9c795ff1800eb7e9a4af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0239157ba67fb793ac6833056de15ce5c7388b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241074 | `0x0a7a7e35098b5f969e5d45680827ac478e6e8ce3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241075 | `0x0d47d0548fdad66b06e81a826eed8c687acddbcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241076 | `0x5c4c6bf91240a5fdbfb9a1bed8d43227046e2fea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241077 | `0x7be8d093e944e1d084b955a3f7a87b7ee0b1f8e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241078 | `0xc576ea7bd102f7e476368a5e98fa455d1ea34de2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241069 | `0x048e53a455a058462ea58442e1d94fbc955495cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241070 | `0x25b06305cc4ec6afcf3e7c0b673da1ef8ae26313` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241071 | `0x51138aad07ebaba6a1d1254cf740df97b96bfb64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241072 | `0x57e6b987c2ccd421859a244dd22a0d5a62d88f91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241073 | `0xa18c8f9ae6c18d177aa369c64fa4a6956146e1a5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Exchange_audit_report.pdf](https://github.com/gnosis/dex-contracts/blob/master/Exchange_audit_report.pdf) | unknown | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20631] Exchange_audit_report.pdf — no match: Scope section lists files; contract names extracted from file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Exchange_audit_report.pdf | TokenConservation | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | BatchExchange | ambiguous — not counted | 0x6f4008… (alternative) `0x6f400810b62df8e13fded51be75ff5393eaa841f` — liveness: live (current_address_book_code)<br>0x25b063… (alternative) `0x25b06305cc4ec6afcf3e7c0b673da1ef8ae26313` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | DevDependencies | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | EpochTokenLocker | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | IdToAddressBiMap | ambiguous — not counted | 0x048e53… (alternative) `0x048e53a455a058462ea58442e1d94fbc955495cb` — liveness: live (current_address_book_code)<br>0xed4d05… (alternative) `0xed4d05496c71e71cc2a8726af1242c22108d1761` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | IterableAppendOnlySet | ambiguous — not counted | 0xcddb32… (alternative) `0xcddb32b6bb2808d5b5115daab207479ce98d2636` — liveness: live (current_address_book_code)<br>0x57e6b9… (alternative) `0x57e6b987c2ccd421859a244dd22a0d5a62d88f91` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | TokenOWL | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20631] Exchange_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
