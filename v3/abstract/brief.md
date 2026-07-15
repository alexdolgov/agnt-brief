# Agentic Audit Brief: Abstract

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Abstract (`abstract`)
- Website: [https://www.abs.xyz/](https://www.abs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 109 unique implementations (109 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,025,118.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Abstract. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum, sepolia. Structural roles: 5 supporting, 3 core, 3 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (5), core (3), infra (3)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (3), ownable (2), ownable2step (2)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc2a361...d62cf1`, chain 1)
- ChainAdmin (`0xa1f75f...05a661`, chain 1)
- DefaultUpgrade (`0x4d3767...7e855d`, chain 1)
- DiamondProxy (`0x2edc71...80fbb9`, chain 1)
- Multicall3 (`0xca11bd...76ca11`, chain 1)
- Safe (`0x7f3eab...631063`, chain 1)
- SingletonFactory (`0xce0042...fdcf9f`, chain 1)
- TransparentUpgradeableProxy (`0x303a46...eb5213`, chain 1)
- TransparentUpgradeableProxy (`0xc2ee6b...0f5f5c`, chain 1)
- TransparentUpgradeableProxy (`0xd7f9f5...8cb2cb`, chain 1)
- ValidatorTimelock (`0x5d8ba1...bad06e`, chain 1)
- Verifier (`0x70f3fb...de9604`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 85 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 12 of 109 unique; 97 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 94
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225443 | `0xa1f75f...05a661` | ⚠️ Unaudited |
| DefaultUpgrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225438 | `0x4d3767...7e855d` | ⚠️ Unaudited |
| DiamondProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225436 | `0x2edc71...80fbb9` | ⚠️ Unaudited |
| IdentityRegistryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8004a1...39a432` | ⚠️ Unaudited |
| MailboxFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x324000...000324` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225445 | `0xca11bd...76ca11` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x491727...c823c4` | ⚠️ Unaudited |
| ReputationRegistryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8004ba...de9b63` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225464 | `0x7f3eab...631063` | ⚠️ Unaudited |
| SingletonFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225446 | `0xce0042...fdcf9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225467 | `0x303a46...eb5213` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225465 | `0xc2ee6b...0f5f5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225466 | `0xd7f9f5...8cb2cb` | ⚠️ Unaudited |
| ValidatorTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225440 | `0x5d8ba1...bad06e` | ⚠️ Unaudited |
| Verifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225441 | `0x70f3fb...de9604` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (94)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00800a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00800b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00800c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00800d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00800e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...00800f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...008011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...010000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...f714fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0358ba...e143a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0408ef...cef773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069f19...62a5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0709f3...f012bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10ef01...61a5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x117fc8...8abb7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d049...690ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199a9d...1bcb39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a7f1...94d24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb10a...1f51b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e17ff...a960f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec62f...61f78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309d0b...33e885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30cf32...068c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3203c3...fe4594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343915...3c2809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35a54c...394c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397aa1...159c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8b2f...2d18ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e39e9...d444a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564d33...763577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566d75...43985e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610fca...469380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728bd3...bc7693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d539...67c4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7712fa...18767c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5d17...ac5495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d174f...b70033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8041c4...8733db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817756...8b09a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8433de...835dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a71c...c987e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b118...b15db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad52f...8b36ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9301e9...5f9069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ff7d...abd409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c98e...41f9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7d30...9f747e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca4dc...bc35c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9edcde...0d841d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1160e...d0b2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26620...b3e590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaa566...428d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3a2d...ff0795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaca1ec...061888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad1eca...af9f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d434...2a70df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f2d0...6a4c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225444 | `0xc2a361...d62cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc329d0...4a8629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc35f06...c68dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfb71...c5b4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf43bd...012648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38766...f34453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd50816...7eef79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd3502...a7199d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4104...3daae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf3969...5bd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17e6f...bd3c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b076...2ed75e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c7fb...5e2dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec089e...3040ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec1e1...719838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c430...31b6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa928d...6084f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225448 | `0x0358ba...e143a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225449 | `0x15d049...690ff2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225450 | `0x27a7f1...94d24a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225451 | `0x35a54c...394c92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225453 | `0x3e8b2f...2d18ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225454 | `0x4e39e9...d444a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225456 | `0x8ad52f...8b36ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225457 | `0xac3a2d...ff0795` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225458 | `0xca11bd...76ca11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225459 | `0xce0042...fdcf9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225461 | `0xd38766...f34453` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225463 | `0xeec1e1...719838` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-11-02-AGW-Security-Review-Pashov.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-11-02-AGW-Security-Review-Pashov.pdf) | Pashov Audit Group | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [2024-11-11-AGW-Clave-Diff-Review-Trust.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-11-11-AGW-Clave-Diff-Review-Trust.pdf) | Trust | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [2024-12-23-Session-Key-Security-Review-Pashov.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-12-23-Session-Key-Security-Review-Pashov.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19448] 2024-11-02-AGW-Security-Review-Pashov.pdf — no match: Scope section explicitly lists 25 smart contracts. Audit date from cover page: November 2nd - November 11th, using end date.
- [19449] 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf — no match: All contracts listed in the Scope section of the report. Audit date from document title and versioning.
- [19450] 2024-12-23-Session-Key-Security-Review-Pashov.pdf — no match: Scope section explicitly lists 9 contracts. Audit date is the end date of the engagement (December 26th 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-11-02-AGW-Security-Review-Pashov.pdf | AccountFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveImplementation | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveProxy | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | EOAValidator | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | PasskeyValidator | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ERC1271Handler | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ValidationHandler | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | BatchCaller | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveStorage | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | SignatureDecoder | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | HookManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | UpgradeManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ValidatorManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | TokenCallbackHandler | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | LinkedList | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | VerifierCaller | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | BootloaderAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | SelfAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | HookAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ModuleAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | AccountFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveImplementation | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveProxy | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveNameService | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | IClaveNameService | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | KoiEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | SyncEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | SyncEarnRouterV2 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ZtaKe | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ZtaKeV2 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ERC1271Handler | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | Base64 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | IClave | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | IUpgradeManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | UpgradeManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ValidatorManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | CloudRecoveryModule | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | SocialRecoveryModule | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | BaseRecovery | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ERC20Paymaster | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | GaslessPaymaster | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | EOAValidator | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | PasskeyValidator | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | ClaveImplementation | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | BatchCaller | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | TimestampAsserter | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | TimestampAsserterLocator | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | ClaveStorage | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | SessionLib | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | ValidatorManager | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | SessionKeyValidator | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa1f75f...05a661` | ChainAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d3767...7e855d` | DefaultUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2edc71...80fbb9` | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce0042...fdcf9f` | SingletonFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d8ba1...bad06e` | ValidatorTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70f3fb...de9604` | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 62 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [19448] 2024-11-02-AGW-Security-Review-Pashov.pdf
- [19449] 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf
- [19450] 2024-12-23-Session-Key-Security-Review-Pashov.pdf

Fork inheritance lineage and inherited audits are included when available.
