# Agentic Audit Brief: Gnosis Protocol v1

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Gnosis Protocol v1 (`gnosis-protocol-v1`)
- Website: [https://gnosis.io/](https://gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: chain-4, ethereum, gnosis
- Contract surface: 246 unique implementations (288 raw deployments)
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
- Outside the address book: 230 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 11 of 246 unique; 235 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/82
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 164
- Unique implementations: 246
- Raw deployments: 288
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

### ❓ Unverified (164)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d2ca010848f508607ea2c2b30dcf29a64d94e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eee5214953f8f54e04c3279ce47548700affad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcfcf26874e1025bd7b28662a0fb1e14da37691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18882db9fcbc346858cf1bea3a5f719a232dc15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1babf37a61174b30f17244e9dd55a729f96d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf9f7bac47cdd7e3a1bd3bd60f719ab26290dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c676314988473da0d3312a173979b68e64721f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3218996f84d2596601834f197e29a669d820efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c6fc960d2238383ca59fd57c00a83b6dc4d7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f74bad13019612b33e359a9b263e904a95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4186c5aed424876f7ebe52f9148552a45e17f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4239987bb8c9f7334ae7c16344dda2b2b75a6671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45337816a540427c33ebcf80a82ec7a84dbee787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468a3206e2cd0188ab8b1c38ffecb54f7011d50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46f3f2f9662f66a6ddd6a8d1ddec3cd9ae5e87b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a38ccaec0a5e127decb2b2635973241e335a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487c0b4c022834ff73cd42bb3e59a8f1c3b201bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b3f58185baf3dc02d56f31e9901db11f7bbf6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539c54bd78b89079f57560ea95080da7a76d81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545c48fd17f31f788af7078d7affa114bf8cfb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5adaa07fe1b1789f27cec7293459339c4be8b463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cbf38a3881048cc3bb0a2b413a6b3083fad4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d210b2089c0b698994d9985ca2abce314059015` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241063 | `0x6f400810b62df8e13fded51be75ff5393eaa841f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241064 | `0x7d071fb584b51d9c38572a04e1848afd835cd457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880d952cbeb0ee71905bc2dab0951f62e6006788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ddfb48ee22cce7183f73863af6722241de3f0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9494d62f60949c8a979293430edeb90b5b96f743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9827b882671747d096ce5b2d80a6e1ab126b5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9864dbbc9a1fd2ae75c617c9fc28b35e8e7a6570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d066cdf32c4254129b473ff25d26e0c2148a673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241065 | `0xa1c956d7c3d8ea7fd7e3757062e4ac563f07e68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20f2a3acc8b8efaa2c19c51dffabe6a2f66dca6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241066 | `0xa3b3fbc0225f2f7cb1cf767e2bc566fa0be4ce9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaba85e9588e3aee87c19ed5809d6d42a29831fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebd846a05eadfe42db884805e6ac99f32e8af43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a508040a8a40a6ad48ded58238afb6933ea950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dba98fe6befcbd9398c36a5cf286ab534cdacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ee7ea21b379e5a799f2f9ff151223f4957de25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd88e1fa7420be158b35e815c3ba07cd743c6bdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241067 | `0xcddb32b6bb2808d5b5115daab207479ce98d2636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ad7c780a70debc65bed0b9fbb42333c6899605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a78a333bae9aaddd5ebe41c209fb5226ea155b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b94fdf42affcd99ec2628ba1661f8eb9bd8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda14e34f79f5308929368d5ff5efb9b8f3fab074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf4482dba212f7bbd8b8769d63bfe86f24973d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe290c18c5d71aa02cb8d931ca1d49cf4fb3c5c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f3c590e044969294b1730ad8647692faf0f604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6bc5a2dc85c96d7af5016a0a7ca145a5b59aa96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84dcd8587287b997f51299430a396ad03aaec06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe91c3d95629465e597cc35ee407d0f11ae19646e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97b78ffd0ee65e389985159f2033b90248a9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea61f936b1169e0d01ffbbbdd2df41798b4cbf3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaa5a221f4406951f748cc87527a15e6f2d6d709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed133e69eeb2ff68eb69e19b2eeeb2d64f34cacd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241068 | `0xed4d05496c71e71cc2a8726af1242c22108d1761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7e6720ac8525ac1aeee710f08789d02cd87ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2abc065ff0f34233c9c795ff1800eb7e9a4af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0239157ba67fb793ac6833056de15ce5c7388b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241074 | `0x0a7a7e35098b5f969e5d45680827ac478e6e8ce3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241075 | `0x0d47d0548fdad66b06e81a826eed8c687acddbcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241076 | `0x5c4c6bf91240a5fdbfb9a1bed8d43227046e2fea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241077 | `0x7be8d093e944e1d084b955a3f7a87b7ee0b1f8e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-4 | unit-241078 | `0xc576ea7bd102f7e476368a5e98fa455d1ea34de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00e94a2b49ab3d65326df48f3efdcd6d13eddd32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x015d5106a3ef6478ec78a80c0a95ee09eebf3be7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241069 | `0x048e53a455a058462ea58442e1d94fbc955495cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x051aa51c6cf0c60f031b4ed3525ec6166289b116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0905ab807f8fd040255f0cf8fa14756c1d824931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0c88cf9192d74965c2f317406c41ef2bd7af71cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0e5f17456838eed51d2ea82a3f5642ae730ea705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1083a6d9ba17f2207ebbfc229792cc6f01d818b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x10e41c791f01511e3b8a826332acce0ea63dba2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1126960fc8435a46d325d49b904d2ce9a4ec1443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x129e40634b2ae15f1d89bf3b84ba7e6e748b8a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1a1ab18705d7b7a1242cb6c1186105c69c6cdf98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1bbd051941ce2fcf17d472b7b65cf32e63be15e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x212c8089ada1010bdb288c47488223e81a9cf7db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241070 | `0x25b06305cc4ec6afcf3e7c0b673da1ef8ae26313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x28be212754a75a7e6f03b46246d14703d45fd03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2a88d7ba1578be38c2fe843fca4f4618666dd90f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x327e7c9b10531e66323884d2195976b0b6ea2468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33f4ecda8e8d9e0c2c698f73f3523223f8f50a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33fc9877f74dc4148b435fe18c133dc0aa6347f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x361233beaf51bb189917c8d228344422f264e71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x36c6fc960d2238383ca59fd57c00a83b6dc4d7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3a40e181ecea1d0a001d657d3f9f7bc0d347caaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3bcd78f2f5ea1104acb5e7d5a69c69c10df68730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3f83d7e1853334bc993270b0073ae1f8395e0df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x41685e5b7511dc51e5c08026f31de0e0592048be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43111a743987c85886d6bfd325750d6b31267fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x43a58d234283f9ab8872bedf60f06cd88caea4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x444c4531717ffbc8f74d1c1955974cdb6fec15d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x473e1d34458f26bfeb40f304a13c80fa291d0abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4dc238c3c4e81e18db7f791d93c5981345f84df1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241071 | `0x51138aad07ebaba6a1d1254cf740df97b96bfb64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5510629b9a9e1be9bd7d5ea43a81f91005769004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241072 | `0x57e6b987c2ccd421859a244dd22a0d5a62d88f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x58d5678a473b40ad279439f492526ad08e3a2a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x61d202fdcabfac480f6680473f86c94a17d29c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x62260cf03ece5f985b59217b7a2da1b19dbdeb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64ae42dc974be241783098841f8427272252980f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x66b89680a34394cd73a4964af60f56c9669c2452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x67121326128e64d0c68d5fb48324198133f584be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ca1acdf7789407942ecdb090d7812c23b174940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6d1a794a731b31a377141fd23ae9f417a8f95079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x701c18e69d337a134d95fd0bff10d254e85aea7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x738aa43ea623acc529a14c501d39712ae011f2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x77f98a1974fb504c243c0a86fdb72e5dfce82f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x799e13bfc218d6f0424e7c0a7413a2f73c7d7871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7cf1c05c6f1838bd15100f31ac624d36ead00993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e9d38a8f093a8689e32eb07843f8fea0180fea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x85a3fa7eb39017ef3dd59c21b85937ffa7664ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x904e0cf33773244a392fab455d3991ab10554691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x90726b797e3d4fb8ca560835a63469b2befc006d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x93bcf47067a1135c92c6c4e4edd514f2641e375d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9f33f8eb1e179c2c51aa9e87a24f0b10307efe6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9fdca4fc2378572d4b5ebad027199fb362145968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa0393d1445b296b1ce1d4e0e3c51fc7fc0e29a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa068f8a26080ed4518e7c1678fd3536e0af2985e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa0a77f3ba69f8402c102d60fd8f6530d8f0b666e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241073 | `0xa18c8f9ae6c18d177aa369c64fa4a6956146e1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa22876c536179234b7d2ebeb1cd3923e314c4f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb2e2aa9cfa7bb1d060dfcfcfacb8db16ee1abba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb4fb578ac4c8ba293280d0a85fd0acb60c8a35da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb68d6a38e732bd232ed322fc8c9deefa04194e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb865e81db5377a4319e2600feb145137b2ff0151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb9da82ef8313b0fd7d9640e1fd541cf44993986d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbb06d93d429891870975cc8cf8844402c98a402a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbc3637dd669fca109da7b514f132bd2c40fe6516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbed794745e2a0543ee609795ade87a55bbe935ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbeebe0e3773cd7748e40bae3e6d73fc1f90eb2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbf61c5f2c9902405e0194ada777ecb82fb7e0f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbf8243e0130833c4746341117c38ee5cea297119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc16937ad79c8553b94ac89a565dccde1000236d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc64393637f84b9e0c7f096426b1b3a4ccd6ac78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc801fa6d8c04a64b09c54c869c6218a80dbf748d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc990a1135c6764cdcc6f907124b5d4922c1824ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcf733f9f77b7b9021a8974ba0c203cd0e1f02cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd21fe740f36f7a1e35fc501d2e658ecda05aacfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd33ce264008826e5bc441e3a44971894d3336855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd4ad7c780a70debc65bed0b9fbb42333c6899605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd615d27cf134dfeb1a0775ab7d7acfd32ff887d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd81c22ab646871c5c3b961a7d5d73c17890716a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdc454f2cf2e93146501c6b5042a8e7b27d361c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe10b57e1ca1831d0f82779b91740a153cdd477dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe857a6d138c48ca7e2620d4ae1054156f8051b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe91c3d95629465e597cc35ee407d0f11ae19646e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9739a8b197e00604622f81d19badba00a26f7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xedf43001be4b9a145991edba4f02d0cc4dd63aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xefcf55348536e8500f554b91cd2931994c11f110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf26cd3b15ed92884429a5480be27cbf51a916635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf97623451e403a457bbdc4e37c03640aa105f878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb48db30affbf0a0467f00226b1dd9dde26eb3df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfe7bccfda70750df61b29c0b0d8f825614eab036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfeb8dd5671c7adecc07a9f18dc5904a0e28f8aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xffaf335571389dc7e5da4ec07aed8835cbf9eeeb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 253
- Live contracts: 0
- Unknown liveness contracts: 253
- Source-verified contracts: 105
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=16, contamination review=32, source verified unclassified=57, unverified unclassified=148

Showing first 200 of 253 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AssetProxy<br>`0x48c59199da51b7e30ea200a74ea07974e62c4ba7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | AssetProxy<br>`0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | AssetProxy<br>`0xadeedd3e5768f7882572ad91065f93ba88343c99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | AssetProxy<br>`0xb61a6f928b3f069a68469ddb670f20eeeb4921e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | AssetProxy<br>`0xd124b55f70d374f58455c8aedf308e52cf2a6207` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | AssetProxy<br>`0xf38522f63f40f9dd81abafd2b8efc2ec958a3016` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | AssetProxy<br>`0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | BasketManagerProxy<br>`0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | FeederLogic<br>`0x2837c77527c37d61d9763f53005211dacb4125de` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | InitializableAdminUpgradeabilityProxy<br>`0xe595d67181d701a5356e010d9a58eb9a341f1dbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | Masset<br>`0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | Masset<br>`0xb83a5a51df21321b365c918832e7e8f5de686f7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | Masset<br>`0xe0d0d052d5b1082e52c6b8422acd23415c3df1c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | Masset<br>`0xe4c5b1765bf420016027177289908c5a3ea7668e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | VaultProxy<br>`0xd55684f4369040c12262949ff78299f2bc9db735` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| candidate review | VaultProxy<br>`0xf617346a0fb6320e9e578e0c9b2a4588283d9d39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | BoostDirector<br>`0x8892d7a5e018cddb631f4733b5c1654e9de10aaf` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | Collector<br>`0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | DelayedProxyAdmin<br>`0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | DIACoingeckoOracle<br>`0x07e4120dd7411a49e091a20fa0be33a183c35d60` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| contamination review | DIACompanyLockup<br>`0xfaeb4f91cf256036015f5f6c2ddfdab171503d85` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| contamination review | Disbursement<br>`0xff2e231b3d6260937edc698da5f77b6d3d377370` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| contamination review | Dispute<br>`0x889cdd162cd5125dcecd465f5accd65fff92af86` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| contamination review | DutchXCompleteModule<br>`0xba22d73c079ceb97db93f2effb1f1054fe1cfcd6` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| contamination review | DutchXSellerModule<br>`0xe3ebeb3a6a535131f2861f866d98d555580aa84d` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| contamination review | DXDBurnRelayer<br>`0x95f8231621c47e64bf7037d399cb4bc3e34635db` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| contamination review | DXDPayRelayer<br>`0xa96e6c81a5fd03c95ae83aea810774a5c02e0576` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| contamination review | DXDSellRelayer<br>`0xdee210b9b3f4e1bd3f64944c277d4dcbe4e5c095` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| contamination review | Ejector<br>`0x71061e3f432fc5bee3a6763cd35f50d3c77a0434` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | ETHRefund<br>`0x34af7d560894ba46a02a8c4b496f87ee98ffb7b9` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| contamination review | ForgeValidator<br>`0x4ca9123afc43dc9dde52a57a51afc44324138ded` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | InterestValidator<br>`0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | Liquidator<br>`0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | LMSRMarketMakerFactory<br>`0x37186b5d78ebb1f37bc56e5dca7f18ab98256c4b` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| contamination review | MassetRedemptionValidator<br>`0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | MassetValidationHelper<br>`0x4c5e03065bc52cce84f3ac94df14bbac27eac89b` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | MerkleDrop<br>`0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | MStableHelper<br>`0xe15aad5d6b7433e5988415274529311f6bf6e8a3` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | Nexus<br>`0xafce80b19a8ce13dec0739a1aab7a028d6845eb3` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | ReserveBuyBackLimit<br>`0x40da0d076a5004beb0b97d08e8cee2667b286477` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| contamination review | RevenueRecipient<br>`0xa7824292efdee1177a1c1bed0649cfdd6114fed5` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | RewardClaimHandler<br>`0xb8be713fee0b3f437be4793a23f96fec7eae4316` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| contamination review | RewardsDistributor<br>`0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | SaveWrapper<br>`0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | SimpleAirdropper<br>`0xda13e3afed9c112bd906c732684a49dd65b178fd` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | StakingRewards<br>`0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | StakingRewardsWithPlatformToken<br>`0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| contamination review | TimeLock<br>`0x75dae1eca073cf35ba203e3aca0e21e7d2ab1478` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0x334cd6acc94a6f11639f007f8c2e4b62140a7764` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0x54d06a0e1ce55a7a60ee175abceac7e363f603f3` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0xd409c506742b7f76f164909025ab29a47e06d30a` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BasketManager<br>`0x6efa260a268e4afacf7fb91a6bf5f5b37379bf61` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BasketManager<br>`0x968030d6f08f1b7515ba7b8ba1ff10557a69d7db` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BoostedSavingsVault<br>`0x8dacbe2b439e66f7940e7ca160685b5180476958` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BoostedSavingsVault<br>`0x931420077fc8fb1f7218a1dd23043990bafd7df8` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BoostedSavingsVault<br>`0xa283fcb3c2b8dc908f93f17627e9f90fc8559d5d` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BoostedSavingsVault<br>`0xb1ad72924cd5438f74c6bfc8a6e5c6032d99851b` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BoostedSavingsVault<br>`0xce128488b560632056d9811dd24a59688dd33dc4` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | BoostedSavingsVault<br>`0xf5ad2bf1b1a74c1c36503825cf1a07ac4a352107` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | DecentralizedAutonomousTrust<br>`0x2825f4ddaa5809da1af2a2d240c4ac4733016cfa` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| source verified unclassified | DXTokenRegistry<br>`0x14a588f15a043913b30c19a80049876e4a21fafb` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| source verified unclassified | Enum<br>`0xb1e1ae60607f24a6647d0339050cb69c312f43ee` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| source verified unclassified | FeederManager<br>`0x90ae544e8cc76d2867987ee4f5456c02c50abd8b` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | FeederPool<br>`0x62aa1d6c2c591443ee32066773eb7b7be09e063c` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | FeederPool<br>`0x9ab5868f745d8fc6d45ce86dfe057f5b738c90e2` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | FeederPool<br>`0xa88328ed84c31c98d81237c354cc852a5022b9ea` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | FeederPool<br>`0xbb128bc208c45b3dd277e001f88e1c6648060c64` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | FeederWrapper<br>`0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | Fixed192x64Math<br>`0x75a6d6251511af081f77f2b531c14808fb3805f3` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| source verified unclassified | ForgeValidator<br>`0xbb90d06371030ffa150e463621c22950b212eaa1` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | InterestValidator<br>`0xf1049aed858c4ead6df1de4dbe63ef607cff3262` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | InvariantValidator<br>`0xd36050b5f28126b5292b59128ed25e489a0f2f3f` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | Liquidator<br>`0x8bd8ec1e69e19b23db4e9cb31472f143d0e093cc` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | Liquidator<br>`0xb7c77da6e0a8b4f63384fce953327af59c0d5b9d` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | Manager<br>`0x1e91f826fa8aa4fa4d3f595898af3a64dd188848` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | MassetValidationHelper<br>`0xabcc93c3be238884cc3309c19afd128fafc16911` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | Migrator<br>`0xda681d409319b1f4122b1402c8b5cd4baedf9001` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | MStableVoterProxy<br>`0x7c4cf0442dbf77f56a4ba8ad2347f136dfa5c78e` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | ProxyAdmin<br>`0x07ed323e96b5b37f49432ce86277a56015e7fb5e` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| source verified unclassified | ProxyAdmin<br>`0x3cd782379ce010fcda43983b490a99f43aace0c0` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | ProxyAdmin<br>`0xc8451d5e10c952f713642be0afe5242abfd79cc6` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| source verified unclassified | PSYieldContract<br>`0x0576577e89485d377de13e76aec99955b8d36eca` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| source verified unclassified | RevenueRecipient<br>`0xffe2cdce7babb1422d5976c2fc27448f226b6bec` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SaveWrapper<br>`0xd7c346c228bddd8a6a4c1a69e6cc82292909dcad` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsContract<br>`0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsContract<br>`0x3563cb49a1c3fa725f1888486754758d120b2bf8` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsContract<br>`0xcf3f73290803fc04425bee135a4caeb2bab2c2a1` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsManager<br>`0x6f05662109b296afb0f02bf490300c6b95e07d3f` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsManager<br>`0x7046b0bfc4c5eeb90559c0805dd9c1a6f4815370` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsManager<br>`0x7594ae023979e30a44a2ebff64b7c82de3e46136` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsManager<br>`0x84e563334b706b5d823b0e0a62a724dd932ee6d1` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsManager<br>`0x9781c4e9b9cc6ac18405891df20ad3566fb6b301` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | SavingsManager<br>`0xcefcbb45be41331337d49a131faf424d1e50234f` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | StakingRewards<br>`0x6de3a957b0344e6adeeab4648b02108f35651fb5` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | StakingRewards<br>`0xe6e6e25efda5f69687aa9914f8d750c523a1d261` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | StakingRewardsWithPlatformToken<br>`0x881c72d1e6317f10a1cdcbe05040e7564e790c80` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | StakingRewardsWithPlatformToken<br>`0xf7575d4d4db78f6ba43c734616c51e9fd4baa7fb` | non_address_book | unknown | unknown | verified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| source verified unclassified | TimelockManager<br>`0x41ab01244c3f466294dbc36916a8b62d56ba1f03` | non_address_book | unknown | unknown | verified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| source verified unclassified | TimelockManager<br>`0xfaef86994a37f1c8b2a5c73648f07dd4eff02baa` | non_address_book | unknown | unknown | verified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| source verified unclassified | TokenVesting<br>`0x18ccbcf6a8a415206838bd1ad6e2f648da69ec79` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| source verified unclassified | TokenVesting<br>`0xbd12ebb77ef167a5ff93b7e572b33f2526ae3fd0` | non_address_book | unknown | unknown | verified | n/a | `0x5245f1bdfa7833cbd8b78b53b80f187fd34a902a` |
| source verified unclassified | Whitelist<br>`0x3af2ae62f0d3353c9f15b7fe678ccdaf2b2157c9` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| source verified unclassified | Whitelist<br>`0x5250b9241d0c63a2b60afb7f2b24b12d94d8ae7d` | non_address_book | unknown | unknown | verified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| source verified unclassified | YieldContract<br>`0x59490052ea18d4fd974657d0aa7c8424d456d353` | non_address_book | unknown | unknown | verified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| unverified unclassified | UnnamedContract<br>`0x02d2ca010848f508607ea2c2b30dcf29a64d94e2` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x08eee5214953f8f54e04c3279ce47548700affad` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x0fcfcf26874e1025bd7b28662a0fb1e14da37691` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x18882db9fcbc346858cf1bea3a5f719a232dc15b` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x1a1babf37a61174b30f17244e9dd55a729f96d6d` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0x1bf9f7bac47cdd7e3a1bd3bd60f719ab26290dfd` | non_address_book | unknown | unknown | unverified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| unverified unclassified | UnnamedContract<br>`0x25c676314988473da0d3312a173979b68e64721f` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x3218996f84d2596601834f197e29a669d820efd0` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x36c6fc960d2238383ca59fd57c00a83b6dc4d7c7` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x36f74bad13019612b33e359a9b263e904a95ec9b` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x4186c5aed424876f7ebe52f9148552a45e17f287` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x4239987bb8c9f7334ae7c16344dda2b2b75a6671` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0x45337816a540427c33ebcf80a82ec7a84dbee787` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0x468a3206e2cd0188ab8b1c38ffecb54f7011d50c` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x46f3f2f9662f66a6ddd6a8d1ddec3cd9ae5e87b5` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0x47a38ccaec0a5e127decb2b2635973241e335a77` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0x487c0b4c022834ff73cd42bb3e59a8f1c3b201bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x4b3f58185baf3dc02d56f31e9901db11f7bbf6c0` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x539c54bd78b89079f57560ea95080da7a76d81fe` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x545c48fd17f31f788af7078d7affa114bf8cfb23` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x5adaa07fe1b1789f27cec7293459339c4be8b463` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x60cbf38a3881048cc3bb0a2b413a6b3083fad4d1` | non_address_book | unknown | unknown | unverified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| unverified unclassified | UnnamedContract<br>`0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x6d210b2089c0b698994d9985ca2abce314059015` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0x880d952cbeb0ee71905bc2dab0951f62e6006788` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0x8ddfb48ee22cce7183f73863af6722241de3f0b2` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x9494d62f60949c8a979293430edeb90b5b96f743` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0x9827b882671747d096ce5b2d80a6e1ab126b5883` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x9864dbbc9a1fd2ae75c617c9fc28b35e8e7a6570` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0x9d066cdf32c4254129b473ff25d26e0c2148a673` | non_address_book | unknown | unknown | unverified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| unverified unclassified | UnnamedContract<br>`0xa20f2a3acc8b8efaa2c19c51dffabe6a2f66dca6` | non_address_book | unknown | unknown | unverified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0xaba85e9588e3aee87c19ed5809d6d42a29831fa8` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xaebd846a05eadfe42db884805e6ac99f32e8af43` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0xb4a508040a8a40a6ad48ded58238afb6933ea950` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xc1dba98fe6befcbd9398c36a5cf286ab534cdacd` | non_address_book | unknown | unknown | unverified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0xc4ee7ea21b379e5a799f2f9ff151223f4957de25` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xcd88e1fa7420be158b35e815c3ba07cd743c6bdb` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0xd4ad7c780a70debc65bed0b9fbb42333c6899605` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xd7a78a333bae9aaddd5ebe41c209fb5226ea155b` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xd7b94fdf42affcd99ec2628ba1661f8eb9bd8b44` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0xda14e34f79f5308929368d5ff5efb9b8f3fab074` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xdf4482dba212f7bbd8b8769d63bfe86f24973d20` | non_address_book | unknown | unknown | unverified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| unverified unclassified | UnnamedContract<br>`0xe290c18c5d71aa02cb8d931ca1d49cf4fb3c5c81` | non_address_book | unknown | unknown | unverified | n/a | `0x5737bf56559dd32d8880cfa236fe613e2162e157` |
| unverified unclassified | UnnamedContract<br>`0xe3f3c590e044969294b1730ad8647692faf0f604` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xe6bc5a2dc85c96d7af5016a0a7ca145a5b59aa96` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0xe84dcd8587287b997f51299430a396ad03aaec06` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xe91c3d95629465e597cc35ee407d0f11ae19646e` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xe97b78ffd0ee65e389985159f2033b90248a9114` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0xea61f936b1169e0d01ffbbbdd2df41798b4cbf3d` | non_address_book | unknown | unknown | unverified | n/a | `0x2e173510024d480d195d8875e4d55e9b6198b654` |
| unverified unclassified | UnnamedContract<br>`0xeaa5a221f4406951f748cc87527a15e6f2d6d709` | non_address_book | unknown | unknown | unverified | n/a | `0x3b376a725a36147db5d4b91abf1f3fdf97122f0d` |
| unverified unclassified | UnnamedContract<br>`0xed133e69eeb2ff68eb69e19b2eeeb2d64f34cacd` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xed7e6720ac8525ac1aeee710f08789d02cd87ecb` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0xef2abc065ff0f34233c9c795ff1800eb7e9a4af9` | non_address_book | unknown | unknown | unverified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0xf0239157ba67fb793ac6833056de15ce5c7388b3` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| unverified unclassified | UnnamedContract<br>`0x00e94a2b49ab3d65326df48f3efdcd6d13eddd32` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x015d5106a3ef6478ec78a80c0a95ee09eebf3be7` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x051aa51c6cf0c60f031b4ed3525ec6166289b116` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x0905ab807f8fd040255f0cf8fa14756c1d824931` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x0c88cf9192d74965c2f317406c41ef2bd7af71cb` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x0e5f17456838eed51d2ea82a3f5642ae730ea705` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x1083a6d9ba17f2207ebbfc229792cc6f01d818b9` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x10e41c791f01511e3b8a826332acce0ea63dba2f` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x1126960fc8435a46d325d49b904d2ce9a4ec1443` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x129e40634b2ae15f1d89bf3b84ba7e6e748b8a92` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x1a1ab18705d7b7a1242cb6c1186105c69c6cdf98` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x1bbd051941ce2fcf17d472b7b65cf32e63be15e4` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x212c8089ada1010bdb288c47488223e81a9cf7db` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x28be212754a75a7e6f03b46246d14703d45fd03f` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x2a88d7ba1578be38c2fe843fca4f4618666dd90f` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x327e7c9b10531e66323884d2195976b0b6ea2468` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x33f4ecda8e8d9e0c2c698f73f3523223f8f50a1a` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x33fc9877f74dc4148b435fe18c133dc0aa6347f5` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x361233beaf51bb189917c8d228344422f264e71a` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x36c6fc960d2238383ca59fd57c00a83b6dc4d7c7` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x3a40e181ecea1d0a001d657d3f9f7bc0d347caaf` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x3bcd78f2f5ea1104acb5e7d5a69c69c10df68730` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x3f83d7e1853334bc993270b0073ae1f8395e0df2` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x41685e5b7511dc51e5c08026f31de0e0592048be` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x43111a743987c85886d6bfd325750d6b31267fc4` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x43a58d234283f9ab8872bedf60f06cd88caea4de` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x444c4531717ffbc8f74d1c1955974cdb6fec15d7` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x473e1d34458f26bfeb40f304a13c80fa291d0abc` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x4dc238c3c4e81e18db7f791d93c5981345f84df1` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x5510629b9a9e1be9bd7d5ea43a81f91005769004` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x58d5678a473b40ad279439f492526ad08e3a2a2c` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x61d202fdcabfac480f6680473f86c94a17d29c8f` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x62260cf03ece5f985b59217b7a2da1b19dbdeb34` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x64ae42dc974be241783098841f8427272252980f` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |
| unverified unclassified | UnnamedContract<br>`0x66b89680a34394cd73a4964af60f56c9669c2452` | non_address_book | unknown | unknown | unverified | n/a | `0xe0b3700e0aadcb18ed8d4bff648bc99896a18ad1` |

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
| Exchange_audit_report.pdf | BatchExchange | ambiguous — not counted | 0x6f4008… (alternative) `0x6f400810b62df8e13fded51be75ff5393eaa841f` — deployed 2020-01-23 23:30:23+03 — liveness: live (current_address_book_code)<br>0x25b063… (alternative) `0x25b06305cc4ec6afcf3e7c0b673da1ef8ae26313` — deployed 2020-09-11 15:54:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | DevDependencies | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | EpochTokenLocker | unmatched — not counted | — | listed in scope | no |
| Exchange_audit_report.pdf | IdToAddressBiMap | ambiguous — not counted | 0x048e53… (alternative) `0x048e53a455a058462ea58442e1d94fbc955495cb` — deployed 2020-08-26 13:22:10+03 — liveness: live (current_address_book_code)<br>0xed4d05… (alternative) `0xed4d05496c71e71cc2a8726af1242c22108d1761` — deployed 2020-01-22 23:47:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Exchange_audit_report.pdf | IterableAppendOnlySet | ambiguous — not counted | 0xcddb32… (alternative) `0xcddb32b6bb2808d5b5115daab207479ce98d2636` — deployed 2019-12-11 13:50:26+03 — liveness: live (current_address_book_code)<br>0x57e6b9… (alternative) `0x57e6b987c2ccd421859a244dd22a0d5a62d88f91` — deployed 2020-08-26 13:22:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| needs_review | 164 |

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
