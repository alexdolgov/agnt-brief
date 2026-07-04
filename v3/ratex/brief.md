# Agentic Audit Brief: RateX

## Project Overview

- Project: RateX (`ratex`)
- Website: [https://app.rate-x.io/referral?ref=VS71Wksp](https://app.rate-x.io/referral?ref=VS71Wksp)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.200Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 154 unique implementations (309 raw deployments)
- DeFi Llama TVL: $2,872,151.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 89 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 7 functional families. Its contracts share 10 common project-authored base contract(s) (nontransferableerc20, proxy, commonlistadistributor). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 387; live-surface contracts included: 259 (182 live, 77 unknown).
- Excluded by liveness: 128 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/79 (0.0%)
- Deployed-live implementations: 79 of 154 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/79
- Verified + Unaudited implementations: 79
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 154
- Raw deployments: 309
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (79)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BBtcOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x2ea16e...b8fb5a`](./contracts/bsc-56/0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a/); bsc `0x7ed71d...44eb2e` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | bsc | n/a | 2 deployments: bsc [`0x1afa15...11fad5`](./contracts/bsc-56/0x1afa1589a634be568d7872dcf1bbe6f79e11fad5/); bsc `0xd113db...195a16` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | bsc | n/a | 2 deployments: bsc [`0x550206...4a7f15`](./contracts/bsc-56/0x550206e612bffe9f9f0a8e38fa68f68e184a7f15/); bsc `0xe5248d...1dee78` | ⚠️ Unaudited |
| BorrowListaDistributor | unknown | bsc | n/a | 18 deployments: bsc [`0x419352...181d1a`](./contracts/bsc-56/0x419352db842b7f6f33dbf541d23938cffc181d1a/); bsc `0x46c572...95be54`; bsc `0x564fa7...8b1ebb`; bsc `0x58fe0f...5c725a`; bsc `0x5debc8...ade245`; bsc `0x7247dd...20f59d`; bsc `0x73538c...da0093`; bsc `0x7ad627...16da80`; bsc `0x88620f...c4a2e6`; bsc `0x982d1d...ecf70c`; bsc `0x98a3ff...e84c54`; bsc `0xa3bce2...b0fd45`; bsc `0xa97aed...347900`; bsc `0xc952cc...e6e2d5`; bsc `0xca07db...f8ac38`; bsc `0xcb8f70...ccd2d6`; bsc `0xd1f81b...3b001e`; bsc `0xf8d1d8...83eafa` | ⚠️ Unaudited |
| BorrowLisUSDListaDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x0aed86...7f4f3b`](./contracts/bsc-56/0x0aed860ca496600f6976219cb1acec435d7f4f3b/); bsc `0xf1f4d6...bd8b22` | ⚠️ Unaudited |
| BoundValidator | unknown | bsc | n/a | 2 deployments: bsc [`0x81c4f1...c8e6d5`](./contracts/bsc-56/0x81c4f1175fd355cf2c5651396af25eac98c8e6d5/); bsc `0x9ddd9b...be5ff2` | ⚠️ Unaudited |
| BtcOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x2eedc4...2d5642`](./contracts/bsc-56/0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642/); bsc `0xa5e8ea...cfffbf` | ⚠️ Unaudited |
| Buyback | unknown | bsc | n/a | [`0x3b99a4...2e1bfc`](./contracts/bsc-56/0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc/) | ⚠️ Unaudited |
| CeToken | unknown | bsc | n/a | 3 deployments: bsc [`0x397a48...39004b`](./contracts/bsc-56/0x397a486183cb6608a3ccd1c74b6a7f024439004b/); bsc `0x4510aa...cc7f50`; bsc `0xc6f28a...ff0fe2` | ⚠️ Unaudited |
| ClearingHouse | unknown | bsc | n/a | 4 deployments: bsc [`0x293a33...288a16`](./contracts/bsc-56/0x293a337687363e91406fc0d544b11efc6d288a16/); bsc `0x456fb8...b6b28b`; bsc `0x58f2d3...b49566`; bsc `0x801010...36009f` | ⚠️ Unaudited |
| Clipper | unknown | bsc | n/a | 17 deployments: bsc [`0x117b4a...651063`](./contracts/bsc-56/0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063/); bsc `0x334e4f...a1b704`; bsc `0x4192ff...1723b3`; bsc `0x4fd4b7...368ac3`; bsc `0x5784e6...449ce0`; bsc `0x5aabbb...493b26`; bsc `0x6dc0ab...119b5a`; bsc `0x9b8788...4ab7ea`; bsc `0xaf7133...90e08e`; bsc `0xb12ff6...4b1e92`; bsc `0xc4857c...59a998`; bsc `0xeb995f...54b1ea`; bsc `0xf21b35...31d057`; bsc `0xf57a8c...a659f3`; bsc `0xf6dadf...30313c`; bsc `0xf92001...c3f9e6`; bsc `0xfe2881...89525e` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | bsc | n/a | [`0x81a62b...5a46e8`](./contracts/bsc-56/0x81a62b329cc8939494d8613f614171a9955a46e8/) | ⚠️ Unaudited |
| ClisToken | unknown | bsc | n/a | 3 deployments: bsc [`0x2544be...d355a8`](./contracts/bsc-56/0x2544be623743897b06d57707cf3016cccfd355a8/); bsc `0x88a596...291c27`; bsc `0x8a3143...182cc6` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x57371f...8490f6`](./contracts/bsc-56/0x57371fb9311a7a0d6c712e9ee154dc8a718490f6/); bsc `0x74e17e...f69307` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | bsc | n/a | 14 deployments: bsc [`0x01a6fc...eb8281`](./contracts/bsc-56/0x01a6fcc74852088c72862c12c54f992720eb8281/); bsc `0x0bfb1b...d8dad1`; bsc `0x0c9a0f...8d15b5`; bsc `0x1716ac...b47c73`; bsc `0x3c1612...010eb0`; bsc `0x566278...27204c`; bsc `0x6c5285...13fc5e`; bsc `0x77c9b4...7c2572`; bsc `0x83f861...a2ae5b`; bsc `0xc4a8a6...edd830`; bsc `0xe3221b...7feb85`; bsc `0xf09fef...e22889`; bsc `0xf0fc2d...08e956`; bsc `0xff6f8c...63f955` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | bsc | n/a | 5 deployments: bsc [`0x0bebd7...b79478`](./contracts/bsc-56/0x0bebd707023d892d35548a992e79286e76b79478/); bsc `0x9a8195...8c7856`; bsc `0xb1da31...9a5af4`; bsc `0xe61f43...dee39a`; bsc `0xe786ec...05d6be` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | bsc | n/a | 2 deployments: bsc [`0x510264...6827d2`](./contracts/bsc-56/0x510264a39dd2d270ca9467c86571e0c84c6827d2/); bsc `0x873339...3256fa` | ⚠️ Unaudited |
| EarnImp | unknown | bsc | n/a | [`0x92723a...c4819e`](./contracts/bsc-56/0x92723acbac7bd5326f25c719f27769e6adc4819e/) | ⚠️ Unaudited |
| EarnPool | unknown | bsc | n/a | 2 deployments: bsc [`0x143c8b...164642`](./contracts/bsc-56/0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642/); bsc `0x66de07...1796f3` | ⚠️ Unaudited |
| EmissionVoting | unknown | bsc | n/a | 2 deployments: bsc [`0x5d52bc...693736`](./contracts/bsc-56/0x5d52bcbf45c72f5fb8441959622c7e5dd4693736/); bsc `0xfc136f...31336c` | ⚠️ Unaudited |
| EmissionVoting | unknown | bsc | n/a | 2 deployments: bsc [`0x76e001...eb3d00`](./contracts/bsc-56/0x76e001bf7febeb37981cf2a116f0594ebeeb3d00/); bsc `0xac6b7f...d05996` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | bsc | n/a | 3 deployments: bsc [`0x05570c...7115c3`](./contracts/bsc-56/0x05570c903a99f59e8f9913d4d628796bad7115c3/); bsc `0x3b2393...5e6086`; bsc `0xa65c40...4a218e` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | bsc | n/a | 10 deployments: bsc [`0x11bf11...59147a`](./contracts/bsc-56/0x11bf1122871e13c13466681022c74b496b59147a/); bsc `0x1cf9c6...336c4d`; bsc `0x39d099...39716a`; bsc `0x4b2d67...f9159c`; bsc `0x7c81da...424954`; bsc `0x9b4fcb...18be4a`; bsc `0x9f6c25...69eff4`; bsc `0xc23d34...c077c1`; bsc `0xe8f464...8b8dd2`; bsc `0xf6ab5c...dcf504` | ⚠️ Unaudited |
| ERC20LpTokenProvider | unknown | bsc | n/a | 2 deployments: bsc [`0x2725d7...65aa57`](./contracts/bsc-56/0x2725d7336027773d7a958e10819a923dcd65aa57/); bsc `0x946e5c...e74c05` | ⚠️ Unaudited |
| ERC721LpListaDistributor | unknown | bsc | n/a | 8 deployments: bsc [`0x16c39b...0622a5`](./contracts/bsc-56/0x16c39b6ee97d3d92f570ad9403418e43ea0622a5/); bsc `0x3665d7...94d9c9`; bsc `0x398df8...ec2596`; bsc `0x8453cd...16005f`; bsc `0x9e4dfb...d06cb4`; bsc `0xb69162...110ed4`; bsc `0xe43fe8...14f520`; bsc `0xe5c03c...43de08` | ⚠️ Unaudited |
| EzEthOracle | unknown | bsc | n/a | [`0xe859f3...90f45f`](./contracts/bsc-56/0xe859f3f6ee5532313c33a02283150e201290f45f/) | ⚠️ Unaudited |
| FdUsdOracle | unknown | bsc | n/a | 3 deployments: bsc [`0x1b8b3f...89d308`](./contracts/bsc-56/0x1b8b3ff07fefee784e3a5d208d34c12c6489d308/); bsc `0x464bfb...8d5d57`; bsc `0x908047...7aaa94` | ⚠️ Unaudited |
| FdUsdOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x1dbc9a...792072`](./contracts/bsc-56/0x1dbc9a4d61c05a085cc290ead59d44dede792072/); bsc `0xcf9509...78ecd3` | ⚠️ Unaudited |
| FlashBuy | unknown | bsc | n/a | 2 deployments: bsc [`0x9ba88e...4063cb`](./contracts/bsc-56/0x9ba88e6b20041750fd4e6271fea455f5d44063cb/); bsc `0xdace1c...875057` | ⚠️ Unaudited |
| FlashBuy | unknown | bsc | n/a | 2 deployments: bsc [`0xb7a58a...7f3978`](./contracts/bsc-56/0xb7a58ab98b9c4d41038288d5090e4806a17f3978/); bsc `0xd5d976...c2aaa0` | ⚠️ Unaudited |
| GemJoin | unknown | bsc | n/a | 17 deployments: bsc [`0x03db75...d63067`](./contracts/bsc-56/0x03db750d6212c6a0bca9258e8cb7cf46dfd63067/); bsc `0x157c9a...8ce299`; bsc `0x2202a4...fcd7e9`; bsc `0x2367f2...9a6918`; bsc `0x3cd434...f0fc43`; bsc `0x3e75d7...a0976d`; bsc `0x3f3e0a...68cc10`; bsc `0x605356...cc4404`; bsc `0x876cd9...6c3104`; bsc `0x98b167...e6739a`; bsc `0xa94aa7...2f7079`; bsc `0xad406c...059b1f`; bsc `0xad9eaa...5b6f65`; bsc `0xd7e339...f9bae8`; bsc `0xdcfe50...12007e`; bsc `0xe95eaf...82a0c6`; bsc `0xf8ca8d...b7a677` | ⚠️ Unaudited |
| LinearDecrease | unknown | bsc | n/a | 2 deployments: bsc [`0xbaf8b4...e3cc03`](./contracts/bsc-56/0xbaf8b40a1e2a7b842289778c1c509b6bede3cc03/); bsc `0xd209d1...d75283` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | n/a | [`0xffd3a5...9908e6`](./contracts/bsc-56/0xffd3a57e8db4f51fa01c72f06ff30bdfda9908e6/) | ⚠️ Unaudited |
| ListaOFTAdapter | adapter | bsc | n/a | [`0x837cb0...25e7b3`](./contracts/bsc-56/0x837cb07f6b8a98731856092457524ff37b25e7b3/) | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | bsc | n/a | [`0x34b504...7fa3da`](./contracts/bsc-56/0x34b504a5cf0ff41f8a480580533b6dda687fa3da/) | ⚠️ Unaudited |
| ListaVault | core_logic | bsc | n/a | [`0x307d13...30292a`](./contracts/bsc-56/0x307d13267f360f78005f476fa913f8848f30292a/) | ⚠️ Unaudited |
| LisUSDPoolSet | unknown | bsc | n/a | 2 deployments: bsc [`0x37db1a...95d0bf`](./contracts/bsc-56/0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf/); bsc `0x586034...c7bb0f` | ⚠️ Unaudited |
| LpProxy | unknown | bsc | n/a | [`0x5a0e32...70ec01`](./contracts/bsc-56/0x5a0e3291514f5f1797a0c7efefdac81eec70ec01/) | ⚠️ Unaudited |
| Market | unknown | bsc | n/a | [`0x64e30b...0cbd98`](./contracts/bsc-56/0x64e30b9e176b4551b5d9f17d72716152540cbd98/) | ⚠️ Unaudited |
| mBTCOracle | unknown | bsc | n/a | 3 deployments: bsc [`0x31d558...b87aaf`](./contracts/bsc-56/0x31d558b899461d6ea498c3c1664a150a19b87aaf/); bsc `0x8be958...222345`; bsc `0xd5e1b3...c66870` | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | n/a | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | ⚠️ Unaudited |
| mCAKEOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x01b39e...b44e23`](./contracts/bsc-56/0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23/); bsc `0x7db21c...1c3ce7` | ⚠️ Unaudited |
| mwBETHOracle | unknown | bsc | n/a | [`0xaa4912...6d50d0`](./contracts/bsc-56/0xaa4912633e4e2f65604fe7f6a6ba9eb5ef6d50d0/) | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | bsc | n/a | 2 deployments: bsc [`0x708252...cfb755`](./contracts/bsc-56/0x7082528e908bfd0c42d2134fe7065457cfcfb755/); bsc `0xee56ee...796dbb` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | bsc | n/a | 2 deployments: bsc [`0xb894de...4f9c26`](./contracts/bsc-56/0xb894de45fdcc9f51f20cc8e648f241e5914f9c26/); bsc `0xc74efa...4fb7dd` | ⚠️ Unaudited |
| OracleCenter | unknown | bsc | n/a | 2 deployments: bsc [`0x47dbca...784a41`](./contracts/bsc-56/0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41/); bsc `0x946a68...f7c53b` | ⚠️ Unaudited |
| PancakeStaking | unknown | bsc | n/a | 2 deployments: bsc [`0xb20a61...780e4f`](./contracts/bsc-56/0xb20a61434be17e2eb48035577f083706b6780e4f/); bsc `0xe31f0b...978f10` | ⚠️ Unaudited |
| PSM | unknown | bsc | n/a | 2 deployments: bsc [`0xaa57f3...72ec0c`](./contracts/bsc-56/0xaa57f36dd5ef2ac471863ec46277f976f272ec0c/); bsc `0xf51c1d...1abb7f` | ⚠️ Unaudited |
| PTLinearDiscountOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x138288...9ddd59`](./contracts/bsc-56/0x138288f20a4d7c22e2b3fbffbf3a45e7c69ddd59/); bsc `0xa34627...505281` | ⚠️ Unaudited |
| PToken | token | bsc | n/a | 5 deployments: bsc [`0x34f18e...80eafc`](./contracts/bsc-56/0x34f18e18330468ffaedfdcd8ffdaff23aa80eafc/); bsc `0x660e36...5bc300`; bsc `0x79427f...94aec0`; bsc `0xbfc693...7f2750`; bsc `0xccbfd5...10241b` | ⚠️ Unaudited |
| PumpBtcOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x420a16...dde28b`](./contracts/bsc-56/0x420a16f03e7f623556ccee452d4caafe1fdde28b/); bsc `0xd06233...544c6f` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | n/a | [`0xea44dd...2b9e6e`](./contracts/bsc-56/0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e/) | ⚠️ Unaudited |
| ResilientOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x35c673...af4bbe`](./contracts/bsc-56/0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe/); bsc `0xf3afd8...e6c750` | ⚠️ Unaudited |
| SlisBnbDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x9881cf...7c7e12`](./contracts/bsc-56/0x9881cfce5a072a107dcce7fd24e2c99b857c7e12/); bsc `0xade6d9...8bea2f` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | n/a | [`0xfd31e1...97819b`](./contracts/bsc-56/0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b/) | ⚠️ Unaudited |
| SolvBtcOracle | unknown | bsc | n/a | [`0xb7a753...48af85`](./contracts/bsc-56/0xb7a753f3776282976c1f2b0bcb2ff0d13d48af85/) | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x82c6fb...8a4491`](./contracts/bsc-56/0x82c6fb65aa044bb8463068e30d1146beb08a4491/); bsc `0xfeb284...2bdbac` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0xefebdd...9fcf14`](./contracts/bsc-56/0xefebddff8730871b72cdaf8793455f26a59fcf14/); bsc `0xf2fa32...207026` | ⚠️ Unaudited |
| StakingVault | unknown | bsc | n/a | 2 deployments: bsc [`0x0541ee...a1806a`](./contracts/bsc-56/0x0541eeef035709040728bedbfd7234298ba1806a/); bsc `0xf40d0d...2004ad` | ⚠️ Unaudited |
| StakingVault | unknown | bsc | n/a | 2 deployments: bsc [`0x2c3f3b...ad0339`](./contracts/bsc-56/0x2c3f3b829ce4c8579deb20e2487a4dfac9ad0339/); bsc `0x62dfec...f68153` | ⚠️ Unaudited |
| StoneOracle | unknown | bsc | n/a | [`0xdf5a8e...539be8`](./contracts/bsc-56/0xdf5a8e190cf63d74a4ec743253fa26d4c7539be8/) | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0xc998f1...cee150`](./contracts/bsc-56/0xc998f14f0692526824bfa3d299fd5cce04cee150/); bsc `0xff5ed1...12eb00` | ⚠️ Unaudited |
| ThenaStaking | unknown | bsc | n/a | 2 deployments: bsc [`0xcda44d...2c34b3`](./contracts/bsc-56/0xcda44d50fa7a806372926e521e6dde34612c34b3/); bsc `0xfa5b48...0ac719` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0ffee0...ef8b0c`](./contracts/bsc-56/0x0ffee08f7226695e4de38004a48785a441ef8b0c/); bsc `0xedbcdd...4336d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 16 deployments: bsc [`0x227716...f6c867`](./contracts/bsc-56/0x227716e5f6c59f961e091d35345b16ce09f6c867/); bsc `0x2d24c9...96162d`; bsc `0x337a7a...c38249`; bsc `0x43a00b...75ea42`; bsc `0x4fece6...35ef65`; bsc `0x5be73a...cdb971`; bsc `0x5ecc1d...0627c4`; bsc `0x735f7a...e1e918`; bsc `0x7628a5...a7dcc0`; bsc `0xa11850...66b0eb`; bsc `0xa257a5...a748c1`; bsc `0xb18bf8...88605c`; bsc `0xbcb466...7a7245`; bsc `0xc6c6b6...9cd932`; bsc `0xd84eff...064d97`; bsc `0xfc0ef1...38edfd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x35a8e4...401692`](./contracts/bsc-56/0x35a8e465b7c28123bbe568207f4202f8b7401692/); bsc `0x533fa4...a0ce4d` | ⚠️ Unaudited |
| UpdateImp | unknown | bsc | n/a | [`0xb844d6...b80f13`](./contracts/bsc-56/0xb844d65c4c27a57203989235a7cd765317b80f13/) | ⚠️ Unaudited |
| USDTLpListaDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x24e5de...0d0bd9`](./contracts/bsc-56/0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9/); bsc `0x9eb77a...fb38f7` | ⚠️ Unaudited |
| UsdtOracle | unknown | bsc | n/a | 2 deployments: bsc [`0xdf2d4c...17ae63`](./contracts/bsc-56/0xdf2d4c43f45ac225abfde4a92f9ff950f517ae63/); bsc `0xf19dc2...a26a72` | ⚠️ Unaudited |
| VaultManager | unknown | bsc | n/a | 2 deployments: bsc [`0x15fc4e...727ec2`](./contracts/bsc-56/0x15fc4e6417c74577dee27aaafb2e2c5806727ec2/); bsc `0x5763dd...972ec7` | ⚠️ Unaudited |
| VeLista | unknown | bsc | n/a | [`0xd0c380...7b87b3`](./contracts/bsc-56/0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3/) | ⚠️ Unaudited |
| VeListaAutoCompounder | adapter | bsc | n/a | [`0x9a0530...c3bf5e`](./contracts/bsc-56/0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e/) | ⚠️ Unaudited |
| VeListaDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x006835...4ccfd6`](./contracts/bsc-56/0x0068358250759de8f50c83927c4a95847f4ccfd6/); bsc `0x45aac0...5ce40c` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | n/a | [`0xca8d24...2b72e9`](./contracts/bsc-56/0xca8d2451df68a9132fd9d30e8d354460642b72e9/) | ⚠️ Unaudited |
| VenusAdapter | unknown | bsc | n/a | 2 deployments: bsc [`0xc1d3a2...3cacef`](./contracts/bsc-56/0xc1d3a2f48f1c025f80e32a54a4000a73633cacef/); bsc `0xf76d9c...29cda9` | ⚠️ Unaudited |
| VotingIncentive | unknown | bsc | n/a | 2 deployments: bsc [`0x05ac03...8a4c9c`](./contracts/bsc-56/0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c/); bsc `0xbc380e...570b82` | ⚠️ Unaudited |
| WeEthOracle | unknown | bsc | n/a | [`0xe51485...248b46`](./contracts/bsc-56/0xe514851e324b54f152f7d9631ace1a0a87248b46/) | ⚠️ Unaudited |
| WstETHOracle | unknown | bsc | n/a | [`0xc9ca23...24ddd7`](./contracts/bsc-56/0xc9ca2376ae12e22dcb198eacb17e44168024ddd7/) | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | bsc | n/a | [`0x0ad764...669caa`](./contracts/bsc-56/0x0ad764098ff68b100d0976a8bcf2294b67669caa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01c95c...847e75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03c5f8...d8cc81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x042b82...70dc3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x044161...1e82eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cac35...94a76f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d3190...c7a3cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e3ee2...9e0f2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11b7db...999e47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14c5b2...b5b912` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x155300...f2be13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x182ce9...19b35a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b262f...729d99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ba517...9aae8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22c250...e94209` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25ca16...467123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2665ea...cf09f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27849b...b5d3e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc736...d76a26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ea5c7...e17c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x385a83...0e5b29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aa7e9...d898a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c3508...686d18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44211d...2f5a72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45596f...3f858c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x468ba2...e49b55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x499148...bdb2e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4acca9...1632a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50250e...3a6f6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e2fe...83bc22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50e9e2...65d172` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54399a...b67453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x567485...54306d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57df90...b473a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d728c...441070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f651c...14ed2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fe35e...faef3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61682b...d0c0e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x677bcd...abca14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x684058...cd515c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68a564...10b88e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69d072...1899ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc852...d89248` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72f731...e28f6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x732a42...77ab32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x792208...e3db22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a270c...bf01db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x861399...79bfb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89a32e...40cb8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89aafc...80b6a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92be02...ec15d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93ecf7...7924d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x957b4f...f1e920` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x977f80...38f830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9fe1e9...7e0c83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9a170...5445c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae1951...5a4508` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf34bc...f8053e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd13ab...47c5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc62e55...4570a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9540c...79d984` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcac95a...e83d1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3406f...358604` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd358c5...744056` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd75453...638837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe86657...c27877` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb1d5e...9ca45a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeccaa7...793050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedeb8a...bdd353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf47110...03a874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6852f...1d18ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7685a...184b64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7e178...b1923c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb9c89...5596ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf173...cb7e1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd8ef9...4e46b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [RateX-Sep-2024-OffsideLabs.final.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateX-Sep-2024-OffsideLabs.final.pdf) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 154 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2443] RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf
- [2444] RateX-Sep-2024-OffsideLabs.final.pdf

Fork inheritance lineage and inherited audits are included when available.
