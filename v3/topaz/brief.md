# Agentic Audit Brief: Topaz

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Topaz (`topaz`)
- Website: [https://www.topazdex.com](https://www.topazdex.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, optimism
- Contract surface: 127 unique implementations (200 raw deployments)
- Coverage basis: 2/27 confirmed own live verified implementations (7.4%); conservative 7.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $920,262.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Topaz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across bsc, ethereum, optimism. Structural roles: 18 supporting, 9 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: supporting (18), core (9), unclassified (1)
- Contract kinds: contract (28)
- Detected standards: erc165 (5), erc721 (2), multicall (2), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (20), foundry (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

8 of 27 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x73dc98...f82ed9`, chain 56)
Origin: arrakis-finance (`0x5e7bb1...06809a`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLGauge** (`0xc2f777...958b97`, chain 56)
Origin: overnight-finance (`0xd030df...8ea104`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLPool** (`0x18e680...577af7`, chain 56)
Origin: peapods-finance (`0xd53398...98c37e`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DynamicSwapFeeModule** (`0x656cf5...7b0541`, chain 56)
Origin: arcadia-finance (`0x87d8f9...38e8cb`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- configureDynamicFees(address[],uint24[],uint64[])

Removals (removed from original):
- disableInitialFee(address)
- setInitialFee(address,uint24)

**Minter** (`0x606794...77f8ae`, chain 56)
Origin: 40-acres (`0xeb0183...a33fe5`)
Containment: 96.6% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- topaz()

Removals (removed from original):
- aero()

**Router** (`0x1e98c8...21c6c3`, chain 56)
Origin: 40-acres (`0xcf77a3...874e43`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

**Voter** (`0x2f80f8...5dad67`, chain 56)
Origin: arcadia-finance (`0x166135...c480a5`)
Containment: 100.0% - 33 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

**VotingEscrow** (`0xe951ac...0c5eb3`, chain 56)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 100.0% - 49 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

### Original Contracts (no fork detected - full audit scope)

- AirdropDistributor (`0x7b1d87...ab5348`, chain 56)
- CLGaugeFactory (`0xed2ed4...675839`, chain 56)
- CustomSwapFeeModule (`0xa0462a...6bcce2`, chain 56)
- CustomUnstakedFeeModule (`0x3bad7f...a78582`, chain 56)
- EpochGovernor (`0xbae558...749084`, chain 56)
- FactoryRegistry (`0x268d1c...13d6a4`, chain 56)
- Forwarder (`0xe79eb7...7c731b`, chain 56)
- GaugeFactory (`0xfc080d...d4cb08`, chain 56)
- ManagedRewardsFactory (`0xe4b23f...aa9480`, chain 56)
- MixedRouteQuoterV1 (`0x47c357...1a9ee2`, chain 56)
- NonfungiblePositionManager (`0xf8c30c...982f63`, chain 56)
- Pool (`0xdc942d...8f3678`, chain 56)
- ProtocolGovernor (`0xbbcdcd...a4c401`, chain 56)
- QuoterV2 (`0x7ccb89...9759f1`, chain 56)
- RewardsDistributor (`0x85e15e...f683db`, chain 56)
- SwapRouter (`0x9b63ca...6e0cae`, chain 56)
- Topaz (`0xdf0022...998abd`, chain 56)
- VeArtProxy (`0x961230...026601`, chain 56)
- VotingRewardsFactory (`0x4c303f...13716c`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/27 (7.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 100 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 27 of 127 unique; 100 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/55
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 127
- Raw deployments: 200
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 3.6% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DynamicSwapFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394106 | `0x656cf5...7b0541` | ✅ Audited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394105 | `0x606794...77f8ae` | ✅ Audited |

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394108 | `0x7b1d87...ab5348` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6724...c8a589` | ⚠️ Unaudited |
| BonusLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2a1bf8...18974b`; bsc `0x441b05...65a545`; bsc `0xb1fbf5...f56c45` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394107 | `0x73dc98...f82ed9` | ⚠️ Unaudited |
| CLGauge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394116 | `0xc2f777...958b97` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394121 | `0xed2ed4...675839` | ⚠️ Unaudited |
| CLPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-394098 | `0x18e680...577af7` | ⚠️ Unaudited |
| ConnectorCl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28a42e...68b43a` | ⚠️ Unaudited |
| ConnectorMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1e5492...daeee0`; bsc `0x9a39f9...1f813a`; bsc `0xcc33ac...b56ec4`; bsc `0xfc4fab...82746d` | ⚠️ Unaudited |
| ConnectorRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x340c42...d06c0e`; bsc `0x9e9b92...0564d1` | ⚠️ Unaudited |
| ConnectorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b9067...2e242e` | ⚠️ Unaudited |
| ConnectorSwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf997f5...f6f496` | ⚠️ Unaudited |
| ConnectorToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea8abb...ab355c` | ⚠️ Unaudited |
| ConnectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc140...4f9e74` | ⚠️ Unaudited |
| ConnectorZapSlipstream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16f9d0...f53b37` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394113 | `0xa0462a...6bcce2` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394102 | `0x3bad7f...a78582` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb24e3...375033` | ⚠️ Unaudited |
| EpochGovernor | governance | project_anchor | own_supporting | 0 | bsc | unit-394114 | `0xbae558...749084` | ⚠️ Unaudited |
| FactoryRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-394100 | `0x268d1c...13d6a4` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-394119 | `0xe79eb7...7c731b` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394123 | `0xfc080d...d4cb08` | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394118 | `0xe4b23f...aa9480` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | bsc | unit-394103 | `0x47c357...1a9ee2` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x50f975...a5ca0a`; bsc `0xde9a5d...c9c63a` | ⚠️ Unaudited |
| NFTSVG | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x08b7e6...98dec3`; bsc `0x21c925...f31d9a`; bsc `0x2427c7...634fb0`; bsc `0x4b1510...28fde2` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | bsc | unit-394122 | `0xf8c30c...982f63` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0dc0d5...2ab0dc`; bsc `0x239bd2...f0498a`; bsc `0x47baf6...91cc18`; bsc `0x81acc3...babab5`; bsc `0xba4c4f...afe904`; bsc `0xd3dd0f...8f787a` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62b3ce...3f06b6` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ee602...60990a` | ⚠️ Unaudited |
| Pool | unknown | project_anchor | own_supporting | 1 | bsc | unit-394124 | 2 deployments: bsc `0x65e6cd...0b5784`; bsc `0xdc942d...8f3678` | ⚠️ Unaudited |
| PositionBurnHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2764db...ffc02b`; bsc `0x8ea90c...77e3c5` | ⚠️ Unaudited |
| ProtocolGovernor | governance | project_anchor | own_supporting | 0 | bsc | unit-394115 | `0xbbcdcd...a4c401` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | bsc | unit-394109 | `0x7ccb89...9759f1` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x70008f...96fcbd`; bsc `0x987097...d49fe4`; bsc `0xdb93dc...6e56aa`; bsc `0xf11e4d...51c88d` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394110 | `0x85e15e...f683db` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | bsc | unit-394099 | `0x1e98c8...21c6c3` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-394112 | `0x9b63ca...6e0cae` | ⚠️ Unaudited |
| Topaz | unknown | project_anchor | own_supporting | 0 | bsc | unit-394117 | `0xdf0022...998abd` | ⚠️ Unaudited |
| TopazAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1f0d7e...9e46c1`; bsc `0x72d5c6...b958a2`; bsc `0xe31a13...977898` | ⚠️ Unaudited |
| TopazAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5a4cbf...e9b812`; bsc `0x6b7e08...f45351`; bsc `0xda1d89...17e5d1` | ⚠️ Unaudited |
| TopazCLStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: bsc `0x0c1385...5ccd23`; bsc `0x154b21...3dc20e`; bsc `0x1f6bca...a8bf9b`; bsc `0x2fe0bb...c2fe29`; bsc `0x329c81...023c72`; bsc `0x3aa52c...55db73`; bsc `0x3ba3d4...9d7629`; bsc `0x3e30e1...ec798a`; bsc `0x466483...84b730`; bsc `0x483420...e92948`; bsc `0x4870f4...fcd190`; bsc `0x488927...fea5f1`; bsc `0x52fd50...2adc70`; bsc `0x70d881...e52689`; bsc `0x882ec2...ebb3e2`; bsc `0x97ff39...773896`; bsc `0xaffb38...c20ed4`; bsc `0xb03bc3...28b9dc`; bsc `0xdc3b8c...950247`; bsc `0xe84f85...b3de51`; bsc `0xeaa393...be00cb`; bsc `0xec9d7f...6e8598` | ⚠️ Unaudited |
| TopazCLStrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90d87f...743d6b` | ⚠️ Unaudited |
| TopazCLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: bsc `0x06015c...2de599`; bsc `0x159cde...583795`; bsc `0x21666d...b2ad9b`; bsc `0x3d2eca...4be7e8`; bsc `0x3f35a9...879555`; bsc `0x40b680...f3bac2`; bsc `0x4b6916...69d77e`; bsc `0x4c8a9b...2d61ba`; bsc `0x56734c...6724ef`; bsc `0x5e0a5e...4c7505`; bsc `0x60053e...99f2da`; bsc `0x76eec8...56ebfd`; bsc `0x97ddaa...61f969`; bsc `0xa2aa97...ab0659`; bsc `0xb9b428...5537fc`; bsc `0xc05f9f...5de6c1`; bsc `0xce01b7...36cfb8`; bsc `0xdc12d0...037e8d`; bsc `0xe367b1...1f7ad9`; bsc `0xf44c29...ce99db`; bsc `0xf87b9c...329a33`; bsc `0xfea98b...ffc8f7` | ⚠️ Unaudited |
| TopazCLZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x376fbc...81f523`; bsc `0x396717...76a982`; bsc `0x56e969...1a054c`; bsc `0xfb043e...a13466` | ⚠️ Unaudited |
| TopazSlipstreamStateMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa19411...c45e3d` | ⚠️ Unaudited |
| TopazV2Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3f4dab...d4cc37`; bsc `0x9a5189...f74c3c`; bsc `0xa66bd7...156705`; bsc `0xf21261...cbaffa` | ⚠️ Unaudited |
| TopazV2Zapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4247bf...8ca0da`; bsc `0xc6141a...ffcfa7` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cabfd...da849a` | ⚠️ Unaudited |
| VeArtProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-394111 | `0x961230...026601` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | bsc | unit-394101 | `0x2f80f8...5dad67` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394120 | `0xe951ac...0c5eb3` | ⚠️ Unaudited |
| VotingRewardsFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394104 | `0x4c303f...13716c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e98c8...21c6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f80f8...5dad67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x606794...77f8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e6cd...0b5784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85e15e...f683db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x961230...026601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae558...749084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbcdcd...a4c401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc942d...8f3678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0022...998abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe951ac...0c5eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18e680...577af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bad7f...a78582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47c357...1a9ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x656cf5...7b0541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73dc98...f82ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ccb89...9759f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b63ca...6e0cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0462a...6bcce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2f777...958b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed2ed4...675839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8c30c...982f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x023df4...ff8529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09bf07...487fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bfb20...d29ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cca93...0b1ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0db0ed...74b5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ee66...9bd404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16f0a0...261809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x253611...14f552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b782b...c3357e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d3c89...0594e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f00a3...ccaec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f2f33...b9e1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x432d79...f5dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43b132...9493eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45c303...da3c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e0fc8...4d0e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x543ecf...209acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5722d4...591023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x583bb4...82e59e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60646f...d58e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61731a...eb41ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x672ee3...702a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x694064...c5ba4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b8fa6...b51315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e08ff...fa2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74ce82...7a9047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78e560...43fb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d07da...427eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e26ab...e9d17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e9d3e...885279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94ad76...7de0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a74e6...afa8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0e3b8...65d062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa37c7f...f9f0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa87370...2daadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb09de1...296679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb291ad...fbc208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2f75d...1e353e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb795f3...82a094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbeec11...5f72f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5d870...e719d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9e687...327a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8c0ca...502a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd011d...cb3836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe06190...50840d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4b157...1aa88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8b1b7...d447c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb98ee...458e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcde66...cbd8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd097d...1ae897` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Topaz-Dex-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/Topaz-Dex-Security-Review.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14018] Topaz-Dex-Security-Review.pdf — matched: Scope table lists two files; additional contracts referenced in findings are included as they are part of the audited codebase.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Topaz-Dex-Security-Review.pdf | DynamicSwapFeeModule | own contract | DynamicSwapFeeModule (selected) `0x656cf5...7b0541` — deployed 2026-05-17 08:25:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Topaz-Dex-Security-Review.pdf | IDynamicFeeModule | unmatched — not counted | — | listed in scope table | no |
| Topaz-Dex-Security-Review.pdf | ICLPool | unmatched — not counted | — | referenced in findings as interface used in DynamicSwapFeeModule | no |
| Topaz-Dex-Security-Review.pdf | IMinter | unmatched — not counted | — | mentioned in finding I-01 | no |
| Topaz-Dex-Security-Review.pdf | Minter | own contract | Minter (selected) `0x606794...77f8ae` — deployed 2026-05-17 06:25:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Topaz-Dex-Security-Review.pdf | Pool | ambiguous — not counted | PoolFactory (proxy) (alternative) `0x65e6cd...0b5784` — deployed 2026-05-17 06:24:59+03 — liveness: live (code_present_context)<br>Pool (alternative) `0xdc942d...8f3678` — deployed 2026-05-17 06:24:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x7b1d87...ab5348` | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x73dc98...f82ed9` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc2f777...958b97` | CLGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xed2ed4...675839` | CLGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x18e680...577af7` | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa0462a...6bcce2` | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3bad7f...a78582` | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbae558...749084` | EpochGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x268d1c...13d6a4` | FactoryRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe79eb7...7c731b` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfc080d...d4cb08` | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe4b23f...aa9480` | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x47c357...1a9ee2` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf8c30c...982f63` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x65e6cd...0b5784` | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbbcdcd...a4c401` | ProtocolGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7ccb89...9759f1` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x85e15e...f683db` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1e98c8...21c6c3` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9b63ca...6e0cae` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdf0022...998abd` | Topaz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x961230...026601` | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2f80f8...5dad67` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe951ac...0c5eb3` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4c303f...13716c` | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 55 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 3 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
