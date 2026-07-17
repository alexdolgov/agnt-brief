# Agentic Audit Brief: Cozy Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cozy Finance (`cozy-finance`)
- Website: [https://www.cozy.finance](https://www.cozy.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism
- Contract surface: 76 unique implementations (82 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,968,652.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Cozy Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x17aff89bf88b4eb56a1bcb256ff49fa1910e8410`, chain 10)
- UnnamedContract (`0x20433c2fb6cd1c9472147452183b32c3c746989e`, chain 10)
- UnnamedContract (`0x562460d8cfb40ada3ea91d8cf98eaf25d53d53d8`, chain 10)
- UnnamedContract (`0x7edfad1b566657a236c8422ba6997536bc647a29`, chain 10)
- UnnamedContract (`0x9612779e725f66f34efd94aa723bac28baf113e2`, chain 10)
- UnnamedContract (`0xa950195c07315eff3145839e7793580ca311ee9a`, chain 10)
- UnnamedContract (`0xbfc907920a9d9e11a356727f43b6c56ae2774add`, chain 10)
- UnnamedContract (`0xcb4c5190017cb106803d6d5225e21a06231b11ff`, chain 10)
- UnnamedContract (`0xcd3b7b1981377b58e2dbdb95a5b7c939662338e3`, chain 10)
- UnnamedContract (`0xcfe0dd2101d577b32748c200cbb0b4dc0c17a79d`, chain 10)
- UnnamedContract (`0xde763706332c71724309fe5f2e619153b38859a0`, chain 10)
- UnnamedContract (`0xdebe19b57e8b7eb6ea6ebea67b12153e011e6447`, chain 10)
- UnnamedContract (`0xf98a7667fabdc2a9182f6600ad87332bff078e5d`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 63 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 13 of 76 unique; 63 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 76
- Raw deployments: 82
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CErc20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41fd41bb803eed189eba4b8c8637f1875e4f951e`; ethereum `0xd78d95dd126df512a03b127c527c240798f5a7a0` | ⚠️ Unaudited |
| CEtherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0a7c9c42ee21f306824bf8c99778866998e3c313`; ethereum `0xe9407f01d8b7bbcbde96d5b5ef1a8a8af09267a3` | ⚠️ Unaudited |
| FixedPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2609334dc5d6efbaa18744100f46dd42a7ac8ed8` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x795cef98568515d7ed28aec8deaaa76b58b40a6c`; ethereum `0xb7db062caacdd0b74efeb15026f46b792ca5c75a`; ethereum `0xcf40ba94a17fb1ca1ccd496f95027cf39bd699ef` | ⚠️ Unaudited |
| StubOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x163852f3def47a2a9e505f7b3c5c4e78fce4e306`; ethereum `0x6f9fcdc00e31aae3746ee64bb7cbfb5b7b00b771` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ec8e03bf8b67b7d793f2de6eb59045277d02831`; ethereum `0x47cef4ab8f68da8156d705e0046a970b6b9cf3e8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2e4ac452c386877de921dcb30df75d6a5499b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20fd25c19964ace1971682d0ed4e2ad719dd014f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22893ab491bed3827bcbefcf5dcd68492227d56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f3e76428b1c307ae41bbd270726cee9a3cc7a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x305b915a063766316ce5354cdbdba94ea2269ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349f0a62ce40055b70557e1173287469d601a1e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b050b6f78c66a7dd9b336cd1ff10ff2b9e9922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399bf635e3bf3881efb22cd9d1e57fcd92a7e6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac58ed238d5a897464ebb79321bade496148b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b8b3977c432ed00045e7c582d1d71c3999707a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f05553e520cc5296f562ce921fcda200a2d5e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x415da7d703c336aaf82e7d9bd44f17eff9ec3d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425640a11f1a3f541eb985b89fc45da3a37d28df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f993ab56e71b4bf7f784ce5c4ead11ef08d7759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x527d9a8c6fc52480be66d683011c250331e34e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ab303ef6f06694580e3351f12b76361e2fa6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5533c7c2c90053da6c6c1b6c46bc1edd26496363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b254706a06519f3b33c0e6f390f6478e6917ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bfa75cc83957fe0a530d90312f2ed1cbe41874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63f4835359d3cf367493f228a3acedab149a7cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640c73692320ed0758a9838bb17298ee38920726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d158877f368da51629c2121f6fe6a447dea14a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5ba3b95f0379c7073f06f230277ea50ec3f8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4b2b57f7c7bf7e263f8be1b0c5cb85e9205bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1d575562421e52a00ce76fce30a3c93dd9b18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7872e2e759a0c8e9be54873bc74ed405bb62e1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b83a82681e895dd19075f4adff05339dfd97051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8514219fb7b2b2119b46c1d57ca5bc0bf5836e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f155e6fbbc5c237dbf0181705158b3323c7c04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe93dc67d4e079fde2d93eb52b778fbfa5e1740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8336fedd0af3f5342017b7317e502c77a091c1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x895879b2c1fbb6ccfcd101f2d3f3c76363664f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8990b793f530af73ad2ac721f9db9050c14f3098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89bef3251824feaa6b8c62f7ee05fa275b66633f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e6b294d9e342179c1556612e7a04048ae74e5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce3417da8f3b6fe78a6dd400ba308212bb7fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97d2510f057d261528dab86e0ef8d5881f8c3843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa012c4ef3e6b0262bbec59a805220c11cf08a55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3919739bf446e8b873b74f5a4e0fcfd4494567d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60ffbb5caaca4d26cb4326d82494163b1071fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e75a09fd3a2cb88396e10c5e95d247e93c55fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96e7108fc710108bfda9535e8e881face102895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97f85150693b5dccdb29650bcf78adc75c96dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb133b5bc0a58b2eaba219fc0708b1ddc2da13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdf2fc3af896e18f2a9dc58883d12484202b57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc03f84b66e6689db2705a47e3c25f0a8e034436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc203192b2b4d994b39c6f0325a99dba5f89cb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb99dfbe5368d7c2d671a9ae5c4164ff69d86d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e40ad4815097ba3d92b6a67ee747750c323e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6ef65ec40d943c3f675165b0b17e06862fe3d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeee96017550c817643bb0e85ebebc512e7a27ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d4cb876d2a2e5a4a5063a53004184f565f35c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf146c26136c1f80c9f0967d27bcb7e500d45681f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf68406d6cd41a5a3c5c4b9f0add41a3e789c138c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ec0f87036565d6b2b19780a54996c3b03e91ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa5f40f8391aea6e07313d24eb57a5b8822b4874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbdd85a61205436ec52548db4c574c5a34c26f85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382423 | `0x17aff89bf88b4eb56a1bcb256ff49fa1910e8410` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382424 | `0x20433c2fb6cd1c9472147452183b32c3c746989e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382425 | `0x562460d8cfb40ada3ea91d8cf98eaf25d53d53d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382426 | `0x7edfad1b566657a236c8422ba6997536bc647a29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382427 | `0x9612779e725f66f34efd94aa723bac28baf113e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382428 | `0xa950195c07315eff3145839e7793580ca311ee9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382429 | `0xbfc907920a9d9e11a356727f43b6c56ae2774add` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382430 | `0xcb4c5190017cb106803d6d5225e21a06231b11ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382431 | `0xcd3b7b1981377b58e2dbdb95a5b7c939662338e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382432 | `0xcfe0dd2101d577b32748c200cbb0b4dc0c17a79d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382433 | `0xde763706332c71724309fe5f2e619153b38859a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382434 | `0xdebe19b57e8b7eb6ea6ebea67b12153e011e6447` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382435 | `0xf98a7667fabdc2a9182f6600ad87332bff078e5d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface](https://www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406](https://www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406) | Code4rena | Contest | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6](https://www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6](https://www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6) | yAudit | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b](https://www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b) | Zellic | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2849] www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface — no match: The provided text is a Notion page listing audit reports (Zellic Mar 2024, yAudit May 2025, Cantina Aug & Oct 2025, Certora Dec 2025) but does not contain the actual audit report content. No contract names or scope details are present.
- [2850] www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406 — no match: The document is a Notion page with a link to a PDF report, but the PDF content is not provided. No contract names or scope information could be extracted from the available text.
- [2851] www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6 — no match: The provided text is a Notion page listing PDF reports but does not contain the actual audit report content. No contract names or scope information could be extracted.
- [2852] www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6 — no match: The document is a Notion page with limited content; no scope section or contract names are visible. The audit date is inferred from the title 'yAudit (May 2025)'.
- [2853] www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b — no match: The provided text is a Notion page title and a PDF filename, not the full audit report content. No contract names or scope details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=5
- Match method counts: n/a

Zero-match audit list:

- [2849] www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface
- [2850] www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406
- [2851] www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6
- [2852] www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6
- [2853] www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b

Fork inheritance lineage and inherited audits are included when available.
