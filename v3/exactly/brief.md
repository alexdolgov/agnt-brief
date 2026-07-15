# Agentic Audit Brief: Exactly

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 33 (2 matched; 31 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Exactly (`exactly`)
- Website: [https://exact.ly](https://exact.ly)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, goerli, optimism
- Contract surface: 115 unique implementations (115 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,102,377.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Exactly. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base, ethereum, goerli, optimism. Structural roles: 3 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (3)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (3), solmate (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 60 contracts are derived from known codebases. 60 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1586c0...809409`, chain 1)
- UnnamedContract (`0x163538...4198ff`, chain 1)
- UnnamedContract (`0x29babf...a10258`, chain 1)
- UnnamedContract (`0x310a26...3efe01`, chain 1)
- UnnamedContract (`0x3843c4...2a29e1`, chain 1)
- UnnamedContract (`0x3c6bd2...ae2b54`, chain 1)
- UnnamedContract (`0x3fd0a9...b39afc`, chain 1)
- UnnamedContract (`0x660e2f...f6f928`, chain 1)
- UnnamedContract (`0x810221...ad9392`, chain 1)
- UnnamedContract (`0x8644c0...729435`, chain 1)
- UnnamedContract (`0x86f6d8...694bf9`, chain 1)
- UnnamedContract (`0x884988...b6056c`, chain 1)
- UnnamedContract (`0x92024c...8eb58b`, chain 1)
- UnnamedContract (`0x9c36ff...1577c6`, chain 1)
- UnnamedContract (`0xa6b60f...713825`, chain 1)
- UnnamedContract (`0xaeb62e...6f027e`, chain 1)
- UnnamedContract (`0xc4d450...61c7ef`, chain 1)
- UnnamedContract (`0xe296e3...3cee83`, chain 1)
- UnnamedContract (`0xe94e00...412567`, chain 1)
- UnnamedContract (`0xf05385...d60c90`, chain 1)
- UnnamedContract (`0xf880bb...d09ac0`, chain 1)
- UnnamedContract (`0xf972f7...c94e72`, chain 1)
- UnnamedContract (`0x057e3e...594d04`, chain 10)
- UnnamedContract (`0x0b9d4a...06bc7a`, chain 10)
- UnnamedContract (`0x1a4fc2...142d4d`, chain 10)
- UnnamedContract (`0x225561...7809d9`, chain 10)
- UnnamedContract (`0x22ab31...36533f`, chain 10)
- UnnamedContract (`0x2d550e...51e280`, chain 10)
- UnnamedContract (`0x3f55a3...243c46`, chain 10)
- UnnamedContract (`0x3fdf2b...08bcda`, chain 10)
- UnnamedContract (`0x448ddd...4d120c`, chain 10)
- UnnamedContract (`0x6926b4...f3a8bb`, chain 10)
- UnnamedContract (`0x6ccec8...5e96b2`, chain 10)
- UnnamedContract (`0x6f748f...f3b322`, chain 10)
- UnnamedContract (`0x6fc143...9f8024`, chain 10)
- UnnamedContract (`0x8130c8...ff09ed`, chain 10)
- UnnamedContract (`0x87581e...a9c53e`, chain 10)
- UnnamedContract (`0x8b6049...0c1b96`, chain 10)
- UnnamedContract (`0xa430a4...56cedb`, chain 10)
- UnnamedContract (`0xb4610b...a4a2aa`, chain 10)
- UnnamedContract (`0xbea586...3fbc18`, chain 10)
- UnnamedContract (`0xcc54de...b2ba01`, chain 10)
- UnnamedContract (`0xceed2b...be752b`, chain 10)
- UnnamedContract (`0xd75947...8c1bc1`, chain 10)
- UnnamedContract (`0xe8cf7c...8aa018`, chain 10)
- UnnamedContract (`0x03859f...0d4489`, chain 8453)
- UnnamedContract (`0x0aeb0b...4a597c`, chain 8453)
- UnnamedContract (`0x1dcf89...dd0f75`, chain 8453)
- UnnamedContract (`0x50b818...10873a`, chain 8453)
- UnnamedContract (`0x52ee52...c3a0c4`, chain 8453)
- UnnamedContract (`0x61edac...692e4b`, chain 8453)
- UnnamedContract (`0x79e30d...65b107`, chain 8453)
- UnnamedContract (`0x81c9a7...694873`, chain 8453)
- UnnamedContract (`0x85c21f...0aaf4f`, chain 8453)
- UnnamedContract (`0x8c2f35...d873e4`, chain 8453)
- UnnamedContract (`0xb4b6d4...ed0b77`, chain 8453)
- UnnamedContract (`0xbd1ba7...b2e031`, chain 8453)
- InterestRateModel (`0x406e73...4e35a4`, chain 8453)
- InterestRateModel (`0xe963cd...7453b7`, chain 8453)
- InterestRateModel (`0xf9b612...6380f2`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 60/84 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 60 own, 24 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 60 of 115 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 115
- Raw deployments: 115
- Audits discovered: 33 (33 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/exactly/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 25 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | base | unit-385236 | `0x406e73...4e35a4` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | base | unit-385246 | `0xe963cd...7453b7` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | base | unit-385247 | `0xf9b612...6380f2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (112)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ba04...a735d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d337f...3e95c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385164 | `0x1586c0...809409` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385165 | `0x163538...4198ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179c07...8e592e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205625...974de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba6b...352c43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385166 | `0x29babf...a10258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8740...12e78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db2d7...c31cc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385167 | `0x310a26...3efe01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385168 | `0x3843c4...2a29e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2807...b7c7d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385169 | `0x3c6bd2...ae2b54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385170 | `0x3fd0a9...b39afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8c77...3c3bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d8975...a9680d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54b3f1...634c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385171 | `0x660e2f...f6f928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72795c...46c2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734e2a...dc6116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a722e...7c160e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385172 | `0x810221...ad9392` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385173 | `0x8644c0...729435` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385174 | `0x86f6d8...694bf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385175 | `0x884988...b6056c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385176 | `0x92024c...8eb58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x979f31...e9886f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385177 | `0x9c36ff...1577c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5df45...6a55da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385178 | `0xa6b60f...713825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad51e...9b347e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385179 | `0xaeb62e...6f027e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaefcdb...9ec60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5fa37...e32c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb957a4...319fab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385180 | `0xc4d450...61c7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc3f41...3a371e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf830a...ecb452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd588e1...199976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e103...794d4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385181 | `0xe296e3...3cee83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385182 | `0xe94e00...412567` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385183 | `0xf05385...d60c90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385184 | `0xf880bb...d09ac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385185 | `0xf972f7...c94e72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385209 | `0x04ba04...a735d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385210 | `0x0d337f...3e95c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385211 | `0x179c07...8e592e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385212 | `0x205625...974de0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385213 | `0x22ba6b...352c43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385214 | `0x2a8740...12e78b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385215 | `0x2db2d7...c31cc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385216 | `0x3a2807...b7c7d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385217 | `0x4a8c77...3c3bb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385218 | `0x4d8975...a9680d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385219 | `0x54b3f1...634c38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385220 | `0x72795c...46c2da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385221 | `0x734e2a...dc6116` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385222 | `0x7a722e...7c160e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385223 | `0x979f31...e9886f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385224 | `0xa5df45...6a55da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385225 | `0xaad51e...9b347e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385226 | `0xaefcdb...9ec60e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385227 | `0xb5fa37...e32c6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385228 | `0xb957a4...319fab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385229 | `0xcc3f41...3a371e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385230 | `0xcf830a...ecb452` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385231 | `0xd588e1...199976` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-385232 | `0xd6e103...794d4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385186 | `0x057e3e...594d04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385187 | `0x0b9d4a...06bc7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385188 | `0x1a4fc2...142d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385189 | `0x225561...7809d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385190 | `0x22ab31...36533f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x29babf...a10258` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385191 | `0x2d550e...51e280` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385192 | `0x3f55a3...243c46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385193 | `0x3fdf2b...08bcda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385194 | `0x448ddd...4d120c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385195 | `0x6926b4...f3a8bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385196 | `0x6ccec8...5e96b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385197 | `0x6f748f...f3b322` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385198 | `0x6fc143...9f8024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385199 | `0x8130c8...ff09ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81c9a7...694873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385200 | `0x87581e...a9c53e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x884988...b6056c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385201 | `0x8b6049...0c1b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385202 | `0xa430a4...56cedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaeb62e...6f027e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385203 | `0xb4610b...a4a2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd1ba7...b2e031` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385204 | `0xbea586...3fbc18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4d450...61c7ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385205 | `0xcc54de...b2ba01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385206 | `0xceed2b...be752b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385207 | `0xd75947...8c1bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-385208 | `0xe8cf7c...8aa018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf05385...d60c90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385233 | `0x03859f...0d4489` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385234 | `0x0aeb0b...4a597c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385235 | `0x1dcf89...dd0f75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385237 | `0x50b818...10873a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385238 | `0x52ee52...c3a0c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385239 | `0x61edac...692e4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385240 | `0x79e30d...65b107` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385241 | `0x81c9a7...694873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385242 | `0x85c21f...0aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385243 | `0x8c2f35...d873e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385244 | `0xb4b6d4...ed0b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-385245 | `0xbd1ba7...b2e031` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK 1st audit (Oct-22).pdf](https://github.com/exactly/audits/blob/main/ABDK%201st%20audit%20(Oct-22).pdf) | ABDK | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [ABDK 2nd audit (May-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%202nd%20audit%20(May-23).pdf) | ABDK | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [ABDK EXA token cross-chain (Mar-26).pdf](https://github.com/exactly/audits/blob/main/ABDK%20EXA%20token%20cross-chain%20(Mar-26).pdf) | ABDK | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ABDK EscrowedEXA (Sep-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%20EscrowedEXA%20(Sep-23).pdf) | ABDK | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [ABDK Installments Router and New Market Roles (Apr-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Installments%20Router%20and%20New%20Market%20Roles%20(Apr-24).pdf) | ABDK | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ABDK Interest Rate Model v2 (Feb-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Interest%20Rate%20Model%20v2%20(Feb-24).pdf) | ABDK | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [ABDK Interest Rate Model v2 (Mar-24).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf) | ABDK | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [ABDK PeripheralContracts 1st audit (Sep-23).pdf](https://github.com/exactly/audits/blob/main/ABDK%20PeripheralContracts%201st%20audit%20(Sep-23).pdf) | ABDK | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ABDK Protocol Update (Oct-25).pdf](https://github.com/exactly/audits/blob/main/ABDK%20Protocol%20Update%20(Oct-25).pdf) | ABDK | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [ABDK Rewards Controller Update (Mar-25)pdf.pdf](https://github.com/exactly/audits/blob/main/ABDK%20Rewards%20Controller%20Update%20(Mar-25)pdf.pdf) | ABDK | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Chainsafe 1st audit (May-22).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%201st%20audit%20(May-22).pdf) | Chainsafe | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Chainsafe 2nd audit (Oct-22).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%202nd%20audit%20(Oct-22).pdf) | Chainsafe | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Chainsafe Interest Rate Model v2 (Mar-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf) | Chainsafe | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Chainsafe Interest Rate Model v2 Diff (Mar-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%20Interest%20Rate%20Model%20v2%20Diff%20(Mar-24).pdf) | Chainsafe | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Chainsafe Staking Contract (Aug-24).pdf](https://github.com/exactly/audits/blob/main/Chainsafe%20Staking%20Contract%20(Aug-24).pdf) | Chainsafe | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Coinspect 1st audit (Nov-21).pdf](https://github.com/exactly/audits/blob/main/Coinspect%201st%20audit%20(Nov-21).pdf) | Coinspect | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Coinspect 2nd audit (May-22).pdf](https://github.com/exactly/audits/blob/main/Coinspect%202nd%20audit%20(May-22).pdf) | Coinspect | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Coinspect 3rd audit (Oct-22).pdf](https://github.com/exactly/audits/blob/main/Coinspect%203rd%20audit%20(Oct-22).pdf) | Coinspect | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Coinspect 4th audit (Oct-22).pdf](https://github.com/exactly/audits/blob/main/Coinspect%204th%20audit%20(Oct-22).pdf) | Coinspect | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Coinspect 5th audit (Mar-23).pdf](https://github.com/exactly/audits/blob/main/Coinspect%205th%20audit%20(Mar-23).pdf) | Coinspect | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Coinspect RewardsController 1st audit (Jan-23).pdf](https://github.com/exactly/audits/blob/main/Coinspect%20RewardsController%201st%20audit%20(Jan-23).pdf) | Coinspect | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Coinspect RewardsController 2nd audit (Feb-23).pdf](https://github.com/exactly/audits/blob/main/Coinspect%20RewardsController%202nd%20audit%20(Feb-23).pdf) | Coinspect | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Coinspect RewardsController 3rd audit (Mar-23).pdf](https://github.com/exactly/audits/blob/main/Coinspect%20RewardsController%203rd%20audit%20(Mar-23).pdf) | Coinspect | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Cryptecon_Economics_of_the_Exactly_Protocol(Sep-22).pdf](https://github.com/exactly/audits/blob/main/Cryptecon_Economics_of_the_Exactly_Protocol(Sep-22).pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Hashlock Installments Router and New Market Roles (Apr-24).pdf](https://github.com/exactly/audits/blob/main/Hashlock%20Installments%20Router%20and%20New%20Market%20Roles%20(Apr-24).pdf) | Hashlock | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Hashlock Interest Rate Model v2 (Mar-24).pdf](https://github.com/exactly/audits/blob/main/Hashlock%20Interest%20Rate%20Model%20v2%20(Mar-24).pdf) | Hashlock | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [OpenZeppelin EscrowedEXA (Oct-23).pdf](https://github.com/exactly/audits/blob/main/OpenZeppelin%20EscrowedEXA%20(Oct-23).pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Quantstamp Exa App Plugin (Mar-25).pdf](https://github.com/exactly/audits/blob/main/Quantstamp%20Exa%20App%20Plugin%20(Mar-25).pdf) | Quantstamp | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Quantstamp Exa App Plugin Update (Oct-25).pdf](https://github.com/exactly/audits/blob/main/Quantstamp%20Exa%20App%20Plugin%20Update%20(Oct-25).pdf) | Quantstamp | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf](https://github.com/exactly/audits/blob/main/Quantstamp%20Exa%20App%20WebAuthn%20Plugin%20(Jul-24).pdf) | Quantstamp | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Sherlock Staking Contract (Aug-24).pdf](https://github.com/exactly/audits/blob/main/Sherlock%20Staking%20Contract%20(Aug-24).pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-06-10-quantstamp.pdf](https://github.com/exactly/webauthn-owner-plugin/blob/main/audits/2024-06-10-quantstamp.pdf) | Quantstamp | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [immunefi.com/bug-bounty/exactly/information](https://immunefi.com/bug-bounty/exactly/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7901] ABDK 1st audit (Oct-22).pdf — no match: Scope section lists 6 files: Auditor.sol, ExactlyOracle.sol, InterestRateModel.sol, MarketETHRouter.sol, Market.sol, utils/FixedLib.sol. Audit date from cover page: 5th November 2022.
- [7902] ABDK 2nd audit (May-23).pdf — no match: Scope section lists 5 files: Auditor.sol, InterestRateModel.sol, Market.sol, PriceFeedDouble.sol, RewardsController.sol. Audit date from changelog: 3.0 17.05.23 Release.
- [7903] ABDK EXA token cross-chain (Mar-26).pdf — no match: No reason recorded
- [7904] ABDK EscrowedEXA (Sep-23).pdf — matched: Scope section lists two files: EscrowedEXA.sol and Swapper.sol. Audit date from changelog: 26.09.2023.
- [7905] ABDK Installments Router and New Market Roles (Apr-24).pdf — no match: Scope section explicitly lists Market.sol and periphery/InstallmentsRouter.sol. Audit date from changelog and title page.
- [7906] ABDK Interest Rate Model v2 (Feb-24).pdf — no match: Scope section lists 11 files with .sol extension. Contract names extracted from filenames.
- [7907] ABDK Interest Rate Model v2 (Mar-24).pdf — no match: Extracted 11 contract names from the 'Project scope' section listing files. Audit date from cover page '12th March 2024'.
- [7908] ABDK PeripheralContracts 1st audit (Sep-23).pdf — no match: Scope section lists three contracts: Airdrop.sol, DebtManager.sol, EXA.sol. Audit date from changelog and title page.
- [7909] ABDK Protocol Update (Oct-25).pdf — no match: Scope section explicitly lists files: Auditor.sol, Market.sol, MarketBase.sol, MarketExtension.sol, RewardsController.sol, verified/VerifiedMarket.sol, verified/VerifiedAuditor.sol, Firewall.sol, periphery/FlashLoanAdapter.sol, periphery/DebtRoller.sol. Audit date is 31st October 2025 from cover page.
- [7910] ABDK Rewards Controller Update (Mar-25)pdf.pdf — no match: Scope section explicitly lists files: Market.sol and RewardController.sol. Audit date from cover page: 27th March 2025.
- [7911] Chainsafe 1st audit (May-22).pdf — no match: Report states 11 contracts, interfaces and libraries in scope. Extracted 8 named contracts from line-by-line sections. Previewer is mentioned as out of scope but included for completeness. Date is May 2022, interpreted as last day of month.
- [7912] Chainsafe 2nd audit (Oct-22).pdf — no match: Report states 7 contracts in scope but only 4 are explicitly named. The other 3 are parent contracts and interfaces not named. Date is October 2022, assumed last day of month.
- [7913] Chainsafe Interest Rate Model v2 (Mar-24).pdf — no match: Only Market.sol is explicitly mentioned in scope. InterestRateModel.sol is referenced but not listed as in scope.
- [7914] Chainsafe Interest Rate Model v2 Diff (Mar-24).pdf — no match: Only Market.sol is explicitly mentioned in scope. InterestRateModel.sol is referenced but not listed as in scope.
- [7915] Chainsafe Staking Contract (Aug-24).pdf — no match: Contracts explicitly listed in scope section and line-by-line review.
- [7916] Coinspect 1st audit (Nov-21).pdf — no match: All contracts listed in the 'Assessment and Scope' section with file paths and hashes are included. The audit date is inferred from the report date 'November 2021' (last day of month).
- [7917] Coinspect 2nd audit (May-22).pdf — no match: Audit report for Exactly Protocol, dated May 2022. Scope section lists 11 Solidity files with sha256 hashes. Audit date inferred as end of May 2022.
- [7918] Coinspect 3rd audit (Oct-22).pdf — no match: Audit report for Exactly Protocol, September 2022. Scope section lists 8 files with sha256 hashes. Audit date inferred from 'September 2022' on cover page, using last day of month.
- [7919] Coinspect 4th audit (Oct-22).pdf — no match: Audit report for Exactly Protocol, October 2022. Scope includes Auditor, PriceFeedWrapper, and MockStETH contracts. Date inferred from 'October 2022' on cover page.
- [7920] Coinspect 5th audit (Mar-23).pdf — no match: Audit report covers InterestRateModel.sol and Market.sol. Date inferred from 'April 2023' on cover page.
- [7921] Coinspect RewardsController 1st audit (Jan-23).pdf — no match: Only RewardsController.sol is explicitly in scope. Market contract modifications are mentioned but not listed as audited files.
- [7922] Coinspect RewardsController 2nd audit (Feb-23).pdf — no match: Only one contract, RewardsController, is explicitly in scope. The report mentions other contracts (e.g., MockPriceFeed) only in test code, not as audit targets.
- [7923] Coinspect RewardsController 3rd audit (Mar-23).pdf — no match: The audit scope is the RewardsController contract. The report date is April 2023 (prepared for Exactly, April 2023), so the end of April is used.
- [7924] Cryptecon_Economics_of_the_Exactly_Protocol(Sep-22).pdf — no match: This is an economic audit of the Exactly Protocol, not a smart contract audit. No smart contracts or source files are listed in scope.
- [7925] Hashlock Installments Router and New Market Roles (Apr-24).pdf — no match: Two contracts in scope: Market.sol and InstallmentsRouter.sol. Audit date is April 2024, mapped to last day of month.
- [7926] Hashlock Interest Rate Model v2 (Mar-24).pdf — no match: Audit scope explicitly lists InterestRateModel.sol and Market.sol. Audit date is August 2023, mapped to last day of month.
- [7927] OpenZeppelin EscrowedEXA (Oct-23).pdf — matched: Only one contract in scope: EscrowedExa.sol
- [7928] Quantstamp Exa App Plugin (Mar-25).pdf — no match: No reason recorded
- [7929] Quantstamp Exa App Plugin Update (Oct-25).pdf — no match: No reason recorded
- [7930] Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf — no match: No reason recorded
- [7931] Sherlock Staking Contract (Aug-24).pdf — no match: Extracted from the report header: 'DatesAudited: July22-July25,2024' and 'Preparedon: August26,2024'. The audit date is the end date of the audit period.
- [7942] 2024-06-10-quantstamp.pdf — no match: No reason recorded
- [15103] immunefi.com/bug-bounty/exactly/information — no match: The provided text is a bug bounty program description, not an audit report. No contracts in scope are listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK 1st audit (Oct-22).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK 1st audit (Oct-22).pdf | ExactlyOracle | unmatched — not counted | — | listed in scope | no |
| ABDK 1st audit (Oct-22).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK 1st audit (Oct-22).pdf | MarketETHRouter | ambiguous — not counted | 0x85c21f… (alternative) `0x85c21f...0aaf4f` — liveness: live (current_address_book_code)<br>0x29babf… (alternative) `0x29babf...a10258` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK 1st audit (Oct-22).pdf | Market | unmatched — not counted | — | listed in scope | no |
| ABDK 1st audit (Oct-22).pdf | FixedLib | unmatched — not counted | — | listed in scope | no |
| ABDK 2nd audit (May-23).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK 2nd audit (May-23).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK 2nd audit (May-23).pdf | Market | unmatched — not counted | — | listed in scope | no |
| ABDK 2nd audit (May-23).pdf | PriceFeedDouble | unmatched — not counted | — | listed in scope | no |
| ABDK 2nd audit (May-23).pdf | RewardsController | unmatched — not counted | — | listed in scope | no |
| ABDK EXA token cross-chain (Mar-26).pdf | EXA | unmatched — not counted | — | — | no |
| ABDK EscrowedEXA (Sep-23).pdf | EscrowedEXA | own contract | 0xbea586… (selected) `0xbea586...3fbc18` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK EscrowedEXA (Sep-23).pdf | Swapper | unmatched — not counted | — | listed in scope | no |
| ABDK Installments Router and New Market Roles (Apr-24).pdf | Market | unmatched — not counted | — | listed in scope | no |
| ABDK Installments Router and New Market Roles (Apr-24).pdf | InstallmentsRouter | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | Market | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | MarketETHRouter | ambiguous — not counted | 0x85c21f… (alternative) `0x85c21f...0aaf4f` — liveness: live (current_address_book_code)<br>0x29babf… (alternative) `0x29babf...a10258` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | PriceFeedDouble | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | PriceFeedPool | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | PriceFeedWrapper | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | RewardsController | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | FixedLib | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | EXA | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Feb-24).pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | Market | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | MarketETHRouter | ambiguous — not counted | 0x85c21f… (alternative) `0x85c21f...0aaf4f` — liveness: live (current_address_book_code)<br>0x29babf… (alternative) `0x29babf...a10258` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | PriceFeedDouble | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | PriceFeedPool | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | PriceFeedWrapper | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | RewardsController | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | FixedLib | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | EXA | unmatched — not counted | — | listed in scope | no |
| ABDK Interest Rate Model v2 (Mar-24).pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| ABDK PeripheralContracts 1st audit (Sep-23).pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| ABDK PeripheralContracts 1st audit (Sep-23).pdf | DebtManager | ambiguous — not counted | 0x057e3e… (alternative) `0x057e3e...594d04` — liveness: live (current_address_book_code)<br>0xf880bb… (alternative) `0xf880bb...d09ac0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK PeripheralContracts 1st audit (Sep-23).pdf | EXA | unmatched — not counted | — | listed in scope | no |
| ABDK Protocol Update (Oct-25).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK Protocol Update (Oct-25).pdf | Market | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | MarketBase | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | MarketExtension | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | RewardsController | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | VerifiedMarket | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | VerifiedAuditor | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | Firewall | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | FlashLoanAdapter | unmatched — not counted | — | listed in scope section | no |
| ABDK Protocol Update (Oct-25).pdf | DebtRoller | unmatched — not counted | — | listed in scope section | no |
| ABDK Rewards Controller Update (Mar-25)pdf.pdf | Market | unmatched — not counted | — | listed in scope section | no |
| ABDK Rewards Controller Update (Mar-25)pdf.pdf | RewardController | unmatched — not counted | — | listed in scope section | no |
| Chainsafe 1st audit (May-22).pdf | PoolLib | unmatched — not counted | — | mentioned in line-by-line review | no |
| Chainsafe 1st audit (May-22).pdf | FixedLender | unmatched — not counted | — | mentioned in line-by-line review | no |
| Chainsafe 1st audit (May-22).pdf | FixedLenderETHRouter | unmatched — not counted | — | mentioned in line-by-line review | no |
| Chainsafe 1st audit (May-22).pdf | PoolAccounting | unmatched — not counted | — | mentioned in line-by-line review | no |
| Chainsafe 1st audit (May-22).pdf | TSUtils | unmatched — not counted | — | mentioned in line-by-line review | no |
| Chainsafe 1st audit (May-22).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Chainsafe 1st audit (May-22).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Chainsafe 1st audit (May-22).pdf | Previewer | unmatched — not counted | — | mentioned as out of scope but part of codebase | no |
| Chainsafe 2nd audit (Oct-22).pdf | Market | unmatched — not counted | — | listed in scope as one of 7 contracts including parent contracts and interfaces | no |
| Chainsafe 2nd audit (Oct-22).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Chainsafe 2nd audit (Oct-22).pdf | MarketETHRouter | ambiguous — not counted | 0x85c21f… (alternative) `0x85c21f...0aaf4f` — liveness: live (current_address_book_code)<br>0x29babf… (alternative) `0x29babf...a10258` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Chainsafe 2nd audit (Oct-22).pdf | FixedLib | unmatched — not counted | — | mentioned in findings as a library in scope | no |
| Chainsafe Interest Rate Model v2 (Mar-24).pdf | Market | unmatched — not counted | — | listed in scope as contracts/Market.sol | no |
| Chainsafe Interest Rate Model v2 Diff (Mar-24).pdf | Market | unmatched — not counted | — | listed in scope as contracts/Market.sol | no |
| Chainsafe Staking Contract (Aug-24).pdf | Market | unmatched — not counted | — | listed in scope and line-by-line review | no |
| Chainsafe Staking Contract (Aug-24).pdf | StakedEXA | unmatched — not counted | — | listed in scope and line-by-line review | no |
| Chainsafe Staking Contract (Aug-24).pdf | RewardsController | unmatched — not counted | — | listed in scope | no |
| Chainsafe Staking Contract (Aug-24).pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 1st audit (Nov-21).pdf | MockedChainlinkFeedRegistry | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | ETokenHarness | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | AuditorHarness | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | MockedToken | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | SomeToken | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | ExafinHarness | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | MockedOracle | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | ExaToken | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | FixedLender | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | IAuditor | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | IFixedLender | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | IEToken | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | IChainlinkFeedRegistry | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | EToken | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | MarketsLib | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | TSUtils | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | ExaLib | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | Poollib | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | DecimalMath | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | ExactlyOracle | unmatched — not counted | — | listed in scope | no |
| Coinspect 1st audit (Nov-21).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 2nd audit (May-22).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 2nd audit (May-22).pdf | FixedLenderETHRouter | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | FixedLender | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | IAuditor | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | IOracle | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | IInterestRateModel | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | PoolAccounting | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | PoolLib | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | TSUtils | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | ExactlyOracle | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 2nd audit (May-22).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 3rd audit (Oct-22).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 3rd audit (Oct-22).pdf | MarketETHRouter | ambiguous — not counted | 0x85c21f… (alternative) `0x85c21f...0aaf4f` — liveness: live (current_address_book_code)<br>0x29babf… (alternative) `0x29babf...a10258` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 3rd audit (Oct-22).pdf | Previewer | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 3rd audit (Oct-22).pdf | Market | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 3rd audit (Oct-22).pdf | FixedLib | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 3rd audit (Oct-22).pdf | import | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 3rd audit (Oct-22).pdf | ExactlyOracle | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect 3rd audit (Oct-22).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 4th audit (Oct-22).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 4th audit (Oct-22).pdf | PriceFeedWrapper | unmatched — not counted | — | mentioned in findings EXA-37 | no |
| Coinspect 4th audit (Oct-22).pdf | MockStETH | unmatched — not counted | — | mentioned in finding EXA-39 | no |
| Coinspect 5th audit (Mar-23).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect 5th audit (Mar-23).pdf | Market | unmatched — not counted | — | listed in scope as audited file | no |
| Coinspect RewardsController 1st audit (Jan-23).pdf | RewardsController | unmatched — not counted | — | listed in scope section with sha256 hash | no |
| Coinspect RewardsController 2nd audit (Feb-23).pdf | RewardsController | unmatched — not counted | — | Scope section states: 'The audit was done in two stages. Both phases dealt specifically with the file RewardsController.sol' | no |
| Coinspect RewardsController 3rd audit (Mar-23).pdf | RewardsController | unmatched — not counted | — | listed in scope as the contract being audited | no |
| Hashlock Installments Router and New Market Roles (Apr-24).pdf | Market | unmatched — not counted | — | listed in scope table | no |
| Hashlock Installments Router and New Market Roles (Apr-24).pdf | InstallmentsRouter | unmatched — not counted | — | listed in scope table | no |
| Hashlock Interest Rate Model v2 (Mar-24).pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0x406e73...4e35a4` — deployed 2025-11-13 22:08:51+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xf9b612...6380f2` — deployed 2025-11-13 22:09:47+03 — liveness: live (current_address_book_code)<br>InterestRateModel (alternative) `0xe963cd...7453b7` — deployed 2025-11-13 22:10:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Hashlock Interest Rate Model v2 (Mar-24).pdf | Market | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin EscrowedEXA (Oct-23).pdf | EscrowedExa | own contract | 0xbea586… (selected) `0xbea586...3fbc18` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp Exa App Plugin (Mar-25).pdf | ExaAccountFactory | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin (Mar-25).pdf | ExaPlugin | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin (Mar-25).pdf | IExaAccount | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin (Mar-25).pdf | IssuerChecker | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin (Mar-25).pdf | Refunder | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin Update (Oct-25).pdf | ExaPlugin | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin Update (Oct-25).pdf | ExaPluginExtension | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin Update (Oct-25).pdf | IExaAccount | unmatched — not counted | — | — | no |
| Quantstamp Exa App Plugin Update (Oct-25).pdf | ProposalManager | unmatched — not counted | — | — | no |
| Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf | IWebauthnOwnerPlugin | unmatched — not counted | — | — | no |
| Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf | OwnersLib | unmatched — not counted | — | — | no |
| Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf | WebauthnModularAccountFactory | unmatched — not counted | — | — | no |
| Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf | WebauthnOwnerPlugin | unmatched — not counted | — | — | no |
| Sherlock Staking Contract (Aug-24).pdf | StakedEXA | unmatched — not counted | — | mentioned in scope and findings | no |
| Sherlock Staking Contract (Aug-24).pdf | Market | unmatched — not counted | — | mentioned in scope and findings | no |
| Sherlock Staking Contract (Aug-24).pdf | Auditor | ambiguous — not counted | 0x0aeb0b… (alternative) `0x0aeb0b...4a597c` — liveness: live (current_address_book_code)<br>0x310a26… (alternative) `0x310a26...3efe01` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-06-10-quantstamp.pdf | IWebauthnOwnerPlugin | unmatched — not counted | — | — | no |
| 2024-06-10-quantstamp.pdf | OwnersLib | unmatched — not counted | — | — | no |
| 2024-06-10-quantstamp.pdf | WebauthnModularAccountFactory | unmatched — not counted | — | — | no |
| 2024-06-10-quantstamp.pdf | WebauthnOwnerPlugin | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x406e73...4e35a4` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe963cd...7453b7` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf9b612...6380f2` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 112 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 30
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 28 ambiguous, 118 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=25, low=2, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [7901] ABDK 1st audit (Oct-22).pdf
- [7902] ABDK 2nd audit (May-23).pdf
- [7903] ABDK EXA token cross-chain (Mar-26).pdf
- [7905] ABDK Installments Router and New Market Roles (Apr-24).pdf
- [7906] ABDK Interest Rate Model v2 (Feb-24).pdf
- [7907] ABDK Interest Rate Model v2 (Mar-24).pdf
- [7908] ABDK PeripheralContracts 1st audit (Sep-23).pdf
- [7909] ABDK Protocol Update (Oct-25).pdf
- [7910] ABDK Rewards Controller Update (Mar-25)pdf.pdf
- [7911] Chainsafe 1st audit (May-22).pdf
- [7912] Chainsafe 2nd audit (Oct-22).pdf
- [7913] Chainsafe Interest Rate Model v2 (Mar-24).pdf
- [7914] Chainsafe Interest Rate Model v2 Diff (Mar-24).pdf
- [7915] Chainsafe Staking Contract (Aug-24).pdf
- [7916] Coinspect 1st audit (Nov-21).pdf
- [7917] Coinspect 2nd audit (May-22).pdf
- [7918] Coinspect 3rd audit (Oct-22).pdf
- [7919] Coinspect 4th audit (Oct-22).pdf
- [7920] Coinspect 5th audit (Mar-23).pdf
- [7921] Coinspect RewardsController 1st audit (Jan-23).pdf
- [7922] Coinspect RewardsController 2nd audit (Feb-23).pdf
- [7923] Coinspect RewardsController 3rd audit (Mar-23).pdf
- [7924] Cryptecon_Economics_of_the_Exactly_Protocol(Sep-22).pdf
- [7925] Hashlock Installments Router and New Market Roles (Apr-24).pdf
- [7926] Hashlock Interest Rate Model v2 (Mar-24).pdf
- [7928] Quantstamp Exa App Plugin (Mar-25).pdf
- [7929] Quantstamp Exa App Plugin Update (Oct-25).pdf
- [7930] Quantstamp Exa App WebAuthn Plugin (Jul-24).pdf
- [7931] Sherlock Staking Contract (Aug-24).pdf
- [7942] 2024-06-10-quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
