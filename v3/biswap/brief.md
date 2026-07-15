# Agentic Audit Brief: Biswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 10.1% over 90 days

## Project Overview

- Project: Biswap (`biswap`)
- Website: [https://biswap.org](https://biswap.org)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 93 unique implementations (218 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,058,526.00
- On-chain TVL (included contracts): $225,800.18
- TVL by chain: Bsc $225,800.18

## Project Description

This brief describes the observed EVM deployment and audit surface for Biswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, bsc, ethereum. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc20 (2), ownable (2), erc20permit (1)
- Frameworks: openzeppelin (3), axelar (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BSWToken (`0x965f52...120dd1`, chain 56)
- InterchainToken (`0x66e09e...cd6985`, chain 1)
- MasterChef (`0xdbc1a1...061739`, chain 56)
- SmartRouter (`0x0eb694...970bef`, chain 56)
- Timelock (`0xf5d6fe...dae9fe`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 88 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 5 of 93 unique; 88 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 93
- Raw deployments: 218
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $225,800.18
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $225,800.18 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSWToken | token | project_anchor | own_supporting | 0 | bsc | unit-230282 | `0x965f52...120dd1` | ⚠️ Unaudited |
| autoBsw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97a16f...cda73d` | ⚠️ Unaudited |
| BiswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x173661...9f1285`; bsc `0x858e33...8af7ee` | ⚠️ Unaudited |
| BiswapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a6d8c...350dd8` | ⚠️ Unaudited |
| BSWMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2a539a...b1f522`; bsc `0xaec140...3f0fbf` | ⚠️ Unaudited |
| InterchainToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230280 | `0x66e09e...cd6985` | ⚠️ Unaudited |
| InvestorMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbfa00a...678ff7`; bsc `0xf723ec...b1d2a4` | ⚠️ Unaudited |
| MarketingTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x706d4d...4f40d0` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-230283 | `0xdbc1a1...061739` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb9b2d...e6308e` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2f48cd...1f2db0`; bsc `0x742e74...4d3736` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 116 deployments: bsc `0x00a142...b39346`; bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x112ff6...6d4eef`; bsc `0x12e5b4...d93c3f`; bsc `0x131010...fa04b8`; bsc `0x1362b3...f3ba65`; bsc `0x13ca6a...4bb845`; bsc `0x13e903...4c8237`; bsc `0x1beb5a...f4d995`; bsc `0x1c3c5c...661492`; bsc `0x1edb72...a0ced5`; bsc `0x1f337d...d32970`; bsc `0x263678...24303d`; bsc `0x2792cc...8bd280`; bsc `0x28944e...673801`; bsc `0x2968da...ad6a46`; bsc `0x2a979f...0d7ecd`; bsc `0x339c7c...721d69`; bsc `0x34265c...f67006`; bsc `0x36fc9c...28860f`; bsc `0x3e776f...86f08b`; bsc `0x3e963d...4d547b`; bsc `0x44eece...e0ba51`; bsc `0x454076...ece61a`; bsc `0x50945a...0358ac`; bsc `0x5215d0...c18dd2`; bsc `0x53c60a...bd9891`; bsc `0x57393b...c90411`; bsc `0x5f1b5b...f414a3`; bsc `0x61330d...ce5862`; bsc `0x62204e...80378e`; bsc `0x62cfcc...258373`; bsc `0x631b87...90bca0`; bsc `0x6653c3...978a25`; bsc `0x66ac2a...d955ae`; bsc `0x683963...dc39e5`; bsc `0x69c4c9...fc8157`; bsc `0x6c00f2...e5dff4`; bsc `0x6cbba2...a1394d`; bsc `0x6d4067...25fd4d`; bsc `0x6e31da...c1df38`; bsc `0x724b71...dcfa1d`; bsc `0x72a79a...109cc9`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x78f818...0aa38e`; bsc `0x7951bc...6fafc0`; bsc `0x7d621c...7c9589`; bsc `0x81af4b...bc5d61`; bsc `0x84f41c...55c859`; bsc `0x850281...de5bbb`; bsc `0x858d2c...4a4832`; bsc `0x868cd8...48536a`; bsc `0x8b10e6...c42ff4`; bsc `0x8bb118...d94d4b`; bsc `0x8d87f0...105e71`; bsc `0x8dde1a...3056d4`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa1684b...57ff15`; bsc `0xa320db...72382f`; bsc `0xa394dd...823459`; bsc `0xa3a911...ac4444`; bsc `0xa5aa38...aee8c2`; bsc `0xa6c2f2...577c8f`; bsc `0xaa2b37...9fd4e5`; bsc `0xaa9947...7ff3e4`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xb23b56...391ce9`; bsc `0xbbbc00...c1d10c`; bsc `0xbd09d5...7b0d1d`; bsc `0xc1519a...b52d21`; bsc `0xc50676...81e920`; bsc `0xc6a577...c5f3eb`; bsc `0xc7019f...fdb84a`; bsc `0xc7313c...823fa7`; bsc `0xc7ba45...2ac468`; bsc `0xc941b2...1676a3`; bsc `0xcc1b01...3f6a73`; bsc `0xcdebe0...1c22fa`; bsc `0xcf505c...6bd5fa`; bsc `0xd3b649...9d09d4`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xd86e47...e0b4c4`; bsc `0xda730d...458187`; bsc `0xe018d6...01831d`; bsc `0xe02f66...51dc98`; bsc `0xe056fb...25990b`; bsc `0xe09d1d...ac20a0`; bsc `0xe42d17...c175a7`; bsc `0xe63967...6e6f74`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeaebd1...14e4b1`; bsc `0xeb8134...0540b7`; bsc `0xedb963...1e6879`; bsc `0xeeee29...d8e193`; bsc `0xf2db34...186dda`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf4af1a...a1637c`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275`; bsc `0xfd8fce...51755d` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-230281 | `0x0eb694...970bef` | ⚠️ Unaudited |
| SwapFeeReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2810b4...552dd8`; bsc `0x41bde0...4aaf83`; bsc `0x703932...8f9ee8`; bsc `0x92437a...c31d2c`; bsc `0xc8d5d4...e4ea51`; bsc `0xcfb450...223800`; bsc `0xf6af64...37aedb` | ⚠️ Unaudited |
| TeamTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x513d15...b6b036` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-230284 | `0xf5d6fe...dae9fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xa6fa4115f9c6b3aca9454df84b43deb7fe389019) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa6fa41...389019` | ❓ Unverified |
| Proxy (impl: 0xe45d08a10f253c9541c7612a9a70411e4c15dff9) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe45d08...15dff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b190f...0ebc53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e575a...8a9bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a99c...92143d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ef706...1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36df8a...662f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b53aa...1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d175f...cedd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5995fb...0c041c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x601cc4...a79d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x607362...4bcb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x924c26...55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac3422...89076c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf0a36...cbb968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6f6f5...fb5302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd772e6...20f60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x003fb4...7508e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2a99c...92143d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x293d67...009f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b190f...0ebc53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2a99c...92143d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/biswap](https://skynet.certik.com/projects/biswap) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2417] skynet.certik.com/projects/biswap — no match: Extracted from 'Audited Files/SHA256' section; only two files explicitly listed, but report mentions 'View 37 Audited Files' suggesting more files exist but not fully enumerated.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/biswap | BiswapFactoryV3 | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/biswap | BiswapPoolV3 | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x965f52...120dd1` | BSWToken | token | $225,800.18 | Verified native implementation with $225,800.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdbc1a1...061739` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0eb694...970bef` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf5d6fe...dae9fe` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2417] skynet.certik.com/projects/biswap

Fork inheritance lineage and inherited audits are included when available.
