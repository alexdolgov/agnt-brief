# Agentic Audit Brief: Zunami Protocol

## Project Overview

- Project: Zunami Protocol (`zunami-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.997Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 73 unique implementations (73 raw deployments)
- DeFi Llama TVL: $475,794.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 71 project-authored contract(s) across 1 chain(s); 18 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (pricableasset, zunamipoolcontrollerbase, rewardtokenmanager). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Hinkal** (`hinkal`) in the ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, ZunamiPoolZunETH, ZunamiPoolZunUSD, … subsystem.
8 audits inherited from `hinkal`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 73 (73 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/72 (9.7%)
- Deployed-live implementations: 73 of 73 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/73
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 73
- Raw deployments: 73
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 9.7% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 7 | 9.6% | n/a |
| Quantstamp | Tier 2 | 7 | 9.6% | n/a |
| unknown | Tier 2 | 7 | 9.6% | n/a |
| yAudit | Tier 2 | 7 | 9.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZunamiAPS | unknown | ethereum | n/a | [`0xcab491...2698bd`](./contracts/ethereum-1/0xcab49182aadcd843b037bbf885ad56a3162698bd/) | ✅ Audited |
| ZunamiPoolApsZunBTC | unknown | ethereum | n/a | [`0x3c6e1f...828d82`](./contracts/ethereum-1/0x3c6e1ffffc293e93bb383b375ba348b85e828d82/) | ✅ Audited |
| ZunamiPoolApsZunETH | unknown | ethereum | n/a | [`0x5ab3aa...bd28e2`](./contracts/ethereum-1/0x5ab3aa11a40eb34f1d2733f08596532871bd28e2/) | ✅ Audited |
| ZunamiPoolApsZunUSD | unknown | ethereum | n/a | [`0x28e487...082889`](./contracts/ethereum-1/0x28e487bbf6b64867c29e61dccbcd17ab64082889/) | ✅ Audited |
| ZunamiPoolZunETH | unknown | ethereum | n/a | [`0xc2e660...2f2222`](./contracts/ethereum-1/0xc2e660c62f72c2ad35ace6db78a616215e2f2222/) | ✅ Audited |
| ZunamiPoolZunUSD | unknown | ethereum | n/a | [`0x1ecc4a...d30b0a`](./contracts/ethereum-1/0x1ecc4a2ee46e50327adc4ab41fec750075d30b0a/) | ✅ Audited |
| ZunamiTest | unknown | ethereum | n/a | [`0x932370...d07197`](./contracts/ethereum-1/0x932370b862599798f3d9a88c59d3d23cc5d07197/) | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchorStrat | unknown | ethereum | n/a | [`0x360f8d...4e73c3`](./contracts/ethereum-1/0x360f8dadc56717cfb53b03ff4a570f4fd54e73c3/) | ⚠️ Unaudited |
| ClaimingNativeStrat | unknown | ethereum | n/a | [`0x6756ef...e8f9ef`](./contracts/ethereum-1/0x6756effa8aabeb9031279e4c71d8c1bd3ae8f9ef/) | ⚠️ Unaudited |
| ClaimingStrat | unknown | ethereum | n/a | [`0xa655aa...e0a143`](./contracts/ethereum-1/0xa655aa809d1fe7a55e22425780bb676e8ae0a143/) | ⚠️ Unaudited |
| ELT | unknown | ethereum | n/a | [`0x42873d...48091b`](./contracts/ethereum-1/0x42873d662fd25b6b5d2a240afa1d39824a48091b/) | ⚠️ Unaudited |
| FrxETHOracle | unknown | ethereum | n/a | [`0x594618...29a158`](./contracts/ethereum-1/0x594618fb84e6d5ecbe876f4d9c9ed3cb4129a158/) | ⚠️ Unaudited |
| FxnOracle | unknown | ethereum | n/a | [`0x1e08f5...8fd11e`](./contracts/ethereum-1/0x1e08f5c21817b5f8f3629471fcc2387e5b8fd11e/) | ⚠️ Unaudited |
| FxUsdOracle | unknown | ethereum | n/a | [`0xcc7988...f94327`](./contracts/ethereum-1/0xcc798827741e5e83477b601bbc3cc4eb92f94327/) | ⚠️ Unaudited |
| GenericOracle | unknown | ethereum | n/a | [`0x4142bb...e18410`](./contracts/ethereum-1/0x4142bb1ceec0dec4f7aaeb3d51d2dc8e6ee18410/) | ⚠️ Unaudited |
| LlamalendCrvStakeDaoERC4626Strat | unknown | ethereum | n/a | [`0xf3558b...96ab73`](./contracts/ethereum-1/0xf3558b523235fe9bb78a02ca6f18292f4796ab73/) | ⚠️ Unaudited |
| LlamalendCrvUsdStakeDaoERC4626Strat | unknown | ethereum | n/a | [`0x8dfcd3...81ed47`](./contracts/ethereum-1/0x8dfcd34b074517c446a7885c271afd365981ed47/) | ⚠️ Unaudited |
| LlamalendWeth2StakeDaoERC4626Strat | unknown | ethereum | n/a | [`0x531bba...42633d`](./contracts/ethereum-1/0x531bba64373a1b8e5a94bb51ba32cce1cb42633d/) | ⚠️ Unaudited |
| LlamalendWethStakeDaoERC4626Strat | unknown | ethereum | n/a | [`0x5de1bd...6998f1`](./contracts/ethereum-1/0x5de1bdedcdef3a5d6a833b6385ef7bd24e6998f1/) | ⚠️ Unaudited |
| LlamaSale | unknown | ethereum | n/a | [`0x8c2346...dd1dc6`](./contracts/ethereum-1/0x8c2346f74d15b27402c39d26d58daba57bdd1dc6/) | ⚠️ Unaudited |
| PxETHOracle | unknown | ethereum | n/a | [`0x1e276d...454666`](./contracts/ethereum-1/0x1e276d4a186792cafe5c1854be78d47ddc454666/) | ⚠️ Unaudited |
| RebalancingStrat | unknown | ethereum | n/a | [`0x6fcc3b...f907a6`](./contracts/ethereum-1/0x6fcc3bb4948c20a81f652a525f78f80993f907a6/) | ⚠️ Unaudited |
| RecapitalizationManager | unknown | ethereum | n/a | [`0xd5d1ac...1bd062`](./contracts/ethereum-1/0xd5d1acc9c7ebaf8bbf85c45aee2b8b3f3b1bd062/) | ⚠️ Unaudited |
| RewardDistributor | unknown | ethereum | n/a | [`0x1a6726...4a0496`](./contracts/ethereum-1/0x1a6726a877a8417dfab3308d2ec389bc3f4a0496/) | ⚠️ Unaudited |
| scrvUsdERC4626Strat | unknown | ethereum | n/a | [`0x6d2d70...39236f`](./contracts/ethereum-1/0x6d2d702c24fe116e4c859f058551719fb839236f/) | ⚠️ Unaudited |
| SellingRewardManager | unknown | ethereum | n/a | [`0x8cc045...e696de`](./contracts/ethereum-1/0x8cc045ea0cb956a01e802f8e4d09bb8b47e696de/) | ⚠️ Unaudited |
| sfrxETHERC4626Strat | unknown | ethereum | n/a | [`0x342209...5d72f6`](./contracts/ethereum-1/0x342209d6ed7b851d366dfe15dec15689d55d72f6/) | ⚠️ Unaudited |
| SnapshotHelper | unknown | ethereum | n/a | [`0x0ad930...26b147`](./contracts/ethereum-1/0x0ad930970b60d24bd30f612d287f188a7626b147/) | ⚠️ Unaudited |
| StableConverter | unknown | ethereum | n/a | [`0x0236b7...a8a42e`](./contracts/ethereum-1/0x0236b7a3996d8c3597173aa95fd2a915c7a8a42e/) | ⚠️ Unaudited |
| StakingRewardDistributor | unknown | ethereum | n/a | [`0x280d48...0810bd`](./contracts/ethereum-1/0x280d48e85f712e067a16d6b25e7ffe261c0810bd/) | ⚠️ Unaudited |
| StakingRewardDistributorGauge | unknown | ethereum | n/a | [`0x27b465...7151ed`](./contracts/ethereum-1/0x27b4655bd341993c78c8771bdd0caeb3ff7151ed/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xd752bb...befca4`](./contracts/ethereum-1/0xd752bbeb0b199026cbb7d76e4eeb30440abefca4/) | ⚠️ Unaudited |
| TokenConverter | unknown | ethereum | n/a | [`0xf48a59...b34bfc`](./contracts/ethereum-1/0xf48a59434609b6e934c2cf091848fa2d28b34bfc/) | ⚠️ Unaudited |
| TransferGauge | unknown | ethereum | n/a | [`0x124ab7...cf81df`](./contracts/ethereum-1/0x124ab70402eaf0ba6b18f0b304577c336dcf81df/) | ⚠️ Unaudited |
| UZD | unknown | ethereum | n/a | [`0x015b94...63541f`](./contracts/ethereum-1/0x015b94ab2b0a14a96030573fbcd0f3d3d763541f/) | ⚠️ Unaudited |
| VaultAPSStrat | unknown | ethereum | n/a | [`0xdc0b52...f6d7dc`](./contracts/ethereum-1/0xdc0b52c04cdc0099aefcca8b0675a00cf8f6d7dc/) | ⚠️ Unaudited |
| VaultNativeStrat | unknown | ethereum | n/a | [`0x5255e9...c4d3f9`](./contracts/ethereum-1/0x5255e95ce870f6c92bdc533221cfa011dec4d3f9/) | ⚠️ Unaudited |
| VaultStrat | unknown | ethereum | n/a | [`0x2d09fa...83c30b`](./contracts/ethereum-1/0x2d09fac78bbbcee4af6dfae5d3dd425b2883c30b/) | ⚠️ Unaudited |
| VotemarketGauge | unknown | ethereum | n/a | [`0x1c572b...49d920`](./contracts/ethereum-1/0x1c572bf5306c086b43f6f91f032296a25b49d920/) | ⚠️ Unaudited |
| VotiumGauge | unknown | ethereum | n/a | [`0x0ce6df...027be1`](./contracts/ethereum-1/0x0ce6df2119f649ff6f547bfaf8f4bb7c3b027be1/) | ⚠️ Unaudited |
| WETHOracle | unknown | ethereum | n/a | [`0x6fdd42...b112dc`](./contracts/ethereum-1/0x6fdd429652fe77d8e2d123d1b99178cf27b112dc/) | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | [`0x069ee6...fc1cfb`](./contracts/ethereum-1/0x069ee67ccd267c049aa78f787b327315e6fc1cfb/) | ⚠️ Unaudited |
| zETH | unknown | ethereum | n/a | [`0xe47f1c...a87b2b`](./contracts/ethereum-1/0xe47f1cd2a37c6fe69e3501ae45eca263c5a87b2b/) | ⚠️ Unaudited |
| Zunami | unknown | ethereum | n/a | [`0x2ffcc6...4d14ce`](./contracts/ethereum-1/0x2ffcc661011bec72e1a9524e12060983e74d14ce/) | ⚠️ Unaudited |
| ZunamiDepositEthZap2 | unknown | ethereum | n/a | [`0xdd38c5...3c0ed6`](./contracts/ethereum-1/0xdd38c58c8f8202c9581ff16296ab778e223c0ed6/) | ⚠️ Unaudited |
| ZunamiDepositEthZap3 | unknown | ethereum | n/a | [`0x2160ad...696382`](./contracts/ethereum-1/0x2160ad71208f966948389efc76a4cc4930696382/) | ⚠️ Unaudited |
| ZunamiDepositZap | unknown | ethereum | n/a | [`0x1162c7...f81574`](./contracts/ethereum-1/0x1162c741bda2d0284e88d7c13c1b0bfeb4f81574/) | ⚠️ Unaudited |
| ZunamiDepositZap2 | unknown | ethereum | n/a | [`0x9b6042...1fcce1`](./contracts/ethereum-1/0x9b6042c50a0af6cc657eb8512b47a919351fcce1/) | ⚠️ Unaudited |
| ZunamiDepositZap3 | unknown | ethereum | n/a | [`0xa35fc7...77fef4`](./contracts/ethereum-1/0xa35fc7d58c4e79f58e5cab26937fb6ea0277fef4/) | ⚠️ Unaudited |
| ZunamiForwarder | unknown | ethereum | n/a | [`0x17e392...50a0af`](./contracts/ethereum-1/0x17e39276ae189c286801b91e99bae6885750a0af/) | ⚠️ Unaudited |
| ZunamiGovernor | unknown | ethereum | n/a | [`0x0357f8...a03f98`](./contracts/ethereum-1/0x0357f8afcf8bd2b119a4451bf605bef8cca03f98/) | ⚠️ Unaudited |
| ZunamiLaunchZap | unknown | ethereum | n/a | [`0xd18ac6...5b6699`](./contracts/ethereum-1/0xd18ac6f7b78b9576028940c305c0e767455b6699/) | ⚠️ Unaudited |
| ZunamiNative | unknown | ethereum | n/a | [`0x9de839...c6eea7`](./contracts/ethereum-1/0x9de83985047ab3582668320a784f6b9736c6eea7/) | ⚠️ Unaudited |
| ZunamiNativeAPS | unknown | ethereum | n/a | [`0x0b49d1...b29c82`](./contracts/ethereum-1/0x0b49d1dd3f045c986f7816c2ad56f01d8fb29c82/) | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunBTC | unknown | ethereum | n/a | [`0x179dc3...e99498`](./contracts/ethereum-1/0x179dc3d6b260277643998af7de1a9354fde99498/) | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunETH | unknown | ethereum | n/a | [`0x0beb2b...16de60`](./contracts/ethereum-1/0x0beb2b070d73a678a27ba044fec11ae9d116de60/) | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunUSD | unknown | ethereum | n/a | [`0xd9f559...fccfb5`](./contracts/ethereum-1/0xd9f559280c9d308549e84946c0d668a817fccfb5/) | ⚠️ Unaudited |
| ZunamiPoolControllerZunBTC | unknown | ethereum | n/a | [`0x8d6c5c...11eeb4`](./contracts/ethereum-1/0x8d6c5c61e815a53b1d24ac94deec62f31911eeb4/) | ⚠️ Unaudited |
| ZunamiPoolControllerZunETH | unknown | ethereum | n/a | [`0x4bd57f...6f9f32`](./contracts/ethereum-1/0x4bd57f97e35e7c3302dc3a8d4d803826856f9f32/) | ⚠️ Unaudited |
| ZunamiPoolControllerZunUSD | unknown | ethereum | n/a | [`0x2f858e...dc6f4e`](./contracts/ethereum-1/0x2f858e4d6a96c81e37a130314d6cecb64fdc6f4e/) | ⚠️ Unaudited |
| ZunamiPoolZunBTC | unknown | ethereum | n/a | [`0x0fa308...5fc6db`](./contracts/ethereum-1/0x0fa308ae0dde633b6ede22ba719e7e0bc45fc6db/) | ⚠️ Unaudited |
| ZunamiRedistributor | unknown | ethereum | n/a | [`0xd9cc8b...dec334`](./contracts/ethereum-1/0xd9cc8b337d9730161b4166edee5beff6c5dec334/) | ⚠️ Unaudited |
| ZunamiRedistributorNative | unknown | ethereum | n/a | [`0x60278e...dbeb8a`](./contracts/ethereum-1/0x60278e383f1299198f70c6dea453ac6cecdbeb8a/) | ⚠️ Unaudited |
| ZunamiStableZap | unknown | ethereum | n/a | [`0x20c3a5...eec3a8`](./contracts/ethereum-1/0x20c3a51c480c33d3b4c375990bf7dc821deec3a8/) | ⚠️ Unaudited |
| ZunamiToken | unknown | ethereum | n/a | [`0x6b5204...2f0f36`](./contracts/ethereum-1/0x6b5204b0be36771253cc38e88012e02b752f0f36/) | ⚠️ Unaudited |
| ZunDistributor | unknown | ethereum | n/a | [`0xeea950...967b3a`](./contracts/ethereum-1/0xeea950a509d822cf65edceed53d161fbaa967b3a/) | ⚠️ Unaudited |
| ZunETHApsVaultStrat | unknown | ethereum | n/a | [`0xcb17c2...9e5654`](./contracts/ethereum-1/0xcb17c25985e5873ad5d1114b0e03947fc49e5654/) | ⚠️ Unaudited |
| ZunEthOracle | unknown | ethereum | n/a | [`0x64298a...64be4b`](./contracts/ethereum-1/0x64298a70c43d865bedb22fd95fc1f81c3f64be4b/) | ⚠️ Unaudited |
| ZunETHVaultStrat | unknown | ethereum | n/a | [`0x5f8fc0...86b000`](./contracts/ethereum-1/0x5f8fc0976ffe5457ccf7651d5ff4cfca2e86b000/) | ⚠️ Unaudited |
| ZUNStakingRewardDistributor | unknown | ethereum | n/a | [`0x36bae8...b9e8ea`](./contracts/ethereum-1/0x36bae88cb53264662db66db6ac6c7830dbb9e8ea/) | ⚠️ Unaudited |
| ZunUSDApsVaultStrat | unknown | ethereum | n/a | [`0xf859c6...ea0276`](./contracts/ethereum-1/0xf859c621d7ff69df1e283385dbde04135eea0276/) | ⚠️ Unaudited |
| ZunUSDVaultStrat | unknown | ethereum | n/a | [`0x7aa84c...8851a0`](./contracts/ethereum-1/0x7aa84c31be1793f2dab8dbe36faa9478af8851a0/) | ⚠️ Unaudited |
| ZunVestingDistributor | unknown | ethereum | n/a | [`0x190b01...73f931`](./contracts/ethereum-1/0x190b01c325ab18050f13db7e524503336473f931/) | ⚠️ Unaudited |

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
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [www.zksecurity.xyz/reports/hinkal-audit](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [immunefi.com/audit-competition/hinkal-iop/leaderboard](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [security-audits.md](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |
| [drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Inherited from Hinkal — forked code, scoped to ZunamiAPS, ZunamiPoolApsZunBTC, ZunamiPoolApsZunETH, ZunamiPoolApsZunUSD, +3 more | inherited | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x360f8d...4e73c3`](./contracts/ethereum-1/0x360f8dadc56717cfb53b03ff4a570f4fd54e73c3/) | AnchorStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6756ef...e8f9ef`](./contracts/ethereum-1/0x6756effa8aabeb9031279e4c71d8c1bd3ae8f9ef/) | ClaimingNativeStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa655aa...e0a143`](./contracts/ethereum-1/0xa655aa809d1fe7a55e22425780bb676e8ae0a143/) | ClaimingStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42873d...48091b`](./contracts/ethereum-1/0x42873d662fd25b6b5d2a240afa1d39824a48091b/) | ELT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x594618...29a158`](./contracts/ethereum-1/0x594618fb84e6d5ecbe876f4d9c9ed3cb4129a158/) | FrxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e08f5...8fd11e`](./contracts/ethereum-1/0x1e08f5c21817b5f8f3629471fcc2387e5b8fd11e/) | FxnOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc7988...f94327`](./contracts/ethereum-1/0xcc798827741e5e83477b601bbc3cc4eb92f94327/) | FxUsdOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4142bb...e18410`](./contracts/ethereum-1/0x4142bb1ceec0dec4f7aaeb3d51d2dc8e6ee18410/) | GenericOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3558b...96ab73`](./contracts/ethereum-1/0xf3558b523235fe9bb78a02ca6f18292f4796ab73/) | LlamalendCrvStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dfcd3...81ed47`](./contracts/ethereum-1/0x8dfcd34b074517c446a7885c271afd365981ed47/) | LlamalendCrvUsdStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x531bba...42633d`](./contracts/ethereum-1/0x531bba64373a1b8e5a94bb51ba32cce1cb42633d/) | LlamalendWeth2StakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5de1bd...6998f1`](./contracts/ethereum-1/0x5de1bdedcdef3a5d6a833b6385ef7bd24e6998f1/) | LlamalendWethStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c2346...dd1dc6`](./contracts/ethereum-1/0x8c2346f74d15b27402c39d26d58daba57bdd1dc6/) | LlamaSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e276d...454666`](./contracts/ethereum-1/0x1e276d4a186792cafe5c1854be78d47ddc454666/) | PxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fcc3b...f907a6`](./contracts/ethereum-1/0x6fcc3bb4948c20a81f652a525f78f80993f907a6/) | RebalancingStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5d1ac...1bd062`](./contracts/ethereum-1/0xd5d1acc9c7ebaf8bbf85c45aee2b8b3f3b1bd062/) | RecapitalizationManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6726...4a0496`](./contracts/ethereum-1/0x1a6726a877a8417dfab3308d2ec389bc3f4a0496/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2d70...39236f`](./contracts/ethereum-1/0x6d2d702c24fe116e4c859f058551719fb839236f/) | scrvUsdERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cc045...e696de`](./contracts/ethereum-1/0x8cc045ea0cb956a01e802f8e4d09bb8b47e696de/) | SellingRewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342209...5d72f6`](./contracts/ethereum-1/0x342209d6ed7b851d366dfe15dec15689d55d72f6/) | sfrxETHERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ad930...26b147`](./contracts/ethereum-1/0x0ad930970b60d24bd30f612d287f188a7626b147/) | SnapshotHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0236b7...a8a42e`](./contracts/ethereum-1/0x0236b7a3996d8c3597173aa95fd2a915c7a8a42e/) | StableConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280d48...0810bd`](./contracts/ethereum-1/0x280d48e85f712e067a16d6b25e7ffe261c0810bd/) | StakingRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b465...7151ed`](./contracts/ethereum-1/0x27b4655bd341993c78c8771bdd0caeb3ff7151ed/) | StakingRewardDistributorGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf48a59...b34bfc`](./contracts/ethereum-1/0xf48a59434609b6e934c2cf091848fa2d28b34bfc/) | TokenConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124ab7...cf81df`](./contracts/ethereum-1/0x124ab70402eaf0ba6b18f0b304577c336dcf81df/) | TransferGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015b94...63541f`](./contracts/ethereum-1/0x015b94ab2b0a14a96030573fbcd0f3d3d763541f/) | UZD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc0b52...f6d7dc`](./contracts/ethereum-1/0xdc0b52c04cdc0099aefcca8b0675a00cf8f6d7dc/) | VaultAPSStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5255e9...c4d3f9`](./contracts/ethereum-1/0x5255e95ce870f6c92bdc533221cfa011dec4d3f9/) | VaultNativeStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d09fa...83c30b`](./contracts/ethereum-1/0x2d09fac78bbbcee4af6dfae5d3dd425b2883c30b/) | VaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c572b...49d920`](./contracts/ethereum-1/0x1c572bf5306c086b43f6f91f032296a25b49d920/) | VotemarketGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ce6df...027be1`](./contracts/ethereum-1/0x0ce6df2119f649ff6f547bfaf8f4bb7c3b027be1/) | VotiumGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fdd42...b112dc`](./contracts/ethereum-1/0x6fdd429652fe77d8e2d123d1b99178cf27b112dc/) | WETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x069ee6...fc1cfb`](./contracts/ethereum-1/0x069ee67ccd267c049aa78f787b327315e6fc1cfb/) | Withdrawer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe47f1c...a87b2b`](./contracts/ethereum-1/0xe47f1cd2a37c6fe69e3501ae45eca263c5a87b2b/) | zETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ffcc6...4d14ce`](./contracts/ethereum-1/0x2ffcc661011bec72e1a9524e12060983e74d14ce/) | Zunami | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd38c5...3c0ed6`](./contracts/ethereum-1/0xdd38c58c8f8202c9581ff16296ab778e223c0ed6/) | ZunamiDepositEthZap2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2160ad...696382`](./contracts/ethereum-1/0x2160ad71208f966948389efc76a4cc4930696382/) | ZunamiDepositEthZap3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1162c7...f81574`](./contracts/ethereum-1/0x1162c741bda2d0284e88d7c13c1b0bfeb4f81574/) | ZunamiDepositZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b6042...1fcce1`](./contracts/ethereum-1/0x9b6042c50a0af6cc657eb8512b47a919351fcce1/) | ZunamiDepositZap2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa35fc7...77fef4`](./contracts/ethereum-1/0xa35fc7d58c4e79f58e5cab26937fb6ea0277fef4/) | ZunamiDepositZap3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e392...50a0af`](./contracts/ethereum-1/0x17e39276ae189c286801b91e99bae6885750a0af/) | ZunamiForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0357f8...a03f98`](./contracts/ethereum-1/0x0357f8afcf8bd2b119a4451bf605bef8cca03f98/) | ZunamiGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd18ac6...5b6699`](./contracts/ethereum-1/0xd18ac6f7b78b9576028940c305c0e767455b6699/) | ZunamiLaunchZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9de839...c6eea7`](./contracts/ethereum-1/0x9de83985047ab3582668320a784f6b9736c6eea7/) | ZunamiNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b49d1...b29c82`](./contracts/ethereum-1/0x0b49d1dd3f045c986f7816c2ad56f01d8fb29c82/) | ZunamiNativeAPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179dc3...e99498`](./contracts/ethereum-1/0x179dc3d6b260277643998af7de1a9354fde99498/) | ZunamiPoolControllerApsZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0beb2b...16de60`](./contracts/ethereum-1/0x0beb2b070d73a678a27ba044fec11ae9d116de60/) | ZunamiPoolControllerApsZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f559...fccfb5`](./contracts/ethereum-1/0xd9f559280c9d308549e84946c0d668a817fccfb5/) | ZunamiPoolControllerApsZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d6c5c...11eeb4`](./contracts/ethereum-1/0x8d6c5c61e815a53b1d24ac94deec62f31911eeb4/) | ZunamiPoolControllerZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bd57f...6f9f32`](./contracts/ethereum-1/0x4bd57f97e35e7c3302dc3a8d4d803826856f9f32/) | ZunamiPoolControllerZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f858e...dc6f4e`](./contracts/ethereum-1/0x2f858e4d6a96c81e37a130314d6cecb64fdc6f4e/) | ZunamiPoolControllerZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fa308...5fc6db`](./contracts/ethereum-1/0x0fa308ae0dde633b6ede22ba719e7e0bc45fc6db/) | ZunamiPoolZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9cc8b...dec334`](./contracts/ethereum-1/0xd9cc8b337d9730161b4166edee5beff6c5dec334/) | ZunamiRedistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60278e...dbeb8a`](./contracts/ethereum-1/0x60278e383f1299198f70c6dea453ac6cecdbeb8a/) | ZunamiRedistributorNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c3a5...eec3a8`](./contracts/ethereum-1/0x20c3a51c480c33d3b4c375990bf7dc821deec3a8/) | ZunamiStableZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b5204...2f0f36`](./contracts/ethereum-1/0x6b5204b0be36771253cc38e88012e02b752f0f36/) | ZunamiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeea950...967b3a`](./contracts/ethereum-1/0xeea950a509d822cf65edceed53d161fbaa967b3a/) | ZunDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb17c2...9e5654`](./contracts/ethereum-1/0xcb17c25985e5873ad5d1114b0e03947fc49e5654/) | ZunETHApsVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64298a...64be4b`](./contracts/ethereum-1/0x64298a70c43d865bedb22fd95fc1f81c3f64be4b/) | ZunEthOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f8fc0...86b000`](./contracts/ethereum-1/0x5f8fc0976ffe5457ccf7651d5ff4cfca2e86b000/) | ZunETHVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36bae8...b9e8ea`](./contracts/ethereum-1/0x36bae88cb53264662db66db6ac6c7830dbb9e8ea/) | ZUNStakingRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf859c6...ea0276`](./contracts/ethereum-1/0xf859c621d7ff69df1e283385dbde04135eea0276/) | ZunUSDApsVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7aa84c...8851a0`](./contracts/ethereum-1/0x7aa84c31be1793f2dab8dbe36faa9478af8851a0/) | ZunUSDVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x190b01...73f931`](./contracts/ethereum-1/0x190b01c325ab18050f13db7e524503336473f931/) | ZunVestingDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=56

Fork inheritance lineage and inherited audits are included when available.
