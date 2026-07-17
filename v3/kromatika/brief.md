# Agentic Audit Brief: Kromatika

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kromatika (`kromatika`)
- Website: [https://app.kromatika.finance/limitorder#/pool](https://app.kromatika.finance/limitorder#/pool)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 49 unique implementations (51 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $948,705.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kromatika. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, ethereum, optimism, polygon. Structural roles: 3 core, 1 infra, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (1), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc20 (2), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd1fdf0144be118c30a53e1d08cc1e61d600e508e`, chain 1)
- UnnamedContract (`0x7314af7d05e054e96c44d7923e68d66475ffaab8`, chain 10)
- UnnamedContract (`0x03f490ae5b59e428e6692059d0dca1b87ed42ae1`, chain 137)
- UnnamedContract (`0x02c282f60fb2f3299458c2b85eb7e303b25fc6f0`, chain 42161)
- ClonableBeaconProxy (`0x55ff62567f09906a85183b866df84bf599a4bf70`, chain 42161)
- GnosisSafeProxy (`0xc5bf7a684a0dfca02a1e603b1d27af0af523a54f`, chain 1)
- Kromatika (`0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789`, chain 1)
- L2StandardERC20 (`0xf98dcd95217e15e05d8638da4c91125e59590b07`, chain 10)
- UChildERC20Proxy (`0x14af1f2f02dccb1e43402339099a05a5e363b83c`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 9 of 49 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 49
- Raw deployments: 51
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-244427 | `0xc5bf7a684a0dfca02a1e603b1d27af0af523a54f` | ⚠️ Unaudited |
| Kromatika | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244421 | `0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789` | ⚠️ Unaudited |
| KromatikaSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x7054d002db18a10c31683ec1a8515589c65bb034`; arbitrum `0xa3e49d899dd5ebcbc1ae6f2093b0de1db5dbe70a` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-244424 | `0xf98dcd95217e15e05d8638da4c91125e59590b07` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xe32e817b23b0ff21ac4e6be13e624d53e66e5a78`; arbitrum `0x50601357a041ab311ccf57d4bf2ed978b2b0cea2` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-244429 | `0x55ff62567f09906a85183b866df84bf599a4bf70` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-244428 | `0x14af1f2f02dccb1e43402339099a05a5e363b83c` | ⚠️ Unaudited |
| UniswapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xfe63860c1edd297256863a393a6a0ec512c4551d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244422 | `0xd1fdf0144be118c30a53e1d08cc1e61d600e508e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244423 | `0x7314af7d05e054e96c44d7923e68d66475ffaab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x026d63a16a5c1c28e49539780aef7fb47eb89ec4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244425 | `0x03f490ae5b59e428e6692059d0dca1b87ed42ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x044d57daa8f8a2d9e654eb57e392b942659cf92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05bf32991047018b820ab523a67bfa1ff3c4f877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9d3e0bbb8c7c0770b2a8c973c0efdc54619216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x113e3d66fc1dca711a96442b8dc92784df787573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d732cf8e4670b630350cfbe207f0f408dc0e153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ee02ed1fc6e4b032eaa75970f5ed3059831d403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x212b2e9559832bbcc42966290863bbfdbce4072b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2618bb612eb29fefb6f680fc89cd7df2d0e7c0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x396c3bbcefb7f02c32bba676f704e02a367f345e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bd1ba9a36b00abdd7112aa5045cc11e0309e96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x461d097b57a52481a58900dd9ba5be1238f98216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47f374c754ac822a63dda425792e99c741487289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c1bc6451d978b1564c0f76dfeed01146c2fca68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x836c40a54378863d1638ab1cf05be4589f0b0770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89c75638f6e51e06bf8e0b725a2e089a951cf93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b28ffb5d552fab33f25829bf7471a93995bd492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90c9c12a5dea6d823f45aee812eff88bbf43c5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91d44fa5595f7e54cc0aeaa3516455e606c6a436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x951e4a39939d9180c05c0601a4022fcbf28b684a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c75f64f2c7f145a927d773518a8fe55e7aaac17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa08f44348c09f83d8c7654915d87f08b590983c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1a527624990d9822e082ac0464bb1aba5346688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7bf78dbb550ba5536d02923622aab314ac6db2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa891e597daa2fef67e91cd0c1ce59a93f4afd68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc64a76e4fb73f2f8279d1a83c78fcfb7f7522826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1753789536d3b2c784753b81121852aa3634d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecbf2ef782cca926e112b44105a3dfda430211a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf86a271ae1086289d182a2ea53423518f5da0140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9a2703cf2103cd3ad26ddbbbabe4c0ca1bc16fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc2e6df85dffc4a0549e9db86246deea2d8ccd68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe5bc845ad6f96328c46a0a65c3d5db750280627` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244426 | `0x02c282f60fb2f3299458c2b85eb7e303b25fc6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37bb03a0c5464da8886d40f733e1d383d75ceccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79ba1cff3998d7ce3df452c3fd6fcf817971ea39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90ae03f8a0f9942ba02ab6c45cf7e0b905a2dad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2cd1207bcdd157e8466f9fe15dba8f678be58bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf337b98a20e765d02a8b7e809440877749f455df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/kromatika](https://skynet.certik.com/projects/kromatika) | CertiK | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [skynet.certik.com/projects/kromatika](https://skynet.certik.com/projects/kromatika?auditId=Kromatika+Finance) | CertiK | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3238] skynet.certik.com/projects/kromatika — no match: Extracted from 'Audited Files/SHA256' section listing FlashWallet.sol and GaslessForwarder.sol. Audit date from 'Last Audit was delivered on 2/26/2024'.
- [3239] skynet.certik.com/projects/kromatika — no match: Extracted from 'Audited Files/SHA256' section listing FlashWallet.sol and GaslessForwarder.sol. Only two files explicitly listed; 30 audited files mentioned but only these two named. Audit date from 'Last Audit was delivered on 2/26/2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/kromatika | FlashWallet | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/kromatika | GaslessForwarder | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/kromatika | FlashWallet | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| skynet.certik.com/projects/kromatika | GaslessForwarder | unmatched — not counted | — | Audited Files/SHA256 listing | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789` | Kromatika | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf98dcd95217e15e05d8638da4c91125e59590b07` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x55ff62567f09906a85183b866df84bf599a4bf70` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x14af1f2f02dccb1e43402339099a05a5e363b83c` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [3238] skynet.certik.com/projects/kromatika
- [3239] skynet.certik.com/projects/kromatika

Fork inheritance lineage and inherited audits are included when available.
