# Agentic Audit Brief: Lagoon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 11 (3 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Lagoon (`lagoon`)
- Website: [https://lagoon.finance](https://lagoon.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, hyperliquid, linea, mantle, optimism, plasma, polygon, sei, sonic, unichain
- Contract surface: 166 unique implementations (167 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $130,184,735.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lagoon. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, hyperliquid, linea, mantle, optimism, plasma, polygon, sei, sonic, unichain. Structural roles: 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: infra (2)
- Contract kinds: abstract (1), contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8d6f5479b14348186fae9bc7e636e947c260f9b1`, chain 1)
- UnnamedContract (`0xa8e0684887b9475f8942df6a89beba5b25219632`, chain 10)
- UnnamedContract (`0x3f680ab9e51eeed9381de5275f4995611ff884d5`, chain 56)
- UnnamedContract (`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51`, chain 130)
- UnnamedContract (`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51`, chain 146)
- UnnamedContract (`0xda1d1de87c4d90a07a6462ccd9be651a0d074362`, chain 1329)
- UnnamedContract (`0xc094c224ce0406bc338e00837b96ad2e265f7287`, chain 5000)
- UnnamedContract (`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51`, chain 8453)
- UnnamedContract (`0xf838e8bd649fc6fbc48d44e9d87273c0519c45c9`, chain 9745)
- UnnamedContract (`0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4`, chain 42161)
- UnnamedContract (`0xb1ee4f77a1691696a737ab9852e389cf4cb1f1f5`, chain 42161)
- UnnamedContract (`0x8d6f5479b14348186fae9bc7e636e947c260f9b1`, chain 59144)
- OptinProxyFactory (`0x0c0e287f6e4de685f4b44a5282a3ad4a29d05a91`, chain 137)
- TransparentUpgradeableProxy (`0x90beb507a1ba7d64633540cbce615b574224cd84`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 151 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 14 of 166 unique; 152 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 153
- Unique implementations: 166
- Raw deployments: 167
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 7 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nomic Foundation | Tier 2 | 1 | 7.7% | 2026-05 |
| Trail of Bits | Tier 1 | 1 | 7.7% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OptinProxyFactory | unknown | project_anchor | own_supporting | 1 | polygon | unit-244534 | `0x0c0e287f6e4de685f4b44a5282a3ad4a29d05a91` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EquilibriaCrutch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb107943bbf7c6874af38ebf49c15b383b077ad62` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x16fd09034c04d31f7776159393e3a577fa7c18e8` | ⚠️ Unaudited |
| LagoonVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03d1ec0d01b659b89a87eabb56e4af5cb6e14bfc` | ⚠️ Unaudited |
| MockLogicRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x2f02db0a974841f710362e96742cacc2c786dbfd` | ⚠️ Unaudited |
| ProtocolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13664b3131031e7ff7ca19fb74344da050fe49b9` | ⚠️ Unaudited |
| PTOraclePriceAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70efd899dd4934e25b6042d0a06412e4ea001d05` | ⚠️ Unaudited |
| ShowcaseBug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23fbda54849e8904154c8f8436a59b95b1d397cb` | ⚠️ Unaudited |
| Silo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x572f734f7c4673e8864ab79d71f22a9805e4839b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-244535 | `0x90beb507a1ba7d64633540cbce615b574224cd84` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065ef71bcdc43adb76bd0585d02ffe7c9e0d8950` | ⚠️ Unaudited |
| Vault_v0_5_0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23fbda54849e8904154c8f8436a59b95b1d397cb` | ⚠️ Unaudited |
| Vault0_2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x652716fad571f04d26a3c8ffd9e593f17123ab20`; arbitrum `0xd51a0523699c6f415ca6f9ebacb7e9d6c5471404` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (153)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ed467acd4ffd13023046968b0859781cb90d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097c94fbf0afa1b994af7ea13ecb5ab609602976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16648324d68b86e341051767e749f9f074714228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b6969152a186bafc524048f36a160fac096d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a3d13ff132738a62ee4ab6db0c6753d6d13d03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652716fad571f04d26a3c8ffd9e593f17123ab20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66dcb62da5430d800a1c807822c25be17138fda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5ea384e394083149ce39db29d5787a658aa98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6da4d1859ba1d02d095d2246142cdad52233e27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707d622cda4b5459e7dcee8ba8e429f154f96a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71652d4898de9a7dd35e472a5fe4577ec69d82f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7efa7a56fb8409a964fedae1a6302c9f6093e7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8092ca384d44260ea4feaf7457b629b8dc6f88f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244520 | `0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f401baf8aee33c39afdfc67493cea212120a5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab4ac28d10a4bc279ad073b1d74bfa0e385c010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaba1a2e157dae248f8630ca550bd826725ff745c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09f761cb13baca8ec087ac476647361b6314f98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60d5aab5ce7696da071d5a9787b3eaeed6d165f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb7568d355172ce2e967d5d048746b736bca8f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc29b6c682c447ddc3143b3d8ba781163fc8a6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d5f01a6491b97b94f3670aed4becb897293cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7312936185e126a5336ad823163f1000fc0766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe296195cbd7affb6477c527dcc626a278c389560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee6a60be216058afd7a0643795b4f1e197c8b150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42bde02ebd0861a9c27c9ec4b193fdffe01e5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c2861e00247433145c61ed8f155d1957640babf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x224243c1e5bbd64b9aa8322f139cf5e70a8821ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ab55b30e3c382451fcca104521a8b5f45beeaf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94c7f2ae08899bb71d2056a12c8a2dfa7a8b045b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-244522 | `0xa8e0684887b9475f8942df6a89beba5b25219632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb7031df783ee5fce55acde0c4b850a0ab55d496a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb8245e23eb213994f057cfb2fd7d60a6f4424485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb2dcc67a94946400a605f2a97933471be8bc538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd6cbdbace2de57b74c6a574362b42fea169680d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bc4e7715281daeaded5b281e8560ab19d133447` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-244530 | `0x3f680ab9e51eeed9381de5275f4995611ff884d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70efd899dd4934e25b6042d0a06412e4ea001d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7175e7e5c246e2e5c8c54ede2ee0180e39fca879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c275714fb882988fbbffdc39a162e0cc9fea64c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd039ee9e7d6b3cfea29250a7d559a4ddb21b25e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-244523 | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd039ee9e7d6b3cfea29250a7d559a4ddb21b25e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50f30e712d535b796c8543012d0c05218b89c7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x599960053d24403dafd50791ff2887de766e4dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dbb58189c29dddea1feaebc3e546ba6cfb11ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x744f9ca26cd9f6be5cf79a00b1ad457145d9f691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9886dd0a65baaf22f1a77b4fb313230940c793e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd273cc6abd68c730850b72d623251ba5d4997462` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-244525 | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x23fbda54849e8904154c8f8436a59b95b1d397cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3588602acfc833c73f1ae7a2c6a2294e438e3ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x415692bca4dd29bad97f61197370bd468f242201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4fe90f5efde4c21f0ddc5cb71acbd77073101de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x70efd899dd4934e25b6042d0a06412e4ea001d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9c275714fb882988fbbffdc39a162e0cc9fea64c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb1ee4f77a1691696a737ab9852e389cf4cb1f1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xba1143489786399b2609ec37d9310f070435f106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc1d5f01a6491b97b94f3670aed4becb897293cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd70937aa2b73a8a2100932c4f5a8d32c9be8b80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf42bde02ebd0861a9c27c9ec4b193fdffe01e5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x357f1c9754dffced7c2efe086d2114909538047d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3d84fe5a86c427a68d7c92a172bb3594887ff6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x45a09560f8cdec54b514d704c7fe842c390e19ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x46aed63e64c23bf035882d322e8b52b4afe7783e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6380e6aeae39020b38de49b0700f832457acf26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x755e6854b4482d181b9f7385ea546656d3fca229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xba97def2e97e5d1c80be6c66eee2f17caaf0274b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-244524 | `0xda1d1de87c4d90a07a6462ccd9be651a0d074362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xdd954be514726ed0c7156fe4ae06c539f7ae6c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1e7ffa532e2b251867c12ba88261a96995789865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x47a144e67834408716cb40fa87fc886d63362ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57d969b556c6aebb3ac8f54c98cf3a3f921d5659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa7260cee56b679ec05a736a7b603b8da8525dd69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244529 | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe128156516b08756276416cc80cba781962b8020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244532 | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3b21c2f0afebfa7b48d102e64d18f62c64aa767d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4a6d083df77fd09e1e0c80b2c600e339f6727a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7ec32a6c1a1475746111b31be8172a6c7202c82a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9155d0d2eaed4f2e48495d50dc2f4f5f9337acce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9ed8b781dd9c1b5b3ded599d23cca064b30c0308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa61faeb94249f08e05e7ed7502d6ec86297bc9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xaccddeae680cf2afc4309749fdbf6054dbdece96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcd744808c268c2bf674b8f05490e3ea1942eff9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xddb5afe4279f28ab3a1a15965da3a48158539d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe0f6b82a1fa33c894ee6445f588f5f8d06c60f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xef535680025466fb8e619ab8f3b1daae70d0c8e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-244533 | `0xf838e8bd649fc6fbc48d44e9d87273c0519c45c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfba2197832c566832c9602d155bc41cdf4f3d25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfd9fa4986c6cb8cbce6b632dd7c587ebccaedb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfef885ff87254ffdcd8ce487f5090897a4eac837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bc4e7715281daeaded5b281e8560ab19d133447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7175e7e5c246e2e5c8c54ede2ee0180e39fca879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cf8cf276450bd568187fdc0b0959d30ec599853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99cd0b8b32b15922f0754fddc21323b5278c5261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244526 | `0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab4ac28d10a4bc279ad073b1d74bfa0e385c010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaba1a2e157dae248f8630ca550bd826725ff745c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244527 | `0xb1ee4f77a1691696a737ab9852e389cf4cb1f1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb2de8e36eb36dbc20d71c503711763a4be3b1b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2344a58e450ad30def780a6641c0a90f50b0dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd039ee9e7d6b3cfea29250a7d559a4ddb21b25e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-244528 | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-244531 | `0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc094c224ce0406bc338e00837b96ad2e265f7287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 141
- Live contracts: 0
- Unknown liveness contracts: 141
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=141

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x07ed467acd4ffd13023046968b0859781cb90d9b` | non_address_book | unknown | unknown | unverified | n/a | `0x7e73ece1777e3e5eaae26d95ab2feb6628306abc` |
| unverified unclassified | UnnamedContract<br>`0x097c94fbf0afa1b994af7ea13ecb5ab609602976` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x16648324d68b86e341051767e749f9f074714228` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x45b6969152a186bafc524048f36a160fac096d50` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x4a3d13ff132738a62ee4ab6db0c6753d6d13d03f` | non_address_book | unknown | unknown | unverified | n/a | `0x7e73ece1777e3e5eaae26d95ab2feb6628306abc` |
| unverified unclassified | UnnamedContract<br>`0x652716fad571f04d26a3c8ffd9e593f17123ab20` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x66dcb62da5430d800a1c807822c25be17138fda8` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x6a5ea384e394083149ce39db29d5787a658aa98a` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x6da4d1859ba1d02d095d2246142cdad52233e27c` | non_address_book | unknown | unknown | unverified | n/a | `0x7e73ece1777e3e5eaae26d95ab2feb6628306abc` |
| unverified unclassified | UnnamedContract<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x707d622cda4b5459e7dcee8ba8e429f154f96a27` | non_address_book | unknown | unknown | unverified | n/a | `0x7e73ece1777e3e5eaae26d95ab2feb6628306abc` |
| unverified unclassified | UnnamedContract<br>`0x71652d4898de9a7dd35e472a5fe4577ec69d82f2` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x7efa7a56fb8409a964fedae1a6302c9f6093e7d8` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x8092ca384d44260ea4feaf7457b629b8dc6f88f0` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x9f401baf8aee33c39afdfc67493cea212120a5aa` | non_address_book | unknown | unknown | unverified | n/a | `0x7e73ece1777e3e5eaae26d95ab2feb6628306abc` |
| unverified unclassified | UnnamedContract<br>`0xab4ac28d10a4bc279ad073b1d74bfa0e385c010c` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xaba1a2e157dae248f8630ca550bd826725ff745c` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xb09f761cb13baca8ec087ac476647361b6314f98` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xb60d5aab5ce7696da071d5a9787b3eaeed6d165f` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xbb7568d355172ce2e967d5d048746b736bca8f31` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xbc29b6c682c447ddc3143b3d8ba781163fc8a6f2` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xc1d5f01a6491b97b94f3670aed4becb897293cf8` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xdc7312936185e126a5336ad823163f1000fc0766` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xe296195cbd7affb6477c527dcc626a278c389560` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xee6a60be216058afd7a0643795b4f1e197c8b150` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xf42bde02ebd0861a9c27c9ec4b193fdffe01e5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x1c2861e00247433145c61ed8f155d1957640babf` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0x224243c1e5bbd64b9aa8322f139cf5e70a8821ad` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0x7ab55b30e3c382451fcca104521a8b5f45beeaf9` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0x94c7f2ae08899bb71d2056a12c8a2dfa7a8b045b` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0xb7031df783ee5fce55acde0c4b850a0ab55d496a` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0xb8245e23eb213994f057cfb2fd7d60a6f4424485` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0xbb2dcc67a94946400a605f2a97933471be8bc538` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0xd6cbdbace2de57b74c6a574362b42fea169680d8` | non_address_book | unknown | unknown | unverified | n/a | `0x94f6ee1514bb5e1061c74fecb92e19181b59a7ec` |
| unverified unclassified | UnnamedContract<br>`0x3bc4e7715281daeaded5b281e8560ab19d133447` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x70efd899dd4934e25b6042d0a06412e4ea001d05` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7175e7e5c246e2e5c8c54ede2ee0180e39fca879` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x9c275714fb882988fbbffdc39a162e0cc9fea64c` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xd039ee9e7d6b3cfea29250a7d559a4ddb21b25e2` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xd039ee9e7d6b3cfea29250a7d559a4ddb21b25e2` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x50f30e712d535b796c8543012d0c05218b89c7d5` | non_address_book | unknown | unknown | unverified | n/a | `0xa7d504a6018b7e111d0f3a674ec7880c1394ec36` |
| unverified unclassified | UnnamedContract<br>`0x599960053d24403dafd50791ff2887de766e4dfc` | non_address_book | unknown | unknown | unverified | n/a | `0xa7d504a6018b7e111d0f3a674ec7880c1394ec36` |
| unverified unclassified | UnnamedContract<br>`0x6dbb58189c29dddea1feaebc3e546ba6cfb11ab7` | non_address_book | unknown | unknown | unverified | n/a | `0xa7d504a6018b7e111d0f3a674ec7880c1394ec36` |
| unverified unclassified | UnnamedContract<br>`0x744f9ca26cd9f6be5cf79a00b1ad457145d9f691` | non_address_book | unknown | unknown | unverified | n/a | `0xa7d504a6018b7e111d0f3a674ec7880c1394ec36` |
| unverified unclassified | UnnamedContract<br>`0x9886dd0a65baaf22f1a77b4fb313230940c793e7` | non_address_book | unknown | unknown | unverified | n/a | `0xa7d504a6018b7e111d0f3a674ec7880c1394ec36` |
| unverified unclassified | UnnamedContract<br>`0xd273cc6abd68c730850b72d623251ba5d4997462` | non_address_book | unknown | unknown | unverified | n/a | `0xa7d504a6018b7e111d0f3a674ec7880c1394ec36` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x23fbda54849e8904154c8f8436a59b95b1d397cb` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x3588602acfc833c73f1ae7a2c6a2294e438e3ccc` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x415692bca4dd29bad97f61197370bd468f242201` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x4fe90f5efde4c21f0ddc5cb71acbd77073101de0` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x70efd899dd4934e25b6042d0a06412e4ea001d05` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x9c275714fb882988fbbffdc39a162e0cc9fea64c` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xb1ee4f77a1691696a737ab9852e389cf4cb1f1f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xba1143489786399b2609ec37d9310f070435f106` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc1d5f01a6491b97b94f3670aed4becb897293cf8` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xd70937aa2b73a8a2100932c4f5a8d32c9be8b80f` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xf42bde02ebd0861a9c27c9ec4b193fdffe01e5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x357f1c9754dffced7c2efe086d2114909538047d` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0x3d84fe5a86c427a68d7c92a172bb3594887ff6a1` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0x45a09560f8cdec54b514d704c7fe842c390e19ec` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0x46aed63e64c23bf035882d322e8b52b4afe7783e` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0x6380e6aeae39020b38de49b0700f832457acf26b` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0x755e6854b4482d181b9f7385ea546656d3fca229` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0xba97def2e97e5d1c80be6c66eee2f17caaf0274b` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0xdd954be514726ed0c7156fe4ae06c539f7ae6c1c` | non_address_book | unknown | unknown | unverified | n/a | `0xaf403d9ff3d74821eb9141c9f80d4db554811192` |
| unverified unclassified | UnnamedContract<br>`0x1e7ffa532e2b251867c12ba88261a96995789865` | non_address_book | unknown | unknown | unverified | n/a | `0xeff84c2424610988d775d7e370285b75b96fd578` |
| unverified unclassified | UnnamedContract<br>`0x47a144e67834408716cb40fa87fc886d63362ddc` | non_address_book | unknown | unknown | unverified | n/a | `0xeff84c2424610988d775d7e370285b75b96fd578` |
| unverified unclassified | UnnamedContract<br>`0x57d969b556c6aebb3ac8f54c98cf3a3f921d5659` | non_address_book | unknown | unknown | unverified | n/a | `0xeff84c2424610988d775d7e370285b75b96fd578` |
| unverified unclassified | UnnamedContract<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xa7260cee56b679ec05a736a7b603b8da8525dd69` | non_address_book | unknown | unknown | unverified | n/a | `0xeff84c2424610988d775d7e370285b75b96fd578` |
| unverified unclassified | UnnamedContract<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xe128156516b08756276416cc80cba781962b8020` | non_address_book | unknown | unknown | unverified | n/a | `0xeff84c2424610988d775d7e370285b75b96fd578` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x9de724b0efee0fba07fe21a16b9bf9bbb5204fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x3b21c2f0afebfa7b48d102e64d18f62c64aa767d` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0x4a6d083df77fd09e1e0c80b2c600e339f6727a13` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0x7ec32a6c1a1475746111b31be8172a6c7202c82a` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0x9155d0d2eaed4f2e48495d50dc2f4f5f9337acce` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0x9ed8b781dd9c1b5b3ded599d23cca064b30c0308` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xa61faeb94249f08e05e7ed7502d6ec86297bc9e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xaccddeae680cf2afc4309749fdbf6054dbdece96` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xcd744808c268c2bf674b8f05490e3ea1942eff9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xddb5afe4279f28ab3a1a15965da3a48158539d87` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xe0f6b82a1fa33c894ee6445f588f5f8d06c60f16` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xef535680025466fb8e619ab8f3b1daae70d0c8e1` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xfba2197832c566832c9602d155bc41cdf4f3d25e` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xfd9fa4986c6cb8cbce6b632dd7c587ebccaedb7a` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0xfef885ff87254ffdcd8ce487f5090897a4eac837` | non_address_book | unknown | unknown | unverified | n/a | `0xa628b6f32dbf8ba66dd131196a338087e54a154e` |
| unverified unclassified | UnnamedContract<br>`0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x3bc4e7715281daeaded5b281e8560ab19d133447` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7175e7e5c246e2e5c8c54ede2ee0180e39fca879` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7cf8cf276450bd568187fdc0b0959d30ec599853` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0x8d6f5479b14348186fae9bc7e636e947c260f9b1` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x8def66acf9c53e99611a9ea167d0d5019c3826b3` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x99cd0b8b32b15922f0754fddc21323b5278c5261` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xab4ac28d10a4bc279ad073b1d74bfa0e385c010c` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xaba1a2e157dae248f8630ca550bd826725ff745c` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xbb2de8e36eb36dbc20d71c503711763a4be3b1b2` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc2344a58e450ad30def780a6641c0a90f50b0dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xd039ee9e7d6b3cfea29250a7d559a4ddb21b25e2` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xd51a0523699c6f415ca6f9ebacb7e9d6c5471404` | non_address_book | unknown | unknown | unverified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x7955acdbce77cb2bc6f6a8ba75bb234b4fbcf7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xe50554ec802375c9c3f9c087a8a7bb8c26d3dedf` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x245d1c095a0ffa6f1af0f7df81818defc9cfc69d` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0x6fc0f2320483fa03fbfdf626ddbae2cc4b112b51` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc094c224ce0406bc338e00837b96ad2e265f7287` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |
| unverified unclassified | UnnamedContract<br>`0xc81dd51239119db80d5a6e1b7347f3c3bc8674d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3570556e41920579650d3b5789804cd75c7c5998` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM_0304_HopperLabs.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/aUGQBCCKrkRj2a2JqcU7/NM_0304_HopperLabs.pdf) | HopperLabs | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [lagoon-review.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/inufZt8d5BRJq6tJWoED/lagoon-review.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [NM_0432_Lagoon.pdf](https://content.gitbook.com/content/5vcVbvvRrtwZ0uaFrufF/blobs/6mNZOJq6XeTjGMcMnM5N/NM_0432_Lagoon.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [NM_0499_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2Fcjt5DaNb1FBoKp1EL22z%2FNM_0499_Lagoon.pdf) | Nomic Foundation | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM_0516_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F6ikCSitYVQQdDDcWfVdp%2FNM_0516_Lagoon.pdf) | Nomic Foundation | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM_0534_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F8HkE2EU7hepf08gYGPsx%2FNM_0534_Lagoon.pdf) | Nomic Foundation | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [NM_0581-FINAL_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F9pXJSEmutn6clKhvly6m%2FNM_0581-FINAL_Lagoon.pdf) | Nomic Foundation | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [NM_0534_Bug_Disclosure.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FtDP4IRcaDp90PdfyOytL%2FNM_0534_Bug_Disclosure.pdf) | Nomic Foundation | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [ToB-v0.5.0.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2FILDRIc5ZH9HblSRMBoLw%2FToB-v0.5.0.pdf) | Trail of Bits | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 11 | high |
| [NM_0822_Lagoon.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2Frk5VgBBMxx0fkaXD65tQ%2FNM_0822_Lagoon.pdf) | Nomic Foundation | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 27 | high |
| [ToB-v0.6.0.pdf](https://2098527692-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5vcVbvvRrtwZ0uaFrufF%2Fuploads%2F3Ig5AUs4tRCYQjsMIas1%2FToB-v0.6.0.pdf) | Trail of Bits | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17475] NM_0304_HopperLabs.pdf — no match: All contracts listed in the 'Audited Files' table on page 3 are in scope. The audit date is the final report date: November 7, 2024.
- [17476] lagoon-review.pdf — no match: Scope section explicitly lists all contracts in scope under 'Methods Manual review'.
- [17477] NM_0432_Lagoon.pdf — no match: Three contracts in scope from Audited Files section. Audit date from Final Report date on page 2.
- [17478] NM_0499_Lagoon.pdf — no match: Audit scope explicitly includes BeaconProxyFactory.sol and Vault.sol (v0.3.0) as per the Audited Files section. The audit date is April 3, 2025 from the cover page.
- [17479] NM_0516_Lagoon.pdf — no match: Only one contract (Vault.sol) is in scope, specifically the claimSharesOnBehalf function added in PR #198.
- [17480] NM_0534_Lagoon.pdf — no match: All 15 files listed in the 'Audited Files' table are in scope. The audit date is the final report date (May 13, 2025).
- [17481] NM_0581-FINAL_Lagoon.pdf — matched: All four contracts are explicitly listed in the 'Audited Files' table and described in the System Overview.
- [17482] NM_0534_Bug_Disclosure.pdf — no match: Only one contract (FeeManager) is explicitly mentioned in the finding. No scope section is present; the report is an appendix to a larger audit.
- [17483] ToB-v0.5.0.pdf — matched: Extracted contract names from scope section, coverage section, and detailed findings. Audit date from cover page.
- [17484] NM_0822_Lagoon.pdf — matched: All 28 contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is the final report date: May 25, 2026.
- [17485] ToB-v0.6.0.pdf — no match: Extracted contract names from scope section (Project Targets) and findings. The report focuses on version 0.6.0 of the Kiln Lagoon vault protocol. Libraries AccessableLib and ERC7540Lib are explicitly targeted in findings. FeeLib, GuardrailsManager, and VaultInit are mentioned in coverage but not in scope table; included as they are part of the audited codebase.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM_0304_HopperLabs.pdf | Events | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | FeeRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Roles | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Whitelistable | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Silo | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | FeeManager | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | ERC7540 | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Vault | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Enums | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | Struct | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | IERC7540 | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | IWETH9 | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | IERC7540Deposit | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | IERC7540Redeem | unmatched — not counted | — | listed in audited files table | no |
| NM_0304_HopperLabs.pdf | IERC7575 | unmatched — not counted | — | listed in audited files table | no |
| lagoon-review.pdf | Events | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | FeeRegistry | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | ERC7540 | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | Silo | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | Enums | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | IERC7540 | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | IERC7540Deposit | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | IERC7540Redeem | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | IERC7575 | unmatched — not counted | — | listed in scope | no |
| lagoon-review.pdf | IWETH9 | unmatched — not counted | — | listed in scope | no |
| NM_0432_Lagoon.pdf | FeeManager | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0432_Lagoon.pdf | ERC7540 | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0432_Lagoon.pdf | Vault | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0499_Lagoon.pdf | BeaconProxyFactory | unmatched — not counted | — | Listed in Audited Files table | no |
| NM_0499_Lagoon.pdf | Vault | unmatched — not counted | — | Listed in Audited Files table | no |
| NM_0516_Lagoon.pdf | Vault | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Roles | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Whitelistable | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Silo | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | FeeManager | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | ERC7540 | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Vault | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Errors | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Events | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Enums | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | Struct | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | IERC7540 | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | IWETH9 | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | IERC7540Deposit | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | IERC7540Redeem | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0534_Lagoon.pdf | IERC7575 | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0581-FINAL_Lagoon.pdf | OptinProxyFactory | own proxy deployment | OptinProxyFactory (proxy) (selected) `0x0c0e287f6e4de685f4b44a5282a3ad4a29d05a91` — deployed 2025-09-27 00:41:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM_0581-FINAL_Lagoon.pdf | OptinProxy | unmatched — not counted | — | listed in Audited Files table and Section 4.2 | no |
| NM_0581-FINAL_Lagoon.pdf | DelayProxyAdmin | unmatched — not counted | — | listed in Audited Files table and Section 4.3 | no |
| NM_0581-FINAL_Lagoon.pdf | LogicRegistry | unmatched — not counted | — | listed in Audited Files table and Section 4.4 | no |
| NM_0534_Bug_Disclosure.pdf | FeeManager | unmatched — not counted | — | listed in finding description | no |
| ToB-v0.5.0.pdf | ERC7540 | unmatched — not counted | — | listed in scope and detailed findings | no |
| ToB-v0.5.0.pdf | Vault | unmatched — not counted | — | listed in scope and detailed findings | no |
| ToB-v0.5.0.pdf | FeeManager | unmatched — not counted | — | mentioned in coverage section | no |
| ToB-v0.5.0.pdf | OptinProxy | unmatched — not counted | — | mentioned in coverage section | no |
| ToB-v0.5.0.pdf | DelayProxyAdmin | unmatched — not counted | — | listed in scope and detailed findings | no |
| ToB-v0.5.0.pdf | LogicRegistry | unmatched — not counted | — | mentioned in coverage section | no |
| ToB-v0.5.0.pdf | OptinProxyFactory | own proxy deployment | OptinProxyFactory (proxy) (selected) `0x0c0e287f6e4de685f4b44a5282a3ad4a29d05a91` — deployed 2025-09-27 00:41:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB-v0.5.0.pdf | Roles | unmatched — not counted | — | mentioned in coverage section | no |
| ToB-v0.5.0.pdf | Whitelistable | unmatched — not counted | — | mentioned in coverage section | no |
| ToB-v0.5.0.pdf | Silo | unmatched — not counted | — | mentioned in coverage section | no |
| ToB-v0.5.0.pdf | IERC7540Redeem | unmatched — not counted | — | mentioned in code quality recommendations | no |
| ToB-v0.5.0.pdf | IERC7540 | unmatched — not counted | — | mentioned in code quality recommendations | no |
| NM_0822_Lagoon.pdf | Roles | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | GuardRailsManager | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Accessable | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | FeeManager | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | ERC7540 | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Silo | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | GuardrailsLib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | VaultLib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | ERC20Lib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | ERC7540Lib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | RolesLib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | AccessableLib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | PausableLib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | FeeLib | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | IERC7540Redeem | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | IWETH9 | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | IERC7540 | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | IERC7575 | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | IERC7540Deposit | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | SanctionsList | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | VaultInit | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Vault-v0.6.0 | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Events | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | VaultStorage | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Enums | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | Struct | unmatched — not counted | — | listed in audited files table | no |
| NM_0822_Lagoon.pdf | OptinProxyFactory | own proxy deployment | OptinProxyFactory (proxy) (selected) `0x0c0e287f6e4de685f4b44a5282a3ad4a29d05a91` — deployed 2025-09-27 00:41:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB-v0.6.0.pdf | AccessableLib | unmatched — not counted | — | listed in scope and findings | no |
| ToB-v0.6.0.pdf | ERC7540Lib | unmatched — not counted | — | listed in scope and findings | no |
| ToB-v0.6.0.pdf | FeeLib | unmatched — not counted | — | referenced in findings as FeeLib.computeFee | no |
| ToB-v0.6.0.pdf | GuardrailsManager | unmatched — not counted | — | mentioned in project coverage section | no |
| ToB-v0.6.0.pdf | VaultInit | unmatched — not counted | — | mentioned in project coverage section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 153 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 99 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [17475] NM_0304_HopperLabs.pdf
- [17476] lagoon-review.pdf
- [17477] NM_0432_Lagoon.pdf
- [17478] NM_0499_Lagoon.pdf
- [17479] NM_0516_Lagoon.pdf
- [17480] NM_0534_Lagoon.pdf
- [17482] NM_0534_Bug_Disclosure.pdf
- [17485] ToB-v0.6.0.pdf

Fork inheritance lineage and inherited audits are included when available.
