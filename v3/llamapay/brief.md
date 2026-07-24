# Agentic Audit Brief: LlamaPay

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: LlamaPay (`llamapay`)
- Website: [https://llamapay.io](https://llamapay.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, berachain, blast, bsc, cronos, ethereum, fantom, fraxtal, gnosis, goerli, linea, mantle, metis, mode, optimism, polygon, polygon-zkevm, scroll, sonic, zora
- Contract surface: 80 unique implementations (121 raw deployments)
- Coverage basis: 0/19 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $36,149,992.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LlamaPay. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across arbitrum, avalanche, avalanche-fuji, base, berachain, blast, bsc, cronos, ethereum, fantom, gnosis, goerli, metis, optimism, polygon, sonic, zora. Structural roles: 8 supporting, 8 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: supporting (8), unclassified (8), core (3)
- Contract kinds: contract (13), unclassified (6)
- Detected standards: none
- Frameworks: solmate (6), openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd152f549545093347a162dce210e7293f1452150`, chain 1)
- UnnamedContract (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 10)
- UnnamedContract (`0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9`, chain 10)
- UnnamedContract (`0xd152f549545093347a162dce210e7293f1452150`, chain 10)
- UnnamedContract (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 10)
- UnnamedContract (`0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01`, chain 56)
- UnnamedContract (`0xd152f549545093347a162dce210e7293f1452150`, chain 56)
- UnnamedContract (`0xd152f549545093347a162dce210e7293f1452150`, chain 100)
- UnnamedContract (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 100)
- UnnamedContract (`0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01`, chain 137)
- UnnamedContract (`0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9`, chain 137)
- UnnamedContract (`0xd152f549545093347a162dce210e7293f1452150`, chain 137)
- UnnamedContract (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 137)
- UnnamedContract (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 43114)
- UnnamedContract (`0x7d507b4c2d7e54da5731f643506996da8525f4a3`, chain 43114)
- UnnamedContract (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 81457)
- Disperse (`0x6f9fb43274e9011804bf516e78caf5e89856301a`, chain 43114)
- LlamaPayBot (`0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9`, chain 1)
- LlamaPayBot (`0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9`, chain 56)
- LlamaPayBot (`0x57547f79d8344accab21dc0a9c9d186e240353d7`, chain 43114)
- LlamaPayFactory (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 1)
- LlamaPayFactory (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 56)
- LlamaPayFactory (`0x09c39b8311e4b7c678cbdad76556877ecd3aea07`, chain 8453)
- LlamaPayFactory (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 42161)
- TokenEscrow (`0x056e39bdd2d35f4eb27478369bdade51e0532b72`, chain 1)
- TokenEscrow (`0xb4e9d1f7b32937f04b856ec1ca39ac83e9404779`, chain 10)
- TokenEscrow (`0x1564d7bfa4bc921a748aedb3b71e578672528734`, chain 42161)
- TokenEscrow (`0x4c48f145e0c80d97bfbc983dd2cbebee5d84fa0c`, chain 43114)
- UnnamedContract (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 250)
- UnnamedContract (`0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9`, chain 250)
- UnnamedContract (`0xd152f549545093347a162dce210e7293f1452150`, chain 250)
- UnnamedContract (`0xda33d4b2753b3c2439ca52678e1a506e4c5294d1`, chain 250)
- UnnamedContract (`0xde1c04855c2828431ba637675b6929a684f84c7f`, chain 250)
- Vesting Escrow Factory (`0xcf61782465ff973638143d6492b51a85986ab347`, chain 1)
- Vesting Escrow Factory (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 56)
- Vesting Escrow Factory (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 100)
- Vesting Escrow Factory (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 137)
- Vesting Escrow Factory (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 8453)
- Vesting Escrow Factory (`0x62e13be78af77c86d38a027ae432f67d9ecd4c10`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 40 of 80 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 80
- Raw deployments: 121
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Disperse | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245182 | `0x6f9fb43274e9011804bf516e78caf5e89856301a` | ⚠️ Unaudited |
| Disperse | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245189 | `0x6f9fb43274e9011804bf516e78caf5e89856301a` | ⚠️ Unaudited |
| LlamaPayBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0327a00f37115115038c289827480ddaabae948e`; ethereum `0xe10eb22440feb14aa374fb5607b82041be218ee9`; optimism `0x6f9fb43274e9011804bf516e78caf5e89856301a`; arbitrum `0xb1870e647c4f7ee5dccfb3e4a98be9f888b184e0`; avalanche `0x0327a00f37115115038c289827480ddaabae948e`; avalanche `0x0e52b144489769b6eea905508e54a93cf3c258cf`; avalanche `0x3addfdd274f86587a49bb6ba09baba3581b6cb0f`; avalanche `0x9410fbb6cd03966ad3f8d9014ce1f77b001b633c`; avalanche `0xb7caa90cdbb8746f54b19f2f85e86b99598b268c`; avalanche `0xda33d4b2753b3c2439ca52678e1a506e4c5294d1`; avalanche `0xe10eb22440feb14aa374fb5607b82041be218ee9`; avalanche `0xf13563b612574d3e5372dddc6c06b7a0f3bac057` | ⚠️ Unaudited |
| LlamaPayBot | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245158 | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | ⚠️ Unaudited |
| LlamaPayBot | unknown | project_anchor | own_supporting | 0 | bsc | unit-245194 | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | ⚠️ Unaudited |
| LlamaPayBot | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245187 | `0x57547f79d8344accab21dc0a9c9d186e240353d7` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-245161 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-245196 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ⚠️ Unaudited |
| LlamaPayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: metis `0x06bfb4725c1ccfbfbb45cb59b0f278c3cdf92c38`; metis `0x0ebe050c13ac5a7643616f2d9beb033f689b411c`; metis `0x43634d1c608f16fb0f4926c12b54124c93030600`; metis `0x4ddfc224e5da184dc458769491cb2f17e37567b7`; metis `0xcfb166f1c719376937886ffe10450e6778c937bc`; berachain `0x09c39b8311e4b7c678cbdad76556877ecd3aea07` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | base | unit-245198 | `0x09c39b8311e4b7c678cbdad76556877ecd3aea07` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-245183 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ⚠️ Unaudited |
| Simple Vesting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: ethereum `0x9dd5cf263327e2d6a608da8c30368eb27514bad2`; bsc `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd`; gnosis `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd`; polygon `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd`; sonic `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; base `0x0d5e12e2bd630fc231d68f3cbf95ff5bb1d62cce`; base `0x2b3a5deb344d615bf0e9ba404cc9acbaecd15e49`; base `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd`; base `0x4c0f3d171bf15760a5779ecac073907c9b6d4be5`; base `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; arbitrum `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd`; berachain `0xb93427b83573c8f27a08a909045c3e809610411a` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245200 | `0x056e39bdd2d35f4eb27478369bdade51e0532b72` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-245163 | `0xb4e9d1f7b32937f04b856ec1ca39ac83e9404779` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-245180 | `0x1564d7bfa4bc921a748aedb3b71e578672528734` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-245186 | `0x4c48f145e0c80d97bfbc983dd2cbebee5d84fa0c` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-245159 | `0xcf61782465ff973638143d6492b51a85986ab347` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-245193 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-245167 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-245171 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | base | unit-245199 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-245181 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: sonic `0xb93427b83573c8f27a08a909045c3e809610411a`; berachain `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd`; berachain `0xb61915609e6dc7a7261b678073c53bac5875a8b4` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; ethereum `0xb93427b83573c8f27a08a909045c3e809610411a`; bsc `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; bsc `0xb93427b83573c8f27a08a909045c3e809610411a`; gnosis `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; gnosis `0xb93427b83573c8f27a08a909045c3e809610411a`; polygon `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; polygon `0xb93427b83573c8f27a08a909045c3e809610411a`; arbitrum `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; arbitrum `0xb93427b83573c8f27a08a909045c3e809610411a`; avalanche `0xb61915609e6dc7a7261b678073c53bac5875a8b4`; avalanche `0xb93427b83573c8f27a08a909045c3e809610411a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245160 | `0xd152f549545093347a162dce210e7293f1452150` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-245191 | `0xccdd688d7edcf89bfa217492e247d1395fcec23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245162 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb61915609e6dc7a7261b678073c53bac5875a8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb93427b83573c8f27a08a909045c3e809610411a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245164 | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245165 | `0xd152f549545093347a162dce210e7293f1452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245166 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 2 deployments: cronos `0x62e13be78af77c86d38a027ae432f67d9ecd4c10`; zora `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245192 | `0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245195 | `0xd152f549545093347a162dce210e7293f1452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-245168 | `0xd152f549545093347a162dce210e7293f1452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-245169 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245170 | `0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245172 | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245173 | `0xd152f549545093347a162dce210e7293f1452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245174 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245175 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245176 | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245177 | `0xd152f549545093347a162dce210e7293f1452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245178 | `0xda33d4b2753b3c2439ca52678e1a506e4c5294d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245179 | `0xde1c04855c2828431ba637675b6929a684f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb93427b83573c8f27a08a909045c3e809610411a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x20e536b72dff0972d73fdcd73b655181a763b1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3e5c34ac01321f1ad49aaf9234547acbced8ca33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x479bd4e9f9685f5fa9688322ed2360b100253fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4ddfc224e5da184dc458769491cb2f17e37567b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-245184 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x69bc5a5c0766fb553632071cfbfca172e3b149a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x81a4a88fd41e76685acbff0786a672332d314cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x90f1963153e29e87cd4a58cbb7850ed96fdea050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x97b0389df690cdf01e724df1aa6e18b94d6f492e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xabebfe2f75e4d238211fdc3bc083634bf07a62b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xad9273b52d475781da310055cae4e0361d83d65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xafad7a0794fa622e8f7e6c34e69a2657c157ef99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb61915609e6dc7a7261b678073c53bac5875a8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb93427b83573c8f27a08a909045c3e809610411a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbdbb3e331d2d4cb7ea9deaa143d66e8c477740e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-245185 | `0xc4705f96030d347f421fbe01d9a19f18b26a7d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdc0e58a6ea532c3151ef4d5a23626511b5017852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe453da65f13cd21e9455c46f7803bbf668d97a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf0cccd4ad7b92d038e80818c8a85d8d926cf8139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27fba1863ac1a196e64399ad231edc7f2c247f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x402ab009b90c43ba1044af5aa126cf809add76b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245188 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bbafcd13ca79b9410f43f7b14922e8d8f9fd768` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245190 | `0x7d507b4c2d7e54da5731f643506996da8525f4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedf04002c8bdab6adc2bd738f4e84953bb38c481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-245197 | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb61915609e6dc7a7261b678073c53bac5875a8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb93427b83573c8f27a08a909045c3e809610411a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 70
- Live contracts: 2
- Unknown liveness contracts: 68
- Source-verified contracts: 40
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=4, contamination review=1, exact address book overlap=1, source verified unclassified=34, unverified unclassified=30

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | LlamaPayFactory<br>`0x06bfb4725c1ccfbfbb45cb59b0f278c3cdf92c38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| candidate review | LlamaPayFactory<br>`0x0ebe050c13ac5a7643616f2d9beb033f689b411c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| candidate review | LlamaPayFactory<br>`0x4ddfc224e5da184dc458769491cb2f17e37567b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| candidate review | LlamaPayFactory<br>`0xcfb166f1c719376937886ffe10450e6778c937bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| contamination review | Disperse<br>`0x6f9fb43274e9011804bf516e78caf5e89856301a` | project_anchor | unknown | live | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| exact address book overlap | Disperse<br>`0x6f9fb43274e9011804bf516e78caf5e89856301a` | project_anchor | unknown | live | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0x0327a00f37115115038c289827480ddaabae948e` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0xe10eb22440feb14aa374fb5607b82041be218ee9` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | Simple Vesting Escrow<br>`0x9dd5cf263327e2d6a608da8c30368eb27514bad2` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | LlamaPayBot<br>`0x6f9fb43274e9011804bf516e78caf5e89856301a` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | Simple Vesting Escrow<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Simple Vesting Escrow<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Simple Vesting Escrow<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Simple Vesting Escrow<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Simple Vesting Escrow<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Simple Vesting Escrow<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | LlamaPayBot<br>`0xb1870e647c4f7ee5dccfb3e4a98be9f888b184e0` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | Simple Vesting Escrow<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | LlamaPayBot<br>`0x0327a00f37115115038c289827480ddaabae948e` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0x0e52b144489769b6eea905508e54a93cf3c258cf` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0x3addfdd274f86587a49bb6ba09baba3581b6cb0f` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0x9410fbb6cd03966ad3f8d9014ce1f77b001b633c` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0xb7caa90cdbb8746f54b19f2f85e86b99598b268c` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0xda33d4b2753b3c2439ca52678e1a506e4c5294d1` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0xe10eb22440feb14aa374fb5607b82041be218ee9` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | LlamaPayBot<br>`0xf13563b612574d3e5372dddc6c06b7a0f3bac057` | non_address_book | unknown | unknown | verified | n/a | `0xfe5ee99fdbccfada674a3b85ef653b3ce4656e13` |
| source verified unclassified | Vyper_contract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vyper_contract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Simple Vesting Escrow<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| source verified unclassified | Vesting Escrow Factory<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | verified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0x20e536b72dff0972d73fdcd73b655181a763b1af` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x3e5c34ac01321f1ad49aaf9234547acbced8ca33` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x479bd4e9f9685f5fa9688322ed2360b100253fe4` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0x4ddfc224e5da184dc458769491cb2f17e37567b7` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x69bc5a5c0766fb553632071cfbfca172e3b149a2` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x81a4a88fd41e76685acbff0786a672332d314cfe` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x90f1963153e29e87cd4a58cbb7850ed96fdea050` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x97b0389df690cdf01e724df1aa6e18b94d6f492e` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xabebfe2f75e4d238211fdc3bc083634bf07a62b3` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xad9273b52d475781da310055cae4e0361d83d65b` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xafad7a0794fa622e8f7e6c34e69a2657c157ef99` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xbdbb3e331d2d4cb7ea9deaa143d66e8c477740e4` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xdc0e58a6ea532c3151ef4d5a23626511b5017852` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xe453da65f13cd21e9455c46f7803bbf668d97a89` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xf0cccd4ad7b92d038e80818c8a85d8d926cf8139` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x27fba1863ac1a196e64399ad231edc7f2c247f9b` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x402ab009b90c43ba1044af5aa126cf809add76b2` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0x6bbafcd13ca79b9410f43f7b14922e8d8f9fd768` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0xedf04002c8bdab6adc2bd738f4e84953bb38c481` | non_address_book | unknown | unknown | unverified | n/a | `0x71a15ac12ee91bf7c83d08506f3a3588143898b5` |
| unverified unclassified | UnnamedContract<br>`0x4ace3edd57eff1176a862e7b72db090ecf2b84bd` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xb61915609e6dc7a7261b678073c53bac5875a8b4` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |
| unverified unclassified | UnnamedContract<br>`0xb93427b83573c8f27a08a909045c3e809610411a` | non_address_book | unknown | unknown | unverified | n/a | `0x91dfd5a51e7c00604e8b2521e678dd8444ea56c9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-LlamaPay-v1.0.pdf](https://github.com/LlamaPay/llamapay/blob/master/audits/PeckShield-Audit-Report-LlamaPay-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5984] PeckShield-Audit-Report-LlamaPay-v1.0.pdf — no match: Only one contract, LlamaPay, is explicitly mentioned as the target. The report references a single contract file LlamaPay.sol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-LlamaPay-v1.0.pdf | LlamaPay | unmatched — not counted | — | Listed as target in findings and scope description. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc5a4fec44fbde08a7c9de6e07b60de60ac074ab9` | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x57547f79d8344accab21dc0a9c9d186e240353d7` | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde1c04855c2828431ba637675b6929a684f84c7f` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xde1c04855c2828431ba637675b6929a684f84c7f` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09c39b8311e4b7c678cbdad76556877ecd3aea07` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xde1c04855c2828431ba637675b6929a684f84c7f` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x056e39bdd2d35f4eb27478369bdade51e0532b72` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb4e9d1f7b32937f04b856ec1ca39ac83e9404779` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1564d7bfa4bc921a748aedb3b71e578672528734` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x4c48f145e0c80d97bfbc983dd2cbebee5d84fa0c` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf61782465ff973638143d6492b51a85986ab347` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x62e13be78af77c86d38a027ae432f67d9ecd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [5984] PeckShield-Audit-Report-LlamaPay-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
