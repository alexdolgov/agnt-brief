# Agentic Audit Brief: PadSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: PadSwap (`padswap`)
- Website: [https://padswap.exchange/](https://padswap.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, moonbeam, moonriver
- Contract surface: 256 unique implementations (279 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $115,354.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for PadSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across bsc, moonbeam, moonriver. Structural roles: 25 unclassified, 11 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: unclassified (25), core (11), supporting (2)
- Contract kinds: contract (38)
- Detected standards: erc20 (2), ownable (1)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 38; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 88 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 168 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 203
- Unique implementations: 256
- Raw deployments: 279
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DevLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1facffff6843dbb8948c444304b03b533689a2c0`; bsc `0x369bdcc65955799d03e039780e088d93dd6707a8`; bsc `0x940bd7f5d04e4760a71fe793c9edbe7711a1d492` | ⚠️ Unaudited |
| DevShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0da3c1c06b5a612f991daede3dcd651828f756f` | ⚠️ Unaudited |
| LaunchPad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x24577a4dec6ddf4a9216f803b2256a6d32ee19a4`; bsc `0x655cdf59b3d9a4acd3c87329a4e00a06c6ac56c7` | ⚠️ Unaudited |
| LaunchPadFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0fa59395ae0c7ea3735225b0465bb5f63d1b13a` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250800 | `0x00ae3d7ec0d75d0423beffbcc7b53dada6ab04e4` | ⚠️ Unaudited |
| LPFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x14cced5467fe74d393456599eabd50b0649d6a2f`; bsc `0x615c44e75ab9ee6d682369b23ae792c8e3acedca`; bsc `0xc1b3bfaf4fa50b339f068948e9dcec298df84101` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250810 | `0x50a90cbcbfb896306cc29f6efef89f528cf88e30` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250811 | `0x51270eaf64d08b50858e385fa751e3c89cf27118` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250818 | `0x73f41fb2121d4810316ba28f5fdc2ee07db28a1d` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250820 | `0x816ed1589b7783d7dd820ba4ebdef5899515dc76` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250834 | `0xe70e0abda4fe7a744ccbcd8ee5e7336477349555` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250835 | `0xe878bc2efa5961a515968f175568bc1aa6ee4c9f` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250836 | `0xe8d79dcc9b0b2285ac47ee9ccd4be5925fb4b273` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2833e29063c94e3efc33fb8963db1ea42b904c44`; bsc `0x7801d422c3bee0801ce4ab6a3a5b789a4fe6d86e` | ⚠️ Unaudited |
| Pad | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250829 | `0xc0888d80ee0abf84563168b3182650c0addeb6d5` | ⚠️ Unaudited |
| PadFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250828 | `0xb836017acf10b8a7c6c6c9e99efe0f5b0250fc45` | ⚠️ Unaudited |
| PadFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x15bb70725f6d37d39fed99328d1b31dfdf8507fb`; bsc `0x612d22edd4a8754346bda1d0bbc87c7390711b9d`; bsc `0xa2e5c6ed6ac6ccca6a4fffd3fe13350106061b7d`; bsc `0xd2d7b6b333abf180520494c021f7125806ed273e`; bsc `0xd45e11b8b33af0e530208c2756ae52fc20f7cbef` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x1fe5c05e0a221bfb263665f8e2e1ae4e0f568b49`; bsc `0x3c5540a0dd4f02b988ee5340a986848c4af093ca`; bsc `0x87ad61a70ad36b4647ab7b0568612d2ca5c58a5a`; bsc `0x88ab102f487463a82fe90e6283eba3afa1cdad19`; bsc `0xbc6ae4efa67341f3ff59af01b3d95ad58f1bea78`; bsc `0xbe022da9b3c5f49d8faaca5a80775b5afbfb8a6d`; bsc `0xd47412c7f5f92b2547f5f519fc64e4a418c7bb2b`; bsc `0xdaa2d10451a0ff883d3235522f52aebf084f0f5f`; bsc `0xefdacee0e5f6c295fdabf42aa0a6a9ab02963fa6`; bsc `0xfc551f71483b7e6d01f50ab9c51b72e997ea2cd5` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250805 | `0x39205195afb9c79a5eb1d9575091b5a6a19db7ea` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250808 | `0x4992df071416370fe780627edfdd8cbc694ed08b` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250813 | `0x5a86157ea673a3b6608fc2d99f4d3e624631b53d` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250815 | `0x6555c387c721b02e157b723b43c5aae3f1becd40` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250816 | `0x662425aab93ba95b3bf3cbf9a909b9b1bc93e834` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250822 | `0x9ec11e716d029142a206614aa1628b5ae3c07646` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250823 | `0xa13cb324af6a9b31332756464c089d3511436345` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250824 | `0xa9f4eaa4e55be6eb54018bae0698b644bb36b47c` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250825 | `0xaf56ae5de49fb6f94309e00bf9c9368b0dd0fc96` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250826 | `0xb69829f8e0f5d920f1b53d5685b76af723fd5007` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250838 | `0xf189bd30bce093fca7e688a2de28bb14aff47a35` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250839 | `0xf6e5a88ec5eba2c8a22845bdf5f1f5167119b270` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x19d61e9a075a2d67e45871313cbce8fe744d115a`; bsc `0x48e214578fb7f31ebadd31416713d280a5c604c8`; bsc `0x85fc454fbbfb00a75724943a56065a3c7627acc6`; bsc `0xb87b836083617f61b9c35ddd934c7bc03ff55e82`; bsc `0xfc122893a2dbc9e11ac5ac9bac898255440286a2` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250803 | `0x317de8c509d9a87c9e20c8df1e1ef960cc9dc534` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250812 | `0x5459a5cd736c09e8a7fc3aca1cf6a184bed8a567` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250827 | `0xb6d1631e82ce3c5d29f0af066bd6b1b0e77cde2e` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250830 | `0xc27192bd78e60393725f4c4515f6358c65f8befa` | ⚠️ Unaudited |
| PadOnlyFarm | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250802 | `0x30024473efd45ef9bfd7781db5438e1a58664ed1` | ⚠️ Unaudited |
| PadRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250819 | `0x76437234d29f84d9a12820a137c6c6a719138c24` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250801 | `0x2ca6545753a9b919deb752b81f689285dcba35cd` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250804 | `0x32af21a0b4e70a222c887b93f87617768ef5d070` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250806 | `0x40df957589bf64588cd2617886b6d4ab70d0e666` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250814 | `0x5e771a95bcff6cc01522c69c5dff5323c09b29d9` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250821 | `0x98ea23a72c606c8aeedcc8da3b3a14ce450a0dce` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250831 | `0xc646878fc8ae951f0407b865b29e3f4eee71c608` | ⚠️ Unaudited |
| PaydPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56a4505d61a26056dfe2aa96d3cb69a6d695a348` | ⚠️ Unaudited |
| PresaleTOAD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x372791d622036ee82a7aeb38815360138844450d` | ⚠️ Unaudited |
| SonofDogeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdb943908de5ee37998a53f23467017d1a307e60` | ⚠️ Unaudited |
| StandardTokenDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250832 | `0xd654d9ed960a09acf291469a9c3359fccee4c6af` | ⚠️ Unaudited |
| Toad | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250807 | `0x463e737d8f740395abf44f7aac2d9531d8d539e9` | ⚠️ Unaudited |
| ToadBnbFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade60bad3d55cbd92e03f34043a818eaf9283b6e` | ⚠️ Unaudited |
| ToadBusdFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf08a98fc54797290593ccbcc5d67bd48e315cf72` | ⚠️ Unaudited |
| ToadFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1f1edfbcefb1e924e4a031ed6b4cabc7e570154` | ⚠️ Unaudited |
| TokenFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250833 | `0xded45ccae0ce904cada2bf7165a6ee891a8c6399` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250817 | `0x6beee53efa847ec426707693c83836e359e92609` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (203)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x167cef0dfd2fb050cab2e3d4002b9689852f3f4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x201b8b73e2d5f03606081e48205bb97306bebd65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250809 | `0x4a7fdf96fdbd1f7ef9892dae34f47125d2a6aeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eaf76e360746e4f22f2fedb53870f4634c5af17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5346d54582541851a13b63f3779b93a301af265f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e42f496bb6fe61a5bb1d52467b8625fbf76cde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ebab3383818020362beb7a0dbb2af93714d0752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x994a6621aaeef4d5e31fb54e2fbb1226e9febf60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ebb25b44c1384af8f9cc87b34947438cbdea9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba1ced604cc1c99b1d30bcdb6941da2c23cafc86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc97c28fae3825919789786a77dbbe5128399cba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceb4e35a6f637f3be350964983efba9c1ae4d84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb76db816c96ad26d3ff3351633c609b5b60a36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4fa0dc5ba43f26403bcf6e3f327bc8ac749c315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe80e9f5a417e073cbde0ca4ab70a35906e7d0d84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250837 | `0xeb2d2cbbecbe4a403c3ab8112af5dd1394e7b329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4cd6749b183f83fa54735996e59cdfc96f062ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x20cc7692d135546e0ff5a5d1a3b097cde02fe6d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x2affdf2dcf47a9d16155a87992ba79b88e6aa770` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x3ec74cf5f69efa0778c1ab98aea31bc54d579518` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x40f1fef0fe68fd10ff904070ee00a7769ee7fe34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x45488c50184ce2092756ba7cdf85731fd17e6f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4a891f2cba00cf8442a1d5a9219463453d326ba8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x4d86dae4e6b2cce94c1c2cb371529b4b98443c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4edb1108f84eb8ab33b80163a9cc9dcd447c7432` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x4f738be7f861645d1b001e152796e4508781225e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x59193512877e2ec3bb27c178a8888cfac62fb32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x603b8a9e84e7e2c715f423cbd488125647c8022b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x663a07a2648296f1a3c02ee86a126fe1407888e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6b3c61e207107c177d3ab928108ddfc6c6059211` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x6f4439eff3f5872db1b5bfd41f75ca7574546097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70790550d5f01edd5b2ed1dff05edc52cd4f1eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x71d25a8908e30ffabef726b0e2a33ffd70a639e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x760d2bdb232027ab3b1594405077f9a1b91c04c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x78021041956f7c6933fd4c66cc74f79403b9365c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x790d4b443edb9ce9a8d1aec585edd89e51132d2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x7a06dbae8666e7dbdcf26a37be020dfedc782176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a4d20b6cf875e6e5d5ac386afde94ecfa392348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7cad00fe9165d81733d5355fec312afeb7bdb935` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x7d17a9a892ad5ed16214805678f2581d88a58ba1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x7e24c2785a76086d3bc1e8e2878a55e0b3fc3b57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x8597cae71536655b2b2bed008c5ee1b8d412e3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9481254b7b017733f1c3a822ba9e07af3d75a9cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x9774e20244004a9dfe9dc1a252495dcf6930ca27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb4c34aa30be40073b62d9df6dd39f139ea306f90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xb54229144504fc3fc916820ebd69efc5bb897188` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xb695fdacf48d3038aaae419df597fa8089cc2939` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xc13cf29b7d07471527def097b31f4ccfab1de18c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xc2092b6df7fc766d6a4c7bbfaee14695b2e0fbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc426c53acaea9e9c52ad2ed3a9cd5215a85770a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcb21d5f3fc7c378cfa01bfc233b32059be21cf6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xcc95d3c739497bbe739d0232d0446ab573d3c3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdbd1bbca71b2589504de48a000d2e6386a277118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdc0bb9a6b2d258bdd2e84325f34943556775c194` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xdc8affc2b45ff86b17ab430a90eaa8053afec79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe3db50049c74de2f7d7269823af3178cf22fd5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe497d1564efa546b4b2b65756e0b7cee46e71646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe52c059830cea7ef9ca1d1d27a9c48d51cc3a16f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xeee6ba4189e33d4339e99b12913c581ec99ec665` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf165e8f8bba01862e8fa25126a4b172af20fc0a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf1ed607a0a74ce12447682a0523bf1b0c8e531f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf34574cc8c60db71e9b57afd1b03503a060e4c85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf480f38c366daac4305dc484b2ad7a496ff00cea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf617c077d1c47429366f08f3e99a6dc6448f1047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0153fff80f4a8a4881d06fbbca2776876474e265` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x05ddc2f0e1fb0c75e834c1729e5c3783312ee0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x07a70352a082c34ffa8bf0867bdc052f60c35323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x09a22e74b5b05790d7e75992a81c6d13911982cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0b73a670fc4e52776c40ac4240a6d2eda3c3cc91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0ee9a35a47ef9cb9310495f46e71ac6072b4a66b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x121a268c6c44b7b874178078ba0ca04d23a23b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x14ed8992f8a40044cc58262c53bc98d980d9e7c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x165dbb08de0476271714952c3c1f068693bd60d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x19c2df167826ec403db0a74f9023aaf2ff88470d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2615f070da3cd4814baa31499199cdb2d20f02b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x29f6245a9c66d3552d528bccee10635f380ca6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2b90ba1464249e823c00771892e6c7510d576823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2c57c2dea6435a262469b9dc2e8c16744c4bf72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x35a2e0e6aacaf6bf830f56c790305228b10206aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x35e1f3a0d25ff0e4c0ef22ab4cd27106711cc644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x35e21d5feab09e687d76abc49498814debf301c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x38082996f76bab44574f9d265d62a76faef0bfe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x39aca97128251f0706dc34ca4d81fcf164a02ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3e3e8034eec1e1dddcf6ec53fdb4e80a6099bae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3f0d6ec7198aff05ffb66978bcb64f5d685013c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x42f667760a5a0ce3e5c99ea1e9f33d1c9b90af0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44b2ce9088816edd0abea01e24769b37d81f0e6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x45488c50184ce2092756ba7cdf85731fd17e6f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x45ad88bdbd06d615d1f89c3fc3aef3d1b4969296` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x4a891f2cba00cf8442a1d5a9219463453d326ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4a9ffaf52112adeb226bb796e2422af62d9c4d07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4bc0556c3ed6c4d107bc99140bc311fd44091c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4da53adc0594ab4480ed3a43e13838bf5f458030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4e15e7db026b352f5402ccbb50371f92848be058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4f1c2b3489a13effc49f0326600197cfc27969a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4ff645846ee7502c506c101ce2c99b17a46b68a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x51a1b1298aaf48f293813be9c152330a18a76ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5456afa2ed5fee80c8bf36c364c2d153b81b8e25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x54cd3a30257760e4959cfcbaf387a27c92e73afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x54f4a94c44a97a909ba5d79a38fdb08854d4e4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x55f3451a2a1c1398eee0c65f9be313a486052faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5a380d039dfcf7f14ccb3342bb09c81cc2d301ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5c159fe4cb1996a7c9d51c7d75d3e037a187e730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5d65478efebd6323eed9d3a24dd5c5434d795681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x603b8a9e84e7e2c715f423cbd488125647c8022b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x633734b11fee5511e783c46750f82b416d50bdb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x640e163621e18d03cc2900aa31315e86174cd417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x64cd6b88f12ab7d321e61d74a246186405eea845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x663a07a2648296f1a3c02ee86a126fe1407888e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x68aac4f4ed9dc8e029556f0c1a5da0b7af126dd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x6b3c61e207107c177d3ab928108ddfc6c6059211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6f9225647e74b55547db833f154be80d63293b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6fd228f27c63b71566bcd61dc831df48ae93cb97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6fe287c2ad8a22a51f746cad90af66eb28225b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x70790550d5f01edd5b2ed1dff05edc52cd4f1eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x718d0170c089ef72fe99d2bee386546cd3824db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7347c694c85a228ffac5e5dc419781f943c85f3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x760d2bdb232027ab3b1594405077f9a1b91c04c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x772c73294d84c2c07cab1cb5edbb8327ab4010a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x790d4b443edb9ce9a8d1aec585edd89e51132d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7a06dbae8666e7dbdcf26a37be020dfedc782176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7a8c79e67cad86ed8cda04813ff5f410f767b4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7c8c2966bd38ec65a1b39a93cafdc6abf90c4019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7cad00fe9165d81733d5355fec312afeb7bdb935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7cd537b04aedf36ff18cab0e00d737aaa64a31ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x81f5468fb9e1634691635710444debfb77063e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x84cc4f0f3ef669ec7e114c4a5452fe43ae9868e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8597cae71536655b2b2bed008c5ee1b8d412e3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x862b1f74530b9635290402559acb536e77da39fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x86be1d18dbf8602e15d8553e5aae9694c5ce86db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8a07a7dc61cb768a929dab1e81de08523e918118` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x8a5dc54f537ffd91e6c6616915d71124431aa6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8c16f14add990d03d135bf65c4be90d7e1dba95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x900a999868284a03005e3696903bd3cd09d9c26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x90b09527d4660ad7d5722cbaf33d42077a84c188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x92a505f25cbc135e591f85f0bbd2dcb5c3b19257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9774e20244004a9dfe9dc1a252495dcf6930ca27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x978c31aee0468ac352970d99728b211b1a0eb561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9b40528a398cffd9da6f32d34d5faea8dcb03682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9c4136c677521493410f35466e73b4ccd8677f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9d7da6682d71fa49b07389faac26a817dd262ac5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x9f043fd683ccae26249dc0c04e3fd0deee7c753a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x9f10efee960bd80ad0be4df8f63affbddb06fa21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa053cc2e269c6d6ee20179e17407d407e29df2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa13061ef3d9a29c959e0a5f0b259f94561dc5d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8a76edce5e10c83df73401b9ec9b70f5fe885f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xabfef85663cf8c1b4f6ffe4a069c9891837a6504` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | n/a | `0xac7793401ed049c899ac863e71afc9bfde464411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xb04afc3210f8bfe998fa8befc4c5b9011bbde4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb36ebc6050d6bb870a19cbc8e79b218975c933a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb3faea71fd344e02f5d45eea7ce466cfe803f1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb454765b1047c8f4f33ca8fca82851ca1992c0fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb7e5990dc8228e4c81da06b0d00d34843e26ef90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb955b273bf87320ed4de98fa98f0bccd4a9935ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb95f64d69ab24f826c6c90d11dd77731db529d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb99d0a4de4cbeae89560be863b84b50ea0040db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xba9167d128c773b37a03608f4a578863d730beff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbc87307cd37ac5c0bcb18d5f0f389d1048d8b358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbdd3ac077cbfb36da17cfdb17a1a0b004ec5fb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbfa77bf83fa5796172e1c77ff2cd49d9d767b290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc0e6e4b3976898eceaaaa965e2335c283fc9dddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc2092b6df7fc766d6a4c7bbfaee14695b2e0fbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc3c139f69dddd875126866040faa81ddc5a39904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc4072589247cad54919403dba707d9bf7ff05586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc594f733f2327f5d9e678b6f836e2dc7bc4b86e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xcb592dddbd7cf748ef1a23c33e363d5b52d8be2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcc1679eea852cc96871ad5bb8d937c5cc507678f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcc95d3c739497bbe739d0232d0446ab573d3c3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcca28d05b3979341b464df3a22c80110d966bfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcd1c37f0fc16a33550665e578a68c4c5ba2625f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcd28ec6d60b0e675b9b97eb5e3406dd3ac2c036a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcf32831c53b73f38d024a95649f765e62c114bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd193bfda2ceadd6728612781ef8a51876a2a820d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd3e01cbc3961d6210ce6c93499d3c2d97430fffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd6487bf10b086187e45247a7f577acd70d823ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd750182931a21f6d16fa90468252f57b48cb5223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd856c622b4f67c026df6ab9e8f60ecb5b7a26112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdc0bb9a6b2d258bdd2e84325f34943556775c194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdd731e645257af767002ad9ef0381e9c55930473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe0d275fec840f0141b164768d2f105b3c3c664cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe3db50049c74de2f7d7269823af3178cf22fd5e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xe52c059830cea7ef9ca1d1d27a9c48d51cc3a16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe663ae765be6545c82877d790d88e8d41766845e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xe6d0d9c4b77e3a1a2ce8563bbc8928d6ccc4a98b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xe85ca657da9546c9ece8fb0a7bc2277006770393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe8b36617a06c3d592b69fd78460dc2df2fe82a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe8dd497d2dcc1a2145cea5583fdf15c3e1976138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe9971abb5b964989e2ad8a7aac076515e75e82be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xeb8627a924a5ddb8f866e37d9537a27d9c590e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xebe2f9334d83676a0dd8c7cb75821bbb5d06c204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xec955c9fc6b179d28adc25729ba44d2754a7115f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xee1ff730f44602ed2d81d93156a6b58da14340e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf0d99a2f3c6163848ba08a5d9d26c61e0958463d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf0fde96cd5aead9e6f5fe90c397fa0262b032c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf1ed607a0a74ce12447682a0523bf1b0c8e531f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xf403daf66558ef3dbac9ffac18b5afb3b723cf25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf426a62e6a6bb9b1e27cc3cd3b172644d7a21f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf52e61bc2df45e586fce3defceba9815e6a4daa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf9d7177082ae58de84b01b721ef2174879442af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfa946e8f39cad1df824f09ce6aa510be675d05b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfab0d145519fc0af7adbbe8fe8b317d27efca651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfd39d3218ff0c6a178fc04bb0203565a1fa362a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xff5a15b0664c7328c7f7f000a3925e7c7b21be40` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 221
- Live contracts: 0
- Unknown liveness contracts: 221
- Source-verified contracts: 66
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=5, third party or infra=1, exact address book overlap=30, source verified unclassified=32, unverified unclassified=153

Showing first 200 of 221 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0xceb4e35a6f637f3be350964983efba9c1ae4d84c` | non_address_book | unknown | unknown | unverified | n/a | `0x212d087880c89e6eca7ee96469e3c3233effcbac` |
| bsc | contamination review | LaunchPad<br>`0x24577a4dec6ddf4a9216f803b2256a6d32ee19a4` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | contamination review | PaydPresale<br>`0x56a4505d61a26056dfe2aa96d3cb69a6d695a348` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | contamination review | PresaleTOAD<br>`0x372791d622036ee82a7aeb38815360138844450d` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | contamination review | StandardTokenDeployer<br>`0xd654d9ed960a09acf291469a9c3359fccee4c6af` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | contamination review | Vault<br>`0x6beee53efa847ec426707693c83836e359e92609` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | third party or infra | PartnerFarmsV2<br>`0x40df957589bf64588cd2617886b6d4ab70d0e666` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0x00ae3d7ec0d75d0423beffbcc7b53dada6ab04e4` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0x50a90cbcbfb896306cc29f6efef89f528cf88e30` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0x51270eaf64d08b50858e385fa751e3c89cf27118` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0x73f41fb2121d4810316ba28f5fdc2ee07db28a1d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0xe70e0abda4fe7a744ccbcd8ee5e7336477349555` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0xe878bc2efa5961a515968f175568bc1aa6ee4c9f` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | LPFarm<br>`0xe8d79dcc9b0b2285ac47ee9ccd4be5925fb4b273` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFactory<br>`0xb836017acf10b8a7c6c6c9e99efe0f5b0250fc45` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0x5a86157ea673a3b6608fc2d99f4d3e624631b53d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0x6555c387c721b02e157b723b43c5aae3f1becd40` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0x662425aab93ba95b3bf3cbf9a909b9b1bc93e834` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0x9ec11e716d029142a206614aa1628b5ae3c07646` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0xa13cb324af6a9b31332756464c089d3511436345` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0xa9f4eaa4e55be6eb54018bae0698b644bb36b47c` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0xaf56ae5de49fb6f94309e00bf9c9368b0dd0fc96` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0xb69829f8e0f5d920f1b53d5685b76af723fd5007` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0xf189bd30bce093fca7e688a2de28bb14aff47a35` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV2<br>`0xf6e5a88ec5eba2c8a22845bdf5f1f5167119b270` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV3<br>`0x317de8c509d9a87c9e20c8df1e1ef960cc9dc534` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV3<br>`0x5459a5cd736c09e8a7fc3aca1cf6a184bed8a567` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV3<br>`0xb6d1631e82ce3c5d29f0af066bd6b1b0e77cde2e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PadFarmsV3<br>`0xc27192bd78e60393725f4c4515f6358c65f8befa` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PartnerFarmsV2<br>`0x2ca6545753a9b919deb752b81f689285dcba35cd` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PartnerFarmsV2<br>`0x32af21a0b4e70a222c887b93f87617768ef5d070` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PartnerFarmsV2<br>`0x5e771a95bcff6cc01522c69c5dff5323c09b29d9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PartnerFarmsV2<br>`0x98ea23a72c606c8aeedcc8da3b3a14ce450a0dce` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | PartnerFarmsV2<br>`0xc646878fc8ae951f0407b865b29e3f4eee71c608` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | TokenFactory<br>`0xded45ccae0ce904cada2bf7165a6ee891a8c6399` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | UnnamedContract<br>`0x4a7fdf96fdbd1f7ef9892dae34f47125d2a6aeb0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | exact address book overlap | UnnamedContract<br>`0xeb2d2cbbecbe4a403c3ab8112af5dd1394e7b329` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | DevLock<br>`0x1facffff6843dbb8948c444304b03b533689a2c0` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | DevLock<br>`0x369bdcc65955799d03e039780e088d93dd6707a8` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | DevLock<br>`0x940bd7f5d04e4760a71fe793c9edbe7711a1d492` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | DevShares<br>`0xb0da3c1c06b5a612f991daede3dcd651828f756f` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | LaunchPad<br>`0x655cdf59b3d9a4acd3c87329a4e00a06c6ac56c7` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | LaunchPadFactory<br>`0xd0fa59395ae0c7ea3735225b0465bb5f63d1b13a` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | LPFarm<br>`0x14cced5467fe74d393456599eabd50b0649d6a2f` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | LPFarm<br>`0x615c44e75ab9ee6d682369b23ae792c8e3acedca` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | Minter<br>`0x2833e29063c94e3efc33fb8963db1ea42b904c44` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | Minter<br>`0x7801d422c3bee0801ce4ab6a3a5b789a4fe6d86e` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarm<br>`0x15bb70725f6d37d39fed99328d1b31dfdf8507fb` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarm<br>`0x612d22edd4a8754346bda1d0bbc87c7390711b9d` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarm<br>`0xa2e5c6ed6ac6ccca6a4fffd3fe13350106061b7d` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarm<br>`0xd2d7b6b333abf180520494c021f7125806ed273e` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarm<br>`0xd45e11b8b33af0e530208c2756ae52fc20f7cbef` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0x1fe5c05e0a221bfb263665f8e2e1ae4e0f568b49` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0x3c5540a0dd4f02b988ee5340a986848c4af093ca` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0x87ad61a70ad36b4647ab7b0568612d2ca5c58a5a` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0x88ab102f487463a82fe90e6283eba3afa1cdad19` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0xbc6ae4efa67341f3ff59af01b3d95ad58f1bea78` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0xbe022da9b3c5f49d8faaca5a80775b5afbfb8a6d` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0xd47412c7f5f92b2547f5f519fc64e4a418c7bb2b` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0xdaa2d10451a0ff883d3235522f52aebf084f0f5f` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0xefdacee0e5f6c295fdabf42aa0a6a9ab02963fa6` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV2<br>`0xfc551f71483b7e6d01f50ab9c51b72e997ea2cd5` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV3<br>`0x19d61e9a075a2d67e45871313cbce8fe744d115a` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV3<br>`0x48e214578fb7f31ebadd31416713d280a5c604c8` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV3<br>`0x85fc454fbbfb00a75724943a56065a3c7627acc6` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | PadFarmsV3<br>`0xfc122893a2dbc9e11ac5ac9bac898255440286a2` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | ToadBnbFarm<br>`0xade60bad3d55cbd92e03f34043a818eaf9283b6e` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | ToadBusdFarm<br>`0xf08a98fc54797290593ccbcc5d67bd48e315cf72` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | source verified unclassified | ToadFarm<br>`0xe1f1edfbcefb1e924e4a031ed6b4cabc7e570154` | non_address_book | unknown | unknown | verified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x167cef0dfd2fb050cab2e3d4002b9689852f3f4a` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4eaf76e360746e4f22f2fedb53870f4634c5af17` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5346d54582541851a13b63f3779b93a301af265f` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e42f496bb6fe61a5bb1d52467b8625fbf76cde5` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ebab3383818020362beb7a0dbb2af93714d0752` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x994a6621aaeef4d5e31fb54e2fbb1226e9febf60` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ebb25b44c1384af8f9cc87b34947438cbdea9ae` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba1ced604cc1c99b1d30bcdb6941da2c23cafc86` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc97c28fae3825919789786a77dbbe5128399cba5` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb76db816c96ad26d3ff3351633c609b5b60a36a` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4fa0dc5ba43f26403bcf6e3f327bc8ac749c315` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe80e9f5a417e073cbde0ca4ab70a35906e7d0d84` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf4cd6749b183f83fa54735996e59cdfc96f062ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf4210b747e44592035da0126f70c48cb04634eac` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x20cc7692d135546e0ff5a5d1a3b097cde02fe6d3` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x45488c50184ce2092756ba7cdf85731fd17e6f3d` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x4a891f2cba00cf8442a1d5a9219463453d326ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x4edb1108f84eb8ab33b80163a9cc9dcd447c7432` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x6b3c61e207107c177d3ab928108ddfc6c6059211` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x70790550d5f01edd5b2ed1dff05edc52cd4f1eda` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x71d25a8908e30ffabef726b0e2a33ffd70a639e6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x760d2bdb232027ab3b1594405077f9a1b91c04c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x78021041956f7c6933fd4c66cc74f79403b9365c` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x790d4b443edb9ce9a8d1aec585edd89e51132d2c` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x7a4d20b6cf875e6e5d5ac386afde94ecfa392348` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x7cad00fe9165d81733d5355fec312afeb7bdb935` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x9481254b7b017733f1c3a822ba9e07af3d75a9cf` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xb4c34aa30be40073b62d9df6dd39f139ea306f90` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xc426c53acaea9e9c52ad2ed3a9cd5215a85770a0` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xcb21d5f3fc7c378cfa01bfc233b32059be21cf6b` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xdbd1bbca71b2589504de48a000d2e6386a277118` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xdc0bb9a6b2d258bdd2e84325f34943556775c194` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xe3db50049c74de2f7d7269823af3178cf22fd5e3` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xe497d1564efa546b4b2b65756e0b7cee46e71646` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xe52c059830cea7ef9ca1d1d27a9c48d51cc3a16f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x0153fff80f4a8a4881d06fbbca2776876474e265` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x07a70352a082c34ffa8bf0867bdc052f60c35323` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x09a22e74b5b05790d7e75992a81c6d13911982cd` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x0b73a670fc4e52776c40ac4240a6d2eda3c3cc91` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x0ee9a35a47ef9cb9310495f46e71ac6072b4a66b` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x121a268c6c44b7b874178078ba0ca04d23a23b31` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x14ed8992f8a40044cc58262c53bc98d980d9e7c7` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x19c2df167826ec403db0a74f9023aaf2ff88470d` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x2615f070da3cd4814baa31499199cdb2d20f02b2` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x29f6245a9c66d3552d528bccee10635f380ca6c6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x2b90ba1464249e823c00771892e6c7510d576823` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x2c57c2dea6435a262469b9dc2e8c16744c4bf72b` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x35a2e0e6aacaf6bf830f56c790305228b10206aa` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x35e21d5feab09e687d76abc49498814debf301c6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x38082996f76bab44574f9d265d62a76faef0bfe4` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x39aca97128251f0706dc34ca4d81fcf164a02ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x3e3e8034eec1e1dddcf6ec53fdb4e80a6099bae5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x3f0d6ec7198aff05ffb66978bcb64f5d685013c6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x42f667760a5a0ce3e5c99ea1e9f33d1c9b90af0f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x44b2ce9088816edd0abea01e24769b37d81f0e6e` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x45ad88bdbd06d615d1f89c3fc3aef3d1b4969296` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x4a9ffaf52112adeb226bb796e2422af62d9c4d07` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x4bc0556c3ed6c4d107bc99140bc311fd44091c65` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x4da53adc0594ab4480ed3a43e13838bf5f458030` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x4e15e7db026b352f5402ccbb50371f92848be058` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x4f1c2b3489a13effc49f0326600197cfc27969a5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x4ff645846ee7502c506c101ce2c99b17a46b68a7` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x51a1b1298aaf48f293813be9c152330a18a76ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x5456afa2ed5fee80c8bf36c364c2d153b81b8e25` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x54f4a94c44a97a909ba5d79a38fdb08854d4e4f2` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x55f3451a2a1c1398eee0c65f9be313a486052faf` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x5a380d039dfcf7f14ccb3342bb09c81cc2d301ba` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x5c159fe4cb1996a7c9d51c7d75d3e037a187e730` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x5d65478efebd6323eed9d3a24dd5c5434d795681` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x603b8a9e84e7e2c715f423cbd488125647c8022b` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x633734b11fee5511e783c46750f82b416d50bdb8` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x640e163621e18d03cc2900aa31315e86174cd417` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x64cd6b88f12ab7d321e61d74a246186405eea845` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x663a07a2648296f1a3c02ee86a126fe1407888e5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x68aac4f4ed9dc8e029556f0c1a5da0b7af126dd3` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x6f9225647e74b55547db833f154be80d63293b72` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x6fd228f27c63b71566bcd61dc831df48ae93cb97` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x6fe287c2ad8a22a51f746cad90af66eb28225b07` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x70790550d5f01edd5b2ed1dff05edc52cd4f1eda` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x718d0170c089ef72fe99d2bee386546cd3824db5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x7347c694c85a228ffac5e5dc419781f943c85f3f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x772c73294d84c2c07cab1cb5edbb8327ab4010a5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x7a06dbae8666e7dbdcf26a37be020dfedc782176` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x7a8c79e67cad86ed8cda04813ff5f410f767b4fa` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x7c8c2966bd38ec65a1b39a93cafdc6abf90c4019` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x7cad00fe9165d81733d5355fec312afeb7bdb935` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x7cd537b04aedf36ff18cab0e00d737aaa64a31ad` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x81f5468fb9e1634691635710444debfb77063e1f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x84cc4f0f3ef669ec7e114c4a5452fe43ae9868e1` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x8597cae71536655b2b2bed008c5ee1b8d412e3ec` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x862b1f74530b9635290402559acb536e77da39fa` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x8a07a7dc61cb768a929dab1e81de08523e918118` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x8c16f14add990d03d135bf65c4be90d7e1dba95b` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x900a999868284a03005e3696903bd3cd09d9c26f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x90b09527d4660ad7d5722cbaf33d42077a84c188` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x92a505f25cbc135e591f85f0bbd2dcb5c3b19257` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x9774e20244004a9dfe9dc1a252495dcf6930ca27` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x978c31aee0468ac352970d99728b211b1a0eb561` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x9b40528a398cffd9da6f32d34d5faea8dcb03682` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x9c4136c677521493410f35466e73b4ccd8677f0c` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0x9d7da6682d71fa49b07389faac26a817dd262ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xa053cc2e269c6d6ee20179e17407d407e29df2bb` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xa13061ef3d9a29c959e0a5f0b259f94561dc5d37` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xa8a76edce5e10c83df73401b9ec9b70f5fe885f5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xabfef85663cf8c1b4f6ffe4a069c9891837a6504` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb36ebc6050d6bb870a19cbc8e79b218975c933a6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb3faea71fd344e02f5d45eea7ce466cfe803f1df` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb454765b1047c8f4f33ca8fca82851ca1992c0fa` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb7e5990dc8228e4c81da06b0d00d34843e26ef90` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb955b273bf87320ed4de98fa98f0bccd4a9935ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb95f64d69ab24f826c6c90d11dd77731db529d56` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xb99d0a4de4cbeae89560be863b84b50ea0040db6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xba9167d128c773b37a03608f4a578863d730beff` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xbc87307cd37ac5c0bcb18d5f0f389d1048d8b358` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xbdd3ac077cbfb36da17cfdb17a1a0b004ec5fb9d` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xbfa77bf83fa5796172e1c77ff2cd49d9d767b290` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xc0e6e4b3976898eceaaaa965e2335c283fc9dddf` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xc2092b6df7fc766d6a4c7bbfaee14695b2e0fbda` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xc3c139f69dddd875126866040faa81ddc5a39904` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xc4072589247cad54919403dba707d9bf7ff05586` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xc594f733f2327f5d9e678b6f836e2dc7bc4b86e3` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xcc1679eea852cc96871ad5bb8d937c5cc507678f` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xcc95d3c739497bbe739d0232d0446ab573d3c3a5` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xcca28d05b3979341b464df3a22c80110d966bfef` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xcd1c37f0fc16a33550665e578a68c4c5ba2625f7` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xcd28ec6d60b0e675b9b97eb5e3406dd3ac2c036a` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xcf32831c53b73f38d024a95649f765e62c114bbf` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xd193bfda2ceadd6728612781ef8a51876a2a820d` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xd3e01cbc3961d6210ce6c93499d3c2d97430fffd` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xd6487bf10b086187e45247a7f577acd70d823ea8` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xd750182931a21f6d16fa90468252f57b48cb5223` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |
| moonriver | unverified unclassified | UnnamedContract<br>`0xd856c622b4f67c026df6ab9e8f60ecb5b7a26112` | non_address_book | unknown | unknown | unverified | n/a | `0x7b7b667905d6503cb9b47d1ceb8f71ae3a1db3b9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [solanaleveling.com](https://solanaleveling.com/) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13641] solanaleveling.com — no match: The document is a directory of Solana tools and bots, not an audit report. No contracts or audit scope found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 203 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13641] solanaleveling.com

Fork inheritance lineage and inherited audits are included when available.
