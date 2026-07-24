# Agentic Audit Brief: Solarbeam

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Solarbeam (`solarbeam`)
- Website: [https://app.solarbeam.io/exchange/swap](https://app.solarbeam.io/exchange/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: moonriver
- Contract surface: 290 unique implementations (290 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $146,420.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Solarbeam. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across moonriver. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (3), boringcrypto (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7e6e03822d0077f3c417d33caeac900fc2645679`, chain 1285)
- UnnamedContract (`0xaa30ef758139ae4a7f798112902bf6d65612045f`, chain 1285)
- UnnamedContract (`0xb256c57aa0778a184d26d3b7c033db950c7bf007`, chain 1285)
- Forwarder (`0x0d0b4862f5ffa3a47d04ddf0351356d20c830460`, chain 1285)
- Multicall2 (`0x43d002a2b468f048028ea9c2d3ed4705a94e68ae`, chain 1285)
- SolarBeamToken (`0x6bd193ee6d2104f14f94e2ca6efefae561a4334b`, chain 1285)
- SolarDistributorV2 (`0x0329867a8c457e9f75e25b0685011291cd30904f`, chain 1285)
- SolarFactory (`0x049581aeb6fe262727f290165c29bdab065a1b68`, chain 1285)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 282 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 290 unique; 282 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 268
- Unique implementations: 290
- Raw deployments: 290
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c` | ⚠️ Unaudited |
| CommonEclipse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x022bcb66662bb3854b6f16babd4c13bfa3db0b08` | ⚠️ Unaudited |
| ComplexRewarderPerSecV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0d66e60d31c8f2a0dcc4fb2d06d5e8e326ee8212` | ⚠️ Unaudited |
| ComplexRewarderPerSecV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f132276b72add2c0ade8ac60e53997086dc35da` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x10449fc8bc5659a96c75af43198ec6ca63a0ef58` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392679 | `0x0d0b4862f5ffa3a47d04ddf0351356d20c830460` | ⚠️ Unaudited |
| GasSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44b288a8258d3bda04ccdb5d06c72a4dcd295700` | ⚠️ Unaudited |
| MoonLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0134eb236b47186021a50d25a51365ac77e39eb3` | ⚠️ Unaudited |
| Multicall2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392680 | `0x43d002a2b468f048028ea9c2d3ed4705a94e68ae` | ⚠️ Unaudited |
| setText | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9bde9edcf175f3b084b1246ab869bc4d3d2582db` | ⚠️ Unaudited |
| SolarBeamToken | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392681 | `0x6bd193ee6d2104f14f94e2ca6efefae561a4334b` | ⚠️ Unaudited |
| SolarDistributorV2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392677 | `0x0329867a8c457e9f75e25b0685011291cd30904f` | ⚠️ Unaudited |
| SolarFactory | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392678 | `0x049581aeb6fe262727f290165c29bdab065a1b68` | ⚠️ Unaudited |
| SolarPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2cc54b4a3878e36e1c754871438113c1117a3ad7` | ⚠️ Unaudited |
| SolarRouterAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x39019dd93c539643246c38c1aa0d20439d2a62c7` | ⚠️ Unaudited |
| SolarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x783d5eb06ce15b43b0635035bae9a73750c3a0b1` | ⚠️ Unaudited |
| SwapCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x124d2b0b4119dd3c0fa884dd66ce49b44197a410` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0a498032174320c79e61c5cd6687b3a50df31f0b` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50160284393296cc0d75f7db4c3d1d2fda23938b` | ⚠️ Unaudited |
| TokenFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7124c3e7a1bbdaa61a111944884694a5a5b84039` | ⚠️ Unaudited |
| VestedSolarBeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x76906411d07815491a5e577022757ad941fb5066` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x98878b06940ae243284ca214f92bb71a2b032b8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (268)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x00052254e35d24f93a9a680170597c292186deb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x00061917bab48ed5725788502ad67c9e461fb8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x006ad45cad859d5536c275313cfcbb4799be0e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x018996758aba208c6b7eef6d7de26b078a81940b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x022a9abb46b6da6042db9b3c035c758c24513982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0340bce99962573c45d27a95cd39c63bd7eeb1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x034eba83c91f047184d34d93a27bdc257f54c0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x04caf88cee89f7bd1810730b7568e66579e1c8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x056973f631a5533470143bb7010c9229c19c04d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0607313d4bd4f222d8163031e4001c7472f46103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0871f5a0f387d3e00be8b76657cbec1f86237c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x095838505c2ea4cb6cf94eb64b24f040c224bf94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x095d6010e0f9c86e939f29184af38d59cd7de7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0a58b3f697ed982b1386bfc12b158423e32c11d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0ab68d7628719eadf2dcb0668cc5193e1efbe747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c10e603e21f765c50805ce019adc034ef07bb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c1d7cf4b81915b673cac8f9a25936229694ff7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0d6a31a7ee5fc7ef78383ae9f222c6d26533a47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0e1b60a47e326442f3c0093ee2295cc118c086ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0e24b4e07610c6424cbe5e5416c243c0ce9c0984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x102e19054b42286c0992fb0fb7830753a231c696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1216624e9753f77dfcdedda7c2938d69076cbf9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x129533877c872ea064f2d1bc30e04cc6e3817bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x12b1adce786aaceaf6bcea7929f3d6481a5ebfd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x13590d0af545669bcecf079b406dc4153cb7be95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x13cfcf78ec321c00ddbc4755427c19f4024497ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x150b7f41bf909ecba63425c39dd976c3024f8651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x156bca0564d6a7a73b633c927b61a6015a9639de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1866be6a65a22a333136b720ba2906cb794d9494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x18e2a82408b01c135805b1ac8d818056458c2411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x190583c6e6a89391a5268902e554a6da37421889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1a6c0f1a5cf540fa57324ff6cf54c9d4f6be76f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1c4ec9063bb2848e5f419f15d92f68fe2d13d9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d00a3fc0467d511d05aa37de5b70a5bc580023e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d0b0945a89265c8d9542c00740c0083e6675b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x20ada7710fa520fdf1683b1c103ce9d46d3ef5c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2190d0aa960bec5401e8065ee28edc2550d03c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21a181922e6b7cc4aef7f6f28521ffff152065ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2200eedcbe18a2725b00490fb19a985222827b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x22bc7e911a98a9f8bf425ec9837e06c41935470c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x23c8299de1c90b13b21424bc4353a3b2256ddb24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x23e2d508f3c3b6a876090dac6404bc5734c83230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x24e22252cf41cf9929178a794864ed601b383b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x263b6b3aa44e5be50045a75f1b8ca886b2bd21f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x26d286fe50cfcba69126fca913add5aff780da24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x278ee7f12bc2ecaf2af58225a6114245c6bdb828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x29178cd1d4a9d446f0f5631be2beffa6eaa40952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2a86f29cd1fca4ab8e9c01efb59abdb7f38a040e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2ae3fd2796887d6c9aaae8d27514a7fa89eaf689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2e4496a28d998ff828e1f9e9b5129a2d6a9b612a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x304ab9d4bf1a956fcf99ab5aa1716f73507c821b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x30f283cc0284482e9c29dfb143bd483b5c19954b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3102241584466e225f3387c1468753cb47d9be7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x33bc78083bd6c73b5795039f8ecafce5d8d1775b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x342996683719320570aa7d9c016151deb77bdc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x35a4e2d79140c5cb95b83898468036eb5bb76f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x363a71dd1e69a712b8b87367715877f9586fa22c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x367eb2d95ad055a6a5ca00bacd201401b3829a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x36eba3a29d86cd4951df26a1cd453c7b96580b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x36f4dfa5cfb83bdd438bd611ecfe7fa25d7b1042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x370e37ce793609f5d238a64947571c433cbab092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3786045849e1c634eb8396c756d2fb88764518ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x38894f418f817464a4a7c710076769d7b441cf7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x39047605b103d528257bc8983748dfc31fd903f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x39e67084729b12b4d0a5ef3f1de3e54f8ae9e680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3ae63e34add2e67c036586cd6d93c4ff1d64f444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3c41505b990022012a3199acb83f8fd7725171a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3d0c2f7572c995d8b4a94c47b5594b4c7138ece7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3d870059e20743bba3e9a3a198c6a35d3110a590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44c590b5d78f206db14cb2d67e5fc97eaffefca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x47822e737f21a6270e854ef4f4d17c794e6264da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4812e2f0aec7ce7d80376e804e97a5049cb6d12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4873a93e612434fade7f1ccf6f8c50636ba3989e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x48e47d6554d78ca7478a6eff5fcee463ecf13a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x48fe08317c0e2bae445435cba69dfc6f9c1437ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4a46ce91bbf4432c2ccb6dde53ef49f9d21ea6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4b9c5198ad73f358041d60600f4cdc3d8671f9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4bbea7cc721aeac5bcda2ace2d593048f40d7adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4d476a6aac8b5a296a882b94254cd73ae37c6de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x502d6cc2de8d1c757769b8596c25ea649ac86f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5030405716d47223c027b49f218b96e8a3be4b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x52ebcc212f5c5f6d175432c0ae0b40456c79b352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x537004440fffe1d4ae9f009031fc2b0385fca9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x563e1cd14594ef98e56da99142228a9886723cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5737b8bcdea14ef0373eb3e2a560e7b6e228dc6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x575cd58a11f1e35d11537c277676fcc23a969e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x58a3c412ee07ec5cab2ec13ff7783885e275569e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5a3624857c7461b61673ee211b753f92819c58d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5ab7e3ccaa014f87a1350943c92d412704bd0625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5ab90cf2c1b9f16c62a526137c59f0e60753f8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5bfb636f732ca2c528bcba780b17c3870da2f4d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5dd2a4118d02cb3b240ce85a96ced650bb3ea22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5df453a35f258a60edfa1db5de314cded3cdb0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x619555c3ed360a3fc6cc7533c85255d20ff913bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x61b51b87d9798cda8a2b2824a6f1a4f07b916c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x633183bde54b0602a5b1921c95fb5e694b20627c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x63c66aa8e9c0cad06e7e76a191536e432eeaf585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6568d438c4f816445f584b2029676312d7fdbb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x66136ab227b455ba05b316c30b63dbc112f0a3b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6632a89eb8a39b0bb51d6d5b6192d920d5502eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x66f0bfef3457b846278d7bc90f2055fc658e52c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x692ab3cf8ebdccb4b03715195b65be2f9db1a9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x696b175e15cc1eb15b37972eb162e1341a59a245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x69d89e9206fd076a22ec4e03784ee6ce3df1c57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x69e0c6258bf0dd758d95d5c609beaafa37a82e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x69e4b6489d963910414c0ff938ecf47b0f27c074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6a7e98edfb420e4e4e71c8b23d6ec0755c4ad35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6d5429c21aa7bf596e208269b58b015f6da23ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x70dafb066998249204e15033f626d3856c784010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x721caac0f87c8d48e857657a5343d923e25fd8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x733c1f3ac6e39605d901dc6841f02c197506999c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x73cfcafab984b846bf96e4122eeb10643cbf9e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x73f3bf53a3891feb06e3deed63c9231f336da003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x74b138c119aa61b10d2c5a6201a30018938bd3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7648a938d6c0d49dac0c344bb7964377ce8daf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x76b1bbe0bbd474e640a79a6dae59b7e785851ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x76b6ed2ceb824e3919eb11c49534def5d7eb6ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x779a4391e0799499c73ea5911e14cff75e627137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x782fe0a98bacf219591dd6554c3d8c0984b9fc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x78aa55ce0b0dc7488d2c38bd92769f4d0c8196ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7911cc441714c430fdbe1c2730b7de1b4dd898f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7963ff5f7b7bb4c459cb189bff036a0da43ec310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x79a1a71786a325db7fe70bbf080a1ee046f53c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7bb6499326c6bdd2eed32c8483d38ae8a7374bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7c254a7f1be4dd582da5660e51f704629306faca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392682 | `0x7e6e03822d0077f3c417d33caeac900fc2645679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8090494302d4b3be0f51bce41fc164b1fc7e66dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x80f1336c2908b564ecb70516796fd19f16570fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8184049d58b4e665c87f1b2590851a4893e0742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8190dccfaa90d1bbf1bd91e3e5ee5676f9ce1279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x825adaea5fc56d93b348a48542749e59a340678a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x83636e6de7405d396905e51a3bb42f1c40602a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x857f93c8b0434d8eed19c158eff92a1b323bfec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x891c383879849c7ece791a6635253c966df81946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8992644b7a0897b41f140a1207f654c0193170ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8d864a59c7a22de69c72d9628f841629cfcfee38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8da44e8a1d4af585337e174af13757ed5d5902b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8ea5df40aa1de68526ed29154ea13b920e9de7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8f367a53fb1ea5e9a08cee00eae27ed37f45188b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8f7a70d5448dc02ee7ca266753cc046baf20a7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x90b5404b5a0ef933792b8ad08b64df9243c7103e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x90ff4dbe2886c6565ab81855d22d47f97a052e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x91988f72e42b8c16fc871e52d66a124f340f5e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9199b1f42e5a30c7933ba6628531d5a63b7ec40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x91e28a3d1f8f26106d9928635d0dd91f7c773446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9239f274345a4de048dee4059160b04e3a5220ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9317d52e588f5a24c705e3be8dc676f09aafe919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x938971c46566538c122eed41100b05bd8159ab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x93ab93c8682bb4f400379693f49ca9862b3d6ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x94bb673b75881f54de3fd0d783a802153d02e068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9522c3c66d4bbb8fd0268b2b93ea34b8638c3230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x96bf5f7225a09895e6f4eb82778cda11c7c96ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x97007a6beb169239116cf56bb35c19c94d681ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9702b462c188fe47196f864944cf392e6da0a419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x97caf41c608ccb44af98e4eb4d36e831bd355354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x98387dae0b55e9b56eea21d439852053acb4cfb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x98829fe3f2630bd83074783b6be52187393ed5c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9897ec1bb1187d96674730e602773c82b5b49d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x998cdbbb4776734c5062cac877f6a659f30054ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9b98e2a808c15282162f6b7c0b726bc884ab567f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9baa817c88a63e15bead1a47ca0fe5dfbe39d2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9bab70e3fb2e05614c603f11bd90d48ea4a1ed24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9cfb3b437ba82c8d243d3e77e2858c46fa807663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9d4717bd93cead3b7fa573b18e95ab56a8be3ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9d8aab4d5dd1774270d5fff1b59b1e005fcef527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9eaf82b471791f24377c975546f63ecc1d8e7250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa03fe8f8016e850f82814bf3602eb4c50890c579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa0a1ebf6bd49e455de2302a86584fd8a0edd3344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa20bdffaa8452de61b3786e22ad343b1f7bb5c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa3abb6d2583170106937b172fdbf04fad4c83cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa3d843be0a13e262ae34a261ca19128b4ea5c9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa3dce528195b8d15ea166c623db197b2c3f8d127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa402c6c6b4cf8caf5709db603e61c5261a783652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa434d37bc8cc2c601082d5e4c7b0e1ad52736b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa46e5f31f2071791f890f85108b5ee3ad5924954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa4ec8d19e9d14b5d248fa17ae6a9d13473794c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa505803913de00950b1a478425ebb0c2cc9e5063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa59391f39e4ec9fa7453fa01b7c3558890b58f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa5df3731b87db93eb546aed14edbf3289e9c8e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa75d8b304e004a1273dbbf31ee68220602b45225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa7e65123b02bdeddc966ca3519677c3cd94ecb9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8a6fd8d021d9e32e3318ffacdd94e8cda607831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8d3a6008f894682f681d1d0f3a09e4064393dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa91d6eea8530876fc4fce829d894fb7305296071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9ac6e9712fa3eb3d21e2c90e7897898acafca58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9b2d154338bd2efa943f00719cb36df5d9be67f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9ead5d7c9d0b59a2900824a125f3913009fd638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9f0c9263a20ce772c92f4e6196ee69b2ea565ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392683 | `0xaa30ef758139ae4a7f798112902bf6d65612045f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaef00a0cf402d9dedd54092d9ca179be6f9e5ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xafecdcc561d01c7e5e73003bdf7260e5079577e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb10042d99522f3991ab75aa1d8a7a7ed2070965e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-392684 | `0xb256c57aa0778a184d26d3b7c033db950c7bf007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb26b39d502fa1eea8fc822ecdb1f9ba73809f1d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb330f618210c52fce76dc397dc589ff3b7dda3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb37869cfca0117be335f77a9c7e5ff241713b172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb3fb48bf090bedff4f6f93ffb40221742e107db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb40a984eb793b96076b4f21f9e131be1a6c1b647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb497c3e9d27ba6b1fea9f1b941d8c79e66cfc9d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb5f5a18adbaf7ca90379a6fbac76a75122a60bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb613d8629908f9a50d9ca439abc87baec52338e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb7c8c0ecc68d2fae12713728a03974ef42892eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb846e55f29ba8b69552cf5cf6c7151831f684c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb860a8e95e485e294aa83e3703c1b6be42a82ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb91a7895886d9759d5d8e79ed93cf704e8415033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbb3da3917209f0ae4d9449bcbb60a1cc1bd879f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf892b207a0c55c880522d5ac1841dc16f37dfbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbfa609b8128bed6a1cd0fb459f3243b239866812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc03a66fa0f3abad7ed0b31bdfba501252115be15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc0755dfc279449384b4764e799d59c96fe9f0873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc08081a057287a8ead7751b6a37a101b12e501bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc38831562249c50131304d708b23cb92102c300d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc4753f878ec4d06e4d02e539ff61c5818c9599b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc50683a55839f1dd95ceac1106f76c09e4e6577a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc51d40a0b22c8b458336918bd59f49d9e8b7f4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc5f95a3bacb4ad97b6a839947f1102413720f429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc716033afb93008d8e1f1ccaa48de8606cd796fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc838c833cea1fa063690fa512debcfc0bba735c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc942fd7c397bb4e5e5fcb3131899a82e8bdeda51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xca26e9ab4f0c50855ac6f3e21be67ded7dd20738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcaa6c3e239bf6fca514c88dc6c05306e33867f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xccbf6540bcfa3d051558c0eed45b3faac805ed67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcdbc05893249cc7ed681dc6039ab0964ea694e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcf9b646077f0ecc06ee0cfea99bf2900f332e3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd02bc8920315a655aec0b784efbd5bf676d00f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd21493fac687309947151c87dac8a83210b7988c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd21f732f6c547b0f12664764e0926d5cecdada38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd22127fecebc94665d2b8d6f3e17e9958415bc8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd386c8ec629454f3e45e8659ecaa12e77116125d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd3da6e6ee82b2c01b723854bfcc1fcdada92eb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd5cdf34a7eb986fa4bfa5313362c9259af802229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd5dd6217d89cada7d8c6d7acf09b6bd444e00b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd6f95c3f07e8d5719677fce131329c90ef9eab77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd8bd6e162acfccd125252452da4cd0179891f82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd8ef5f9e8d752eb8c76f1b6105cd48f8efab612a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdac2b61ac9585e6900415696d80a358aabe6675e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdc4f18f57ed3a2a2f94fc8b50393f2d22bf19e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdc70737c4f9fca1d77ca56793a55ba00fa584c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdc9dd9cf3dfc513d531badd2ab1cc53c05b959af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdcad42e840bedfeb2040f594fd079602b42c2d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdf53c48ed0690146b7d168984eb8632a73e350ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe03b7f7a7ba433593644fc656c5c30e4b7e5fad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe1c0fe40c334b52febe428174fd633c6d149f79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe36701c5365844c6ee760b5d101a9684f3d1d534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe37f4431153b82fb334abf281ff9f5f11bf0223b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe3dedcf63940e5ebd8b72ea4f49616f440728cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe81fddc0211526b1873c909bd56e45436b8b8a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe839166295d1778bea609a46292a83d539db060d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe89ebad71e9a18f88f089d623770b50212ea9719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe9a1134cc53fb50cf066e6355808c27b3eafdb80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeaa8468adaf773d2727357a704606b593ac90b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeb47b10660aad38bd24fcb38f6afaa2090ef113c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeb9cbb6c272b17566d4f305be12eb449ec191499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xecd5db9fa6b386234e8a3653e44975d692b99753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf03b75831397d4695a6b9dddeea0e578faa30907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf17d6f566bb37ae131ad2361aac637f9406cf205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf2e0ad6a4bd685cf531161d4e3e23bfcdbf42b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf3926fba55ff419ce933c1a6dbe00464a709f0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf46f27b5068350f7818fe29a12f55e6bfbdef5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf493177ae704e49edb9c789c19ad615c34f6a8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf50225a84382c74cbdea10b0c176f71fc3de0c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf56b0a87aab4286500abb961224c34548172230e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf62a47226142b92a5db77f0be9ae1a557d994a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf712b2372a0d48dddf6a55823d9d7a7cba623bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf8595b8a096d2284c5b2ed08d0659396730f6048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf93414287ab7c379554f7214be506cef61482944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfd9e186f03bb5b5e992de8704bff4a04d661022b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfe762b821116c343d8577d3a28d1db2979454820` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 265
- Live contracts: 0
- Unknown liveness contracts: 265
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=265

Showing first 200 of 265 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00052254e35d24f93a9a680170597c292186deb1` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x00061917bab48ed5725788502ad67c9e461fb8a4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x006ad45cad859d5536c275313cfcbb4799be0e4d` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x018996758aba208c6b7eef6d7de26b078a81940b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x022a9abb46b6da6042db9b3c035c758c24513982` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0340bce99962573c45d27a95cd39c63bd7eeb1c9` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x034eba83c91f047184d34d93a27bdc257f54c0b8` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x04caf88cee89f7bd1810730b7568e66579e1c8ae` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x056973f631a5533470143bb7010c9229c19c04d2` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x0607313d4bd4f222d8163031e4001c7472f46103` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0871f5a0f387d3e00be8b76657cbec1f86237c2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x095838505c2ea4cb6cf94eb64b24f040c224bf94` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x095d6010e0f9c86e939f29184af38d59cd7de7ff` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0a58b3f697ed982b1386bfc12b158423e32c11d1` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0ab68d7628719eadf2dcb0668cc5193e1efbe747` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0c10e603e21f765c50805ce019adc034ef07bb96` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x0c1d7cf4b81915b673cac8f9a25936229694ff7a` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0d6a31a7ee5fc7ef78383ae9f222c6d26533a47d` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0e1b60a47e326442f3c0093ee2295cc118c086ad` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x0e24b4e07610c6424cbe5e5416c243c0ce9c0984` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x102e19054b42286c0992fb0fb7830753a231c696` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x1216624e9753f77dfcdedda7c2938d69076cbf9c` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x129533877c872ea064f2d1bc30e04cc6e3817bf1` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x12b1adce786aaceaf6bcea7929f3d6481a5ebfd4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x13590d0af545669bcecf079b406dc4153cb7be95` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x13cfcf78ec321c00ddbc4755427c19f4024497ff` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x150b7f41bf909ecba63425c39dd976c3024f8651` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x156bca0564d6a7a73b633c927b61a6015a9639de` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x1866be6a65a22a333136b720ba2906cb794d9494` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x18e2a82408b01c135805b1ac8d818056458c2411` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x190583c6e6a89391a5268902e554a6da37421889` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x1a6c0f1a5cf540fa57324ff6cf54c9d4f6be76f4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x1c4ec9063bb2848e5f419f15d92f68fe2d13d9ff` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x1d00a3fc0467d511d05aa37de5b70a5bc580023e` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x1d0b0945a89265c8d9542c00740c0083e6675b1b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x20ada7710fa520fdf1683b1c103ce9d46d3ef5c5` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x2190d0aa960bec5401e8065ee28edc2550d03c3b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x21a181922e6b7cc4aef7f6f28521ffff152065ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x2200eedcbe18a2725b00490fb19a985222827b50` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x22bc7e911a98a9f8bf425ec9837e06c41935470c` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x23c8299de1c90b13b21424bc4353a3b2256ddb24` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x23e2d508f3c3b6a876090dac6404bc5734c83230` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x24e22252cf41cf9929178a794864ed601b383b08` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x263b6b3aa44e5be50045a75f1b8ca886b2bd21f8` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x26d286fe50cfcba69126fca913add5aff780da24` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x278ee7f12bc2ecaf2af58225a6114245c6bdb828` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x29178cd1d4a9d446f0f5631be2beffa6eaa40952` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x2a86f29cd1fca4ab8e9c01efb59abdb7f38a040e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x2ae3fd2796887d6c9aaae8d27514a7fa89eaf689` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x2e4496a28d998ff828e1f9e9b5129a2d6a9b612a` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x304ab9d4bf1a956fcf99ab5aa1716f73507c821b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x30f283cc0284482e9c29dfb143bd483b5c19954b` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0x3102241584466e225f3387c1468753cb47d9be7f` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x33bc78083bd6c73b5795039f8ecafce5d8d1775b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x342996683719320570aa7d9c016151deb77bdc9b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x35a4e2d79140c5cb95b83898468036eb5bb76f2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x363a71dd1e69a712b8b87367715877f9586fa22c` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x367eb2d95ad055a6a5ca00bacd201401b3829a30` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x36eba3a29d86cd4951df26a1cd453c7b96580b0e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x36f4dfa5cfb83bdd438bd611ecfe7fa25d7b1042` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x370e37ce793609f5d238a64947571c433cbab092` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x3786045849e1c634eb8396c756d2fb88764518ec` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0x38894f418f817464a4a7c710076769d7b441cf7f` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x39047605b103d528257bc8983748dfc31fd903f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x39e67084729b12b4d0a5ef3f1de3e54f8ae9e680` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x3ae63e34add2e67c036586cd6d93c4ff1d64f444` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x3c41505b990022012a3199acb83f8fd7725171a9` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x3d0c2f7572c995d8b4a94c47b5594b4c7138ece7` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x3d870059e20743bba3e9a3a198c6a35d3110a590` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x44c590b5d78f206db14cb2d67e5fc97eaffefca2` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x47822e737f21a6270e854ef4f4d17c794e6264da` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x4812e2f0aec7ce7d80376e804e97a5049cb6d12e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x4873a93e612434fade7f1ccf6f8c50636ba3989e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x48e47d6554d78ca7478a6eff5fcee463ecf13a8c` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x48fe08317c0e2bae445435cba69dfc6f9c1437ae` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x4a46ce91bbf4432c2ccb6dde53ef49f9d21ea6a4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x4b9c5198ad73f358041d60600f4cdc3d8671f9c9` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x4bbea7cc721aeac5bcda2ace2d593048f40d7adc` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x4d476a6aac8b5a296a882b94254cd73ae37c6de4` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x502d6cc2de8d1c757769b8596c25ea649ac86f84` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5030405716d47223c027b49f218b96e8a3be4b83` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x52ebcc212f5c5f6d175432c0ae0b40456c79b352` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x537004440fffe1d4ae9f009031fc2b0385fca9f1` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x563e1cd14594ef98e56da99142228a9886723cf7` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5737b8bcdea14ef0373eb3e2a560e7b6e228dc6a` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x575cd58a11f1e35d11537c277676fcc23a969e7a` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x58a3c412ee07ec5cab2ec13ff7783885e275569e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5a3624857c7461b61673ee211b753f92819c58d6` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5ab7e3ccaa014f87a1350943c92d412704bd0625` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5ab90cf2c1b9f16c62a526137c59f0e60753f8ab` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5bfb636f732ca2c528bcba780b17c3870da2f4d6` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5dd2a4118d02cb3b240ce85a96ced650bb3ea22d` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x5df453a35f258a60edfa1db5de314cded3cdb0b8` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x619555c3ed360a3fc6cc7533c85255d20ff913bc` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x61b51b87d9798cda8a2b2824a6f1a4f07b916c45` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x633183bde54b0602a5b1921c95fb5e694b20627c` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x63c66aa8e9c0cad06e7e76a191536e432eeaf585` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x6568d438c4f816445f584b2029676312d7fdbb75` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x66136ab227b455ba05b316c30b63dbc112f0a3b3` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x6632a89eb8a39b0bb51d6d5b6192d920d5502eae` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x66f0bfef3457b846278d7bc90f2055fc658e52c8` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x692ab3cf8ebdccb4b03715195b65be2f9db1a9af` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x696b175e15cc1eb15b37972eb162e1341a59a245` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x69d89e9206fd076a22ec4e03784ee6ce3df1c57c` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x69e0c6258bf0dd758d95d5c609beaafa37a82e56` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x69e4b6489d963910414c0ff938ecf47b0f27c074` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x6a7e98edfb420e4e4e71c8b23d6ec0755c4ad35b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x6d5429c21aa7bf596e208269b58b015f6da23ee7` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x70dafb066998249204e15033f626d3856c784010` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x721caac0f87c8d48e857657a5343d923e25fd8f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x733c1f3ac6e39605d901dc6841f02c197506999c` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x73cfcafab984b846bf96e4122eeb10643cbf9e18` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x73f3bf53a3891feb06e3deed63c9231f336da003` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x74b138c119aa61b10d2c5a6201a30018938bd3b4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x7648a938d6c0d49dac0c344bb7964377ce8daf7a` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0x76b1bbe0bbd474e640a79a6dae59b7e785851ce0` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x76b6ed2ceb824e3919eb11c49534def5d7eb6ef7` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x779a4391e0799499c73ea5911e14cff75e627137` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x782fe0a98bacf219591dd6554c3d8c0984b9fc9b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x78aa55ce0b0dc7488d2c38bd92769f4d0c8196ff` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x7911cc441714c430fdbe1c2730b7de1b4dd898f6` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x7963ff5f7b7bb4c459cb189bff036a0da43ec310` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x79a1a71786a325db7fe70bbf080a1ee046f53c74` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x7bb6499326c6bdd2eed32c8483d38ae8a7374bd5` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x7c254a7f1be4dd582da5660e51f704629306faca` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8090494302d4b3be0f51bce41fc164b1fc7e66dc` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x80f1336c2908b564ecb70516796fd19f16570fc6` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x8184049d58b4e665c87f1b2590851a4893e0742b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8190dccfaa90d1bbf1bd91e3e5ee5676f9ce1279` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x825adaea5fc56d93b348a48542749e59a340678a` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x83636e6de7405d396905e51a3bb42f1c40602a5b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x857f93c8b0434d8eed19c158eff92a1b323bfec6` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0x891c383879849c7ece791a6635253c966df81946` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8992644b7a0897b41f140a1207f654c0193170ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8d864a59c7a22de69c72d9628f841629cfcfee38` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8da44e8a1d4af585337e174af13757ed5d5902b9` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8ea5df40aa1de68526ed29154ea13b920e9de7f4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x8f367a53fb1ea5e9a08cee00eae27ed37f45188b` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x8f7a70d5448dc02ee7ca266753cc046baf20a7db` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x90b5404b5a0ef933792b8ad08b64df9243c7103e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x90ff4dbe2886c6565ab81855d22d47f97a052e74` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x91988f72e42b8c16fc871e52d66a124f340f5e24` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9199b1f42e5a30c7933ba6628531d5a63b7ec40d` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x91e28a3d1f8f26106d9928635d0dd91f7c773446` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9239f274345a4de048dee4059160b04e3a5220ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9317d52e588f5a24c705e3be8dc676f09aafe919` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x938971c46566538c122eed41100b05bd8159ab76` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x93ab93c8682bb4f400379693f49ca9862b3d6ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x94bb673b75881f54de3fd0d783a802153d02e068` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9522c3c66d4bbb8fd0268b2b93ea34b8638c3230` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x96bf5f7225a09895e6f4eb82778cda11c7c96ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x97007a6beb169239116cf56bb35c19c94d681ce2` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9702b462c188fe47196f864944cf392e6da0a419` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x97caf41c608ccb44af98e4eb4d36e831bd355354` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x98387dae0b55e9b56eea21d439852053acb4cfb4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x98829fe3f2630bd83074783b6be52187393ed5c5` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9897ec1bb1187d96674730e602773c82b5b49d76` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x998cdbbb4776734c5062cac877f6a659f30054ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9b98e2a808c15282162f6b7c0b726bc884ab567f` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9baa817c88a63e15bead1a47ca0fe5dfbe39d2d7` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9bab70e3fb2e05614c603f11bd90d48ea4a1ed24` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9cfb3b437ba82c8d243d3e77e2858c46fa807663` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0x9d4717bd93cead3b7fa573b18e95ab56a8be3ab2` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9d8aab4d5dd1774270d5fff1b59b1e005fcef527` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0x9eaf82b471791f24377c975546f63ecc1d8e7250` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa03fe8f8016e850f82814bf3602eb4c50890c579` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa0a1ebf6bd49e455de2302a86584fd8a0edd3344` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa20bdffaa8452de61b3786e22ad343b1f7bb5c61` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa3abb6d2583170106937b172fdbf04fad4c83cec` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa3d843be0a13e262ae34a261ca19128b4ea5c9f0` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa3dce528195b8d15ea166c623db197b2c3f8d127` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa402c6c6b4cf8caf5709db603e61c5261a783652` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa434d37bc8cc2c601082d5e4c7b0e1ad52736b71` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa46e5f31f2071791f890f85108b5ee3ad5924954` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa4ec8d19e9d14b5d248fa17ae6a9d13473794c49` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa505803913de00950b1a478425ebb0c2cc9e5063` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa59391f39e4ec9fa7453fa01b7c3558890b58f90` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa5df3731b87db93eb546aed14edbf3289e9c8e02` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa75d8b304e004a1273dbbf31ee68220602b45225` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa7e65123b02bdeddc966ca3519677c3cd94ecb9b` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa8a6fd8d021d9e32e3318ffacdd94e8cda607831` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa8d3a6008f894682f681d1d0f3a09e4064393dab` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa91d6eea8530876fc4fce829d894fb7305296071` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xa9ac6e9712fa3eb3d21e2c90e7897898acafca58` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa9b2d154338bd2efa943f00719cb36df5d9be67f` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa9ead5d7c9d0b59a2900824a125f3913009fd638` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xa9f0c9263a20ce772c92f4e6196ee69b2ea565ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xaef00a0cf402d9dedd54092d9ca179be6f9e5ce3` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0xafecdcc561d01c7e5e73003bdf7260e5079577e4` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb10042d99522f3991ab75aa1d8a7a7ed2070965e` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb26b39d502fa1eea8fc822ecdb1f9ba73809f1d9` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb330f618210c52fce76dc397dc589ff3b7dda3ae` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb37869cfca0117be335f77a9c7e5ff241713b172` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb3fb48bf090bedff4f6f93ffb40221742e107db7` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb40a984eb793b96076b4f21f9e131be1a6c1b647` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb497c3e9d27ba6b1fea9f1b941d8c79e66cfc9d6` | non_address_book | unknown | unknown | unverified | n/a | `0xd57d3b4650457cba9b4bb2039cfec0424e4f0eee` |
| unverified unclassified | UnnamedContract<br>`0xb5f5a18adbaf7ca90379a6fbac76a75122a60bad` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb613d8629908f9a50d9ca439abc87baec52338e5` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb7c8c0ecc68d2fae12713728a03974ef42892eef` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |
| unverified unclassified | UnnamedContract<br>`0xb846e55f29ba8b69552cf5cf6c7151831f684c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xf884c8774b09b3302f98e38c944eb352264024f8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/solarbeam](https://skynet.certik.com/projects/solarbeam) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.certik.com/projects/solarbeam](https://www.certik.com/projects/solarbeam) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit](https://docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit) | Haechi Audit | Audit | 2021-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21449] skynet.certik.com/projects/solarbeam — no match: Extracted from Audited Files section listing two flattened Solidity files.
- [21450] www.certik.com/projects/solarbeam — no match: Extracted from Audited Files section showing two flattened Solidity files.
- [21451] docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit — no match: The provided text is incomplete and does not contain the actual audit report content. It appears to be a Google Docs error message indicating JavaScript is disabled, preventing the document from loading. No contract names, scope sections, or dates could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/solarbeam | TimelockFlatten | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/solarbeam | SolarPairFlatten | unmatched — not counted | — | listed in Audited Files section | no |
| www.certik.com/projects/solarbeam | TimelockFlatten | unmatched — not counted | — | listed in Audited Files section | no |
| www.certik.com/projects/solarbeam | SolarPairFlatten | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | `0x0d0b4862f5ffa3a47d04ddf0351356d20c830460` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x6bd193ee6d2104f14f94e2ca6efefae561a4334b` | SolarBeamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x0329867a8c457e9f75e25b0685011291cd30904f` | SolarDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x049581aeb6fe262727f290165c29bdab065a1b68` | SolarFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 268 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [21449] skynet.certik.com/projects/solarbeam
- [21450] www.certik.com/projects/solarbeam
- [21451] docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit

Fork inheritance lineage and inherited audits are included when available.
