# Agentic Audit Brief: WePiggy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: WePiggy (`wepiggy`)
- Website: [https://www.wepiggy.com/](https://www.wepiggy.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, bsc, ethereum, harmony, heco, moonbeam, moonriver, optimism, polygon
- Contract surface: 143 unique implementations (143 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,916,490.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WePiggy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, bsc, ethereum, harmony, heco, moonriver, optimism, polygon, x-layer. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 121 contracts are derived from known codebases. 121 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0c8c1ab017c3c0c8a48dd9f1db2f59022d190f0b`, chain 1)
- UnnamedContract (`0x27a94869341838d5783368a8503fda5fbcd7987c`, chain 1)
- UnnamedContract (`0x3e5496e50793e72e6143a15bed1c2535f0b0b9b0`, chain 1)
- UnnamedContract (`0x5cfad792c4df1323188180778aec58e00eace32a`, chain 1)
- UnnamedContract (`0x678c86dbd6965d65bf74b73d75b615a37428a87d`, chain 1)
- UnnamedContract (`0x690aa2591e57180cba5a6123e9d462907a5e1c95`, chain 1)
- UnnamedContract (`0x8158b34ff8a36dd9e4519d62c52913c24ad5554b`, chain 1)
- UnnamedContract (`0x82413f75f0da101e0fe7f6ff6cba3461f7e04f29`, chain 1)
- UnnamedContract (`0x82de3959c09f665a82c794fafc1eb34cfcb555ee`, chain 1)
- UnnamedContract (`0x85166b72c87697a6acff24101b43fd54fe28a179`, chain 1)
- UnnamedContract (`0x959f30f765a44273eccaa0fac094160aa7c238e2`, chain 1)
- UnnamedContract (`0x97f3763f8c0be87cab0e99ee4b7806aca772feda`, chain 1)
- UnnamedContract (`0x99c3d8ae617b8eae653633a70c6954a67e280c62`, chain 1)
- UnnamedContract (`0xa0a75821220bfc74f8012d5d5745fe472f510075`, chain 1)
- UnnamedContract (`0xc12b9d620bfcb48be3e0ccbf0ea80c717333b46f`, chain 1)
- UnnamedContract (`0xe212829ca055ed63279753971672c693c6c6d088`, chain 1)
- UnnamedContract (`0xef86384cf696929c3227428f539e740ee12fcdc7`, chain 1)
- UnnamedContract (`0xf8e5b9738bf63adfff36a849f9b9c9617c8d8c1f`, chain 1)
- UnnamedContract (`0x2b7f68170a598e507b19bca41ed745eabc936b3f`, chain 10)
- UnnamedContract (`0x3157e0bbdc7e5dea0f4c33a0ad7211b9a4ff19ee`, chain 10)
- UnnamedContract (`0x48a5322c3021d5ed5ce4293112141045d12c7efc`, chain 10)
- UnnamedContract (`0x5ea2321abff78e81702ce877319cd775e0dc865b`, chain 10)
- UnnamedContract (`0x690aa2591e57180cba5a6123e9d462907a5e1c95`, chain 10)
- UnnamedContract (`0x811cd5cb4cc43f44600cfa5ee3f37a402c82aec2`, chain 10)
- UnnamedContract (`0x8158b34ff8a36dd9e4519d62c52913c24ad5554b`, chain 10)
- UnnamedContract (`0x896aecb9e73bf21c50855b7874729596d0e511cb`, chain 10)
- UnnamedContract (`0x8e1e582879cb8bac6283368e8ede458b63f499a5`, chain 10)
- UnnamedContract (`0x8f00a5e13b3f2aaaddc9708ad5c77fbcc300b0ee`, chain 10)
- UnnamedContract (`0xb205d0aef84c666fbbe441c61dc04feb844444e6`, chain 10)
- UnnamedContract (`0xc12b9d620bfcb48be3e0ccbf0ea80c717333b46f`, chain 10)
- UnnamedContract (`0xd58fb16eace4693b2c641cae6850a82763c00a34`, chain 10)
- UnnamedContract (`0xffceacfd39117030314a07b2c86da36e51787948`, chain 10)
- UnnamedContract (`0x00ff07204c3b27d72cf83ef521adb7066167561a`, chain 56)
- UnnamedContract (`0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b`, chain 56)
- UnnamedContract (`0x17933112e9780abd0f27f2b7d9dda9e840d43159`, chain 56)
- UnnamedContract (`0x22789edaa69dd52b2af9321fbbc671af50c2eae6`, chain 56)
- UnnamedContract (`0x23cf81eeaa61c1c7607ee1a3bfcff1f99ac26c85`, chain 56)
- UnnamedContract (`0x2a8cd78bfb91acf53f589961d213d87c956e0d7f`, chain 56)
- UnnamedContract (`0x2b7f68170a598e507b19bca41ed745eabc936b3f`, chain 56)
- UnnamedContract (`0x2dd8ffa7923a17739f70c34759af7650e44ea3be`, chain 56)
- UnnamedContract (`0x311aea58ca127b955890647413846e351df32554`, chain 56)
- UnnamedContract (`0x33a32f0ad4aa704e28c93ed8ffa61d50d51622a7`, chain 56)
- UnnamedContract (`0x33d295aaa719fd756310eb42de2847d0e7be294e`, chain 56)
- UnnamedContract (`0x417fdfc74503d8008aeeb53248e5c0f1960c2c1d`, chain 56)
- UnnamedContract (`0x4c78015679fabe22f6e02ce8102afbf7d93794ea`, chain 56)
- UnnamedContract (`0x621ce6596e0b9ccf635316bfe7fdbc80c3029bec`, chain 56)
- UnnamedContract (`0x6a05bd123d780055c38526cc05d3c9b90d0e471c`, chain 56)
- UnnamedContract (`0x811cd5cb4cc43f44600cfa5ee3f37a402c82aec2`, chain 56)
- UnnamedContract (`0x849c37a029b38d3826562697ccc40c34477c6293`, chain 56)
- UnnamedContract (`0x8c925623708a94c7de98a8e83e8200259ff716e0`, chain 56)
- UnnamedContract (`0xbc52bce2c73fec358abbf047c50377183b9ead0d`, chain 56)
- UnnamedContract (`0xc1b02e52e9512519edf99671931772e452fb4399`, chain 56)
- UnnamedContract (`0xd1121ade04ee215524aefbf7f8d45029214d668d`, chain 56)
- UnnamedContract (`0xdf21d42a0fc6746718f2cfe2798f91c9d7277f32`, chain 56)
- UnnamedContract (`0xe212829ca055ed63279753971672c693c6c6d088`, chain 56)
- UnnamedContract (`0xe6320460aca9e4a4385058eefd7d4d70123fc9c9`, chain 56)
- UnnamedContract (`0x0c8c1ab017c3c0c8a48dd9f1db2f59022d190f0b`, chain 137)
- UnnamedContract (`0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b`, chain 137)
- UnnamedContract (`0x16b321c99ab31a84d565ea484f035693718c3e71`, chain 137)
- UnnamedContract (`0x1b1cd0fdb6592fe482026b8e47706eac1ee94a7c`, chain 137)
- UnnamedContract (`0x3a9cad689a510a7c410ee1be17929cdf78efac8c`, chain 137)
- UnnamedContract (`0x3ae45395f0edc9e72c26c8dfaca1035dddda5464`, chain 137)
- UnnamedContract (`0x451032c55f813338b6e73c1c4b24217614165454`, chain 137)
- UnnamedContract (`0x4c78015679fabe22f6e02ce8102afbf7d93794ea`, chain 137)
- UnnamedContract (`0x5cfad792c4df1323188180778aec58e00eace32a`, chain 137)
- UnnamedContract (`0xa43bf6193a89d28edb529ab5ca9ad7506798f9f1`, chain 137)
- UnnamedContract (`0xa5874c4ea7866e370716b63d9d9f901dfd61bde3`, chain 137)
- UnnamedContract (`0xc1b02e52e9512519edf99671931772e452fb4399`, chain 137)
- UnnamedContract (`0xc28e11040c529a6828c20a641f8f75b7c0ea92e3`, chain 137)
- UnnamedContract (`0xd0199ba93031ba37aa4e17c885a47edeeb23ae04`, chain 137)
- UnnamedContract (`0xd1121ade04ee215524aefbf7f8d45029214d668d`, chain 137)
- UnnamedContract (`0xd58fb16eace4693b2c641cae6850a82763c00a34`, chain 137)
- UnnamedContract (`0xf19200b30a0416322d58e6b6b1d6b5f832936729`, chain 137)
- UnnamedContract (`0xf4b6d5d432f1c7a9efc9e0b04acde479f9fd1f72`, chain 137)
- UnnamedContract (`0xffceacfd39117030314a07b2c86da36e51787948`, chain 137)
- UnnamedContract (`0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b`, chain 1285)
- UnnamedContract (`0x2a8cd78bfb91acf53f589961d213d87c956e0d7f`, chain 1285)
- UnnamedContract (`0x2b7f68170a598e507b19bca41ed745eabc936b3f`, chain 1285)
- UnnamedContract (`0x2dd8ffa7923a17739f70c34759af7650e44ea3be`, chain 1285)
- UnnamedContract (`0x311aea58ca127b955890647413846e351df32554`, chain 1285)
- UnnamedContract (`0x33a32f0ad4aa704e28c93ed8ffa61d50d51622a7`, chain 1285)
- UnnamedContract (`0x3401d01e31bb6defcfc7410c312c0181e19b9dd5`, chain 1285)
- UnnamedContract (`0x389844367ffa7660c6d98ae0f792d2473ad72405`, chain 1285)
- UnnamedContract (`0x621ce6596e0b9ccf635316bfe7fdbc80c3029bec`, chain 1285)
- UnnamedContract (`0x75dcd2536a5f414b8f90bb7f2f3c015a26dc8c79`, chain 1285)
- UnnamedContract (`0x849c37a029b38d3826562697ccc40c34477c6293`, chain 1285)
- UnnamedContract (`0x8c925623708a94c7de98a8e83e8200259ff716e0`, chain 1285)
- UnnamedContract (`0x9a9b2bf1d1c96332c55d0b6acb8c2b441381116d`, chain 1285)
- UnnamedContract (`0xb205d0aef84c666fbbe441c61dc04feb844444e6`, chain 1285)
- UnnamedContract (`0xc1b02e52e9512519edf99671931772e452fb4399`, chain 1285)
- UnnamedContract (`0xf0558a7bf3fe17b0d9737515449608e4c75d67fd`, chain 1285)
- UnnamedContract (`0x04d2944394b70d6e56fcf1cad3aa6b5a43ec8a5c`, chain 42161)
- UnnamedContract (`0x0944eb1060cbd8a7923b1e7b7a10a17603261d2c`, chain 42161)
- UnnamedContract (`0x17933112e9780abd0f27f2b7d9dda9e840d43159`, chain 42161)
- UnnamedContract (`0x2bf852e22c92fd790f4ae54a76536c8c4217786b`, chain 42161)
- UnnamedContract (`0x324dab2dfe9f1341577e91b991d9d8e16419a190`, chain 42161)
- UnnamedContract (`0x3393cd223f59f32cc0cc845de938472595ca48a1`, chain 42161)
- UnnamedContract (`0x417fdfc74503d8008aeeb53248e5c0f1960c2c1d`, chain 42161)
- UnnamedContract (`0x5676eb997c30140606965cebd4ca829ab89a6cac`, chain 42161)
- UnnamedContract (`0x6d4d85c417aabdd2923165d5c66d92ba2ec56104`, chain 42161)
- UnnamedContract (`0x77401ff895bde043d40aae58f98de5698682c12a`, chain 42161)
- UnnamedContract (`0x8f87c9c6efe9ca6997d6fec8bc930c1fed90ccc7`, chain 42161)
- UnnamedContract (`0xaa87715e858b482931eb2f6f92e504571588390b`, chain 42161)
- UnnamedContract (`0xb65ab7e1c6c1ba202baed82d6fb71975d56f007c`, chain 42161)
- UnnamedContract (`0xde39adfb2025d2aa51f6fd967e7c1753215f1905`, chain 42161)
- UnnamedContract (`0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b`, chain 1666600000)
- UnnamedContract (`0x1cda0908efa7b360875b132e8d3353de019885c9`, chain 1666600000)
- UnnamedContract (`0x2a8cd78bfb91acf53f589961d213d87c956e0d7f`, chain 1666600000)
- UnnamedContract (`0x303b3b57689d7a9bd221261a6bf5fda8b9564d5d`, chain 1666600000)
- UnnamedContract (`0x311aea58ca127b955890647413846e351df32554`, chain 1666600000)
- UnnamedContract (`0x33a32f0ad4aa704e28c93ed8ffa61d50d51622a7`, chain 1666600000)
- UnnamedContract (`0x3401d01e31bb6defcfc7410c312c0181e19b9dd5`, chain 1666600000)
- UnnamedContract (`0x75dcd2536a5f414b8f90bb7f2f3c015a26dc8c79`, chain 1666600000)
- UnnamedContract (`0x77401ff895bde043d40aae58f98de5698682c12a`, chain 1666600000)
- UnnamedContract (`0x849c37a029b38d3826562697ccc40c34477c6293`, chain 1666600000)
- UnnamedContract (`0x8c925623708a94c7de98a8e83e8200259ff716e0`, chain 1666600000)
- UnnamedContract (`0x8e1e582879cb8bac6283368e8ede458b63f499a5`, chain 1666600000)
- UnnamedContract (`0xaa87715e858b482931eb2f6f92e504571588390b`, chain 1666600000)
- UnnamedContract (`0xb205d0aef84c666fbbe441c61dc04feb844444e6`, chain 1666600000)
- UnnamedContract (`0xd1121ade04ee215524aefbf7f8d45029214d668d`, chain 1666600000)
- WePiggyToken (`0x6f620ec89b8479e97a6985792d0c64f237566746`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 121/166 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 121 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 121 of 143 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 142
- Unique implementations: 143
- Raw deployments: 143
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/wepiggy/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WePiggyToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397144 | `0x6f620ec89b8479e97a6985792d0c64f237566746` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (142)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397138 | `0x0c8c1ab017c3c0c8a48dd9f1db2f59022d190f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397139 | `0x27a94869341838d5783368a8503fda5fbcd7987c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397140 | `0x3e5496e50793e72e6143a15bed1c2535f0b0b9b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397141 | `0x5cfad792c4df1323188180778aec58e00eace32a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397142 | `0x678c86dbd6965d65bf74b73d75b615a37428a87d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397143 | `0x690aa2591e57180cba5a6123e9d462907a5e1c95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397145 | `0x8158b34ff8a36dd9e4519d62c52913c24ad5554b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397146 | `0x82413f75f0da101e0fe7f6ff6cba3461f7e04f29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397147 | `0x82de3959c09f665a82c794fafc1eb34cfcb555ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397148 | `0x85166b72c87697a6acff24101b43fd54fe28a179` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397149 | `0x959f30f765a44273eccaa0fac094160aa7c238e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397150 | `0x97f3763f8c0be87cab0e99ee4b7806aca772feda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397151 | `0x99c3d8ae617b8eae653633a70c6954a67e280c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397152 | `0xa0a75821220bfc74f8012d5d5745fe472f510075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397153 | `0xc12b9d620bfcb48be3e0ccbf0ea80c717333b46f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397154 | `0xe212829ca055ed63279753971672c693c6c6d088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397155 | `0xef86384cf696929c3227428f539e740ee12fcdc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397156 | `0xf8e5b9738bf63adfff36a849f9b9c9617c8d8c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397157 | `0x2b7f68170a598e507b19bca41ed745eabc936b3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397158 | `0x3157e0bbdc7e5dea0f4c33a0ad7211b9a4ff19ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397159 | `0x48a5322c3021d5ed5ce4293112141045d12c7efc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397160 | `0x5ea2321abff78e81702ce877319cd775e0dc865b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397161 | `0x690aa2591e57180cba5a6123e9d462907a5e1c95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397162 | `0x811cd5cb4cc43f44600cfa5ee3f37a402c82aec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397163 | `0x8158b34ff8a36dd9e4519d62c52913c24ad5554b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397164 | `0x896aecb9e73bf21c50855b7874729596d0e511cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397165 | `0x8e1e582879cb8bac6283368e8ede458b63f499a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397166 | `0x8f00a5e13b3f2aaaddc9708ad5c77fbcc300b0ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397167 | `0xb205d0aef84c666fbbe441c61dc04feb844444e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397168 | `0xc12b9d620bfcb48be3e0ccbf0ea80c717333b46f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397169 | `0xd58fb16eace4693b2c641cae6850a82763c00a34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-397170 | `0xffceacfd39117030314a07b2c86da36e51787948` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397280 | `0x00ff07204c3b27d72cf83ef521adb7066167561a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397281 | `0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397282 | `0x17933112e9780abd0f27f2b7d9dda9e840d43159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397283 | `0x22789edaa69dd52b2af9321fbbc671af50c2eae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397284 | `0x23cf81eeaa61c1c7607ee1a3bfcff1f99ac26c85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397285 | `0x2a8cd78bfb91acf53f589961d213d87c956e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397286 | `0x2b7f68170a598e507b19bca41ed745eabc936b3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397287 | `0x2dd8ffa7923a17739f70c34759af7650e44ea3be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397288 | `0x311aea58ca127b955890647413846e351df32554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397289 | `0x33a32f0ad4aa704e28c93ed8ffa61d50d51622a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397290 | `0x33d295aaa719fd756310eb42de2847d0e7be294e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397291 | `0x417fdfc74503d8008aeeb53248e5c0f1960c2c1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397292 | `0x4c78015679fabe22f6e02ce8102afbf7d93794ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397293 | `0x621ce6596e0b9ccf635316bfe7fdbc80c3029bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397294 | `0x6a05bd123d780055c38526cc05d3c9b90d0e471c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397295 | `0x811cd5cb4cc43f44600cfa5ee3f37a402c82aec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397296 | `0x849c37a029b38d3826562697ccc40c34477c6293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397297 | `0x8c925623708a94c7de98a8e83e8200259ff716e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397298 | `0xbc52bce2c73fec358abbf047c50377183b9ead0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397299 | `0xc1b02e52e9512519edf99671931772e452fb4399` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397300 | `0xd1121ade04ee215524aefbf7f8d45029214d668d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397301 | `0xdf21d42a0fc6746718f2cfe2798f91c9d7277f32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397302 | `0xe212829ca055ed63279753971672c693c6c6d088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-397303 | `0xe6320460aca9e4a4385058eefd7d4d70123fc9c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397171 | `0x0c8c1ab017c3c0c8a48dd9f1db2f59022d190f0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397172 | `0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397173 | `0x17933112e9780abd0f27f2b7d9dda9e840d43159` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397174 | `0x2a8cd78bfb91acf53f589961d213d87c956e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397175 | `0x2b7f68170a598e507b19bca41ed745eabc936b3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397176 | `0x2dd8ffa7923a17739f70c34759af7650e44ea3be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397177 | `0x30ac79b557973771c931d8d765e0728261a742a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397178 | `0x311aea58ca127b955890647413846e351df32554` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397179 | `0x3401d01e31bb6defcfc7410c312c0181e19b9dd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397180 | `0x3c9d17ff44bf6f201bbc2bcf2b96a9a7caf3b345` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397181 | `0x417fdfc74503d8008aeeb53248e5c0f1960c2c1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397182 | `0x4c78015679fabe22f6e02ce8102afbf7d93794ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397183 | `0x621ce6596e0b9ccf635316bfe7fdbc80c3029bec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397184 | `0x75dcd2536a5f414b8f90bb7f2f3c015a26dc8c79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397185 | `0x811cd5cb4cc43f44600cfa5ee3f37a402c82aec2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397186 | `0x8158b34ff8a36dd9e4519d62c52913c24ad5554b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397187 | `0x8b4397a92d53916f24a8e06777cef4485281224c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397188 | `0x8e1e582879cb8bac6283368e8ede458b63f499a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397189 | `0xc24230002c3386f0bce325cb04fac789fe66460a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397190 | `0xd1121ade04ee215524aefbf7f8d45029214d668d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397191 | `0xd828f7029cc58c4e9cab3b1e0726cefab411bc65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397192 | `0xe212829ca055ed63279753971672c693c6c6d088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397209 | `0x0c8c1ab017c3c0c8a48dd9f1db2f59022d190f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397210 | `0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397211 | `0x16b321c99ab31a84d565ea484f035693718c3e71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397212 | `0x1b1cd0fdb6592fe482026b8e47706eac1ee94a7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397213 | `0x3a9cad689a510a7c410ee1be17929cdf78efac8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397214 | `0x3ae45395f0edc9e72c26c8dfaca1035dddda5464` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397215 | `0x451032c55f813338b6e73c1c4b24217614165454` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397216 | `0x4c78015679fabe22f6e02ce8102afbf7d93794ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397217 | `0x5cfad792c4df1323188180778aec58e00eace32a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397218 | `0xa43bf6193a89d28edb529ab5ca9ad7506798f9f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397219 | `0xa5874c4ea7866e370716b63d9d9f901dfd61bde3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397220 | `0xc1b02e52e9512519edf99671931772e452fb4399` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397221 | `0xc28e11040c529a6828c20a641f8f75b7c0ea92e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397222 | `0xd0199ba93031ba37aa4e17c885a47edeeb23ae04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397223 | `0xd1121ade04ee215524aefbf7f8d45029214d668d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397224 | `0xd58fb16eace4693b2c641cae6850a82763c00a34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397225 | `0xf19200b30a0416322d58e6b6b1d6b5f832936729` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397226 | `0xf4b6d5d432f1c7a9efc9e0b04acde479f9fd1f72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397227 | `0xffceacfd39117030314a07b2c86da36e51787948` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397193 | `0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397194 | `0x2a8cd78bfb91acf53f589961d213d87c956e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397195 | `0x2b7f68170a598e507b19bca41ed745eabc936b3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397196 | `0x2dd8ffa7923a17739f70c34759af7650e44ea3be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397197 | `0x311aea58ca127b955890647413846e351df32554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397198 | `0x33a32f0ad4aa704e28c93ed8ffa61d50d51622a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397199 | `0x3401d01e31bb6defcfc7410c312c0181e19b9dd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397200 | `0x389844367ffa7660c6d98ae0f792d2473ad72405` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397201 | `0x621ce6596e0b9ccf635316bfe7fdbc80c3029bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397202 | `0x75dcd2536a5f414b8f90bb7f2f3c015a26dc8c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397203 | `0x849c37a029b38d3826562697ccc40c34477c6293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397204 | `0x8c925623708a94c7de98a8e83e8200259ff716e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397205 | `0x9a9b2bf1d1c96332c55d0b6acb8c2b441381116d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397206 | `0xb205d0aef84c666fbbe441c61dc04feb844444e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397207 | `0xc1b02e52e9512519edf99671931772e452fb4399` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-397208 | `0xf0558a7bf3fe17b0d9737515449608e4c75d67fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397266 | `0x04d2944394b70d6e56fcf1cad3aa6b5a43ec8a5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397267 | `0x0944eb1060cbd8a7923b1e7b7a10a17603261d2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397268 | `0x17933112e9780abd0f27f2b7d9dda9e840d43159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397269 | `0x2bf852e22c92fd790f4ae54a76536c8c4217786b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397270 | `0x324dab2dfe9f1341577e91b991d9d8e16419a190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397271 | `0x3393cd223f59f32cc0cc845de938472595ca48a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397272 | `0x417fdfc74503d8008aeeb53248e5c0f1960c2c1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397273 | `0x5676eb997c30140606965cebd4ca829ab89a6cac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397274 | `0x6d4d85c417aabdd2923165d5c66d92ba2ec56104` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397275 | `0x77401ff895bde043d40aae58f98de5698682c12a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397276 | `0x8f87c9c6efe9ca6997d6fec8bc930c1fed90ccc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397277 | `0xaa87715e858b482931eb2f6f92e504571588390b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397278 | `0xb65ab7e1c6c1ba202baed82d6fb71975d56f007c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397279 | `0xde39adfb2025d2aa51f6fd967e7c1753215f1905` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397228 | `0x12d803497d1e58dd4d4a4f455d754f1d0f937c8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397229 | `0x1cda0908efa7b360875b132e8d3353de019885c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397230 | `0x2a8cd78bfb91acf53f589961d213d87c956e0d7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397231 | `0x303b3b57689d7a9bd221261a6bf5fda8b9564d5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397232 | `0x311aea58ca127b955890647413846e351df32554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397233 | `0x33a32f0ad4aa704e28c93ed8ffa61d50d51622a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397234 | `0x3401d01e31bb6defcfc7410c312c0181e19b9dd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397235 | `0x75dcd2536a5f414b8f90bb7f2f3c015a26dc8c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397236 | `0x77401ff895bde043d40aae58f98de5698682c12a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397237 | `0x849c37a029b38d3826562697ccc40c34477c6293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397238 | `0x8c925623708a94c7de98a8e83e8200259ff716e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397239 | `0x8e1e582879cb8bac6283368e8ede458b63f499a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397240 | `0xaa87715e858b482931eb2f6f92e504571588390b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397241 | `0xb205d0aef84c666fbbe441c61dc04feb844444e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-397242 | `0xd1121ade04ee215524aefbf7f8d45029214d668d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/wepiggy/information](https://immunefi.com/bug-bounty/wepiggy/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21065] immunefi.com/bug-bounty/wepiggy/information — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only general categories like 'smart contracts' and 'app' are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6f620ec89b8479e97a6985792d0c64f237566746` | WePiggyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 142 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
