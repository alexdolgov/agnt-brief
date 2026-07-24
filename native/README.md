# Agentic Audit Brief: Native

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Native (`native`)
- Website: [https://native.org](https://native.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, manta-pacific, mantle, polygon, zklink-nova
- Contract surface: 106 unique implementations (507 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $49,087,004.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Native. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across arbitrum, base, bsc, ethereum, manta-pacific, polygon. Structural roles: 8 supporting, 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: supporting (8), core (4)
- Contract kinds: contract (12)
- Detected standards: ownable (12), ownable2step (12), multicall (8), pausable (8)
- Frameworks: openzeppelin (12), permit2 (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 12; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 46
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 106
- Raw deployments: 507
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraInterfaceMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc190252fc83165ab2b327cd1f9f38b0c094b70d` | ⚠️ Unaudited |
| AquaLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x4980871713f17eec1537645e9466bc27819bc289`; base `0x58f3d3326f1bcc1ea0e0c1fcccbde2ddf474b9e0`; base `0x812c4e4e9e1b52e0332fc77f4cdb455ae6c87df0` | ⚠️ Unaudited |
| AquaLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x5d55432c6aaedb4d34523b2744e959f03aefffe3`; base `0x8d31975b480318295a9dd74e6aced206b7464b08`; base `0x971ef32aef8e1b49e454e3e20e7d329343a9351d` | ⚠️ Unaudited |
| AquaLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 7 deployments: arbitrum `0x0954ee3e83749283b6709e99a25b44c231316ba1`; arbitrum `0x131f17a67e5575f0daed740663fb69762deff4d4`; arbitrum `0x497243008df41c3057a27f18148c068866c09dd6`; arbitrum `0x6d6cea1b98d6cad95664b3706bb1c8096160892f`; arbitrum `0x7d1921c875dd8a4c88a4dcf0135e4d93256e1990`; arbitrum `0xa54bf327ee4a26b808992694dc2e56dbee094b30`; arbitrum `0xec44701d5d7b1950aee4a555675444e137bb2041` | ⚠️ Unaudited |
| AquaLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 11 | arbitrum | n/a | 12 deployments: arbitrum `0x4588fae785828ac36d897f23e8adf5fac7baffc2`; arbitrum `0x58cfd89d43142096d12b2de69fc092e0bbf4e758`; arbitrum `0x654f2ed14ede8d7cdd45654ab44b072bce6aaf8f`; arbitrum `0x71c5921751921ce67b1939196be63b28aa1ac3d3`; arbitrum `0x76bc5293bd253ca87c6e32ade1b779941c971ff1`; arbitrum `0x90e3e403e0c4531471abfdc1fccf402c1064f209`; arbitrum `0x94febdf8d9813928ea15bc99d80632d59c190810`; arbitrum `0xbea22afbfdd1ae0d97b079e220cf6891c8d08c9d`; arbitrum `0xc29680e5039701657a670c9ef1da2474ea40a730`; arbitrum `0xc7f34f096fdd090d462ebed79e7bfa29fe42a258`; arbitrum `0xca459f4018f0a8f7155ccc7ce7ad031550b6c9d3`; arbitrum `0xd03c045eabe43245c7aa2bab4d2b33510064d972` | ⚠️ Unaudited |
| AquaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x074f6c79165580726093024fd3cdcfba15fd3110`; base `0xb0f9c8bb42dfad61a368fcacb3feb976681ef3ba`; base `0xf3c7ce2c10295bc9708a52f70ddc74c52719cfdf` | ⚠️ Unaudited |
| AquaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54673a0bbf1e429222a78b5a1652d4ee441d411b`; base `0x6b2a6c80d0625c4fca7c47661adceeadfc83496d` | ⚠️ Unaudited |
| AquaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x62d45d7ed3e314469d4ba609a99560fb64510297`; base `0xa6d87c6b45aa010728cee5f97739b57c99b63ee6` | ⚠️ Unaudited |
| AquaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3ba16ac2a67d126bf1dba0a81e6c75073efd95d9`; arbitrum `0x795e5ccdd008637eb98c64958d3b8ba3e6de2d2b` | ⚠️ Unaudited |
| AquaVaultLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x55d0ce6928598c6bfdf23fa72698ce68809a9328`; base `0x5bea1ee78991bdf73682bc2d1a66d5f5f0cf81b8`; base `0x6857c0a3fbcb5cd498ceb03e0fc2bad9bf2c3b6b`; base `0xba76af843ebf349b8661156a1c91504b300e6eee`; arbitrum `0xd3fbcfa5fd4dfe51293fb8b29cb62027fe0ac4c1` | ⚠️ Unaudited |
| AquaVaultSignatureCheck | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x34fc2d4eccf7d745ad98b99f56ee33a73e1540e2`; base `0xbbf24e70b1d3a41d991ead208ed8e0f7f923582f`; base `0xe3746988d4e14d16cc148c2404d2d1fb9c16b8c9`; arbitrum `0x4a6afeaf9935d39d140a44fda2637ab9244200f9` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5b933868f5e710070b146213ed2cd71628e465c1`; ethereum `0xd24ffc19608ff2a92d0149fa11784f9943c2235c` | ⚠️ Unaudited |
| ConstantSumPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x163785236514f476a7a45e354c24bff5a879ba51`; polygon `0x40173f2eaf4fde093692eb64c49337d1e9eb9c06`; polygon `0x60332d42e67b11fc737c8ea7045ab624af0c38f3`; manta-pacific `0xd65406e6207b97057e21ff51926d8d5f8840c4b2`; base `0xd65406e6207b97057e21ff51926d8d5f8840c4b2`; arbitrum `0xc5d4c574315a5567b18592a5049d354178abec4f` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248517 | `0xe3d41d19564922c9952f692c5dd0563030f5f2ef` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248522 | `0xba8db0caf781cac69b6acf6c848ac148264cc05d` | ⚠️ Unaudited |
| CreditVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0xf6f8de2d588556863be334e76c37d4158d7bb3c5`; base `0x097534f09eb81cc5b69adf36df3d3fa11b7fe1b1`; base `0x124ed31c4476bae111733fbc4f8b2a428b3fd785`; base `0x2dad22cac847dcb840697dbc2af330d2cc205e5d`; arbitrum `0x0aadf229054fee4edb3217352bfe24e9e7764885`; arbitrum `0x273ecf5bdac92bae19ea2b525ea99f54108f03bd`; arbitrum `0x319fc7782936895cbe5dcd850806cb9f32aadfea` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-248524 | `0x74a4cd023e5afb88369e3f22b02440f2614a1367` | ⚠️ Unaudited |
| CreditVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-248520 | `0xba1cf8a63227b46575af823beb4d83d1025eff09` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x3cc7ed6b90f727d68d76f2318437a8dcd32eb04c`; polygon `0x497de8cb23ded14d9470598c10c860b532236d8d`; polygon `0x9a5b944ca17e3f62dd2e31d2c7cda9aa234839ee` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 4 deployments: manta-pacific `0x3ba16ac2a67d126bf1dba0a81e6c75073efd95d9`; manta-pacific `0x4c34ba0103b8417e1fc4d0f6645828b2d6d207f9`; manta-pacific `0xc6f7a7ba5388bfb5774bfaa87d350b7793fd9ef1`; manta-pacific `0xd3fbcfa5fd4dfe51293fb8b29cb62027fe0ac4c1` | ⚠️ Unaudited |
| FixedTermYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0035ce4f140a1358798d1b360795524222a8c55d`; bsc `0x164a630189e106c2fb7b78e42e17a7749b332018`; bsc `0x4d333a5adb5868eea6d9f6f90ff4738e78ac2925`; bsc `0x5d4766387056a448abf45c1a8c536487a53b716a`; bsc `0x7d93d5bc7574ea5e0b92cea2df70daccd10a26c7`; bsc `0x856de40dabfcca42ff8a3b1c0840e4b6757c9b22`; bsc `0x98a83e39dd6a2c2d46fd493bdc143483eff61fbe`; bsc `0xa86613c908cea037c5f5c6e28d389b347db65265`; bsc `0xaf63834ea7d5e9c17a91bdb1e8154375becd063a`; bsc `0xfcee389132e7c393dd51a632769fca8fbc50f013`; bsc `0xff3c156548780852ad8d0074244f4252cff919b9` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x035e49133ce424a6f34cf56df249040bf0bc0b52`; arbitrum `0x31ea0c2e0881b1c87d5f684301fb7fb4424ae73d` | ⚠️ Unaudited |
| LiquidatorHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22a27a710ec32229a279343ae95dbcce62009e75` | ⚠️ Unaudited |
| LiquidityPairing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1bb447ee7fcd573a60377446b26a3487d2a383ce`; ethereum `0x3cde92ac478a11139984c44ef08726d0c75729fb`; ethereum `0x571af1490e7fbfcb4231b5bcd7ef6b6b2f35ce5b`; ethereum `0xaec634d949df14be76dc317504c7b9a6a8a5f576`; bsc `0x314c74150b646ab38597e73be32c828a28cfeb43`; bsc `0x4792914c0a8ced92f194dc934b5699fe881626fe`; bsc `0x8e593c08ccba67ccec65482e4a2f4d970be624c2`; bsc `0x9121c609d922403b68407a579846de2ce8bcaaff`; bsc `0x9db777ca39e1f1144d564cb5f593d629d2debe46`; bsc `0xb873363be6e4c99c1f4e6ffd6526c7c03a7a07ad`; bsc `0xd06e7874000ef460993558212729218c9e5349c0`; bsc `0xd3d139bc33b895861296ca50073fc79dec04eb56` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x5e65cea5473fc8977e4dfde940b2a99a439181ca`; bsc `0x1bb447ee7fcd573a60377446b26a3487d2a383ce`; bsc `0x27f428c0b7879156c4ff938a8ce8d02a98f0c8c3` | ⚠️ Unaudited |
| Metadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2271e448674c7f7ef2a3e8e3d9a49af3a46e9c13`; arbitrum `0x27f428c0b7879156c4ff938a8ce8d02a98f0c8c3`; arbitrum `0x828ea3e1f1d12ec9d34f24599c639f651d7ade33` | ⚠️ Unaudited |
| MockToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x650d804e35f6b0001f620dd57499c4a6147f6943` | ⚠️ Unaudited |
| NativeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 22 deployments: ethereum `0x2dc0330aaf11ce797ae9ca81d1be097773309f02`; ethereum `0x5d4766387056a448abf45c1a8c536487a53b716a`; ethereum `0xa1cc671f9b975d0a548c436175b99891db961934`; ethereum `0xcd016c75d09057830e365d6dabb951fc4e3b60f3`; ethereum `0xcebfc5dfbd5ce21694fe2acefa63ad6f828831d2`; ethereum `0xe672915d92983b1d642339eaad0ddd0f6807fc74`; bsc `0x5b933868f5e710070b146213ed2cd71628e465c1`; bsc `0x9285014fdabd8714e65e5d628f98d5971d9c803d`; bsc `0xb4e72ab89d945a552a5f87101e7ad6fa9b2f13d0`; bsc `0xef555166ad37fef84e70bf74dafd172a57a9b470`; base `0x36e208d9fc08cb8e8b84de2c9e5f9c9331f16501`; base `0x667e81f72de6a23850f02a142e00f035a92bb9cb`; base `0xa11f7cde7402093ff4d24a91fd8cdcc8aa0c96a8`; base `0xa6f3e1e5f3cdac4e3cbbc47839d5558ab33abd09`; arbitrum `0x01d20118e797e4f894c5d33537622be146bfae16`; arbitrum `0x23cf400cde0d28dd47503ed45b106e6dc72fe7fe`; arbitrum `0x24911006dd1f78192a6ab19b08ec6dfb590af1da`; arbitrum `0x5e65cea5473fc8977e4dfde940b2a99a439181ca`; arbitrum `0x6b19f6ba0730685f684ce912a551bacbc0214caa`; arbitrum `0x8e65c072bce4a29c966d150737cdde4de1b0e8f3`; arbitrum `0xaec634d949df14be76dc317504c7b9a6a8a5f576`; arbitrum `0xfd81410bb82d444550b79b7620311652ec9e2f2d` | ⚠️ Unaudited |
| NativeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2c9ebb806f47ecb6559e48f51e1a1913dabe3643`; arbitrum `0x508db909834dbe12b1d9ba7f33387d3fb4e5738c` | ⚠️ Unaudited |
| NativeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3317a2a25eaab17e9d22f8487e41a391b84e2bb0`; arbitrum `0x582a507492061a8a9958adfed6ba7a597b1c3a39` | ⚠️ Unaudited |
| NativeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x177f8791120a6dd64e405584158aec194ae7d8fa`; arbitrum `0xa8cdf0a9dd46eda51f98a114c9f49cefe1f90cff`; arbitrum `0xe7b39eefde6561952ff7a5e44596dfcb35c07833` | ⚠️ Unaudited |
| NativeFixedPriceLiquidityPoolFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1936b310d4ac6d0fcc46a1ff15df0c6f2819c656` | ⚠️ Unaudited |
| NativeLPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 101 deployments: ethereum `0x014b16e50eab39657e18c66c1dd744ad2b6362aa`; ethereum `0x0d5c250a68eff576e4cce0880fa64cfa95c676bd`; ethereum `0x1ba406ee00676982b2e03a5293f98ddbab005134`; ethereum `0x24b6b8e99f92fbbc0aa5b49a23a65e2e1bcc8527`; ethereum `0x2aeae5768ee738bc9d9e9213230f52759ddef2b0`; ethereum `0x2dad22cac847dcb840697dbc2af330d2cc205e5d`; ethereum `0x319fc7782936895cbe5dcd850806cb9f32aadfea`; ethereum `0x3cf346f0003689aca41faf4d88d57b7d2abba441`; ethereum `0x4e041b2e9a366cd80b8fa01bb7bebb8eb4c1243d`; ethereum `0x5810aa3447038891b7d3fab12380bea5c3de8b97`; ethereum `0x5994258ec80cc6853e2b6f047ec6d213fe89b24b`; ethereum `0x59bf9bf6ce452ee559a19dc49bb438316b8bed94`; ethereum `0x6266845c903258a882b1edff2ce2caa7d99f9250`; ethereum `0x66550d6453dbb70103b96fac81052f106d4fffeb`; ethereum `0x6ea0daa532d368c38d73eb27ecfc23e3ee9fc4f7`; ethereum `0x716338b2298586455097a0717b8891782dd025a9`; ethereum `0x91f70f89915f8e5fc9fdd8078685067a49cc6c28`; ethereum `0xa28b752bb407e26bfae5b8684716680a3984d7ef`; ethereum `0xa2efe8e37f247cb51c2a48692301335292ccb630`; ethereum `0xa6f3e1e5f3cdac4e3cbbc47839d5558ab33abd09`; ethereum `0xb158e0086d0f3c832f664bcb4d47d894c0da080d`; ethereum `0xb2655c3e9c1fb6372b6b9b6b73bcee0bf1de7655`; ethereum `0xb3c455dd8e45524264cad476195aa7c4bd27d2a8`; ethereum `0xb4e72ab89d945a552a5f87101e7ad6fa9b2f13d0`; ethereum `0xdd3dc634c127c999643c99b115eca98fa14b7958`; ethereum `0xe0ded29b7d5bc1f0227064c03cda3e17acd2c129`; ethereum `0xef312bd7966cbfaf6bff39e8b5db18cb868f3e85`; ethereum `0xf2ab5792bd09444c89e0142cfbffd9b192ad049c`; bsc `0x014b16e50eab39657e18c66c1dd744ad2b6362aa`; bsc `0x01fbf01102c0a71f3bda336e28d288be2a09e8bf`; bsc `0x035ed8aafa43fe4c400ceb0a951d1a97f4908a51`; bsc `0x03d1e2527ece8997befac28888c691270b50fb81`; bsc `0x07bbc8e2ad3d3a7951023c55a0374587cf9af6e6`; bsc `0x0fc85a171bd0b53bf0bbace74f04b66170ae3eab`; bsc `0x20f1849a2fcdf8cf2aaf881491cf2a740066cfd1`; bsc `0x298d0b658720be23700fb1b051cefb2cdf1266da`; bsc `0x2c173d451754b33331328a1182b7668a7e6c16b8`; bsc `0x31d29a62cd1c728cbf9236cb0aaabfc8e23e49c1`; bsc `0x337ec533b568957af458e10cbfbcbf3d59c935b1`; bsc `0x366d829524c62e75b0f3ae382b646dbfb5fdb2d8`; bsc `0x3cf346f0003689aca41faf4d88d57b7d2abba441`; bsc `0x3e53b55da89dc566ff5033881dee568bf3807edb`; bsc `0x467fe7f95531d8c0f81117f334a5791404524324`; bsc `0x4e041b2e9a366cd80b8fa01bb7bebb8eb4c1243d`; bsc `0x4fda5de8f0d54f7e2abc9a9bf04c4b007c53404f`; bsc `0x5593ddb6e5a1a0cf71a3e0bc7f0f936a06aa9f0b`; bsc `0x5994258ec80cc6853e2b6f047ec6d213fe89b24b`; bsc `0x6a2a793d97a98a9301ac720c9261b888ba7079f9`; bsc `0x7fb8c24af82a215a4309583954ae4699c13bec6f`; bsc `0x826f48e40839f618bb4e6c881418bdd0b72b76e9`; bsc `0x834b78050a17f4cee8b703cd4ca6fe8fd829cf98`; bsc `0x89101700ae23c9d099fa7b317bacf85d103a4d24`; bsc `0x9c9fb6d43b75c47e134ae0bb136f13415b93d2cf`; bsc `0xa11f7cde7402093ff4d24a91fd8cdcc8aa0c96a8`; bsc `0xa2efe8e37f247cb51c2a48692301335292ccb630`; bsc `0xa921077a331f36d80e44f914a7ab1b3c9ea48a4a`; bsc `0xb043e07edf8cf2ddc2fa22bb087697a721af1058`; bsc `0xc8b5428af8e79b73f1e4bbc0b7d601c45f60e080`; bsc `0xc9452fa182b0f8201f2e15700671570699aa10b5`; bsc `0xca4f5090ba400cd7ccfe4ca0ff811bc307cd689e`; bsc `0xcdb60a6fe5d0f7e68fb45649a261f078a6aedb1a`; bsc `0xd547727b926648af3f31dbb89e3b93e49f78dcb8`; bsc `0xd83e91d8a8a5710dd1b68fcfd500f52ba1027605`; bsc `0xdcf36260bc85664b836d268355983b805912a75b`; bsc `0xe2d4903fb9b46064069b38a5894a3b3735c57821`; bsc `0xe54c4e3de5ae5ce4259a83f28146b2c1bab9e98c`; bsc `0xe9b4b76140e25800075a3073e369374fcba118de`; bsc `0xea91132e79559be0fcd6b1237ded28a31a226644`; bsc `0xf2ab5792bd09444c89e0142cfbffd9b192ad049c`; bsc `0xf5bbb10d771ef4505d9d7de166c1915b5c7ae4b6`; bsc `0xf6f8de2d588556863be334e76c37d4158d7bb3c5`; bsc `0xf87927b847639bdb658434333d20f38f4ca888cd`; bsc `0xfdba3edee429db15df78b719acacbfaf0080ca11`; base `0x03c6b5c574834d4df0239f74042ff13572d56348`; base `0x2271e448674c7f7ef2a3e8e3d9a49af3a46e9c13`; base `0x2beb9ef42e0edd7bb69044e933a4395a0c59abc9`; base `0x3972b8c106dcdef2c263ff98d18bf4fc62abe730`; base `0x5593ddb6e5a1a0cf71a3e0bc7f0f936a06aa9f0b`; base `0x5ef0b95d5edad54569a4a5d3a5f355e5bde720df`; base `0x6833e3e3f2a048df8d5dfdef466b73936b2224e6`; base `0x7f1bcc60ed3c80da906fd91a2ec63ec71442430a`; base `0x96a068b3936bffd6b29ca7d451206ad5c5049080`; base `0x9db777ca39e1f1144d564cb5f593d629d2debe46`; base `0xab5e9ddba96b0f7977af1180b922b5e9a6f62560`; base `0xca135c6520dd03f7e25fbb44c63f7b51e5ad86de`; base `0xf72369252835981ffb465e483ff468da1c389ce4`; base `0xfb64fae1306ab9f6422d773eb38485e443d1a6d4`; arbitrum `0x21d5d0ebc83d877a06f7ae92462075f3d324010d`; arbitrum `0x4e041b2e9a366cd80b8fa01bb7bebb8eb4c1243d`; arbitrum `0x82e441fcde323e37530ecb9da300a09add2fb855`; arbitrum `0x8a5fca5429f5d572f71959bfec41495420528ce2`; arbitrum `0x8e0092168f2f3729d49a7470c134ea0cacdf1bd9`; arbitrum `0x91f70f89915f8e5fc9fdd8078685067a49cc6c28`; arbitrum `0xb49236ae0ed6bb5f926eec085736b0a1ed7fc218`; arbitrum `0xbe131fa991aa1871bbf01f0a89fb0be641875751`; arbitrum `0xc6ab8b93d2c5477b887aea4b66977d6e37bbcf97`; arbitrum `0xc9452fa182b0f8201f2e15700671570699aa10b5`; arbitrum `0xce55b8c3bb83458cd14f42e803ff49076296535e`; arbitrum `0xe18e79ed360f7a9bcb583290aec7401306c1de85`; arbitrum `0xe50ac1132062055d8472c58cb8430b619e5d385e`; arbitrum `0xf2ab5792bd09444c89e0142cfbffd9b192ad049c` | ⚠️ Unaudited |
| NativePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: polygon `0x06ba69aa7b591adb63367edc63aed3cd119b86d9`; polygon `0x4837726fa19b5cbbcd280f86fbc1ca9a304f5219`; polygon `0x50490228b7f7cdfe1a01162c426283ffe1b2e369`; polygon `0x587f4db86e4a3148446660c61184e84590796edc`; polygon `0x786b9a7cfafa8af2e8bf8adf2579ac3bd847a8d4`; polygon `0x92e5fa8ef7d47ce54696c8d2cca93df0d759af9f`; polygon `0xa1b9726a3d1362e6de019f53c8c71e3507fd05c4`; manta-pacific `0x3960f07204d2cfecbff63534aa8a1309ef937a77`; base `0xaaf9086e01626db665fe23f5e60e0075e6f8684a`; base `0xda9e5fece27837a3e6798778749888f36837ea34`; base `0xdff290e89ab4d535c2880492604a33e9806f785f`; arbitrum `0x0cfc718330823abf8339f4649beb1c9c82b80c12` | ⚠️ Unaudited |
| NativePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x01dd1399fbdf65195a4b8cabc17868ee3b6c6a8a`; polygon `0x4be6a8507cdfa3595fd35e2cf822d9f7526b6d9a` | ⚠️ Unaudited |
| NativePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x6d2d10dc033751ca0485d1c2bd463d5b87afde77` | ⚠️ Unaudited |
| NativePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x83b9fcea670d66626d9db79af00fc718014c3de8`; polygon `0xd8a5c1c3c9c62ad0d2969218261925c2862d6c22` | ⚠️ Unaudited |
| NativePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8737d37813ed35b07f16fc78317681b7277d9fee`; polygon `0xbc0e7f15acff1aa3bc094177d1cb59af14d9b1ba` | ⚠️ Unaudited |
| NativePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x30b11deeeafab5a9ce71d2c604d8a1a5ee5ed5c5`; base `0x4c34ba0103b8417e1fc4d0f6645828b2d6d207f9` | ⚠️ Unaudited |
| NativePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9c9c3c4aa821d5ab6849db65275053f126715fb3`; base `0xeb3accc4fdf4d7adece751fc138737fd0cd87d1f` | ⚠️ Unaudited |
| NativePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: polygon `0xc5d4c574315a5567b18592a5049d354178abec4f`; polygon `0xf241a691e9c435c2124e4c6941fcc3f9e6fb4f38`; manta-pacific `0x71b5b9e75d7b06aa0db6403660a081814a457b28`; manta-pacific `0xf9c95f36d4eaf217c1741b61873f4b41f27a27aa`; base `0x71b5b9e75d7b06aa0db6403660a081814a457b28`; arbitrum `0x436bf25ee0801d55a106072f0142300366ab77b8` | ⚠️ Unaudited |
| NativePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x85b0f66e83515ff4e825dfcaa58e040e08278ef9` | ⚠️ Unaudited |
| NativeResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cdae177c3eab6a09cc0180b9e1d36b239440b95`; ethereum `0xe8e50fb0dc1d47245ebf472b036e7f3973f48ebd` | ⚠️ Unaudited |
| NativeRFQPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 34 deployments: ethereum `0x0d7ffb31714e5a70bad0ed21376120f22ea7c2d9`; ethereum `0x0fc85a171bd0b53bf0bbace74f04b66170ae3eab`; ethereum `0x5d1a34369686ae59ac97ae4e1df5635ffda9ee7c`; ethereum `0x6833e3e3f2a048df8d5dfdef466b73936b2224e6`; ethereum `0x9af2f3c0cd35283e13f7087e2b34b1444b57a44c`; ethereum `0xa921077a331f36d80e44f914a7ab1b3c9ea48a4a`; ethereum `0xc419e67388df0c0cfad15584fc5fc7e67a234c17`; ethereum `0xe9b4b76140e25800075a3073e369374fcba118de`; bsc `0x122ef4691c3fdaac4ab0e1d321b4ee4f00fc4e23`; bsc `0x5984c239c08834dbcf80d4fd741b4ed47ffe3d02`; bsc `0x828ea3e1f1d12ec9d34f24599c639f651d7ade33`; bsc `0x9197a811b152298eae17166b2d33b8a80ba6b980`; bsc `0x9af2f3c0cd35283e13f7087e2b34b1444b57a44c`; bsc `0xdb725bde5a507fdce9b8cfddaf442b7dce7773dc`; bsc `0xe1c02648473db6aebc14a435b28ca816f0732ba3`; base `0x1c469220b6ec67d024636d6b6b0b0ece1b3fb114`; base `0x24102e286858e53cdcfa0aa340e3dc290a8fe89c`; base `0x343df3673a268d70f952a72d1e189a306d090868`; base `0x571af1490e7fbfcb4231b5bcd7ef6b6b2f35ce5b`; base `0x5874e033b33bd47976b46e8767271bed6fb7c21f`; base `0x9103678bd6a9dd81e5b59fce2a00b80458d9c5e8`; base `0xb71490e0166de838d2e4e4b3f22c6fbd5399b06f`; base `0xb909713394cf63f9771b1f7101590f729c27cec6`; base `0xbf4093271924b366840e7be58e982dbba9930053`; base `0xce55b8c3bb83458cd14f42e803ff49076296535e`; arbitrum `0x2495164ad56c0d3e84a217d4731dec066e8f5b91`; arbitrum `0x30db7bfade09d73ce63d8f4e9dc8612199df41e8`; arbitrum `0x3972b8c106dcdef2c263ff98d18bf4fc62abe730`; arbitrum `0x5994258ec80cc6853e2b6f047ec6d213fe89b24b`; arbitrum `0x989560436a34dd517cc73ec66864c0b1c46daf7b`; arbitrum `0x9ef4a86b0f299b28510fd37e6f1361ec0f769a65`; arbitrum `0xa3f73060c8df17e7e883dbb14507f0198d1091b9`; arbitrum `0xd3eab36d3d16b4afd66d7cb231712e758d134329`; arbitrum `0xf860c31c4bf28a2048c8c31ca4f2a0e8c9090de6` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248515 | `0x8a2ddc0461fcf96f81a05529bed540d4f1eb2a00` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-248516 | `0xa540ec8c73322200d68e1b86c471a5c850854f22` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248521 | `0x0f9f2366c6157f2acd3c2bfa45cd9031c152d2cf` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248523 | `0xf064b069ed18eb5c61159247c55c5af79b28a968` | ⚠️ Unaudited |
| NativeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0cfc718330823abf8339f4649beb1c9c82b80c12`; polygon `0xb467fc083fd08e6d60ba98897303d8eba8743141` | ⚠️ Unaudited |
| NativeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x101e6924b24dd9a71c20c8abf5573d44e192805b`; polygon `0x181c0c77cc968317b1dd511d12d37e2c8f0e656d` | ⚠️ Unaudited |
| NativeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x382ebc9e5c490dbfbc0f6ab7c59f3096f40b0960`; polygon `0x83820afb6a8ffe0a20898ed75610e4ca338d37e2` | ⚠️ Unaudited |
| NativeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x8c42cf13fbea2ac15b0fe5a5f3cf35eec65d7d7d` | ⚠️ Unaudited |
| NativeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xb02966c419d28051ed4bca9bafd21b1c39f9dd3c` | ⚠️ Unaudited |
| NativeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x41d7b3abcfecf1f1b4b1b962da8f086114b6cc5a` | ⚠️ Unaudited |
| NativeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa95fc4e1b5ad1414014a8e323aee0f7ec4d04aee`; base `0xc6f7a7ba5388bfb5774bfaa87d350b7793fd9ef1` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-248525 | `0xaec634d949df14be76dc317504c7b9a6a8a5f576` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-248526 | `0xd547727b926648af3f31dbb89e3b93e49f78dcb8` | ⚠️ Unaudited |
| NativeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 45 deployments: ethereum `0x0f9f2366c6157f2acd3c2bfa45cd9031c152d2cf`; ethereum `0x36e208d9fc08cb8e8b84de2c9e5f9c9331f16501`; ethereum `0x52ce352349cf887e59b76107060f915aa083bbab`; ethereum `0x6e6283df5edac18ad53c041f7e8205cc79175443`; ethereum `0xa2a260f8bb960ffc8ec26e88930a2dcfec252c2b`; ethereum `0xa42c9f74ac8cb3d957ec1bd1c96b9ccecc1950aa`; ethereum `0xde5ba5f9db2a094503653a5a7a0a0b805bb9dd81`; bsc `0x12bd2272a9434f4275c1bbaefb41de17311c6ae8`; bsc `0x3c6154b5a9bf28807520999f40d8647d4942d395`; bsc `0xb2d1f342d2049684fb2f8c4ef320633415598333`; bsc `0xbe131fa991aa1871bbf01f0a89fb0be641875751`; bsc `0xee82bd64b84d63d53e98b3092e73bd69d9b2ed0a`; polygon `0x04a33654212bb4098e49869c9f099164fa3d4f74`; polygon `0x11186e68ec9a3861fcc6a0e92c57c51323f3552b`; polygon `0x31320ff9bad6a75eb43f3372bf0e3f04f846ecd5`; polygon `0x33ae5bd049da78f7bbda3a9fcaee0382772e8c35`; polygon `0x47dfca2a800c693df69b334fe77546e9dcabc588`; polygon `0x55944720d8bcda28666e5e05ee7a1377ffa3bd09`; polygon `0x6d852f06c7cdc8e41a19c034734470863ad3302c`; polygon `0x86e7a74413dbc10c4f4cc4aa4f2f719e84d35bf5`; polygon `0x8cedd7ba7d33975ecc25c08af7d3cae911dc337c`; polygon `0xe4dacc2c311102bd82c11fb253f7af97f0a51193`; manta-pacific `0x4a6afeaf9935d39d140a44fda2637ab9244200f9`; manta-pacific `0x80352654e86e3d62bbde1dc41375475048be5202`; manta-pacific `0xc29680e5039701657a670c9ef1da2474ea40a730`; manta-pacific `0xc7f34f096fdd090d462ebed79e7bfa29fe42a258`; base `0x02ff73f23558fb4b7c41712b73d20d16537f1be0`; base `0x0a5d888eb9897512abefbc693bf48065de84d0c9`; base `0x12bc04549f952b4e860ff00e22ec06fb4c0b0ba0`; base `0x2e791fec0a28320352ac7e56e103fc4268f8c367`; base `0x49bbe8faceb9b16aab86281dea8d22515ac79b73`; base `0x6645147356458bad2d95bca266f8200174367cfb`; base `0x6894a7addec601bfbfa3669199d51654e84ca91b`; base `0x768d462452b4c5b9f8a6e1b968dc7d1a63291c35`; base `0x80352654e86e3d62bbde1dc41375475048be5202`; base `0x976708d77621555d1da611f73c0ce1df7818e486`; base `0xcba65c8e4f85c1cf7260000c8aaaa3e2018de457`; arbitrum `0x01dd1399fbdf65195a4b8cabc17868ee3b6c6a8a`; arbitrum `0x1d92e40b3e0cf79da186d3e5089d9da6c08536ee`; arbitrum `0x24400d2ec38db5881d03e16aed463b1b48f7304a`; arbitrum `0x7a27bbd83b5065eeff85411dfe048eaac9be2a9d`; arbitrum `0x9ee907b9bdb19aa78bb6f8d7e53639f9033ce8e0`; arbitrum `0x9f98d5a8745b15eb5c7321e33973462949b40376`; arbitrum `0xa9bad9ca47dbdee66c29af1fa33472ed307d9ba3`; arbitrum `0xd7983a6f46a81939184ad315f401a1279ac7185f` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-248518 | `0x0fc85a171bd0b53bf0bbace74f04b66170ae3eab` | ⚠️ Unaudited |
| NativeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4d0100c13d5814b9d3d8712b16c973851f98f2fe`; arbitrum `0xead050515e10fdb3540ccd6f8236c46790508a76` | ⚠️ Unaudited |
| NativeRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-248519 | `0x7d1c4889df6113b3e4581a8c0484374bdec3341b` | ⚠️ Unaudited |
| NativeV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x3c6154b5a9bf28807520999f40d8647d4942d395`; base `0xc7000871c318b1f038564afd94fdceec4f2c8d2e`; arbitrum `0x3c6154b5a9bf28807520999f40d8647d4942d395` | ⚠️ Unaudited |
| NativeV3PoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0xa7b0d47004c4db88827b5263df8253aac810995e`; base `0xba8db0caf781cac69b6acf6c848ac148264cc05d`; arbitrum `0xba8db0caf781cac69b6acf6c848ac148264cc05d` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x24400d2ec38db5881d03e16aed463b1b48f7304a`; base `0x5b916fed0d931de071f15a5843e1f7cd0682d30b`; base `0xe3d41d19564922c9952f692c5dd0563030f5f2ef`; arbitrum `0xe3d41d19564922c9952f692c5dd0563030f5f2ef` | ⚠️ Unaudited |
| PermissionedMulticall3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63bc33a6e6adfdf1a94613bded1ad13fb7307639` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0xd3eab36d3d16b4afd66d7cb231712e758d134329`; base `0xd9a9d4a928e3eb72c1b1e77a1223d9e8c9e894cf`; base `0xde5ba5f9db2a094503653a5a7a0a0b805bb9dd81`; arbitrum `0xde5ba5f9db2a094503653a5a7a0a0b805bb9dd81` | ⚠️ Unaudited |
| RDOReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xca135c6520dd03f7e25fbb44c63f7b51e5ad86de`; bsc `0x06b7953c06c43bba4f1ac82f3ddaead647491530`; bsc `0xa21696b0216cc43e861e161278258680641bb18b` | ⚠️ Unaudited |
| Registry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x0e2fe00c6ab903e0f492cb641705cd47f0f27d89`; polygon `0x69c166fd930fe821231f5c1d3c8b92da40502741`; polygon `0x7a27bbd83b5065eeff85411dfe048eaac9be2a9d`; polygon `0x89826915362a21cb1bf6aa6e42a14b7c25c0ffa4`; manta-pacific `0x70b622098283eeb929cc441f9c1d0609feb60cd1`; base `0x70b622098283eeb929cc441f9c1d0609feb60cd1` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x2e55b67ae4c2952e86c4d2b52b7cdc76df30ff13`; base `0x548857d6c225bb108ad5a6e4b8475073e31c1eb0`; base `0xa921077a331f36d80e44f914a7ab1b3c9ea48a4a`; arbitrum `0xa921077a331f36d80e44f914a7ab1b3c9ea48a4a` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1688a23f62aaec03dba971171964fcda121b1501`; arbitrum `0x4c8eb125f05ca3085a414c746b0a918e2ec5e292` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x2d715df935fd800c951ae7263eb0ee8641b1edc6`; arbitrum `0x3c2a60d646bf0382629287d26df8fbd7b0f5fe2f`; arbitrum `0xc13f5cb083678a47bae72f3a20ed74354f08e0f9`; arbitrum `0xedb6aec1604fdd2309a19a54c56fd6173557993a` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3edd06770d805096ee02edce533b6565ae95dd7a`; arbitrum `0xf4f1484b512b7d11c15c4fd5cee5812c438dcb30` | ⚠️ Unaudited |
| SwapRouter02ExecutorUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x68b34608fac830ebf58beb312f39ee421e20c138`; arbitrum `0x8b9a322de7b56c8ca6919e073bd99b5d6e2dedfa` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x53103770501f011de9f7056c3149ffee9ea5281b`; base `0xea91132e79559be0fcd6b1237ded28a31a226644`; arbitrum `0xea91132e79559be0fcd6b1237ded28a31a226644` | ⚠️ Unaudited |
| Weth9Unwrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: polygon `0x022a0e2e9d6a212ba881c426e038e46b1573aa71`; polygon `0x616c662ebbaaddbea3edb74c2c9a7f6ebb49190d`; polygon `0xd019711b7c49c186235e822a1256bfddc507b0c9`; polygon `0xfc35f82335c3a3e4de13155b062cc6cdee295d99`; manta-pacific `0xca459f4018f0a8f7155ccc7ce7ad031550b6c9d3`; manta-pacific `0xdff290e89ab4d535c2880492604a33e9806f785f`; base `0x0a509429627d05c6f35f71f22fe5e4ee0a60b83a`; base `0x2cfa70eabe2f9f756b5c05cbddc3265974b189ff`; arbitrum `0xea472f2179a1819f11bb7cbd1f8e0f7eae1e03d5` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 32 deployments: ethereum `0x0016d9be93bb9d5d511e2e94eaf8249179aed2bb`; ethereum `0x0a1a4d7cb85b231cc9223730d2ae0582ddad228a`; ethereum `0x225ac433c6fbaf55542b2108255b2979b1130525`; ethereum `0x231c3946b3a4ea1163744f236a184f796a8e18a1`; ethereum `0x480ec29b74ff7db6b39e31520e3626f60b3e883c`; ethereum `0x64e6faa637eefdca6fd1fea467b5a7acdf785481`; ethereum `0x65dd5953ac28018207da0a309d0304cd53e5b734`; ethereum `0x79dcfeb6f52977ef899d92bece132e95c3d08b66`; ethereum `0xd1f2d929881abb26e5780d202d3c550df264791c`; ethereum `0xf40338431eddb687b6053e438b3bbc45df139b16`; ethereum `0xfafae0cdec65cdd601ffc39f472dd4f5c7bd0721`; bsc `0x38eda6dd1def97aaa07d5fa781395221305bc3f1`; bsc `0x3906f7078b25b3d4a568438da7be5c0abbe481a8`; bsc `0x3c47f2929ebf5e657535a5d7d3331aeda62bde0d`; bsc `0x5b8382383c7d5bb5341cc3dc97cb09d5b5a5e798`; bsc `0x863450a6c9f213042263e9530f28263915ff15d7`; bsc `0x92903262eff424cae02d6f7b7b0a486e4c7ef24b`; bsc `0x9441f31ab75f466a8afdc67a0fa65241f7600f5a`; bsc `0x9e0de0b11cd3b50370ddabf3926553c4fc3cb956`; bsc `0xa038e0119e30f34ef95180ebeb0162dd0977ae29`; bsc `0xb88791ef86d10037f7481b4e3fcbca5bb4162bfa`; bsc `0xe93053dee3286fa6ea569ffa1cd4d97676e14701`; bsc `0xf1a967c890d3378444526240b98f0225c00297a5`; bsc `0xf76c618bde60d14394d6c6c0bbe92b16a1d872b5`; base `0x288b1b2af2cf9698f4d9a34f07dd5cab141f0c0a`; base `0x337ec533b568957af458e10cbfbcbf3d59c935b1`; base `0x9af2f3c0cd35283e13f7087e2b34b1444b57a44c`; base `0xa2efe8e37f247cb51c2a48692301335292ccb630`; base `0xcb0fecb2ee69585d0d8f2dbd71f7525da33c082c`; base `0xdb725bde5a507fdce9b8cfddaf442b7dce7773dc`; base `0xe3941f4ba023354a8a0b2933db02ac21292314a5`; base `0xe7d6b7689bd2cea0af533dd3ad79df6968acb53e` | ⚠️ Unaudited |
| WNLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x03d1e2527ece8997befac28888c691270b50fb81`; ethereum `0x5593ddb6e5a1a0cf71a3e0bc7f0f936a06aa9f0b`; ethereum `0xa32b45d5bb713c03774b44af21728aa713790d5c`; ethereum `0xcdb60a6fe5d0f7e68fb45649a261f078a6aedb1a`; ethereum `0xfa1412b9c66a990a3e3eb0634a6c99f99147cb0f`; bsc `0x59bf9bf6ce452ee559a19dc49bb438316b8bed94`; bsc `0xe745b0565cecb4612a41eae78319bf3ca8063e6f`; bsc `0xfd81410bb82d444550b79b7620311652ec9e2f2d` | ⚠️ Unaudited |
| WrappedNLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 23 deployments: ethereum `0x3c339289baa2eab3802c1f0c10e025b29bdbea1a`; ethereum `0x50ecabe78ae99bb1adc292a94e535feb0ed29853`; ethereum `0x834b78050a17f4cee8b703cd4ca6fe8fd829cf98`; ethereum `0x9441f31ab75f466a8afdc67a0fa65241f7600f5a`; ethereum `0xb88791ef86d10037f7481b4e3fcbca5bb4162bfa`; ethereum `0xc31daeeb822790e9ca730e7e34a9ef497fffc959`; ethereum `0xe14f77173cca4aefd48c39c9ab42d2c7e1e6b225`; bsc `0x2f6f303924f0fdc559c57a14cb73dd9a4d611bd8`; bsc `0x7a04d9a10d55c85a550dcb37501c701816fb2d61`; bsc `0x8592ffff658310150befd83c3c5de326e9bf6f0d`; bsc `0x85f08a266758ea0c98b15deae71ca6ee84392afa`; bsc `0xa1cc671f9b975d0a548c436175b99891db961934`; bsc `0xb2655c3e9c1fb6372b6b9b6b73bcee0bf1de7655`; bsc `0xea5ff211ef700dccc521a1e6501c9fe1b95d8ee7`; bsc `0xfafae0cdec65cdd601ffc39f472dd4f5c7bd0721`; base `0x0872c63c9b1f55ea4166752ba3b890a444b59e9e`; base `0x90256c018d2acadda2da0b4fd61449e956fd59b6`; base `0xc750fe788a828dc960cd08e8bbe1ddd3bffc03bf`; base `0xe745b0565cecb4612a41eae78319bf3ca8063e6f`; arbitrum `0x9db777ca39e1f1144d564cb5f593d629d2debe46`; arbitrum `0xb873363be6e4c99c1f4e6ffd6526c7c03a7a07ad`; arbitrum `0xd8865923465463002bc2ccc522e5a21f8d06adfa`; arbitrum `0xe83ce032108f539c5a5b1c6029a89ff412d9e27f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dfe9811f8229cf1e5875b281b433abe75802dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400c12d9700be5d686ad32f8d6206c97de1e967c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81245b69747cd7ccc9a573a6afa6521ced688b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f08a266758ea0c98b15deae71ca6ee84392afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbddc28ac541250b7699480343e3578e01abd7b18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3a626cf799052ca639c748001da88789153cb80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5810aa3447038891b7d3fab12380bea5c3de8b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2c0efb86e095dea18340cd9d5ea03754b6f017b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea472f2179a1819f11bb7cbd1f8e0f7eae1e03d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x335c04321e88631a99f78fd7d7c4f49a921ed924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52ce352349cf887e59b76107060f915aa083bbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62f6e7fd9f7617cb049919f3e074ecfe6379ad11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9cfd5384447e952f0385de0be82f1f6a06eaf4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5f700eb339095a338b199eec4175ee17eb58865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf50c1a7be6c4c8fce7908e9bcbf564efc5d743d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x163785236514f476a7a45e354c24bff5a879ba51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x288b1b2af2cf9698f4d9a34f07dd5cab141f0c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x314c74150b646ab38597e73be32c828a28cfeb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x343df3673a268d70f952a72d1e189a306d090868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73a8df5258fb736eb1aeb198b72b73d6eb457bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x768d462452b4c5b9f8a6e1b968dc7d1a63291c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f1bcc60ed3c80da906fd91a2ec63ec71442430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9121c609d922403b68407a579846de2ce8bcaaff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6734c9588c458f4f6bd450a62245d76303fb9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac6392a3547eba95c31f2d37ec84486219c0db8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb043e07edf8cf2ddc2fa22bb087697a721af1058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd085195edabf4b9f0673b8b8b7da077c292967cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9c95f36d4eaf217c1741b61873f4b41f27a27aa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 100
- Live contracts: 0
- Unknown liveness contracts: 100
- Source-verified contracts: 99
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=26, candidate review=68, source verified unclassified=5, unverified unclassified=1

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | NativeLPToken<br>`0x0d5c250a68eff576e4cce0880fa64cfa95c676bd` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x1ba406ee00676982b2e03a5293f98ddbab005134` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x2aeae5768ee738bc9d9e9213230f52759ddef2b0` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x2dad22cac847dcb840697dbc2af330d2cc205e5d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x319fc7782936895cbe5dcd850806cb9f32aadfea` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x59bf9bf6ce452ee559a19dc49bb438316b8bed94` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x6266845c903258a882b1edff2ce2caa7d99f9250` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x66550d6453dbb70103b96fac81052f106d4fffeb` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xef312bd7966cbfaf6bff39e8b5db18cb868f3e85` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x0fc85a171bd0b53bf0bbace74f04b66170ae3eab` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x20f1849a2fcdf8cf2aaf881491cf2a740066cfd1` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x366d829524c62e75b0f3ae382b646dbfb5fdb2d8` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x4e041b2e9a366cd80b8fa01bb7bebb8eb4c1243d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x826f48e40839f618bb4e6c881418bdd0b72b76e9` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0x9c9fb6d43b75c47e134ae0bb136f13415b93d2cf` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xa921077a331f36d80e44f914a7ab1b3c9ea48a4a` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xc8b5428af8e79b73f1e4bbc0b7d601c45f60e080` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xc9452fa182b0f8201f2e15700671570699aa10b5` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xca4f5090ba400cd7ccfe4ca0ff811bc307cd689e` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xd83e91d8a8a5710dd1b68fcfd500f52ba1027605` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xe2d4903fb9b46064069b38a5894a3b3735c57821` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xf5bbb10d771ef4505d9d7de166c1915b5c7ae4b6` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | NativeLPToken<br>`0xfdba3edee429db15df78b719acacbfaf0080ca11` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate auto own | AquaVault<br>`0xa6d87c6b45aa010728cee5f97739b57c99b63ee6` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate auto own | NativePoolFactory<br>`0x30b11deeeafab5a9ce71d2c604d8a1a5ee5ed5c5` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate auto own | NativePoolFactory<br>`0xeb3accc4fdf4d7adece751fc138737fd0cd87d1f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | LiquidityPairing<br>`0x3cde92ac478a11139984c44ef08726d0c75729fb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRFQPool<br>`0x0fc85a171bd0b53bf0bbace74f04b66170ae3eab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRFQPool<br>`0xa921077a331f36d80e44f914a7ab1b3c9ea48a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRouter<br>`0x6e6283df5edac18ad53c041f7e8205cc79175443` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRouter<br>`0xde5ba5f9db2a094503653a5a7a0a0b805bb9dd81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | LiquidityPairing<br>`0x4792914c0a8ced92f194dc934b5699fe881626fe` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | LiquidityPairing<br>`0x8e593c08ccba67ccec65482e4a2f4d970be624c2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | LiquidityPairing<br>`0x9121c609d922403b68407a579846de2ce8bcaaff` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | LiquidityPairing<br>`0xd3d139bc33b895861296ca50073fc79dec04eb56` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRFQPool<br>`0x122ef4691c3fdaac4ab0e1d321b4ee4f00fc4e23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRFQPool<br>`0xe1c02648473db6aebc14a435b28ca816f0732ba3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRouter<br>`0x12bd2272a9434f4275c1bbaefb41de17311c6ae8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | NativeRouter<br>`0x3c6154b5a9bf28807520999f40d8647d4942d395` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x974c46127593e0a30f8aeba15001f7ef5cf2e2f7` |
| candidate review | ERC1967Proxy<br>`0x01dd1399fbdf65195a4b8cabc17868ee3b6c6a8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0x101e6924b24dd9a71c20c8abf5573d44e192805b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0x497de8cb23ded14d9470598c10c860b532236d8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0x83820afb6a8ffe0a20898ed75610e4ca338d37e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0x9a5b944ca17e3f62dd2e31d2c7cda9aa234839ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0xb467fc083fd08e6d60ba98897303d8eba8743141` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0xbc0e7f15acff1aa3bc094177d1cb59af14d9b1ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0xd8a5c1c3c9c62ad0d2969218261925c2862d6c22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | NativePoolFactory<br>`0x4be6a8507cdfa3595fd35e2cf822d9f7526b6d9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | NativePoolFactory<br>`0x83b9fcea670d66626d9db79af00fc718014c3de8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | NativePoolFactory<br>`0x8737d37813ed35b07f16fc78317681b7277d9fee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | NativeRouter<br>`0x0cfc718330823abf8339f4649beb1c9c82b80c12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | NativeRouter<br>`0x181c0c77cc968317b1dd511d12d37e2c8f0e656d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | NativeRouter<br>`0x382ebc9e5c490dbfbc0f6ab7c59f3096f40b0960` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | AquaLpToken<br>`0x58f3d3326f1bcc1ea0e0c1fcccbde2ddf474b9e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | AquaLpToken<br>`0x971ef32aef8e1b49e454e3e20e7d329343a9351d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | AquaVault<br>`0x54673a0bbf1e429222a78b5a1652d4ee441d411b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x4980871713f17eec1537645e9466bc27819bc289` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x4c34ba0103b8417e1fc4d0f6645828b2d6d207f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x5d55432c6aaedb4d34523b2744e959f03aefffe3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x62d45d7ed3e314469d4ba609a99560fb64510297` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x6b2a6c80d0625c4fca7c47661adceeadfc83496d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x812c4e4e9e1b52e0332fc77f4cdb455ae6c87df0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x8d31975b480318295a9dd74e6aced206b7464b08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0x9c9c3c4aa821d5ab6849db65275053f126715fb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | ERC1967Proxy<br>`0xc6f7a7ba5388bfb5774bfaa87d350b7793fd9ef1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | NativeRouter<br>`0xa95fc4e1b5ad1414014a8e323aee0f7ec4d04aee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb714c6c6bd7d1bab01c8e8787f41a8e6b9f2d0c` |
| candidate review | AquaLpToken<br>`0xa54bf327ee4a26b808992694dc2e56dbee094b30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | AquaLpToken<br>`0xc7f34f096fdd090d462ebed79e7bfa29fe42a258` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | AquaVault<br>`0x3ba16ac2a67d126bf1dba0a81e6c75073efd95d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x0954ee3e83749283b6709e99a25b44c231316ba1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x131f17a67e5575f0daed740663fb69762deff4d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x3edd06770d805096ee02edce533b6565ae95dd7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x4588fae785828ac36d897f23e8adf5fac7baffc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x497243008df41c3057a27f18148c068866c09dd6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x4c8eb125f05ca3085a414c746b0a918e2ec5e292` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x508db909834dbe12b1d9ba7f33387d3fb4e5738c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x582a507492061a8a9958adfed6ba7a597b1c3a39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x58cfd89d43142096d12b2de69fc092e0bbf4e758` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x654f2ed14ede8d7cdd45654ab44b072bce6aaf8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x68b34608fac830ebf58beb312f39ee421e20c138` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x6d6cea1b98d6cad95664b3706bb1c8096160892f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x71c5921751921ce67b1939196be63b28aa1ac3d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x76bc5293bd253ca87c6e32ade1b779941c971ff1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x795e5ccdd008637eb98c64958d3b8ba3e6de2d2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x7d1921c875dd8a4c88a4dcf0135e4d93256e1990` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x90e3e403e0c4531471abfdc1fccf402c1064f209` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0x94febdf8d9813928ea15bc99d80632d59c190810` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0xbea22afbfdd1ae0d97b079e220cf6891c8d08c9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0xc29680e5039701657a670c9ef1da2474ea40a730` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0xca459f4018f0a8f7155ccc7ce7ad031550b6c9d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0xd03c045eabe43245c7aa2bab4d2b33510064d972` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | ERC1967Proxy<br>`0xead050515e10fdb3540ccd6f8236c46790508a76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |
| candidate review | ERC1967Proxy<br>`0xec44701d5d7b1950aee4a555675444e137bb2041` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| candidate review | NativeRouter<br>`0x4d0100c13d5814b9d3d8712b16c973851f98f2fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| source verified unclassified | NativeBridge<br>`0x2c9ebb806f47ecb6559e48f51e1a1913dabe3643` | non_address_book | unknown | unknown | verified | n/a | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| source verified unclassified | NativeBridge<br>`0x3317a2a25eaab17e9d22f8487e41a391b84e2bb0` | non_address_book | unknown | unknown | verified | n/a | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| source verified unclassified | SwapRouter02ExecutorUpgradable<br>`0x1688a23f62aaec03dba971171964fcda121b1501` | non_address_book | unknown | unknown | verified | n/a | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| source verified unclassified | SwapRouter02ExecutorUpgradable<br>`0x8b9a322de7b56c8ca6919e073bd99b5d6e2dedfa` | non_address_book | unknown | unknown | verified | n/a | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| source verified unclassified | SwapRouter02ExecutorUpgradable<br>`0xf4f1484b512b7d11c15c4fd5cee5812c438dcb30` | non_address_book | unknown | unknown | verified | n/a | `0xbfb24bbcc33975a23c5066695ed2d0a3dafc7a85` |
| unverified unclassified | UnnamedContract<br>`0x3cc7ed6b90f727d68d76f2318437a8dcd32eb04c` | non_address_book | unknown | unknown | unverified | n/a | `0xacb8426cf9725c3e5ba09346292d1a7131fb4c8a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf (also discovered via alternate URL)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FLeVxGNxqMaI9b0Jtikux%2FNative_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf?alt=media) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2F4AzmcJJ2mjjuznQA30nS%2F2025.06.18%20-%20Final%20-%20native%20Private%20Bug%20Bounty%20Audit%20Report.pdf?alt=media) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf (also discovered via alternate URL)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FBIa5rllzsBWJ3y7fGicH%2FQuantstamp-Audit-Report-Native-V2.pdf?alt=media) | Quantstamp | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2Fy74TpGvBHzpRiakXs7wy%2FNative%20Audit%20-%20Halborn.pdf?alt=media) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf](https://2554447728-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1KSTkRlEw1XexgySFans%2Fuploads%2FWCaQWlFu2OvUPPhd1ayY%2FVeridise.pdf) | Veridise | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf](https://2554447728-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1KSTkRlEw1XexgySFans%2Fuploads%2Fxduwjo5uN8PMjy7lz3UL%2FSalus.pdf) | Salus | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [nat-001.pdf](https://symbolic.software/pdf/nat-001.pdf) | Symbolic Software | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b](https://omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf](https://2236132028-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fta4g2TwHaleDMaDKVgwR%2Fuploads%2FpSkHM5aAd9BYFQOyJU1B%2F2025.06.18%20-%20Final%20-%20native%20Private%20Bug%20Bounty%20Audit%20Report.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20856] spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf — no match: Only one contract in scope: PendleNativeLPSY. Audit date from delivery date.
- [20857] spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf — no match: Scope section explicitly lists 8 files. Audit date is May 23-May 29, 2025, so end date is May 29.
- [20858] spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf — no match: Scope files explicitly listed in report; audit date is the final report date (2025-01-06).
- [20859] spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf — no match: Scope section explicitly lists 8 contracts with file paths. Audit date is the end date of the engagement period (March 8, 2024 - April 5, 2024).
- [20860] spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf — no match: Scope explicitly lists contracts/ (including libraries, Aqua, Compound) and four Native contracts. Additional contracts mentioned in findings are included.
- [20861] spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf — no match: All contracts listed in Appendix-1 Files in Scope. Audit date from 'Date Feb 09 2024' in header.
- [20862] nat-001.pdf — no match: All contracts listed in Audit Scope section (2.3) and Smart Contracts section (2.1.2) are included. Date from cover page.
- [20863] omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [20865] spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf — no match: Scope section explicitly lists 8 files. Audit date is May 23-May 29, 2025, so end date is 2025-05-29.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf | PendleNativeLPSY | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | CreditVault | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeLPToken | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRFQPool | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRouter | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | IQuote | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ExternalSwap | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | CreditVault | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | LPToken | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | NativeRFQPool | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | NativeRouter | unmatched — not counted | — | listed in scope and findings | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | TStorage | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | ExternalSwapRouter | unmatched — not counted | — | mentioned in finding NATv2-14 | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf | IQuote | unmatched — not counted | — | mentioned in finding NATv2-18 | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | NativeRouter | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaVaultLogic | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaVault | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | NativeRfqPool | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaLpToken | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | NativePoolFactory | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | AquaVaultSignatureCheck | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf | ChainlinkPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativeRfqPool | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativeRouter | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativePool | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | NativePoolFactory | unmatched — not counted | — | listed in scope section 3.2 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaVault | unmatched — not counted | — | listed in scope section 3.2 (contracts/Aqua/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaVaultLogic | unmatched — not counted | — | listed in scope section 3.2 (contracts/libraries/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaVaultStorage | unmatched — not counted | — | mentioned in finding V-AQU-VUL-008 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | AquaLpToken | unmatched — not counted | — | mentioned in finding V-AQU-VUL-011 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | CToken | unmatched — not counted | — | listed in scope section 3.2 (contracts/Compound/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | BaseJumpRateModelV2 | unmatched — not counted | — | listed in scope section 3.2 (contracts/Compound/*) | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | PriceOracle | unmatched — not counted | — | mentioned in finding V-AQU-VUL-008 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf | Comptroller | unmatched — not counted | — | mentioned in finding V-AQU-VUL-002 | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | NativeRouter | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | NativePoolFactory | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | NativeRfqPool | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | AquaLpToken | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | AquaVault | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | AquaVaultSignatureCheck | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf | ChainlinkPriceOracle | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| nat-001.pdf | NativeRouter | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | ExternalSwapRouterUpgradeable | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | PeripheryPayments | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | NativePoolFactory | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | NativePool | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Core Contracts section. | no |
| nat-001.pdf | NativePriceDecoupledLiquidityPool | unmatched — not counted | — | Listed in Audit Scope (High Priority). | no |
| nat-001.pdf | NativePMMLiquidityPool | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeLPRewards | unmatched — not counted | — | Listed in Audit Scope (High Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeTreasury | unmatched — not counted | — | Listed in Audit Scope (Lower Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeUniswapV2LiquidityPool | unmatched — not counted | — | Listed in Audit Scope (Lower Priority) and described in Liquidity Pool Contracts section. | no |
| nat-001.pdf | NativeFixedPriceLiquidityPool | unmatched — not counted | — | Listed in Audit Scope (Lower Priority) and described in Liquidity Pool Contracts section. | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | BytesLib | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | ConstantSumPricer | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | CallbackValidation | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | FullMath | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | GenericERC20 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | LowGasSafeMath | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Multicall | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | NoDelegateCall | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Order | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Pool | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PoolFactory | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PoolDeployer | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PeripheryPayments | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PeripheryValidation | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | PeripheryImmutableState | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Router | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | Registry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | SafeCast | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b | UniswapV2Pricer | unmatched — not counted | — | listed in scope table | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | CreditVault | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeLPToken | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRFQPool | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | NativeRouter | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | IQuote | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ExternalSwap | unmatched — not counted | — | listed in scope | no |
| spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf | ReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 76 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 85 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: n/a

Zero-match audit list:

- [20856] spaces/ta4g2TwHaleDMaDKVgwR/uploads/LeVxGNxqMaI9b0Jtikux/Native_PendleNativeLPSY_Audit_Report_by_WatchPug.pdf
- [20857] spaces/ta4g2TwHaleDMaDKVgwR/uploads/4AzmcJJ2mjjuznQA30nS/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf
- [20858] spaces/ta4g2TwHaleDMaDKVgwR/uploads/BIa5rllzsBWJ3y7fGicH/Quantstamp-Audit-Report-Native-V2.pdf
- [20859] spaces/ta4g2TwHaleDMaDKVgwR/uploads/y74TpGvBHzpRiakXs7wy/Native Audit - Halborn.pdf
- [20860] spaces/1KSTkRlEw1XexgySFans/uploads/WCaQWlFu2OvUPPhd1ayY/Veridise.pdf
- [20861] spaces/1KSTkRlEw1XexgySFans/uploads/xduwjo5uN8PMjy7lz3UL/Salus.pdf
- [20862] nat-001.pdf
- [20863] omniscia.io/reports/native-defi-exchange-63e26ceefed14e001649b91b
- [20865] spaces/ta4g2TwHaleDMaDKVgwR/uploads/pSkHM5aAd9BYFQOyJU1B/2025.06.18 - Final - native Private Bug Bounty Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
