# Agentic Audit Brief: javsphere

## Project Overview

- Project: javsphere (`javsphere`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:15.623Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, bsc
- Contract surface: 38 unique implementations (38 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 29 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (javaddressstore, termsandcondutils). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (37 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/37 (0.0%)
- Deployed-live implementations: 37 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArrayGetters | unknown | base | n/a | [`0xd2b849...2e249f`](./contracts/base-8453/0xd2b849f79a163762fa7f51630cb8f577042e249f/) | ⚠️ Unaudited |
| BaseMigrator | unknown | base | n/a | [`0x649d74...2fc4ec`](./contracts/base-8453/0x649d74dfbcb2515d42bb2d7de11cf485912fc4ec/) | ⚠️ Unaudited |
| CommunityLaunchETH | unknown | bsc | n/a | [`0x697328...5d9f7e`](./contracts/bsc-56/0x69732876393acd817fa8f7330837cb7c4d5d9f7e/) | ⚠️ Unaudited |
| InfinityPass | unknown | base | n/a | [`0x15a455...835148`](./contracts/base-8453/0x15a4551ff0f82df21e6e2f176d62563cef835148/) | ⚠️ Unaudited |
| JavBorrowingFees | unknown | base | n/a | [`0x0f64fb...5ef1f2`](./contracts/base-8453/0x0f64fb30283013a06f3099e2dda0574f275ef1f2/) | ⚠️ Unaudited |
| JavBorrowingProvider | unknown | base | n/a | [`0x0e5e40...91ec4b`](./contracts/base-8453/0x0e5e406d3cc7c139de691498362081529091ec4b/) | ⚠️ Unaudited |
| JavBurner | unknown | base | n/a | [`0x108c69...16f9db`](./contracts/base-8453/0x108c69f0cb9414429a9ea656eff478b12a16f9db/) | ⚠️ Unaudited |
| JavFeeTiers | unknown | base | n/a | [`0x3402db...2894dd`](./contracts/base-8453/0x3402db8b7edba95407dda116e84e1e27182894dd/) | ⚠️ Unaudited |
| JavFreezer | unknown | base | n/a | [`0x03e225...3adbfb`](./contracts/base-8453/0x03e225d2bd32f5ece539005b57f9b94a743adbfb/) | ⚠️ Unaudited |
| JavInfoAggregator | unknown | base | n/a | [`0xa4493b...d3905a`](./contracts/base-8453/0xa4493b03d6fde35b8a51c96f7d6b508dcdd3905a/) | ⚠️ Unaudited |
| JavMultiCollatDiamond | unknown | base | n/a | [`0x734ac7...dec889`](./contracts/base-8453/0x734ac70199ab52a4c54763e5a03210a152dec889/) | ⚠️ Unaudited |
| JavPairsStorage | unknown | base | n/a | [`0x50502c...77ff3a`](./contracts/base-8453/0x50502cbf86610207e0f91fb03b5f39950c77ff3a/) | ⚠️ Unaudited |
| JavPriceAggregator | unknown | base | n/a | [`0x0c1128...d00ed2`](./contracts/base-8453/0x0c1128f3894c797a0a98d3febe4f5b5cded00ed2/) | ⚠️ Unaudited |
| JavPriceImpact | unknown | base | n/a | [`0x1c3cf1...3ea2a1`](./contracts/base-8453/0x1c3cf1a5f675c626057f8e09f4e0b40fb33ea2a1/) | ⚠️ Unaudited |
| JavReferrals | unknown | base | n/a | [`0x3cfb37...8618ec`](./contracts/base-8453/0x3cfb37afffa7ada78d11be201d25bc4b428618ec/) | ⚠️ Unaudited |
| JavStakeX | unknown | base | n/a | [`0x093fb1...1048c9`](./contracts/base-8453/0x093fb179cbdf078036d66fd85bafea04371048c9/) | ⚠️ Unaudited |
| JavToken | unknown | base | n/a | [`0xaa0deb...46718d`](./contracts/base-8453/0xaa0debd3164862bc4acaba105c5931cbac46718d/) | ⚠️ Unaudited |
| JavTradingInteractions | unknown | base | n/a | [`0x0218fb...362ab1`](./contracts/base-8453/0x0218fbb63d2ba9266e540ed216fa651f7c362ab1/) | ⚠️ Unaudited |
| JavTradingOrders | unknown | base | n/a | [`0x60a243...791adb`](./contracts/base-8453/0x60a24377f749c2d6f0e9b0114cf2de8e89791adb/) | ⚠️ Unaudited |
| JavTradingProcessing | unknown | base | n/a | [`0x01ad08...a40187`](./contracts/base-8453/0x01ad080011f3a80580875824314d7090dba40187/) | ⚠️ Unaudited |
| JavTradingStorage | unknown | base | n/a | [`0x0899cc...81a975`](./contracts/base-8453/0x0899cc9ac6cfc94f6498b61882df822ce681a975/) | ⚠️ Unaudited |
| JavTriggerRewards | unknown | base | n/a | [`0xecfb92...3385a9`](./contracts/base-8453/0xecfb92d518b2569f11f624db5ddf04fbf83385a9/) | ⚠️ Unaudited |
| LLPToken | unknown | base | n/a | [`0x697328...5d9f7e`](./contracts/base-8453/0x69732876393acd817fa8f7330837cb7c4d5d9f7e/) | ⚠️ Unaudited |
| LPProvider | unknown | base | n/a | [`0xeddf88...b827aa`](./contracts/base-8453/0xeddf88551824918fdc98907732f92c62dbb827aa/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | base | n/a | [`0x5c9859...b74564`](./contracts/base-8453/0x5c9859897159ac81c37496d0566c1acc65b74564/) | ⚠️ Unaudited |
| PackingUtils | unknown | base | n/a | [`0x09542e...ef5a27`](./contracts/base-8453/0x09542e14956b269e2534da26ad60586980ef5a27/) | ⚠️ Unaudited |
| Pool | unknown | base | n/a | [`0xaec880...b51c8f`](./contracts/base-8453/0xaec880badc135c6a72be280a87a2fea513b51c8f/) | ⚠️ Unaudited |
| RewardsCollector | unknown | base | n/a | [`0x051d87...f6e67d`](./contracts/base-8453/0x051d873f931e1249cb70df53efb82685e9f6e67d/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | base | n/a | [`0x3f9c07...21a77d`](./contracts/base-8453/0x3f9c070b7f76859cf52847ceae39d389b221a77d/) | ⚠️ Unaudited |
| TermsAndConditionsAgreement | unknown | base | n/a | [`0x5879f7...83a7be`](./contracts/base-8453/0x5879f745435477a05223bfaec37b15166883a7be/) | ⚠️ Unaudited |
| TokenVesting | unknown | base | n/a | [`0x0f9ad4...6932ea`](./contracts/base-8453/0x0f9ad4b603efc5e0f8806d88f4f3e77ee56932ea/) | ⚠️ Unaudited |
| TokenVestingFreezer | unknown | base | n/a | [`0x0e528a...dffe00`](./contracts/base-8453/0x0e528ad3fc3a09f8bb4e03f5f3123df74edffe00/) | ⚠️ Unaudited |
| TradingCommonUtils | unknown | base | n/a | [`0x1cd209...694b04`](./contracts/base-8453/0x1cd20917ebf383f635a2efdc9d644e0438694b04/) | ⚠️ Unaudited |
| Treasury | unknown | base | n/a | [`0x154a14...7b1a35`](./contracts/base-8453/0x154a149614a81463d2ca6dbc3e3c96f5187b1a35/) | ⚠️ Unaudited |
| UpdateLeverageUtils | unknown | base | n/a | [`0x108c9f...75c65b`](./contracts/base-8453/0x108c9fc0cbe38471954ed4d4de39049c5e75c65b/) | ⚠️ Unaudited |
| UpdatePositionSizeUtils | unknown | base | n/a | [`0x3992b5...c64ccd`](./contracts/base-8453/0x3992b59411c3d0e46a3943854b8ea91429c64ccd/) | ⚠️ Unaudited |
| Vote | unknown | base | n/a | [`0x7d590e...42638d`](./contracts/base-8453/0x7d590ee138e7b5b9a3e08d028c2764a42542638d/) | ⚠️ Unaudited |
| XVault | unknown | base | n/a | [`0x1f8c6b...154154`](./contracts/base-8453/0x1f8c6b2d2b7bd5e156ac919baedecc350c154154/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
