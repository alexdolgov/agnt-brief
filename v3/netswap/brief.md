# Agentic Audit Brief: NetSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: NetSwap (`netswap`)
- Website: [https://netswap.io/#/home](https://netswap.io/#/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: metis
- Contract surface: 64 unique implementations (101 raw deployments)
- Coverage basis: 5/22 confirmed own live verified implementations (22.7%); conservative 22.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,229,900.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NetSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across metis. Structural roles: 12 core, 6 supporting, 4 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (12), supporting (6), unclassified (4)
- Contract kinds: contract (22)
- Detected standards: ownable (10), erc20 (2)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (4), boringcrypto (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12cd499009eb443ef8f378e271acc97d0543c0a7`, chain 1088)
- UnnamedContract (`0x142f0f56a1c9600e7b2b034648134850c93e7238`, chain 1088)
- BoostedNETTFarm (`0x0ecdc3d1747dc0ba37c9f7a0711501657136f553`, chain 1088)
- CommunityTreasury (`0x2dc348972df99dff6716007d19368eaaa6e75ed7`, chain 1088)
- FarmLens (`0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60`, chain 1088)
- Multicall (`0x0071ddb5a2e80b6b22317594a0307599836621cd`, chain 1088)
- NetswapFactory (`0x70f51d68d16e8f9e418441280342bd43ac9dff9f`, chain 1088)
- NetswapRouter (`0x1e876cce41b7b844fde09e38fa1cf00f213bff56`, chain 1088)
- NETT (`0x90fe084f877c65e1b577c7b2ea64b8d8dd1ab278`, chain 1088)
- NETTFarm (`0x9d1dbb49b2744a1555edbf1708d64dc71b0cb052`, chain 1088)
- PadFactory (`0x587e879e48ae1753d44d9f33603141c6afb87f76`, chain 1088)
- StakingRewards (`0x4d2f0f5409b51172dc229b3c8dcaa1365a9c9c27`, chain 1088)
- StakingRewards (`0x54f683cda2843a3bb55ab2d8ca97e2aaa784532b`, chain 1088)
- StakingRewards (`0x7fe9f01dba45ae94c5fea8f448c1db1a9bf08300`, chain 1088)
- StakingRewards (`0xb434526b76dd1c12ef4e93fe8be3cd58e9460329`, chain 1088)
- TransparentUpgradeableProxy (`0x276164cde2607ce3e45dd76fe7f4f31511d9db9d`, chain 1088)
- TransparentUpgradeableProxy (`0x3c13674ae82dac9fffe5d7f6e9ee555536bc9961`, chain 1088)
- TransparentUpgradeableProxy (`0x5e1f9cd1b9635506af6bc3b2414ac9c8b2840efa`, chain 1088)
- TransparentUpgradeableProxy (`0xd365e36086f70d187e4f5b83c912e555e57110fa`, chain 1088)
- Unlimited (`0x0f21d33f6f4fcab61e6c21539280c90a140def34`, chain 1088)
- VeNETT (`0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5`, chain 1088)
- VeNETTStaking (`0xa9d6748d1c3831a87c08a702d73adf4b306b31a3`, chain 1088)
- wNETT (`0x8738e9e9a8263065b07ad460beb66815dd7b81a5`, chain 1088)
- wNETTStaking (`0x794a5108085fe5ee26add48181bce1a0cecd07cc`, chain 1088)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/22 (22.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 24 of 64 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/40
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 64
- Raw deployments: 101
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 5 | 12.5% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Multicall | periphery | project_anchor | own_supporting | 0 | metis | unit-249751 | `0x0071ddb5a2e80b6b22317594a0307599836621cd` | ✅ Audited |
| NetswapFactory | registry | project_anchor | own_supporting | 0 | metis | unit-249765 | `0x70f51d68d16e8f9e418441280342bd43ac9dff9f` | ✅ Audited |
| NetswapRouter | adapter | project_anchor | own_supporting | 0 | metis | unit-249756 | `0x1e876cce41b7b844fde09e38fa1cf00f213bff56` | ✅ Audited |
| NETT | unknown | project_anchor | own_supporting | 0 | metis | unit-249770 | `0x90fe084f877c65e1b577c7b2ea64b8d8dd1ab278` | ✅ Audited |
| NETTFarm | unknown | project_anchor | own_supporting | 0 | metis | unit-249771 | `0x9d1dbb49b2744a1555edbf1708d64dc71b0cb052` | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xba34fc26ad8353b1f7e396b6129354bd1ee339c4` | ⚠️ Unaudited |
| BasicModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x846b62d627f07fe5e2804a32cd5a0cec408b98f7` | ⚠️ Unaudited |
| BoostedNETTFarm | unknown | project_anchor | own_supporting | 0 | metis | unit-249752 | `0x0ecdc3d1747dc0ba37c9f7a0711501657136f553` | ⚠️ Unaudited |
| Bricked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1b3da69c93cb57e620a1cb6fd94d8421af14df3b` | ⚠️ Unaudited |
| CommunityTreasury | operational_periphery | project_anchor | own_supporting | 0 | metis | unit-249758 | `0x2dc348972df99dff6716007d19368eaaa6e75ed7` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe7491fd7ba7eb13c2346d55c4b32cb64d1c08be1` | ⚠️ Unaudited |
| FarmLens | periphery | project_anchor | own_supporting | 0 | metis | unit-249769 | `0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60` | ⚠️ Unaudited |
| L2StandardTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4f2185589c43ab8e0ff91e6bba9921414ede8eae` | ⚠️ Unaudited |
| LaunchpadHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35c3123e3e274f05f921a792bd0d80414d50d07f` | ⚠️ Unaudited |
| LPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdf4b248464ce2cda6f1a68aa2bff4b610f496076` | ⚠️ Unaudited |
| Mining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x3751a5b7b1f16d997776261555b0b9fbc702262a`; metis `0x7077f35063f17ee1b84678334d261ccf47980271` | ⚠️ Unaudited |
| NetswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: metis `0x0724d37522585e87d27c802728e824862dc72861`; metis `0x1cad5f8f5d4c0ad49646b2565cc0ca725e4280ea`; metis `0x3d60afecf67e6ba950b499137a72478b2ca7c5a1`; metis `0x59051b5f5172b69e66869048dc69d35db0b3610d`; metis `0x5ae3ee7fbb3cb28c17e7adc3a6ae605ae2465091`; metis `0x60312d4ebbf3617d3d33841906b5868a86931cbd`; metis `0xf5988809ac97c65121e2c34f5d49558e3d12c253` | ⚠️ Unaudited |
| NetswapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf8c8c4b783651a6807742da5f724b465dd1efb25` | ⚠️ Unaudited |
| NETT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8196b259d309efe84d22e34ea76dc8547c99b7d2` | ⚠️ Unaudited |
| PadFactory | registry | project_anchor | own_supporting | 0 | metis | unit-249762 | `0x587e879e48ae1753d44d9f33603141c6afb87f76` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x31fb08c0c4d8b147a73f0be5e0e769721d0956ed`; metis `0x4196aaf58c5bdd5d96571b77ed5562929e307873`; metis `0x757251f93e5f51d6c488b9ebd2c8386abae7e3cd` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 25 deployments: metis `0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf`; metis `0x1ddf972f2ccbf896b4df62befb434f7e9f553634`; metis `0x2bd9e5da0c3ccd017eacbe7420180faadfb5a0b7`; metis `0x38d283e53c6530dfa8ccf954fdb3419aaee530f6`; metis `0x4cccede3d5a6fc96ff921b8e765446c827f4b294`; metis `0x53ba27e838085db9c51b56b78a63fc9bfd37b146`; metis `0x579a5875055048a577416683a20f0cd8f5311261`; metis `0x66496b381c5806167d9526bb164caa632c6cbb6c`; metis `0x6770bc7a1eee5c3d792a5b90217cf31855b39c81`; metis `0x7c2551a7c6f415937b462d1b14077c5750a54f2e`; metis `0x82e7fb15c1c173013f67b677f967ecf0ca4838ce`; metis `0x876488d7beb48ede40e74346a70fe587e8f7da66`; metis `0xa0ffb3c304795a625b32bf7185ff8d2afc2ef762`; metis `0xa7c260c20a216ef4afeff4e3b113afdbfb78e284`; metis `0xa83a5658f217bb8cadb04cdc5e2db551ce871c8a`; metis `0xb7d2ab19798c9eb056e9a9aa1290d48e1af60f21`; metis `0xbedf6ea5f501b27e88882ec0e3dc0a58ea4ffe97`; metis `0xcae5caeb285379a6d35d71bd628e79421ea5eb1e`; metis `0xd56c7ff349596c7b3a0f0abf564b800a8ec6fba7`; metis `0xd5a3ea7d65d7b814c77d0d287c9ced8184bea7a1`; metis `0xd64894df18ca14d3fe051bec9ee9e0efd0a521e8`; metis `0xd8a5ee9c79f8b095653b60d19939bc7db4236e08`; metis `0xdd70c38e028e85624d85a12a560c9ebf8795ce64`; metis `0xe2bc435e91a8c2873469fd603f6e18a6817f2db5`; metis `0xfabe5ddb2f2a94ce31c2c93893d761921f879a33` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x2ac666026515acc3d8a29b99785c6cdd989c096b`; metis `0x35a316370da5dfcd6239290325cb38a00007b02c`; metis `0x551df44adcf37965760f959e0bc10dd170b63c33` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249760 | `0x4d2f0f5409b51172dc229b3c8dcaa1365a9c9c27` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249761 | `0x54f683cda2843a3bb55ab2d8ca97e2aaa784532b` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249767 | `0x7fe9f01dba45ae94c5fea8f448c1db1a9bf08300` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | metis | unit-249773 | `0xb434526b76dd1c12ef4e93fe8be3cd58e9460329` | ⚠️ Unaudited |
| TestERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd6ceaed7621defe5ed564cc5700d4cdb25a2de4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x045df90e045b33cebf756947d799d65a3729bfc3`; metis `0xa030a0983f3427bed5472435a347db334a1dc8e8`; metis `0xef18f299d2134d1a9d34bfdf9da30d1347d0fbb4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249757 | `0x276164cde2607ce3e45dd76fe7f4f31511d9db9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249759 | `0x3c13674ae82dac9fffe5d7f6e9ee555536bc9961` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249763 | `0x5e1f9cd1b9635506af6bc3b2414ac9c8b2840efa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | metis | unit-249774 | `0xd365e36086f70d187e4f5b83c912e555e57110fa` | ⚠️ Unaudited |
| Unlimited | unknown | project_anchor | own_supporting | 0 | metis | unit-249753 | `0x0f21d33f6f4fcab61e6c21539280c90a140def34` | ⚠️ Unaudited |
| Unlimited | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe5991f3b3d468e6c904f56a4d9c0613c3e3ab4db` | ⚠️ Unaudited |
| UnlimitedModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7b32acda3efaf549e4fca0f898cf280b40ba3342` | ⚠️ Unaudited |
| VeNETT | unknown | project_anchor | own_supporting | 0 | metis | unit-249764 | `0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5` | ⚠️ Unaudited |
| VeNETTStaking | unknown | project_anchor | own_supporting | 0 | metis | unit-249772 | `0xa9d6748d1c3831a87c08a702d73adf4b306b31a3` | ⚠️ Unaudited |
| wNETT | unknown | project_anchor | own_supporting | 0 | metis | unit-249768 | `0x8738e9e9a8263065b07ad460beb66815dd7b81a5` | ⚠️ Unaudited |
| wNETTStaking | unknown | project_anchor | own_supporting | 0 | metis | unit-249766 | `0x794a5108085fe5ee26add48181bce1a0cecd07cc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0cf4c49ecea4ef9732a02a2bd7f118284a921210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1161231a53d65f23ebb82091793abdad9b8de045` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-249754 | `0x12cd499009eb443ef8f378e271acc97d0543c0a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-249755 | `0x142f0f56a1c9600e7b2b034648134850c93e7238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x18e7286019288215275682b3e39c001c004624b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1cf24ba40399aed976353ad972a74ab3e0bd9d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1eefea9ddb5c2eb16d8422805db8834677b59425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4492eed3468f616f725a00cabb4b0c575ca590c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4912b4dff339d4437a801800b4c26176affaa85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x574b3068a7f12c3962ab3fa592d4330ef9f05fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6a873fd43275362cd8c8ff976787a93c7fc63c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6aa0abd1323afc9d9cb6f795fcc6878a5268b279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x966d65068a6a30f10fd1fa814258637a34e05908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa6892310a5a5b7636858966ee50db49a2f2ba4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaa74371193e506f69b0f11742ad662f51f245f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaece9cd0a34e9911f004cd15f44d28f65dc68084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc4a5f6b1d8b5f9aafa3ac87ff6da9622f72f6984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd14bf854fd887673a912af208db2524c75889e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd332b8516667bb5b43210f4d04e86beda8e3e22b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd45ad4ee4ff123aab5649baf5081298372dcfe43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe75aadb452471ccc70932809ac40055be6f81a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf39ce31b138d4fbac6a826105bcd8c31b7b7c865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf720bab026696da11eb6a184984bbcb2c52694d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf8cafa257658131bf781fd2e48c916ed690267ef` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 6
- Live contracts: 0
- Unknown liveness contracts: 6
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=6

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| metis | candidate review | ERC20Mock<br>`0xe7491fd7ba7eb13c2346d55c4b32cb64d1c08be1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x71b89104bbee1c518071fd4d804f9ebba337be51` |
| metis | candidate review | L2StandardTokenFactory<br>`0x4f2185589c43ab8e0ff91e6bba9921414ede8eae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x855e37b6068a44bdab574c86c1817a374623225e` |
| metis | candidate review | BaseOracle<br>`0xba34fc26ad8353b1f7e396b6129354bd1ee339c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9c003fdcb0815c1cf4b3bd45220ee891bbbede97` |
| metis | candidate review | Bricked<br>`0x1b3da69c93cb57e620a1cb6fd94d8421af14df3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9c003fdcb0815c1cf4b3bd45220ee891bbbede97` |
| metis | candidate review | LPOracle<br>`0xdf4b248464ce2cda6f1a68aa2bff4b610f496076` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9c003fdcb0815c1cf4b3bd45220ee891bbbede97` |
| metis | candidate review | TestERC20<br>`0xd6ceaed7621defe5ed564cc5700d4cdb25a2de4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9c003fdcb0815c1cf4b3bd45220ee891bbbede97` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2F9mkCS0SDBLKkPGAWCevh%2FNetSwap_audit.pdf) | yAudit | Audit | 2021-11 | stale | Direct | n/a | matched | 3 | 0 | 0 | 15 | n/a |
| [spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2FlhV4zxJaCA5bczsO9uBu%2FNetswap%20Farm_audit.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | matched | 2 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3100] spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf — matched: No reason recorded
- [3101] spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | IERC20Netswap | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapCallee | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapFactory | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapPair | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapRouter | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | INetswapRouter02 | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | ISwapMining | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | Math | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | Multicall | own contract | Multicall (selected) `0x0071ddb5a2e80b6b22317594a0307599836621cd` — deployed 2021-12-06 13:18:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetSwapRouter | own contract | NetswapRouter (selected) `0x1e876cce41b7b844fde09e38fa1cf00f213bff56` — deployed 2021-12-06 14:42:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapERC20 | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapFactory | own contract | NetswapFactory (selected) `0x70f51d68d16e8f9e418441280342bd43ac9dff9f` — deployed 2021-12-06 13:18:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapLibrary | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | NetswapPair | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | Ownable | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | SafeMathNetswap | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | TransferHelper | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf | UQ112x112 | unmatched — not counted | — | — | no |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf | NETT | own contract | NETT (selected) `0x90fe084f877c65e1b577c7b2ea64b8d8dd1ab278` — deployed 2021-12-23 16:19:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf | NETTFarm | own contract | NETTFarm (selected) `0x9d1dbb49b2744a1555edbf1708d64dc71b0cb052` — deployed 2022-01-09 13:45:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x0ecdc3d1747dc0ba37c9f7a0711501657136f553` | BoostedNETTFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x2dc348972df99dff6716007d19368eaaa6e75ed7` | CommunityTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60` | FarmLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x587e879e48ae1753d44d9f33603141c6afb87f76` | PadFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x4d2f0f5409b51172dc229b3c8dcaa1365a9c9c27` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x54f683cda2843a3bb55ab2d8ca97e2aaa784532b` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x7fe9f01dba45ae94c5fea8f448c1db1a9bf08300` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xb434526b76dd1c12ef4e93fe8be3cd58e9460329` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x0f21d33f6f4fcab61e6c21539280c90a140def34` | Unlimited | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5` | VeNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xa9d6748d1c3831a87c08a702d73adf4b306b31a3` | VeNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x8738e9e9a8263065b07ad460beb66815dd7b81a5` | wNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x794a5108085fe5ee26add48181bce1a0cecd07cc` | wNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=5

Fork inheritance lineage and inherited audits are included when available.
