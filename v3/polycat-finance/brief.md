# Agentic Audit Brief: Polycat Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Polycat Finance (`polycat-finance`)
- Website: [https://polycat.finance/](https://polycat.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: polygon
- Contract surface: 81 unique implementations (81 raw deployments)
- Coverage basis: 2/8 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $289,487.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Polycat Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across polygon. Structural roles: 9 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (9), supporting (1)
- Contract kinds: contract (10)
- Detected standards: ownable (7), erc20 (2)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x477ce834ae6b7ab003cce4bc4d8697763ff456fa`, chain 137)
- UnnamedContract (`0x4ce9ae2f5983e19aebf5b8bae4460f2b9ece811a`, chain 137)
- UnnamedContract (`0x94930a328162957ff1dd48900af67b5439336cbd`, chain 137)
- UnnamedContract (`0xbc5b59ea1b6f8da8258615ee38d40e999ec5d74f`, chain 137)
- UnnamedContract (`0xc2e5cbfdab2421094a36f9126810a54d725a56fe`, chain 137)
- UnnamedContract (`0xe0e44d4e7e61f2f4f990f5f4e2408d2187315c94`, chain 137)
- Timelock (`0xf5a824b077cc0aaf50cf83a9e82714b89b684925`, chain 137)
- VaultChef (`0xbda1f897e851c7ef22cd490d2cf2dace4645a904`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (8 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/8 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 81 unique; 73 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/13
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 81
- Raw deployments: 81
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 2 | 15.4% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391132 | `0x477ce834ae6b7ab003cce4bc4d8697763ff456fa` | ✅ Audited |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | polygon | unit-391135 | `0x94930a328162957ff1dd48900af67b5439336cbd` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FishToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391131 | `0x3a3df212b7aa91aa0402b9035b098891d276572b` | ⚠️ Unaudited |
| LiquidityLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cf8d7c64e29045e3c6bf8e86874398dc6a7b11d` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18590c1fa38a7e7357d40a6c2bbc910340dde46c` | ⚠️ Unaudited |
| Referral | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391136 | `0xb67ad6c2fe7dd6ba346706b833ccf4234256266d` | ⚠️ Unaudited |
| StrategyFish | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x520c340d6c9d7efc7cf4806b6cf0ab9859c62df5` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-391141 | `0xf5a824b077cc0aaf50cf83a9e82714b89b684925` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391133 | `0x4ce9ae2f5983e19aebf5b8bae4460f2b9ece811a` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | polygon | unit-391137 | `0xbc5b59ea1b6f8da8258615ee38d40e999ec5d74f` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391139 | `0xc2e5cbfdab2421094a36f9126810a54d725a56fe` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-391140 | `0xe0e44d4e7e61f2f4f990f5f4e2408d2187315c94` | ⚠️ Unaudited |
| VaultChef | unknown | project_anchor | own_supporting | 0 | polygon | unit-391138 | `0xbda1f897e851c7ef22cd490d2cf2dace4645a904` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002788e501549fdb1a71ed0aed339b6a4855b1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0222ba8601e9a4885979f34205da4e9caa2c3ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x050c9384660eca05e1b486cb9e5ae699148ef7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0819d4aed138aec68aee44e4ef5b8b95f254ccd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x099275220939019be0082f50dd7b1b23a3130d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15d4c21176351a5b7f083bd9168f745731a49c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16abb68136de9a87ae63aecdb4a4075c2cc2c96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19e6f8696d93c0fc0c07ce4a882e35b0bf18b4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a5e539570437057cdbb1fea229b05478f42758b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c419598d5693c3c2c2bf7c3d017e1b04c22e5ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20eb535a184c283b7f352ac5a39341405575440d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27472fcb8e0ac02b10a97682a782ad394af3e505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a70183ebb768edd2b0c0511253272cf9cc3dc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2cb9ec8d337beeea6a7f14f4946c7ab49b07166a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x307fb08c50b2d71ccd9d798fbf1ad0da48b8c423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31202f596453f08ff46bf6cfc6431312e80ba2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3391a6b9311cc68132d698400a64519d3c544513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34ac481ef1539114d4a8322a4cd7cacbbe8bb242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c0354587321b6c3f2c65dee41d0d3a547ccd447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43b8799a945ed32c438e7bce24987ce0f61155d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x448bd174e26a03d5a5e35ecfec0422905a4410a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5067da6b8cf3f06911ca7fd5dca4b7de22132abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x506c274a61255df490a82bac1a6f3e3a48b4c554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50f33528f42898be84314830431ce81a64a4cfb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x548ccd616e3902719d4db2249b1004f18603469d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x557845fa136d75b2bdf71f59d5f959d191314911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x569020119befb7ed0caacece6cd01df444fc07f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x596e8bff5655577994b51353bce93925f3bd7beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c531d7380f5b3c88bb4d795850048498ff3c0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cb08774aafa61c10930e48c50ea02b561f504af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d710c3a946244ef92f51787d2a22d466d103425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e3d11f372603607fdbe73348476916bd91537c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x666d8dd080f80352aef1061ef11b81b3a915d55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d93a506a69b7def3ac159c999415ff167cd1728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6df5027c0e3d3b270d58a65baa565f93d9f219d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x710b250d74529f7fca1d3f262157e99fe1dd827a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74faedfb1642c5ee5b0c51dce6f1e5c04557ba7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x764c4f233236d2e1aedeffb4aab2319c6df177b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x774d05c186d8493da322c0fbe81f3f8a5f8837f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79cb60b59b36c7e26f3f529c676ffd158d136027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fc60476c20ebef33152af3792dd0e2f18546116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x806597e01c229137520780d10a14a9bef03ba44e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80c239491fbbabb5fe125babfcec1ebf3b38883c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x838d8a7a6b47f48c94556f90649e09671b300a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x896db16dc9b40d9cab558ab7d4764fe85f04c3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391134 | `0x8cfd1b9b7478e7b0422916b72d1db6a9d513d734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95c1817beb04ac90e38a14d434cb23561960718f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95fd205a98ae570d1145c58b5c385c48b61e6ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac42541860079adb590304c444d502a9209286f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaefd54b64e742221a04a52abc9bac19ae9870904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2540ed235f28d0da6bec7fc8901b4fe55fd30f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb449198b5a35853503913a5a25881e88d4740313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb476c6a63676fade40555431fd59791e176f5118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5a756c876781baa7037c91ef9b5d217796923f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd626414efc6146e13e8400c8be452b7ad007a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfe8c6f466b9cf3efe53b2b049c16055585dde11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2ba0f39ff25b301d17cae5d51e63d943e74db90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6252f02cb18a38bdc4e1635999d7b6d2600a920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8eb16730b4205d702e5c687dc331602d016ddf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd242a985337a9ad9f5ebf7ee10bee7bedee86084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbcb96de013a3528499fc1887df8ffe0c9502bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde6003a15ffcfd87240cba036deeec47f54211f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8aa61cbc5968ca6277271b673ea8415780c4e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2e8fc408d77e8fc012797654d76ed399bfce174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7d47ca509a9378ab2f6467547bf7b81bde76223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8b8eb66bafc3c462cf14450693bfa43f37871a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa8f58b8b8b12d8644a4a24639ddfe5a7e9046b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfecc059192c13039dffd97c978d1f0eed64d10ff` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 67
- Live contracts: 0
- Unknown liveness contracts: 67
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=67

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x002788e501549fdb1a71ed0aed339b6a4855b1c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x0222ba8601e9a4885979f34205da4e9caa2c3ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x050c9384660eca05e1b486cb9e5ae699148ef7e7` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x0819d4aed138aec68aee44e4ef5b8b95f254ccd8` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x099275220939019be0082f50dd7b1b23a3130d6b` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x15d4c21176351a5b7f083bd9168f745731a49c51` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x16abb68136de9a87ae63aecdb4a4075c2cc2c96f` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x19e6f8696d93c0fc0c07ce4a882e35b0bf18b4c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x1a5e539570437057cdbb1fea229b05478f42758b` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x1c419598d5693c3c2c2bf7c3d017e1b04c22e5ea` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x20eb535a184c283b7f352ac5a39341405575440d` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x27472fcb8e0ac02b10a97682a782ad394af3e505` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x2a70183ebb768edd2b0c0511253272cf9cc3dc3f` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x2cb9ec8d337beeea6a7f14f4946c7ab49b07166a` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x307fb08c50b2d71ccd9d798fbf1ad0da48b8c423` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x31202f596453f08ff46bf6cfc6431312e80ba2c9` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x3391a6b9311cc68132d698400a64519d3c544513` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x34ac481ef1539114d4a8322a4cd7cacbbe8bb242` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x3c0354587321b6c3f2c65dee41d0d3a547ccd447` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x43b8799a945ed32c438e7bce24987ce0f61155d6` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x448bd174e26a03d5a5e35ecfec0422905a4410a2` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x5067da6b8cf3f06911ca7fd5dca4b7de22132abb` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x506c274a61255df490a82bac1a6f3e3a48b4c554` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x50f33528f42898be84314830431ce81a64a4cfb1` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x548ccd616e3902719d4db2249b1004f18603469d` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x557845fa136d75b2bdf71f59d5f959d191314911` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x569020119befb7ed0caacece6cd01df444fc07f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x596e8bff5655577994b51353bce93925f3bd7beb` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x5c531d7380f5b3c88bb4d795850048498ff3c0cc` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x5cb08774aafa61c10930e48c50ea02b561f504af` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x5d710c3a946244ef92f51787d2a22d466d103425` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x5e3d11f372603607fdbe73348476916bd91537c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x666d8dd080f80352aef1061ef11b81b3a915d55a` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x6d93a506a69b7def3ac159c999415ff167cd1728` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x6df5027c0e3d3b270d58a65baa565f93d9f219d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x710b250d74529f7fca1d3f262157e99fe1dd827a` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x74faedfb1642c5ee5b0c51dce6f1e5c04557ba7f` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x764c4f233236d2e1aedeffb4aab2319c6df177b0` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x774d05c186d8493da322c0fbe81f3f8a5f8837f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x79cb60b59b36c7e26f3f529c676ffd158d136027` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x7fc60476c20ebef33152af3792dd0e2f18546116` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x806597e01c229137520780d10a14a9bef03ba44e` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x80c239491fbbabb5fe125babfcec1ebf3b38883c` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x838d8a7a6b47f48c94556f90649e09671b300a04` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x896db16dc9b40d9cab558ab7d4764fe85f04c3b2` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x95c1817beb04ac90e38a14d434cb23561960718f` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0x95fd205a98ae570d1145c58b5c385c48b61e6ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xac42541860079adb590304c444d502a9209286f4` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xaefd54b64e742221a04a52abc9bac19ae9870904` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xb2540ed235f28d0da6bec7fc8901b4fe55fd30f9` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xb449198b5a35853503913a5a25881e88d4740313` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xb476c6a63676fade40555431fd59791e176f5118` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xb5a756c876781baa7037c91ef9b5d217796923f1` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xbd626414efc6146e13e8400c8be452b7ad007a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xbfe8c6f466b9cf3efe53b2b049c16055585dde11` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xc2ba0f39ff25b301d17cae5d51e63d943e74db90` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xc6252f02cb18a38bdc4e1635999d7b6d2600a920` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xc8eb16730b4205d702e5c687dc331602d016ddf8` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xd242a985337a9ad9f5ebf7ee10bee7bedee86084` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xdbcb96de013a3528499fc1887df8ffe0c9502bdb` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xde6003a15ffcfd87240cba036deeec47f54211f6` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xe8aa61cbc5968ca6277271b673ea8415780c4e45` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xf2e8fc408d77e8fc012797654d76ed399bfce174` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xf7d47ca509a9378ab2f6467547bf7b81bde76223` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xf8b8eb66bafc3c462cf14450693bfa43f37871a1` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xfa8f58b8b8b12d8644a4a24639ddfe5a7e9046b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |
| unverified unclassified | UnnamedContract<br>`0xfecc059192c13039dffd97c978d1f0eed64d10ff` | non_address_book | unknown | unknown | unverified | n/a | `0x1cb757f1eb92f25a917ce9a92ed88c1ac0734334` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/polycat-finance](https://paladinsec.co/projects/polycat-finance) | Paladin | Audit | 2021-08 | stale | Direct | address | matched | 2 | 0 | 0 | 6 | high |
| [skynet.certik.com/projects/polycatfinance](https://skynet.certik.com/projects/polycatfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20944] paladinsec.co/projects/polycat-finance — matched: Two audit sections: Polycat Paw (MasterChef, PawToken, RewardLocker) completed 07 Aug 2021; Polycat AMM (CatRouter, CatPair, CatFactory, CatERC20, CatLibrary) completed 09 Aug 2021. Audit date taken as the later completion date.
- [20945] skynet.certik.com/projects/polycatfinance — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, no contract names in scope, and no audit date. The only contract address mentioned (0x3a3df212b7aa91aa0402b9035b098891d276572b) is a token contract, but it is not listed as being in scope of an audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/polycat-finance | MasterChef | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | PawToken | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | RewardLocker | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | CatRouter | own contract | 0x94930a… (selected) `0x94930a328162957ff1dd48900af67b5439336cbd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/polycat-finance | CatPair | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | CatFactory | own contract | 0x477ce8… (selected) `0x477ce834ae6b7ab003cce4bc4d8697763ff456fa` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/polycat-finance | CatERC20 | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/polycat-finance | CatLibrary | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xf5a824b077cc0aaf50cf83a9e82714b89b684925` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbda1f897e851c7ef22cd490d2cf2dace4645a904` | VaultChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: address=2

Zero-match audit list:

- [20945] skynet.certik.com/projects/polycatfinance

Fork inheritance lineage and inherited audits are included when available.
