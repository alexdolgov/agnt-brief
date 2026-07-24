# Agentic Audit Brief: Untangled

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Untangled (`untangled`)
- Website: [https://untangled.finance/](https://untangled.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, celo, polygon
- Contract surface: 75 unique implementations (80 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $302,785.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Untangled. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, celo, polygon. Structural roles: 3 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), supporting (2)
- Contract kinds: contract (5)
- Detected standards: erc20 (3), erc4626 (3)
- Frameworks: openzeppelin (5), axelar (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ModuleFactory (`0x974e1f25ae092116314ba02964625ded74a0bc9e`, chain 137)
- ModuleFactory (`0xbdc819f7c26c02a4954c910d00a51660b08f6155`, chain 42220)
- Vault (`0x3f48e00cfeba3e713db8bc3e28d634578c553e32`, chain 137)
- Vault (`0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9`, chain 42161)
- Vault (`0x2a68c98bd43aa24331396f29166aef2bfd51343f`, chain 42220)
- VaultFactory (`0x73eacd32271f297c9427aa29c0517a18dad8dbb6`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 7 of 75 unique; 68 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 75
- Raw deployments: 80
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GlobalPriceValuation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xd28a91626fc7908f5c18b3e04ac152118d1b2019`; polygon `0xe9e02e486995d92f877f7a6e8566285ef8763bad` | ⚠️ Unaudited |
| Hook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x48b38b467ece159c9e149153fce4a53685cf6bff`; polygon `0xfa171ad7d5e88f6afdbcb9a52118285d8c6a5036` | ⚠️ Unaudited |
| ModuleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2` | ⚠️ Unaudited |
| ModuleFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-395346 | `0x974e1f25ae092116314ba02964625ded74a0bc9e` | ⚠️ Unaudited |
| ModuleFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-395350 | `0xbdc819f7c26c02a4954c910d00a51660b08f6155` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9` | ⚠️ Unaudited |
| StableCoinOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x320f08c29ca15dbfb4901a9da7f412fae0be501d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x237f754e3b7567a8932ebe2fbb64ad9d107247d6`; polygon `0x2d45009c012c71e0d9dea249be9b4ae28320cd3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xd216cb113259c1d5ddccf001e6bfbdd1c8a58850`; polygon `0xf2742cba7de47029213aed8db080290b3634b62c` | ⚠️ Unaudited |
| ValuationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x02c25ac43ae068d5808b726af720f47b87b38a48`; polygon `0xf532b78ec895183120aa18e5f6679e13493d4c0d` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-395345 | `0x3f48e00cfeba3e713db8bc3e28d634578c553e32` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-395347 | `0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | celo | unit-395348 | `0x2a68c98bd43aa24331396f29166aef2bfd51343f` | ⚠️ Unaudited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-395344 | `0x2562883f006d04ccc2907635e38089fbfc6be45b` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49421fea2e34ffe728299e5a297474dfda00d627` | ⚠️ Unaudited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-395349 | `0x73eacd32271f297c9427aa29c0517a18dad8dbb6` | ⚠️ Unaudited |
| WithdrawModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa40173bfd57178e748b41ff0d18080b8c18393a5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04d5b47d7a59443d7240f505e74e44037a0636fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08ce5e200b3986dd29b23ad0597e439adc73604f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ef0f605d93ea31bb1bf54fd150e7b6f16b920f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4eda5660c74b7a6e754983e805882d80e0baf02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a805e6f06523bc905d49580129ff04052320a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95b3047d17313307bfbf5ef6701450eadf16cf4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x02c25ac43ae068d5808b726af720f47b87b38a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x04d5b47d7a59443d7240f505e74e44037a0636fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0583c095dd48b3a773ff27d82a801fe921676793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0633643652a9befdbecad9e0a315eb5f0113158a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0d0837e1e49313a53b31ee90c185a2c08928fd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1196e3d5438388f3abbd9f684a276727d033ed01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x138da7734070257edb53c61ae90f3bb375f7029c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1e0890d017f05868f9db05a753512d4c6a917513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x237f754e3b7567a8932ebe2fbb64ad9d107247d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x23810d0e7022d785ba679057e4fbebfed99617c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x30b45cbf4ab3a039b770725831b177aeb56277dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x320f08c29ca15dbfb4901a9da7f412fae0be501d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x372b4df3e6eaf8e2e825b266b4e89fce90cef152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3e78325c6edbacd76c97ed2ad0e2fddf3145488f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3ee45995f589cf53df0f7262560113bd695fa3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x441f62940ad653cac353f5ae9949b00d305eb816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4ebef36cbad7ed4a432040db5f84c92b601612a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4eda5660c74b7a6e754983e805882d80e0baf02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5147c3476e675fbdbfef8e2576a5bde20b438b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5417bf16671a043528dc2fc16de1d13ba1364728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5e3193bb51620809d80305541738f78e17516b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6270453490ed2ce65c1ec757d9508a92d936a705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x67b2911fce15c53772866d010ce518458ec5e52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x72a5e9e1a158b9c41f0b200d9a54a5789ea79116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x748c4798484a24faf9d00fe928108d8fde1d431f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x80cde6a9d96279adf50a2cbc764dcd723bd2991f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x87edf989548b888608cc6577523010cf4ffe668c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8a805e6f06523bc905d49580129ff04052320a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8d5ce1597b2bda9b454db4eb6b807b6e5666b06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8d933c50852f0739199dcc193fc5ad8ac54c3296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8da445046281e6fbf2abad56952331b9d5ea8d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x91bdea08e7ddb94ec8a7d7450e02137336cb9542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9416c5f5c762ddc748aafa6076e93c56e756dc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x95b3047d17313307bfbf5ef6701450eadf16cf4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x99232fcd882928cc3636f4bed3603720e4ce0a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa0b0cddc84467486e5919b64a69ef794b828d38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa0deb61310006494620eca6a74e5e338682173d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xae002059c987dd2da78ad4d0435b9b9dfb6b6f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb1774a4e5b3e93d17edcf592fa51bfea52fd9876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc94013ec508fdd5a49f0e9541612385ddd20763d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd216cb113259c1d5ddccf001e6bfbdd1c8a58850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd28a91626fc7908f5c18b3e04ac152118d1b2019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4e79f3eda5a7a13acafe38a2af3872d994011ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7fc344e8b5077e4c2b456d2da278e4d1dd45847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe9e02e486995d92f877f7a6e8566285ef8763bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf2742cba7de47029213aed8db080290b3634b62c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf532b78ec895183120aa18e5f6679e13493d4c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfda6d1a36a0f10c3a2aee47928e6286845af3c6a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 68
- Live contracts: 2
- Unknown liveness contracts: 66
- Source-verified contracts: 10
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=4, contamination review=2, exact address book overlap=1, source verified unclassified=3, unverified unclassified=58

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| celo | unverified unclassified | UnnamedContract<br>`0x02c25ac43ae068d5808b726af720f47b87b38a48` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x04d5b47d7a59443d7240f505e74e44037a0636fc` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x0583c095dd48b3a773ff27d82a801fe921676793` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x0633643652a9befdbecad9e0a315eb5f0113158a` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x0d0837e1e49313a53b31ee90c185a2c08928fd4b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x1196e3d5438388f3abbd9f684a276727d033ed01` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x138da7734070257edb53c61ae90f3bb375f7029c` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x1e0890d017f05868f9db05a753512d4c6a917513` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x237f754e3b7567a8932ebe2fbb64ad9d107247d6` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x23810d0e7022d785ba679057e4fbebfed99617c7` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x30b45cbf4ab3a039b770725831b177aeb56277dd` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x320f08c29ca15dbfb4901a9da7f412fae0be501d` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x372b4df3e6eaf8e2e825b266b4e89fce90cef152` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x3e78325c6edbacd76c97ed2ad0e2fddf3145488f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x3ee45995f589cf53df0f7262560113bd695fa3fe` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x441f62940ad653cac353f5ae9949b00d305eb816` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x4ebef36cbad7ed4a432040db5f84c92b601612a2` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x4eda5660c74b7a6e754983e805882d80e0baf02f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x5147c3476e675fbdbfef8e2576a5bde20b438b0b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x5417bf16671a043528dc2fc16de1d13ba1364728` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x5e3193bb51620809d80305541738f78e17516b33` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x6270453490ed2ce65c1ec757d9508a92d936a705` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x67b2911fce15c53772866d010ce518458ec5e52f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x72a5e9e1a158b9c41f0b200d9a54a5789ea79116` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x748c4798484a24faf9d00fe928108d8fde1d431f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x80cde6a9d96279adf50a2cbc764dcd723bd2991f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x87edf989548b888608cc6577523010cf4ffe668c` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x8a805e6f06523bc905d49580129ff04052320a6b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x8d5ce1597b2bda9b454db4eb6b807b6e5666b06b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x8d933c50852f0739199dcc193fc5ad8ac54c3296` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x8da445046281e6fbf2abad56952331b9d5ea8d45` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x91bdea08e7ddb94ec8a7d7450e02137336cb9542` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x9416c5f5c762ddc748aafa6076e93c56e756dc96` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x95b3047d17313307bfbf5ef6701450eadf16cf4b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0x99232fcd882928cc3636f4bed3603720e4ce0a15` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xa0b0cddc84467486e5919b64a69ef794b828d38f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xa0deb61310006494620eca6a74e5e338682173d3` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xae002059c987dd2da78ad4d0435b9b9dfb6b6f43` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xb1774a4e5b3e93d17edcf592fa51bfea52fd9876` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xc94013ec508fdd5a49f0e9541612385ddd20763d` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xd216cb113259c1d5ddccf001e6bfbdd1c8a58850` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xd28a91626fc7908f5c18b3e04ac152118d1b2019` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xd4e79f3eda5a7a13acafe38a2af3872d994011ac` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xe7fc344e8b5077e4c2b456d2da278e4d1dd45847` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xe9e02e486995d92f877f7a6e8566285ef8763bad` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xf2742cba7de47029213aed8db080290b3634b62c` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xf532b78ec895183120aa18e5f6679e13493d4c0d` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| celo | unverified unclassified | UnnamedContract<br>`0xfda6d1a36a0f10c3a2aee47928e6286845af3c6a` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | candidate review | ModuleFactory<br>`0x4dcc7a839ce7e952cd90d03d65c70b9ccd6ba4c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | candidate review | ProxyAdmin<br>`0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | candidate review | VaultFactory<br>`0x2562883f006d04ccc2907635e38089fbfc6be45b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | candidate review | VaultFactory<br>`0x49421fea2e34ffe728299e5a297474dfda00d627` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | contamination review | GlobalPriceValuation<br>`0xd28a91626fc7908f5c18b3e04ac152118d1b2019` | non_address_book | unknown | unknown | verified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | contamination review | StableCoinOracle<br>`0x320f08c29ca15dbfb4901a9da7f412fae0be501d` | non_address_book | unknown | unknown | verified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | exact address book overlap | ModuleFactory<br>`0x974e1f25ae092116314ba02964625ded74a0bc9e` | project_anchor | unknown | live | verified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | source verified unclassified | GlobalPriceValuation<br>`0xe9e02e486995d92f877f7a6e8566285ef8763bad` | non_address_book | unknown | unknown | verified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x237f754e3b7567a8932ebe2fbb64ad9d107247d6` | non_address_book | unknown | unknown | verified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xf2742cba7de47029213aed8db080290b3634b62c` | non_address_book | unknown | unknown | verified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0x04d5b47d7a59443d7240f505e74e44037a0636fc` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0x08ce5e200b3986dd29b23ad0597e439adc73604f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2d45009c012c71e0d9dea249be9b4ae28320cd3f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4eda5660c74b7a6e754983e805882d80e0baf02f` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8a805e6f06523bc905d49580129ff04052320a6b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0x95b3047d17313307bfbf5ef6701450eadf16cf4b` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd216cb113259c1d5ddccf001e6bfbdd1c8a58850` | non_address_book | unknown | unknown | unverified | n/a | `0x46788b60daf46448668c7abaeea4ac8745451c25` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Untangled_FInance_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Untangle_Protocol_Audit/Untangled_FInance_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Octo_Lend_Report_ba51eb961d.pdf](https://strapi-rv-bucket-01.s3.us-east-2.amazonaws.com/Octo_Lend_Report_ba51eb961d.pdf) | Runtime Verification | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [VAR-Untangled-250508-vaults-V2.pdf](https://veridise.com/wp-content/uploads/2025/07/VAR-Untangled-250508-vaults-V2.pdf) | Veridise | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14062] Untangled_FInance_Audit_Report.pdf — no match: Extracted contract names from source file paths in findings and access control sections. Audit date from cover page.
- [14063] Octo_Lend_Report_ba51eb961d.pdf — no match: Extracted contract names from scope section and file paths. The audit report date is explicitly stated as 'Delivered: March 20, 2026' on the cover page.
- [14064] VAR-Untangled-250508-vaults-V2.pdf — no match: Scope section 3.3 explicitly lists 6 smart contract files and 2 backend modules. Audit date is May 22, 2025 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Untangled_FInance_Audit_Report.pdf | Pool | unmatched — not counted | — | Source in finding 5.1.1 | no |
| Untangled_FInance_Audit_Report.pdf | UniqueIdentity | unmatched — not counted | — | Source in finding 5.1.2 | no |
| Untangled_FInance_Audit_Report.pdf | SecuritizationManager | unmatched — not counted | — | Source in findings 5.1.3, 5.2.1, 5.3.2, 5.3.3, 5.4.2, 5.4.3 | no |
| Untangled_FInance_Audit_Report.pdf | MintedNormalTGE | unmatched — not counted | — | Source in findings 5.3.1, 5.4.5, 5.4.6 | no |
| Untangled_FInance_Audit_Report.pdf | NoteTokenFactory | unmatched — not counted | — | Source in finding 5.3.3 | no |
| Untangled_FInance_Audit_Report.pdf | TokenGenerationEventFactory | unmatched — not counted | — | Source in finding 5.3.3 | no |
| Untangled_FInance_Audit_Report.pdf | LoanKernel | unmatched — not counted | — | Source in finding 5.3.4 | no |
| Untangled_FInance_Audit_Report.pdf | NoteToken | unmatched — not counted | — | Source in finding 5.3.5 | no |
| Untangled_FInance_Audit_Report.pdf | SecuritizationPool | unmatched — not counted | — | Mentioned in Access Control Analysis section 7.1 | no |
| Untangled_FInance_Audit_Report.pdf | NoteTokenVault | unmatched — not counted | — | Mentioned in Access Control Analysis section 7.3 | no |
| Untangled_FInance_Audit_Report.pdf | ProxyAdmin | unmatched — not counted | — | Source in finding 5.4.4 | no |
| Untangled_FInance_Audit_Report.pdf | SecuritizationManagerBase | unmatched — not counted | — | Mentioned in finding 5.4.3 as abstract contract in same file | no |
| Octo_Lend_Report_ba51eb961d.pdf | LendingMarket | unmatched — not counted | — | Scope section: './contracts/lending-market: Contains the implementation of the lending market contract' | no |
| Octo_Lend_Report_ba51eb961d.pdf | CollateralVault | unmatched — not counted | — | Scope section: './contracts/collateral-vault: Implements a tokenized vault' | no |
| Octo_Lend_Report_ba51eb961d.pdf | VaultClient | unmatched — not counted | — | Scope section: './contracts/clients directory, containing client interface stubs' | no |
| Octo_Lend_Report_ba51eb961d.pdf | MarketClient | unmatched — not counted | — | Scope section: './contracts/clients directory, containing client interface stubs' | no |
| Octo_Lend_Report_ba51eb961d.pdf | InterestRateModelClient | unmatched — not counted | — | Scope section: './contracts/clients directory, containing client interface stubs' | no |
| VAR-Untangled-250508-vaults-V2.pdf | error.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | lib.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | offer.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | redeem_request.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | storage_types.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | vault.rs | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | pricing.ts | unmatched — not counted | — | listed in scope section 3.3 | no |
| VAR-Untangled-250508-vaults-V2.pdf | asset.ts | unmatched — not counted | — | listed in scope section 3.3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x974e1f25ae092116314ba02964625ded74a0bc9e` | ModuleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3f48e00cfeba3e713db8bc3e28d634578c553e32` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4a3f7dd63077cde8d7eff3c958eb69a3dd7d31a9` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x2a68c98bd43aa24331396f29166aef2bfd51343f` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2562883f006d04ccc2907635e38089fbfc6be45b` | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [14062] Untangled_FInance_Audit_Report.pdf
- [14063] Octo_Lend_Report_ba51eb961d.pdf
- [14064] VAR-Untangled-250508-vaults-V2.pdf

Fork inheritance lineage and inherited audits are included when available.
