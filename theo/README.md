# Agentic Audit Brief: Theo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 6 (2 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Theo (`theo`)
- Website: [https://theo.xyz/](https://theo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, linea, mantle
- Contract surface: 123 unique implementations (128 raw deployments)
- Coverage basis: 2/18 confirmed own live verified implementations (11.1%); conservative 11.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $95,982,429.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Theo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid, mantle. Structural roles: 15 core, 2 supporting, 1 infra. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (15), supporting (2), infra (1)
- Contract kinds: contract (17), abstract (1)
- Detected standards: ownable (12), erc20 (9), pausable (4), accesscontrol (3), erc165 (3), erc1967proxy (3), erc20permit (3)
- Frameworks: openzeppelin (13), layerzero (12), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- sthUSD (`0xa808bc9775cb41c52c7842f8b50427fe7a770326`, chain 1)
- sthUSD OFT (`0xd1db209087516883ec705cfeb99e80bb6032d540`, chain 56)
- sthUSD OFT (`0xd1db209087516883ec705cfeb99e80bb6032d540`, chain 5000)
- sthUSD OFT (`0xd1db209087516883ec705cfeb99e80bb6032d540`, chain 42161)
- sthUSD OFT Adapter (`0xd1db209087516883ec705cfeb99e80bb6032d540`, chain 1)
- thBILL (`0x5fa487bca6158c64046b2813623e20755091da0b`, chain 1)
- thBILL OFT (`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`, chain 8453)
- thBILL OFT (`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`, chain 42161)
- ThBillOFT (`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`, chain 999)
- ThBillOFTAdapter (`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`, chain 1)
- thUSD (`0xa3fe5c7596024e6811e14f029937d5bd8ae485b3`, chain 1)
- thUSD Minter (`0x2d99ac801dc0edadd53f5688fef2317932e8696e`, chain 1)
- thUSD OFT (`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`, chain 56)
- thUSD OFT (`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`, chain 5000)
- ThUSDOFT (`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`, chain 42161)
- ThUSDOFTAdapter (`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`, chain 1)
- TimelockController (`0x46a9ca32d5c7c866336e75765b099b669fef8bc2`, chain 1)
- TTokenRouterV2 (`0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/18 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 105 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 18 of 123 unique; 105 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/46
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 123
- Raw deployments: 128
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 5 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 2 | 4.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| sthUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266759 | `0xa808bc9775cb41c52c7842f8b50427fe7a770326` | ✅ Audited |
| thUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266758 | `0xa3fe5c7596024e6811e14f029937d5bd8ae485b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Delta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060d8503a9a552a4600abbc5e741b8bed06d0e9c` | ⚠️ Unaudited |
| DeltaManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14542032f6a696231b3cf868e1811898c6f3e859` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x97f93f1785adc8a6b98efed30bbb7255de6aa8d3`; ethereum `0xa6ab7ba3ea0c0016de31826682789371bc6cb25f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e31aa691cfeb47276727793ccb29984625301dc`; ethereum `0xa2ef0bf2d078c1deb7b04d454c87a7a1d2d3fde8` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| IToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325478a069b0dbbdfbee909fa3741f84259ba519` | ⚠️ Unaudited |
| KYC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ade913407b5da446c7d1e1e6a7421b7c8ce028` | ⚠️ Unaudited |
| KYCUltra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b7bf7cf11f879a97f2790baaad698a50fa11f2` | ⚠️ Unaudited |
| MintCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a095d7ecba36d19c4d9a8389d9d7da0ee85f1eb` | ⚠️ Unaudited |
| PredepositClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10456b3b0fb9f5f8141d38edf180ad9342996650` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x94877640dd9e6f1e3cb56bf7b5665b7152601295` | ⚠️ Unaudited |
| SthUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342487f9fe31d199dda8c89a1c34cc647c5a7dc3` | ⚠️ Unaudited |
| sthUSD OFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-266777 | `0xd1db209087516883ec705cfeb99e80bb6032d540` | ⚠️ Unaudited |
| sthUSD OFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-266772 | `0xd1db209087516883ec705cfeb99e80bb6032d540` | ⚠️ Unaudited |
| sthUSD OFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266764 | `0xd1db209087516883ec705cfeb99e80bb6032d540` | ⚠️ Unaudited |
| sthUSD OFT Adapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266760 | `0xd1db209087516883ec705cfeb99e80bb6032d540` | ⚠️ Unaudited |
| SthUSDRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4775a42121f251f41790257983b9d0234bc4c9e8` | ⚠️ Unaudited |
| StUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bd5154221ac5f57c1b8f4bbadb6d46f9a8d8628`; ethereum `0xc481a841945e557d09a22eaf940754d672f6cbe1` | ⚠️ Unaudited |
| thBILL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266755 | `0x5fa487bca6158c64046b2813623e20755091da0b` | ⚠️ Unaudited |
| thBILL OFT | unknown | project_anchor | own_supporting | 0 | base | unit-266779 | `0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a` | ⚠️ Unaudited |
| thBILL OFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266768 | `0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a` | ⚠️ Unaudited |
| ThBillHyperliquidComposer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xabb13ab90f90aa195af77a50b3f4b25a74cc3923` | ⚠️ Unaudited |
| ThBillOFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-266780 | `0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a` | ⚠️ Unaudited |
| ThBillOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266762 | `0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a` | ⚠️ Unaudited |
| TheoTUltraOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fb6f063c1950100db45492f1c359d809d42f9ce` | ⚠️ Unaudited |
| TheoWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14d38a3ed85ebddb3e22ff022e38e645a311f388` | ⚠️ Unaudited |
| ThUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2332e0df18ad299847b71ed6b8ebd74341359e2c`; ethereum `0x34ee84e17e8bfcd79559d0e876da55da5459c1a1` | ⚠️ Unaudited |
| thUSD Minter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266753 | `0x2d99ac801dc0edadd53f5688fef2317932e8696e` | ⚠️ Unaudited |
| thUSD OFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-266774 | `0x9aa9aa0530a6af70ee7bc47cf1240100f514b065` | ⚠️ Unaudited |
| thUSD OFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-266770 | `0x9aa9aa0530a6af70ee7bc47cf1240100f514b065` | ⚠️ Unaudited |
| ThUSDMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2347f3cf2275bda88a7a222f08f888e0972f64` | ⚠️ Unaudited |
| ThUSDOFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266763 | `0x9aa9aa0530a6af70ee7bc47cf1240100f514b065` | ⚠️ Unaudited |
| ThUSDOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266757 | `0x9aa9aa0530a6af70ee7bc47cf1240100f514b065` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266754 | `0x46a9ca32d5c7c866336e75765b099b669fef8bc2` | ⚠️ Unaudited |
| TTokenRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ae0ddca63e7a6ed11e575cf497fa69f27b9076` | ⚠️ Unaudited |
| TTokenRouterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266756 | `0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1` | ⚠️ Unaudited |
| TTokenRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a82cb1705bc5cb3c5500d96d166123e2df621` | ⚠️ Unaudited |
| TTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6844c9030f2717955f77801edbfb3480ad8f083` | ⚠️ Unaudited |
| TTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1aa000527eb3ec9cff8168d8ff96513469a0fdda`; ethereum `0xa6aa1957477244db5cab035bf96855ac898586bb` | ⚠️ Unaudited |
| TULTRAV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x985b600c534f7a8599b1df1b9e23bfc94aea1b54` | ⚠️ Unaudited |
| TULTRAV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d0fcefff18dbdfe8ada61b51f0caed4b33e5248` | ⚠️ Unaudited |
| Ultra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14542032f6a696231b3cf868e1811898c6f3e859` | ⚠️ Unaudited |
| UltraManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0f37eedfe1f6e010254135bdfed0255f79ab5ac6` | ⚠️ Unaudited |
| UltraManagerFiat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060d8503a9a552a4600abbc5e741b8bed06d0e9c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0b2c8f8c3a4dd02ea75838f293ad28053c1e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cabc134c49937d0736ef8943277d8fc2466f67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23eae0c98ea1b1b3f98913aa08120f1ab3043681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257062cb4ca916299fc49cb8fde1e34b43033c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba10369aa4d01e5203f2b56bb7fffd200947889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5f5ebec7b5e82482591d2725146f122d93005c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3346e3cdc1fe875c87a2bec230777706c8b3bc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339895f757a8d26d6f219c0c23da1f7f748c1f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a5038ad4d4185c4719c3be2cfbf56327e334f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b51594aa711b715b3ad92fc5a4a347b2e89683a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d58728f44610535a09d48899deeca654b9ca5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1e5fc2f41fd6e3edf46e44286278cbd5f46d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48dc7880f436021c7e71d0c9826aaab75042aefc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4de6163d1b2851934c5595962fc0cf838a9e3de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50293dd8889b931eb3441d2664dce8396640b419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53711ea98f2dc747a821fb71d8643ad02e898651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccc95c4fc113d8e48cec6cc077e1d59e00413d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f86a090f7799da3e45eac15c96c6e7c8a74a430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625c97801a88adf85ca8b3c177686c6bdde8f724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637ec1a8619fe017b69d10517aadb8bc4c9433a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656b480a1d2eaf7e65eebe1ce6b0ea8d2b5c190f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6c8f8008550e5489933968e27e84cc8fbba994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a51359cc308428d9839a4551650c0b5363d7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x778343fb9ac1202a6a962702a0c5c9e1bb88c531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aba11396132e9b929d00fa3126409090c17412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b0d66263f0e4a3ce3453cba12ef30e8f482e904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82263f759a58dd2f691ee9921a3d95460ba19072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b840b6edf77f90c92a70b99f0b5d50e7967330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82dbc698bc47e0db2ec9ec1934f1807e690c0706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8304fbe6cc85891beaead69bdf8c50cc22f5c2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8560434900c70400a932af606f3259a0f793cef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e0d1ab0207270d96614c68a688c3416d367977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5b08733c5005db30a635f95173c3cc1a263f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90505673de9c76c2b0354ffa3b1ca29883e27202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9056777ad890ece386d646a5c698a9a6a779000b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91372404eb53d48e77a0be64fc55edc6308c5249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989cc5932a0e95e9617c4d7cbf2629f136b67eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7ebdb21fee992e2a25383d023b903b074d6e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa93aea2c5b002b2895eeca8c2166ef272afb5e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208d9ebf3c1009bc1e75491f290bd88aca70d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2bf2f239a71b6b96a4cb21ef9e7febaceb00676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81cec3fc297f1c2fdd88ede3de0e4df62aa79d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb32211921cbc1017d5517d664d45ed2725db455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe6162f2901e57af091ab9ed3391c5bd92c343c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19a12d19066826f05c3a6c5567e451d1caeeb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd04f57464d25f257089a286aab47df096d300ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd020ce4aa335a11933f1e38a00020bd7f8c80a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3645ab35bfc11ae4c7b00f06d3de381ee25429e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a34f37c66559b394f591305087066939827c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8fc6b17fa0be36a9b33a3704b2522a57bd3b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4501c73fcab90a21538770aece1ccaad49ba39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6141b7f97eaaf1e19d3f995c64bb81e58e8c4ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6abdb86894adb1ecb9f170ab4c096f026e20978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea061d59997f6597b640271ca2b4903f872ee812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea51da3f3e37e82e1cde6b07a0e9cc69a2b0db8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02614ade8181a1f32c07ed5d63052d31daf19c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f25a1b0fe15aeeb23e23442024178be6644b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeaa6a01dc82247a9b5a97663d6d31fe5415d978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff49545b156cd626186c61549e198c48159bd163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aa384581356abb77cdd1e1ca669c3992ef7d7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ba10369aa4d01e5203f2b56bb7fffd200947889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x339895f757a8d26d6f219c0c23da1f7f748c1f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33a5038ad4d4185c4719c3be2cfbf56327e334f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f2d5036d6de9d70b00a1e211eb85c319a676fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50293dd8889b931eb3441d2664dce8396640b419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6084694a77f60598e88f14fb117d68bdf3a7d14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8304fbe6cc85891beaead69bdf8c50cc22f5c2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9056777ad890ece386d646a5c698a9a6a779000b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96f937c13491c09317e7fea019578c3eaadfc266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x989cc5932a0e95e9617c4d7cbf2629f136b67eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d7ebdb21fee992e2a25383d023b903b074d6e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb208d9ebf3c1009bc1e75491f290bd88aca70d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc26af85ede9cc25d449bcebef866bb85afd5d346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5e8cdcd165ce8f84e7c7a28732978507199cbd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc94b32bab46ed3ed3747cfcfe936aac51c6f4256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6af298654102027bba629a6f72ff98a8127e5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9df9a6c4d8d6bac69a0a41761abcdbe93064ed5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 82
- Live contracts: 0
- Unknown liveness contracts: 82
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=82

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1aa384581356abb77cdd1e1ca669c3992ef7d7e2` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ba10369aa4d01e5203f2b56bb7fffd200947889` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x339895f757a8d26d6f219c0c23da1f7f748c1f82` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33a5038ad4d4185c4719c3be2cfbf56327e334f0` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f2d5036d6de9d70b00a1e211eb85c319a676fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50293dd8889b931eb3441d2664dce8396640b419` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6084694a77f60598e88f14fb117d68bdf3a7d14f` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8304fbe6cc85891beaead69bdf8c50cc22f5c2fa` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9056777ad890ece386d646a5c698a9a6a779000b` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x96f937c13491c09317e7fea019578c3eaadfc266` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x989cc5932a0e95e9617c4d7cbf2629f136b67eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d7ebdb21fee992e2a25383d023b903b074d6e6a` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb208d9ebf3c1009bc1e75491f290bd88aca70d32` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc26af85ede9cc25d449bcebef866bb85afd5d346` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc5e8cdcd165ce8f84e7c7a28732978507199cbd1` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc94b32bab46ed3ed3747cfcfe936aac51c6f4256` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd6af298654102027bba629a6f72ff98a8127e5b6` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9df9a6c4d8d6bac69a0a41761abcdbe93064ed5` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x625c97801a88adf85ca8b3c177686c6bdde8f724` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5c293e04a584a5d3f9ad5698784f1d77a76f33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87e0d1ab0207270d96614c68a688c3416d367977` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5c293e04a584a5d3f9ad5698784f1d77a76f33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97f93f1785adc8a6b98efed30bbb7255de6aa8d3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5c293e04a584a5d3f9ad5698784f1d77a76f33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd04f57464d25f257089a286aab47df096d300ad` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5c293e04a584a5d3f9ad5698784f1d77a76f33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea061d59997f6597b640271ca2b4903f872ee812` | non_address_book | unknown | unknown | unverified | n/a | `0x3d5c293e04a584a5d3f9ad5698784f1d77a76f33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1cabc134c49937d0736ef8943277d8fc2466f67c` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x257062cb4ca916299fc49cb8fde1e34b43033c93` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ba10369aa4d01e5203f2b56bb7fffd200947889` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x339895f757a8d26d6f219c0c23da1f7f748c1f82` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33a5038ad4d4185c4719c3be2cfbf56327e334f0` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b51594aa711b715b3ad92fc5a4a347b2e89683a` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d58728f44610535a09d48899deeca654b9ca5b0` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50293dd8889b931eb3441d2664dce8396640b419` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x637ec1a8619fe017b69d10517aadb8bc4c9433a2` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x778343fb9ac1202a6a962702a0c5c9e1bb88c531` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78aba11396132e9b929d00fa3126409090c17412` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8304fbe6cc85891beaead69bdf8c50cc22f5c2fa` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e5b08733c5005db30a635f95173c3cc1a263f99` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90505673de9c76c2b0354ffa3b1ca29883e27202` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9056777ad890ece386d646a5c698a9a6a779000b` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x989cc5932a0e95e9617c4d7cbf2629f136b67eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d7ebdb21fee992e2a25383d023b903b074d6e6a` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb208d9ebf3c1009bc1e75491f290bd88aca70d32` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb81cec3fc297f1c2fdd88ede3de0e4df62aa79d7` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe6162f2901e57af091ab9ed3391c5bd92c343c6` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6141b7f97eaaf1e19d3f995c64bb81e58e8c4ca` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfeaa6a01dc82247a9b5a97663d6d31fe5415d978` | non_address_book | unknown | unknown | unverified | n/a | `0x458eb9391758c20a245707406d82d5ecef4b0b6e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b0b2c8f8c3a4dd02ea75838f293ad28053c1e16` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23eae0c98ea1b1b3f98913aa08120f1ab3043681` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e5f5ebec7b5e82482591d2725146f122d93005c` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3346e3cdc1fe875c87a2bec230777706c8b3bc8a` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34ee84e17e8bfcd79559d0e876da55da5459c1a1` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e1e5fc2f41fd6e3edf46e44286278cbd5f46d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48dc7880f436021c7e71d0c9826aaab75042aefc` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4de6163d1b2851934c5595962fc0cf838a9e3de1` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53711ea98f2dc747a821fb71d8643ad02e898651` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ccc95c4fc113d8e48cec6cc077e1d59e00413d2` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f86a090f7799da3e45eac15c96c6e7c8a74a430` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x656b480a1d2eaf7e65eebe1ce6b0ea8d2b5c190f` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c6c8f8008550e5489933968e27e84cc8fbba994` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72a51359cc308428d9839a4551650c0b5363d7d1` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b0d66263f0e4a3ce3453cba12ef30e8f482e904` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82263f759a58dd2f691ee9921a3d95460ba19072` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82b840b6edf77f90c92a70b99f0b5d50e7967330` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82dbc698bc47e0db2ec9ec1934f1807e690c0706` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8560434900c70400a932af606f3259a0f793cef8` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91372404eb53d48e77a0be64fc55edc6308c5249` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2ef0bf2d078c1deb7b04d454c87a7a1d2d3fde8` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6aa1957477244db5cab035bf96855ac898586bb` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa93aea2c5b002b2895eeca8c2166ef272afb5e78` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2bf2f239a71b6b96a4cb21ef9e7febaceb00676` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb32211921cbc1017d5517d664d45ed2725db455` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc19a12d19066826f05c3a6c5567e451d1caeeb7f` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc481a841945e557d09a22eaf940754d672f6cbe1` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd020ce4aa335a11933f1e38a00020bd7f8c80a2b` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3645ab35bfc11ae4c7b00f06d3de381ee25429e` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8a34f37c66559b394f591305087066939827c38` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda8fc6b17fa0be36a9b33a3704b2522a57bd3b82` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc4501c73fcab90a21538770aece1ccaad49ba39` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6abdb86894adb1ecb9f170ab4c096f026e20978` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea51da3f3e37e82e1cde6b07a0e9cc69a2b0db8f` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf02614ade8181a1f32c07ed5d63052d31daf19c1` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6f25a1b0fe15aeeb23e23442024178be6644b05` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff49545b156cd626186c61549e198c48159bd163` | non_address_book | unknown | unknown | unverified | n/a | `0x64defac2fc320c8194af86e4987bba26f0c2f49c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ThUSD - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/ThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [Theo Tokenized Staking Vault - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20Tokenized%20Staking%20Vault%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Theo-security-review_2026-03-19.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Theo-security-review_2026-03-19.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Theo - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf](https://1433280965-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FC2o2dJlijOInJR8UAhrX%2Fuploads%2Fp1lutmFVHrdK8qIa7Cwu%2FThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [Theo-security-review_2026-03-19.md](https://github.com/pashov/audits/blob/master/team/md/Theo-security-review_2026-03-19.md) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21185] ThUSD - Zellic Audit Report.pdf — matched: Scope section clearly lists four Solidity files: ThUSD.sol, ThUSDMinter.sol, SthUSD.sol, SthUSDRewards.sol. Audit date is April 16, 2026 from cover page.
- [21186] Theo Tokenized Staking Vault - Zenith Audit Report.pdf — no match: Only one contract (StUSD) is in scope. Audit dates: April 3-6, 2026; report published April 8, 2026. Using end date of audit.
- [21187] Theo-security-review_2026-03-19.pdf — no match: Only one contract, ThUSDMinter.sol, is explicitly listed in the scope section. No other contracts or files are mentioned as in scope.
- [21188] Theo - Zenith Audit Report.pdf — no match: Scope section lists files: vaults/*, BaseUpgradeable.sol, TheoWhitelist.sol, IToken.sol, TToken.sol, TTokenEscrow.sol, TTokenRouter.sol. ERC4626UpgradeableMultiAsset is also a target in findings. Audit date from report published date: July 22, 2025.
- [21189] spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf — matched: Scope section clearly lists four Solidity files: ThUSD.sol, ThUSDMinter.sol, SthUSD.sol, SthUSDRewards.sol. Audit date is April 16, 2026 from cover page.
- [21190] Theo-security-review_2026-03-19.md — no match: Only one contract in scope: ThUSDMinter.sol. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ThUSD - Zellic Audit Report.pdf | ThUSD | own contract | thUSD (selected) `0xa3fe5c7596024e6811e14f029937d5bd8ae485b3` — deployed 2026-04-08 22:35:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ThUSD - Zellic Audit Report.pdf | SthUSD | own contract | sthUSD (selected) `0xa808bc9775cb41c52c7842f8b50427fe7a770326` — deployed 2026-04-08 22:41:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ThUSD - Zellic Audit Report.pdf | SthUSDRewards | unmatched — not counted | — | listed in scope table | no |
| ThUSD - Zellic Audit Report.pdf | ThUSDMinter | unmatched — not counted | — | listed in scope table | no |
| Theo Tokenized Staking Vault - Zenith Audit Report.pdf | StUSD | unmatched — not counted | — | listed in scope section | no |
| Theo-security-review_2026-03-19.pdf | ThUSDMinter | unmatched — not counted | — | listed in scope section | no |
| Theo - Zenith Audit Report.pdf | BaseUpgradeable | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TheoWhitelist | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | IToken | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TToken | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TTokenEscrow | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TTokenRouter | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | ERC4626UpgradeableMultiAsset | unmatched — not counted | — | mentioned in findings as target | no |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | ThUSD.sol | own contract | thUSD (selected) `0xa3fe5c7596024e6811e14f029937d5bd8ae485b3` — deployed 2026-04-08 22:35:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | ThUSDMinter.sol | unmatched — not counted | — | listed in scope table | no |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | SthUSD.sol | own contract | sthUSD (selected) `0xa808bc9775cb41c52c7842f8b50427fe7a770326` — deployed 2026-04-08 22:41:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | SthUSDRewards.sol | unmatched — not counted | — | listed in scope table | no |
| Theo-security-review_2026-03-19.md | ThUSDMinter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a` | ThBillOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a` | ThBillOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9aa9aa0530a6af70ee7bc47cf1240100f514b065` | ThUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9aa9aa0530a6af70ee7bc47cf1240100f514b065` | ThUSDOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1` | TTokenRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=4

Zero-match audit list:

- [21186] Theo Tokenized Staking Vault - Zenith Audit Report.pdf
- [21187] Theo-security-review_2026-03-19.pdf
- [21188] Theo - Zenith Audit Report.pdf
- [21190] Theo-security-review_2026-03-19.md

Fork inheritance lineage and inherited audits are included when available.
