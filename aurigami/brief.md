# Agentic Audit Brief: Aurigami

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DEAD - TVL changed 9.4% over 90 days

## Project Overview

- Project: Aurigami (`aurigami`)
- Website: [https://www.aurigami.finance](https://www.aurigami.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: aurora, ethereum
- Contract surface: 185 unique implementations (185 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $772,292.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aurigami. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across aurora, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04ac48711bcdc45b4d223fb021e09da73c71095e`, chain 1313161554)
- UnnamedContract (`0x054fc05b20bd0a4c44cde830ac086b511e9098bf`, chain 1313161554)
- UnnamedContract (`0x0bc03bd8d4af1e8bab2194860268f5774c9d400a`, chain 1313161554)
- UnnamedContract (`0x3195949f267702723bc614cae037cdc8d1e94786`, chain 1313161554)
- UnnamedContract (`0x4f0d864b1abf4b701799a0b30b57a22dfeb5917b`, chain 1313161554)
- UnnamedContract (`0x5715c45d2c82292d8e5961eb5e2c66fe0fc5412b`, chain 1313161554)
- UnnamedContract (`0x5ccad065400341db391fd3a4b7f50087b678d7cc`, chain 1313161554)
- UnnamedContract (`0x60bf668ca101060bd83bd644531a38719586b89f`, chain 1313161554)
- UnnamedContract (`0x6ea6c03061bddce23d4ec60b6e6e880c33d24dca`, chain 1313161554)
- UnnamedContract (`0x817af6cfaf35bdc1a634d6cc94ee9e4c68369aeb`, chain 1313161554)
- UnnamedContract (`0x8888682e24dd4df7b7ff2b91fccb575737e433bf`, chain 1313161554)
- UnnamedContract (`0xa200b567579a577f582d292f7a1b5c4ecce195f8`, chain 1313161554)
- UnnamedContract (`0xa308a5003fa1a25bfdd9418fcee51d48dbe441e6`, chain 1313161554)
- UnnamedContract (`0xa8f1a390ca227365fec3e53cf2851520b77743a1`, chain 1313161554)
- UnnamedContract (`0xad5a2437ff55ed7a8cad3b797b3ec7c5a19b1c54`, chain 1313161554)
- UnnamedContract (`0xae4fac24dcdae0132c6d04f564dcf059616e9423`, chain 1313161554)
- UnnamedContract (`0xc6e5185438e1730959c1ef3551059a3fec744e90`, chain 1313161554)
- UnnamedContract (`0xc9011e629c9d0b8b1e4a2091e123fbb87b3a792c`, chain 1313161554)
- UnnamedContract (`0xc9a848ac73e378516b16e4eebba5ef6afbc0bbc2`, chain 1313161554)
- UnnamedContract (`0xca9511b610ba5fc7e311fdef9ce16050ee4449e9`, chain 1313161554)
- UnnamedContract (`0xcecd147409b2d64a9a2e5418e3e471e8af19e0bd`, chain 1313161554)
- UnnamedContract (`0xcfb6b0498cb7555e7e21502e0f449bf28760adbb`, chain 1313161554)
- UnnamedContract (`0xffdffbdb966cb84b50e62d70105f2dbf2e0a1e70`, chain 1313161554)
- EvmErc20 (`0x09c9d464b58d96837f8d8b6f4d9fe4ad408d3a4f`, chain 1313161554)
- Ply (`0x1ab43204a195a0fd37edec621482afd3792ef90b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 160 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 25 of 185 unique; 160 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 181
- Unique implementations: 185
- Raw deployments: 185
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EvmErc20 | token | project_anchor | own_supporting | 0 | aurora | unit-227660 | `0x09c9d464b58d96837f8d8b6f4d9fe4ad408d3a4f` | ⚠️ Unaudited |
| EvmErc20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3d4205511c25ccd29e3fff6fba0d321b44bb7980` | ⚠️ Unaudited |
| Ply | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227654 | `0x1ab43204a195a0fd37edec621482afd3792ef90b` | ⚠️ Unaudited |
| Ply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc183af8d90015e5aa935a5240be1c2b367b877` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (181)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x02355e68b863e1c8cf159a33342ce40ac3339cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x02f4cf47ea8e953e25bd45a82e8cf478ef1b60c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0466eb59558253b81cb45e493f3ede602e42ddb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227656 | `0x04ac48711bcdc45b4d223fb021e09da73c71095e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x04b39dc34127a18bd2edf65a3229f32f3accca0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x04d3ee06f7b2539da3711ed905e86de134b13d08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227658 | `0x054fc05b20bd0a4c44cde830ac086b511e9098bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x06542f80f45d07c400db97f1902339dfa409e41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x06b42b03afd80155e85431fed3081394f0169b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x07f90fd1f79f6c4716d4b9365ddeb3a2a7a7794a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x089bd111dc8af2409410dc72ae3a81674868739b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x09f7f5b03c585d702c0f1ca9f6fc65c8691acb18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227662 | `0x0bc03bd8d4af1e8bab2194860268f5774c9d400a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x0c7a533398ccbb8966f97e49e9263f17b3397124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x142632fcf67922d62d34fd8c8bc6d2254929e0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x15ad7b9d5df9f537510f296189befb00822ac29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x15b70a985e5c8c9daa383c1704885a58795784cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x198f082f39057d153426119462219a1b70b82849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1a1cc47676bb459a9cf7f09bc4defd8160d1263c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1b8aa3e9e3347dae5444db26897750f15d78578e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x1f99b67ebc5c92d3093b5fd2ede98c22323d17f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x208d6ade7f68608898003d410bedee7553741274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x22ae568df8d8aee3ed9ab0f135ca8cfef5d2cf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x23567af5ebf725923156a18922d759d32a2410c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x23b9cc2cbd9153de01262b4acba2835bb900ad0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x248342560731bd4468c5ae28bfa4b2ead008bdcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x258f624837c7a477dbb982f7055267094bf3c69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x285a29b6ea55ce39dd0f69295038be18c5aaa0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2a137d3934de4a25de6af8987d36f3ad477967bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2b158568a5595ae4ad67132cfe9f82e790be1a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2d6f3efc182d523058409fc83bbf9ba6b8da7738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2dd7a8530cb3942413994491298d60d88045cb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x306010af27638d57c72839c7251f56dc066478e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x307639f90d18b7fab210765317e3648bddb21723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3092bc48c7f8d6f3f5515bd65a5db685d65e2709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227664 | `0x3195949f267702723bc614cae037cdc8d1e94786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x347b321c466663d6a0fe9c0ccfcf8cea86f8ecd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x35fb498018bb45b05fba1f18d34b8bbcba3f6a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x378720c6448407a1c296732a0dbf98446438d6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x414789e6af2d21a106721c9e9359c24db4e0b2ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4353fbb61680c58105a304b5cf7d916e5a02c4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x43afef2b9024a5707bdbb13155c4f210364fa3a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x444d0cf88369bb84b7109e7eb37cfd3ac00323ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x451d4e8964d79081effdaede236354b20b678640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x45f710fc648a05f1ed32a72dd7c91c8e73f6b412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4600340dcda873123b638322fff6c6d2d09d063a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x49ca40501612ec28ec3751541592fd362a2afb09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227666 | `0x4f0d864b1abf4b701799a0b30b57a22dfeb5917b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x506ef46723c9502a4bc325bdba06ec88d6ec4b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x51a3f4719027a6038245ab5af38bb681b914ed94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x551d7d889f3e1aa021674b4636b4b63322892e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x559c68b1276d070cb9d6da75ecea90ffb6497b18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227668 | `0x5715c45d2c82292d8e5961eb5e2c66fe0fc5412b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x57c68c6b029bb11023dd253e61a996d512dbcf03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x586ea2c82ed0cf919c24b93a8ac542c7fc050b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5912bd9a3854ae4cce6a6c2441041af91340d03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5cb8b3c25f8b9c5c77eae6cd05fb53cf36f01a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227670 | `0x5ccad065400341db391fd3a4b7f50087b678d7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5dd06745574b6e40f53e90468e5866ffb37173a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5e9ccf56eb21272e52046a46ba3ee8ade206e619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x5f6e67eb3038b056357907e437050d07b55b1942` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227672 | `0x60bf668ca101060bd83bd644531a38719586b89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x60c02917d5b4ebeb7be1361975feef024a8b1026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x610b66588c9d437deb80f1d01d34d348994fe086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x63f1e81a5a47f7f454f9dba5c8283664b352710e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6664d272c820d70c923de9b1992de02a12c8a7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6778448753cfa4e035f3875d97da543c84c388ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x686e0ec3ec8fdb664bcd09a2e942b2986695eb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6a98506dbc1894fae2b9c7090cd614b066323211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6c42aa5b128b62d6ccf357726d7d13f3888335ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6cebe0d61ee8f4aa76aaaae7a2a0b5f0853a4ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6e68122bdecb7cf7d9beac0b914ba9e58e04750a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6e85f697d6906f43067f7dff5bbd3cdfb0f460c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227674 | `0x6ea6c03061bddce23d4ec60b6e6e880c33d24dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6ef6ee97ba534bb198cf734ed0b330cc28267655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x6f068608573c840bb27b39458d7d87eb865e19cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x73c46fbd11759fd4be5b6f0eabc6308782d157ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7956df301e6c3df2385340e086c60d491764297e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7a566976bd98b3d3b77af92e7e6bd05c9ca19d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x7ac86c968ee32bd0db37e870c76299ef33feebc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8072b287b6a95e1db6c8404bbd78642387dfa16c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227676 | `0x817af6cfaf35bdc1a634d6cc94ee9e4c68369aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x84bb2dcafbae2b9386b5af653066895957dc241b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x84c02580583a68eee8b3a6730755417a7ba18cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x84c6f90a549c13d0ae8ec43a5f291dfbc9cc566e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227678 | `0x8888682e24dd4df7b7ff2b91fccb575737e433bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x88f5669315d9675609c012a592208d7a1d93cdde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8a3d972ef67966440aa9b6fc776b7040dcd12f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8cbedd521c167d1374e2e8cec964109b6eaf40eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8f09ad4d67749fb1cff09fdf2340297ab7bde774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x8ff49aedc23e4e2671ccd562f1777f29bb212f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x916026d17d25180defeabdb7ad55cf83a9582b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x920458b655ef3b93569860bb6bcbd9acfeef2c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x94cda0da833b384b901d33d5c56fccde21d5e6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x954bbeefc1c8249c58a14dcace3e15fc073a0b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9728d8920707a5c12958e4cb2979ae5588f85eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x981bd5832eab9c8f607940e0e9facbf8c09ee20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9949bc78824d6fc9b2b1879c8788a34540cf63c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9ae13dd1ffd2008f68bc71d93c5a2381dc3f1d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9c5356c31889362c5e3f54c9dbe9f008a6b75f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9e1917b2059a0aa65882b22d083b55ed3c950939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x9f9cee911509abc6af899c12ed625b0a6580d6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa1e2bcced2556249b74a87c673f521d19fe6b644` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227680 | `0xa200b567579a577f582d292f7a1b5c4ecce195f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227682 | `0xa308a5003fa1a25bfdd9418fcee51d48dbe441e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa41de6308d5d0e1086b92dd44195e13daa5aef21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa4df647a34e19c25e4303f60d7ed399a7a244511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa64f1875080b91db293de1f547dc1d6bc5d3ef55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa70d805ed5b2dff627cf7046c131d73dfe11c59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa765d5c4825f0b43e593ba4bf723a6cea3540e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa8d4b7202fa0923330a7fc964722373b54a08164` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227684 | `0xa8f1a390ca227365fec3e53cf2851520b77743a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xa981ef1ed163fd2d54f0815a1e680c28fab4d940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xac99effdf7a8934e35ad13880d25127c548a7e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227685 | `0xad5a2437ff55ed7a8cad3b797b3ec7c5a19b1c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227687 | `0xae4fac24dcdae0132c6d04f564dcf059616e9423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb175fc52a1d493df04dbd35c04a96787766f7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb395b92a1a834a3d806512f6e3742c1142fb4667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb55efc3efd43de0d1f8eb469d2916e71ad8e6c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb6574ba30139fc89241fbf1580423e2c74645207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb66dfb137c2f65cf23bcc871f3bb536acb6f7863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb7d673786ddb25e654d6ff05a03163d54ff6149b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xb822241d515d8a07d6ceadda5abfb0158b9f5259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbc4d4812f1f0d856ab3081eb78dc8e8763189a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbc53ecdf14178f4bbadfbd3a5af0f1c354f73539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbdbf738d0b5d1978ce0c8e534d80449606891fde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xbf5b134ff86ec7340471b3a0ae9213423e356c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc029248dd29a6d33c45ec803d07570541b832441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc08ff86edf64c2d3816eb43c5ec95475a2d47bd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc263e92038139879918c0de0e97ea2f3f3984f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc2fa47e95d0c0cc7955ba123235f67a6fd1fdf19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc36913660153ab35a608f3909474b4fe12116293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc41a5c1625d492436600789469c1ce2ea20cea6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc43f78819973ba5dc6a94bdf99e6659d38535d3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227689 | `0xc6e5185438e1730959c1ef3551059a3fec744e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc7ea819ebf08e5ff481d4708a602f92380afbb0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xc8e7a0dc5b9a561425d8ebd208eac703dc077b74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227691 | `0xc9011e629c9d0b8b1e4a2091e123fbb87b3a792c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227693 | `0xc9a848ac73e378516b16e4eebba5ef6afbc0bbc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227695 | `0xca9511b610ba5fc7e311fdef9ce16050ee4449e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xce4166363e3a584dac84a47bcd3414b43efcdd1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227697 | `0xcecd147409b2d64a9a2e5418e3e471e8af19e0bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227699 | `0xcfb6b0498cb7555e7e21502e0f449bf28760adbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd08acc3e90be5bf711e7668edd56981efdc034e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd11d241fcc03f70e959a3c453c69c4cd52d3f78d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd187594fef086d64dd43839f424e92747ac63e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd204fd43bfe4aaeb9ab993c116c1decddf1b9f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd63320f9fe2c8793ed0ef78cddb26b9671dd9379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd7eb757e3c45d91b913ff8ef309438e67d9a0b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd8dff89f405cf503688802885f9b1a9b6b7be51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xd9f497bdebcef4dc4df0907c78a9c3bfd0c7b969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdacc02a4ff16ea3c1515adbfdceb7b1f448b79c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdecb32eed2a5e77c7ff97ae3fdcb7282cdc69cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdf9361edfde4ebb90e32fdb4671aa221eaf24f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xdfd85bcc39a3bd2834a8bcd3b75b1f1aea9b8315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe05ae9102720da0a61964fd5d08971a420b155d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe1eab8e68d9678152c0d0ad0912f4d7d720029da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe28339435478245cb1c57f84d246b67eecb3e204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe2875442e260464f892a61e00abf1738ed5ba318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe2c68ff37d7d076b6e1896b597e51fddbdcc85c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe3618bada3728a339a2214423c0426ad47d30626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe3b1aa3c0fcd67a0ff00fb7d9c4f59a8729cd6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe3d7f42d9df0abcd52048ca7105054a74919b056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe3dfad1cfc286b7fe7a41ed68e6f0b39ecda1a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe452eb948058219042e82450500dd68daba68d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe4d2e0bf6b5d563014899480bd326c24f526cace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xe8b53ee0443620fb8dceaeb6de98ed117971c329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xeadafbd9d7c09ce42512bf38d12abcd2d9ecbe0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xed8890e4f2e991a4f98a9b83c30b53586daf7acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xeef20c3479fae01eabd9d772e328df9dfcf61c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xef8792781aa653eb2bd2cfa5404a7a845714091c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf00d0ce846144803003d8e0a1960df18e94afd99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf14c03ff59abbea926b92264be70c846dedb9c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf65f0e87491774736290c7bc775ad89014942f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf7e0c243b3bd8f7a629bd58c3cbd366abf949a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xf84f70bbeee8f7ead03e669168155784ed326eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfb7c45a326db421da1ce532420232d655107b110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfd939b6cf87ef0449aa1cc72a5be6089ab017525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfe4bafef54017a1486ad886ca8ac4197fca66311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xffba986891b274d5b8b0c06f94fcb7a0db9192ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227701 | `0xffdffbdb966cb84b50e62d70105f2dbf2e0a1e70` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 160
- Live contracts: 0
- Unknown liveness contracts: 160
- Source-verified contracts: 2
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, source verified unclassified=1, unverified unclassified=158

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| aurora | unverified unclassified | UnnamedContract<br>`0x208d6ade7f68608898003d410bedee7553741274` | non_address_book | unknown | unknown | unverified | n/a | `0x373f080c8c4a84f9b9578d0bd860b8b3506b536f` |
| aurora | unverified unclassified | UnnamedContract<br>`0x610b66588c9d437deb80f1d01d34d348994fe086` | non_address_book | unknown | unknown | unverified | n/a | `0x373f080c8c4a84f9b9578d0bd860b8b3506b536f` |
| aurora | unverified unclassified | UnnamedContract<br>`0xac99effdf7a8934e35ad13880d25127c548a7e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x373f080c8c4a84f9b9578d0bd860b8b3506b536f` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd63320f9fe2c8793ed0ef78cddb26b9671dd9379` | non_address_book | unknown | unknown | unverified | n/a | `0x373f080c8c4a84f9b9578d0bd860b8b3506b536f` |
| aurora | unverified unclassified | UnnamedContract<br>`0xdfd85bcc39a3bd2834a8bcd3b75b1f1aea9b8315` | non_address_book | unknown | unknown | unverified | n/a | `0x373f080c8c4a84f9b9578d0bd860b8b3506b536f` |
| aurora | unverified unclassified | UnnamedContract<br>`0x02355e68b863e1c8cf159a33342ce40ac3339cc0` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x0466eb59558253b81cb45e493f3ede602e42ddb0` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x089bd111dc8af2409410dc72ae3a81674868739b` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x258f624837c7a477dbb982f7055267094bf3c69d` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x285a29b6ea55ce39dd0f69295038be18c5aaa0c2` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x2d6f3efc182d523058409fc83bbf9ba6b8da7738` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x4353fbb61680c58105a304b5cf7d916e5a02c4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x43afef2b9024a5707bdbb13155c4f210364fa3a6` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x444d0cf88369bb84b7109e7eb37cfd3ac00323ed` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x49ca40501612ec28ec3751541592fd362a2afb09` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x51a3f4719027a6038245ab5af38bb681b914ed94` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x551d7d889f3e1aa021674b4636b4b63322892e1e` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x60c02917d5b4ebeb7be1361975feef024a8b1026` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6a98506dbc1894fae2b9c7090cd614b066323211` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x954bbeefc1c8249c58a14dcace3e15fc073a0b77` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9c5356c31889362c5e3f54c9dbe9f008a6b75f76` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa1e2bcced2556249b74a87c673f521d19fe6b644` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa4df647a34e19c25e4303f60d7ed399a7a244511` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb395b92a1a834a3d806512f6e3742c1142fb4667` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb66dfb137c2f65cf23bcc871f3bb536acb6f7863` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb7d673786ddb25e654d6ff05a03163d54ff6149b` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xbc53ecdf14178f4bbadfbd3a5af0f1c354f73539` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc029248dd29a6d33c45ec803d07570541b832441` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc2fa47e95d0c0cc7955ba123235f67a6fd1fdf19` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc7ea819ebf08e5ff481d4708a602f92380afbb0a` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd11d241fcc03f70e959a3c453c69c4cd52d3f78d` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd187594fef086d64dd43839f424e92747ac63e85` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xdecb32eed2a5e77c7ff97ae3fdcb7282cdc69cab` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe05ae9102720da0a61964fd5d08971a420b155d4` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe3d7f42d9df0abcd52048ca7105054a74919b056` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe4d2e0bf6b5d563014899480bd326c24f526cace` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf7e0c243b3bd8f7a629bd58c3cbd366abf949a46` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf84f70bbeee8f7ead03e669168155784ed326eb4` | non_address_book | unknown | unknown | unverified | n/a | `0x820cbc73b2abb55f1d7cf887b05ac7887f3386e3` |
| aurora | unverified unclassified | UnnamedContract<br>`0x02f4cf47ea8e953e25bd45a82e8cf478ef1b60c6` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x04b39dc34127a18bd2edf65a3229f32f3accca0c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x04d3ee06f7b2539da3711ed905e86de134b13d08` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x06542f80f45d07c400db97f1902339dfa409e41e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x06b42b03afd80155e85431fed3081394f0169b48` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x07f90fd1f79f6c4716d4b9365ddeb3a2a7a7794a` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x09f7f5b03c585d702c0f1ca9f6fc65c8691acb18` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x0c7a533398ccbb8966f97e49e9263f17b3397124` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x142632fcf67922d62d34fd8c8bc6d2254929e0ad` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x15ad7b9d5df9f537510f296189befb00822ac29a` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x15b70a985e5c8c9daa383c1704885a58795784cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x198f082f39057d153426119462219a1b70b82849` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x1a1cc47676bb459a9cf7f09bc4defd8160d1263c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x1b8aa3e9e3347dae5444db26897750f15d78578e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x1f99b67ebc5c92d3093b5fd2ede98c22323d17f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x22ae568df8d8aee3ed9ab0f135ca8cfef5d2cf18` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x23567af5ebf725923156a18922d759d32a2410c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x23b9cc2cbd9153de01262b4acba2835bb900ad0f` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x248342560731bd4468c5ae28bfa4b2ead008bdcc` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x2a137d3934de4a25de6af8987d36f3ad477967bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x2b158568a5595ae4ad67132cfe9f82e790be1a88` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x2dd7a8530cb3942413994491298d60d88045cb44` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x306010af27638d57c72839c7251f56dc066478e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x307639f90d18b7fab210765317e3648bddb21723` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x3092bc48c7f8d6f3f5515bd65a5db685d65e2709` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x347b321c466663d6a0fe9c0ccfcf8cea86f8ecd3` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x35fb498018bb45b05fba1f18d34b8bbcba3f6a4f` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x378720c6448407a1c296732a0dbf98446438d6c0` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x414789e6af2d21a106721c9e9359c24db4e0b2ba` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x451d4e8964d79081effdaede236354b20b678640` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x45f710fc648a05f1ed32a72dd7c91c8e73f6b412` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x4600340dcda873123b638322fff6c6d2d09d063a` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x506ef46723c9502a4bc325bdba06ec88d6ec4b25` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x559c68b1276d070cb9d6da75ecea90ffb6497b18` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x57c68c6b029bb11023dd253e61a996d512dbcf03` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x586ea2c82ed0cf919c24b93a8ac542c7fc050b2e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5912bd9a3854ae4cce6a6c2441041af91340d03f` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5cb8b3c25f8b9c5c77eae6cd05fb53cf36f01a61` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5dd06745574b6e40f53e90468e5866ffb37173a0` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5e9ccf56eb21272e52046a46ba3ee8ade206e619` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x5f6e67eb3038b056357907e437050d07b55b1942` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x63f1e81a5a47f7f454f9dba5c8283664b352710e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6664d272c820d70c923de9b1992de02a12c8a7d8` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6778448753cfa4e035f3875d97da543c84c388ae` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x686e0ec3ec8fdb664bcd09a2e942b2986695eb23` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6c42aa5b128b62d6ccf357726d7d13f3888335ec` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6cebe0d61ee8f4aa76aaaae7a2a0b5f0853a4ed7` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6e68122bdecb7cf7d9beac0b914ba9e58e04750a` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6e85f697d6906f43067f7dff5bbd3cdfb0f460c3` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6ef6ee97ba534bb198cf734ed0b330cc28267655` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x6f068608573c840bb27b39458d7d87eb865e19cc` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x73c46fbd11759fd4be5b6f0eabc6308782d157ff` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7956df301e6c3df2385340e086c60d491764297e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7a566976bd98b3d3b77af92e7e6bd05c9ca19d36` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x7ac86c968ee32bd0db37e870c76299ef33feebc1` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8072b287b6a95e1db6c8404bbd78642387dfa16c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x84bb2dcafbae2b9386b5af653066895957dc241b` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x84c02580583a68eee8b3a6730755417a7ba18cb4` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x84c6f90a549c13d0ae8ec43a5f291dfbc9cc566e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x88f5669315d9675609c012a592208d7a1d93cdde` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8a3d972ef67966440aa9b6fc776b7040dcd12f02` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8cbedd521c167d1374e2e8cec964109b6eaf40eb` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8f09ad4d67749fb1cff09fdf2340297ab7bde774` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x8ff49aedc23e4e2671ccd562f1777f29bb212f5e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x916026d17d25180defeabdb7ad55cf83a9582b9b` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x920458b655ef3b93569860bb6bcbd9acfeef2c46` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x94cda0da833b384b901d33d5c56fccde21d5e6e7` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9728d8920707a5c12958e4cb2979ae5588f85eca` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x981bd5832eab9c8f607940e0e9facbf8c09ee20a` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9949bc78824d6fc9b2b1879c8788a34540cf63c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9ae13dd1ffd2008f68bc71d93c5a2381dc3f1d27` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9e1917b2059a0aa65882b22d083b55ed3c950939` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0x9f9cee911509abc6af899c12ed625b0a6580d6e6` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa41de6308d5d0e1086b92dd44195e13daa5aef21` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa64f1875080b91db293de1f547dc1d6bc5d3ef55` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa70d805ed5b2dff627cf7046c131d73dfe11c59c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa765d5c4825f0b43e593ba4bf723a6cea3540e64` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa8d4b7202fa0923330a7fc964722373b54a08164` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xa981ef1ed163fd2d54f0815a1e680c28fab4d940` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb175fc52a1d493df04dbd35c04a96787766f7db2` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb55efc3efd43de0d1f8eb469d2916e71ad8e6c67` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb6574ba30139fc89241fbf1580423e2c74645207` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xb822241d515d8a07d6ceadda5abfb0158b9f5259` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xbc4d4812f1f0d856ab3081eb78dc8e8763189a30` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xbdbf738d0b5d1978ce0c8e534d80449606891fde` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xbf5b134ff86ec7340471b3a0ae9213423e356c93` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc08ff86edf64c2d3816eb43c5ec95475a2d47bd0` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc263e92038139879918c0de0e97ea2f3f3984f72` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc36913660153ab35a608f3909474b4fe12116293` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc41a5c1625d492436600789469c1ce2ea20cea6b` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc43f78819973ba5dc6a94bdf99e6659d38535d3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xc8e7a0dc5b9a561425d8ebd208eac703dc077b74` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xce4166363e3a584dac84a47bcd3414b43efcdd1c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd08acc3e90be5bf711e7668edd56981efdc034e4` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd204fd43bfe4aaeb9ab993c116c1decddf1b9f1a` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd7eb757e3c45d91b913ff8ef309438e67d9a0b33` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd8dff89f405cf503688802885f9b1a9b6b7be51b` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xd9f497bdebcef4dc4df0907c78a9c3bfd0c7b969` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xdacc02a4ff16ea3c1515adbfdceb7b1f448b79c8` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xdf9361edfde4ebb90e32fdb4671aa221eaf24f46` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe1eab8e68d9678152c0d0ad0912f4d7d720029da` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe28339435478245cb1c57f84d246b67eecb3e204` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe2875442e260464f892a61e00abf1738ed5ba318` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe2c68ff37d7d076b6e1896b597e51fddbdcc85c6` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe3618bada3728a339a2214423c0426ad47d30626` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe3b1aa3c0fcd67a0ff00fb7d9c4f59a8729cd6d7` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe3dfad1cfc286b7fe7a41ed68e6f0b39ecda1a6c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe452eb948058219042e82450500dd68daba68d27` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xe8b53ee0443620fb8dceaeb6de98ed117971c329` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xeadafbd9d7c09ce42512bf38d12abcd2d9ecbe0e` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xed8890e4f2e991a4f98a9b83c30b53586daf7acb` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xeef20c3479fae01eabd9d772e328df9dfcf61c83` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xef8792781aa653eb2bd2cfa5404a7a845714091c` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf00d0ce846144803003d8e0a1960df18e94afd99` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf14c03ff59abbea926b92264be70c846dedb9c4b` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xf65f0e87491774736290c7bc775ad89014942f75` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xfb7c45a326db421da1ce532420232d655107b110` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xfd939b6cf87ef0449aa1cc72a5be6089ab017525` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xfe4bafef54017a1486ad886ca8ac4197fca66311` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | unverified unclassified | UnnamedContract<br>`0xffba986891b274d5b8b0c06f94fcb7a0db9192ea` | non_address_book | unknown | unknown | unverified | n/a | `0xb969526ebc8dd4b1d816da846ee08180515ffbbc` |
| aurora | candidate review | EvmErc20<br>`0x3d4205511c25ccd29e3fff6fba0d321b44bb7980` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xbdabbaf3117f6442387ad25af343ed0e5d74d9e2` |
| ethereum | source verified unclassified | Ply<br>`0x7cc183af8d90015e5aa935a5240be1c2b367b877` | non_address_book | unknown | unknown | verified | n/a | `0xc86ed20c7b8a95aebd102e60e686f363f70d4938` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Aurigami_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/Aurigami-Finance/aurigami-smart-contracts/blob/main/docs/Aurigami_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [www.watchpug.org](https://www.watchpug.org/) | WatchPug | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12702] Aurigami_Finance_Audit_Report_by_WatchPug.pdf — matched: Contracts extracted from findings sections; no explicit scope table provided but all contracts mentioned are in scope.
- [12703] www.watchpug.org — no match: The provided text is a header/footer snippet from an audit report, not the full report content. No contracts, scope section, or date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuErc20 | unmatched — not counted | — | mentioned in finding AF-1 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuToken | unmatched — not counted | — | mentioned in findings AF-1, AF-2, AF-3 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | Unitroller | own contract | 0x817af6… (selected) `0x817af6cfaf35bdc1a634d6cc94ee9e4c68369aeb` — deployed 2022-03-01 07:23:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriLens | own contract | 0xffdffb… (selected) `0xffdffbdb966cb84b50e62d70105f2dbf2e0a1e70` — deployed 2022-04-29 17:48:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | Comptroller | unmatched — not counted | — | mentioned in findings AF-4, AF-5 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriMathLib | unmatched — not counted | — | mentioned in finding AF-6 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuETH | own contract | 0xca9511… (selected) `0xca9511b610ba5fc7e311fdef9ce16050ee4449e9` — deployed 2022-03-01 07:27:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriOracle | unmatched — not counted | — | mentioned in finding AF-8 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 182 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [12703] www.watchpug.org

Fork inheritance lineage and inherited audits are included when available.
