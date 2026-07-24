# Agentic Audit Brief: Blur

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Blur (`blur`)
- Website: [https://blur.io/](https://blur.io/)
- Lifecycle: active (Tier 0, 93.9% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast, ethereum
- Contract surface: 41 unique implementations (46 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,582,183.00
- On-chain TVL (included contracts): $42,555,522.90
- TVL by chain: Ethereum $42,555,522.90

## Project Description

This brief describes the observed EVM deployment and audit surface for Blur. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: ownable (2), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000000a39bb272e79075ade125fd351887ac`, chain 1)
- UnnamedContract (`0x29469395eaf6f95920e59f858042f0e28d98a20b`, chain 1)
- BlurSwap (`0x39da41747a83aee658334415666f3ef92dd0d541`, chain 1)
- BlurToken (`0x5283d291dbcf85356a21ba090e6db59121208b44`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 41 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 41
- Raw deployments: 46
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $42,555,522.90
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
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
| BlurToken | token | project_anchor | own_supporting | 0 | ethereum | unit-230705 | `0x5283d291dbcf85356a21ba090e6db59121208b44` | ⚠️ Unaudited |
| BlurAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xee90e5a180ff1be8894ff178bc75459da89833e1`; ethereum `0xf2d15c0a89428c9251d71a0e29b39ff1e86bce25` | ⚠️ Unaudited |
| BlurGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7967b43949fb0cec48e63e345512d5ea5845810` | ⚠️ Unaudited |
| BlurSwap | proxy | project_anchor | own_supporting | 1 | ethereum | unit-230706 | `0x39da41747a83aee658334415666f3ef92dd0d541` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be718621a3c63c7c585f57661d25431d5e4be3f` | ⚠️ Unaudited |
| TokenLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x00a64427d66cca0303e2f761a1310143682663df`; ethereum `0x3f1be79ab382f21c284008df07e3d169867db647`; ethereum `0x581e27c21ce60a946f0e866436a025bc89f3fb26`; ethereum `0x5a9c32194e5d2fea334fd968f5d2bfddc466422a`; ethereum `0xc75ade13e9988bba500227c4f0adcfa7ed800f53` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000ad05ccc4f10045630fb830b95127` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230703 | `0x0000000000a39bb272e79075ade125fd351887ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019d2474d6e7b9b6f33fb038ba3b15f28562e900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ab0463ca0c98de2d9b6649dcdb4ab667f12da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de58b4cbef5f440790dbfb5955dd820c688df4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f6d74277468ce678c401b045dee3d3eeeea7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13244ef110692c1d8256c8dd4aa0a09bb5af0156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7e05af7de55b69b72953e569bfe99bed8bb68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x259064eeb1acf4b7deef9619896fca095a325eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f180f3fc7eb636164a51e7a0afeff16d90d087` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230704 | `0x29469395eaf6f95920e59f858042f0e28d98a20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa4afc0dc9384c671535f1b91e89f9917747f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38289588523d4495d04b4f3ceb971a119685b6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a574bac669f3b1cb54b92ccbaefbafd07054d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545e06c1b43dc53a6520b5fdeab232002b478e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561106a829b3148c044b642d25a730ebdb5bf5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e4fe6db18f5bb912b8e90fd8c44d2216cb4fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58ab8c6921a599403e0031636ab3ebc32f331651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c06da8ec7945c05304d79895046d01a7943826d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b692d6e295c32c2cb1bd1b2cdbbcd66a94a40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd54b8a845bdc6f40fe98a3014ba18f842a88af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7264545e2f8629079a60b3a90d596fa65569a64b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9670af5f8365e6b9b4b474f90d54437f85a6894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97bdb4aed0b50a335a78ed24f68528ce3222af72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b5850bab1cbc38431743c54dd8edf317c056dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacd3d255b93f6f91dd6311ae9a30cb256e118cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdbf83254c0342d5f589e8641d925955ca3bdea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb2ecfe4e4d61f8790bbb9de2d1259b9e2410cea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc82bf6791ea9281be6b1c3fc0447bead9c99d152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf39f170af729380a3bc7cc6c9f898b1ad2da4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5996df7a4dae075fbcf02d29462286bc9189c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe596a0329b1efc4282ab71d8c4a1eb679cff66de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cf0d3e77fdf08bb74da6400094a313064de58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf561af1be49a83fc52efae12a49ff6f43356a580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb6ae1d448a67e201941944db8a266e8f8223fd0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 40
- Live contracts: 0
- Unknown liveness contracts: 40
- Source-verified contracts: 9
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=9, unverified unclassified=31

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | source verified unclassified | BlurAirdrop<br>`0xee90e5a180ff1be8894ff178bc75459da89833e1` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | BlurAirdrop<br>`0xf2d15c0a89428c9251d71a0e29b39ff1e86bce25` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | BlurGovernor<br>`0xf7967b43949fb0cec48e63e345512d5ea5845810` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | TimelockController<br>`0x5be718621a3c63c7c585f57661d25431d5e4be3f` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | TokenLockup<br>`0x00a64427d66cca0303e2f761a1310143682663df` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | TokenLockup<br>`0x3f1be79ab382f21c284008df07e3d169867db647` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | TokenLockup<br>`0x581e27c21ce60a946f0e866436a025bc89f3fb26` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | TokenLockup<br>`0x5a9c32194e5d2fea334fd968f5d2bfddc466422a` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | source verified unclassified | TokenLockup<br>`0xc75ade13e9988bba500227c4f0adcfa7ed800f53` | non_address_book | unknown | unknown | verified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10f6d74277468ce678c401b045dee3d3eeeea7de` | non_address_book | unknown | unknown | unverified | n/a | `0x2ec1c79e71594373123d7b86d5847eef1ce0a475` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02ab0463ca0c98de2d9b6649dcdb4ab667f12da7` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0de58b4cbef5f440790dbfb5955dd820c688df4c` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13244ef110692c1d8256c8dd4aa0a09bb5af0156` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38289588523d4495d04b4f3ceb971a119685b6c5` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56e4fe6db18f5bb912b8e90fd8c44d2216cb4fb8` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c06da8ec7945c05304d79895046d01a7943826d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bd54b8a845bdc6f40fe98a3014ba18f842a88af` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7264545e2f8629079a60b3a90d596fa65569a64b` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97bdb4aed0b50a335a78ed24f68528ce3222af72` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacd3d255b93f6f91dd6311ae9a30cb256e118cf2` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf561af1be49a83fc52efae12a49ff6f43356a580` | non_address_book | unknown | unknown | unverified | n/a | `0xb5f43f50823714c3e4ecfaa0e9a56eecf62031ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x019d2474d6e7b9b6f33fb038ba3b15f28562e900` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e7e05af7de55b69b72953e569bfe99bed8bb68a` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x259064eeb1acf4b7deef9619896fca095a325eba` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28f180f3fc7eb636164a51e7a0afeff16d90d087` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fa4afc0dc9384c671535f1b91e89f9917747f05` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a574bac669f3b1cb54b92ccbaefbafd07054d96` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x545e06c1b43dc53a6520b5fdeab232002b478e60` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x561106a829b3148c044b642d25a730ebdb5bf5cd` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58ab8c6921a599403e0031636ab3ebc32f331651` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61b692d6e295c32c2cb1bd1b2cdbbcd66a94a40f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9670af5f8365e6b9b4b474f90d54437f85a6894e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b5850bab1cbc38431743c54dd8edf317c056dd5` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacdbf83254c0342d5f589e8641d925955ca3bdea` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc82bf6791ea9281be6b1c3fc0447bead9c99d152` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf39f170af729380a3bc7cc6c9f898b1ad2da4a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5996df7a4dae075fbcf02d29462286bc9189c4f` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe596a0329b1efc4282ab71d8c4a1eb679cff66de` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9cf0d3e77fdf08bb74da6400094a313064de58e` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb6ae1d448a67e201941944db8a266e8f8223fd0` | non_address_book | unknown | unknown | unverified | n/a | `0xcd0313fd7cca5648d2948c42c320ba50cd0e6cb6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022](https://dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022) | Dedaub | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [code4rena.com/reports/2022-10-blur](https://code4rena.com/reports/2022-10-blur) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view](https://drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view) | ChainLight (Theori) | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view](https://drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view) | ChainLight (Theori) | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21286] dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 — no match: All contracts listed in the scope section of the audit report.
- [21287] code4rena.com/reports/2022-10-blur — no match: Scope section states 10 smart contracts, but only 4 are explicitly named in the report text. Additional contracts are inferred from file paths mentioned in findings and gas optimizations.
- [21288] drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view — no match: Scope section lists 'Blur - Blend Security Audit' as target. Contracts identified: Blend (main contract) and BlurPool (external contract used). No file paths provided.
- [21289] drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view — no match: Scope section lists 'Blur | Blend Security Audit' as target, but no specific file paths. Contract names extracted from findings: Blend and BlurPool.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Exchange | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | FeeMechanism | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Registry | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | ProxyRegistry | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | AuthenticatedProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | OwnableDelegateProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | OwnedUpgradeabilityStorage | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Proxy | ambiguous — not counted | BlurSwap (proxy) (alternative) `0x39da41747a83aee658334415666f3ef92dd0d541` — deployed 2022-07-27 01:31:27+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | TokenRecipient | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | TokenTransferProxy | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | ERC1967 | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | GaugeStorage | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | LiquidityGaugeFactory | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | LiquidityGauge | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022 | Minter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-blur | BlurExchange | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-blur | ExecutionDelegate | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-blur | PolicyManager | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| code4rena.com/reports/2022-10-blur | StandardPolicyERC1155 | unmatched — not counted | — | mentioned in high risk finding | no |
| code4rena.com/reports/2022-10-blur | EIP712 | unmatched — not counted | — | mentioned in gas optimizations and low risk | no |
| code4rena.com/reports/2022-10-blur | MerkleVerifier | unmatched — not counted | — | mentioned in gas optimizations | no |
| code4rena.com/reports/2022-10-blur | ReentrancyGuarded | unmatched — not counted | — | mentioned in gas optimizations | no |
| code4rena.com/reports/2022-10-blur | OrderStructs | unmatched — not counted | — | mentioned in gas optimizations | no |
| code4rena.com/reports/2022-10-blur | IBlurExchange | unmatched — not counted | — | mentioned in low risk | no |
| code4rena.com/reports/2022-10-blur | IExecutionDelegate | unmatched — not counted | — | implied by usage | no |
| code4rena.com/reports/2022-10-blur | IPolicyManager | unmatched — not counted | — | implied by usage | no |
| code4rena.com/reports/2022-10-blur | ERC1967Proxy | unmatched — not counted | — | mentioned in low risk | no |
| drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view | Blend | unmatched — not counted | — | Main contract audited, mentioned throughout report | no |
| drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view | BlurPool | unmatched — not counted | — | Mentioned in findings as contract used by Blend | no |
| drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view | Blend | unmatched — not counted | — | Main contract audited, mentioned throughout report | no |
| drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view | BlurPool | unmatched — not counted | — | Mentioned in BLEND-001 as contract with deposit/transferFrom functions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5283d291dbcf85356a21ba090e6db59121208b44` | BlurToken | token | $42,555,522.90 | Verified native implementation with $42,555,522.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39da41747a83aee658334415666f3ef92dd0d541` | BlurSwap | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 31 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [21286] dedaub.com/audits/blur/blur-finance-v1-0-jun-10-2022
- [21287] code4rena.com/reports/2022-10-blur
- [21288] drive.google.com/file/d/13rmzXIdy138gxPwiGNH8kk-yob4Bjzll/view
- [21289] drive.google.com/file/d/1FAryO7HfklV0ldOGfS9xSLKhaX65lG1I/view

Fork inheritance lineage and inherited audits are included when available.
