# Agentic Audit Brief: Tornado Cash

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

- Project: Tornado Cash (`tornado-cash`)
- Website: [https://tornadocash.eth.limo/](https://tornadocash.eth.limo/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, gnosis, goerli, optimism, polygon, sepolia
- Contract surface: 110 unique implementations (111 raw deployments)
- Coverage basis: 0/43 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $417,379,299.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tornado Cash. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, avalanche, bsc, ethereum, gnosis, goerli, optimism, polygon, sepolia. Structural roles: 38 unclassified, 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: unclassified (38), core (6)
- Contract kinds: abstract (26), contract (18)
- Detected standards: none
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Classic 0.1 BNB (`0x84443cfd09a48af6ef360c6976c5392ac5023a1f`, chain 56)
- Classic 0.1 ETH (`0x84443cfd09a48af6ef360c6976c5392ac5023a1f`, chain 10)
- Classic 0.1 ETH (`0x84443cfd09a48af6ef360c6976c5392ac5023a1f`, chain 42161)
- Classic 0.1 WBTC (`0x178169b423a011fff22b9e3f3abea13414ddd0f1`, chain 1)
- Classic 1 BNB (`0xd47438c816c9e7f2e2888e060936a499af9582b3`, chain 56)
- Classic 1 ETH (`0xd47438c816c9e7f2e2888e060936a499af9582b3`, chain 10)
- Classic 1 ETH (`0xd47438c816c9e7f2e2888e060936a499af9582b3`, chain 42161)
- Classic 1 WBTC (`0x610b717796ad172b316836ac95a2ffad065ceab4`, chain 1)
- Classic 1,000 DAI (`0xfd8610d20aa15b7b2e3be39b396a1bc3516c7144`, chain 1)
- Classic 1,000 MATIC (`0xdf231d99ff8b6c6cbf4e9b9a945cbacef9339178`, chain 137)
- Classic 1,000 USDC (`0xd96f2b1c14db8458374d9aca76e26c3d18364307`, chain 1)
- Classic 1,000 xDAI (`0xdf231d99ff8b6c6cbf4e9b9a945cbacef9339178`, chain 100)
- Classic 10 AVAX (`0x330bdfade01ee9bf63c209ee33102dd334618e0a`, chain 43114)
- Classic 10 BNB (`0x330bdfade01ee9bf63c209ee33102dd334618e0a`, chain 56)
- Classic 10 ETH (`0x910cbd523d972eb0a6f4cae4618ad62622b39dbf`, chain 1)
- Classic 10 ETH (`0x330bdfade01ee9bf63c209ee33102dd334618e0a`, chain 10)
- Classic 10 ETH (`0x330bdfade01ee9bf63c209ee33102dd334618e0a`, chain 42161)
- Classic 10 WBTC (`0xbb93e510bbcd0b7beb5a853875f9ec60275cf498`, chain 1)
- Classic 10,000 MATIC (`0xaf4c0b70b2ea9fb7487c7cbb37ada259579fe040`, chain 137)
- Classic 10,000 xDAI (`0xaf4c0b70b2ea9fb7487c7cbb37ada259579fe040`, chain 100)
- Classic 100 AVAX (`0x1e34a77868e19a6647b1f2f47b51ed72dede95dd`, chain 43114)
- Classic 100 BNB (`0x1e34a77868e19a6647b1f2f47b51ed72dede95dd`, chain 56)
- Classic 100 DAI (`0xd4b88df4d29f5cedd6857912842cff3b20c8cfa3`, chain 1)
- Classic 100 ETH (`0xa160cdab225685da1d56aa342ad8841c3b53f291`, chain 1)
- Classic 100 ETH (`0x1e34a77868e19a6647b1f2f47b51ed72dede95dd`, chain 42161)
- Classic 100 MATIC (`0x1e34a77868e19a6647b1f2f47b51ed72dede95dd`, chain 137)
- Classic 100 USDC (`0x4736dcf1b7a3d580672cce6e7c65cd5cc9cfba9d`, chain 1)
- Classic 100 USDT (`0x169ad27a470d064dede56a2d3ff727986b15d52b`, chain 1)
- Classic 100 xDAI (`0x1e34a77868e19a6647b1f2f47b51ed72dede95dd`, chain 100)
- Classic 100,000 DAI (`0x23773e65ed146a459791799d01336db287f25334`, chain 1)
- Classic 100,000 MATIC (`0xa5c2254e4253490c54cef0a4347fddb8f75a4998`, chain 137)
- Classic 100,000 xDAI (`0xa5c2254e4253490c54cef0a4347fddb8f75a4998`, chain 100)
- Classic 5,000 cDAI (`0x22aaa7720ddd5388a3c0a3333430953c68f1849b`, chain 1)
- Classic 5,000,000 cDAI (`0xd21be7248e0197ee08e0c20d4a96debdac3d20af`, chain 1)
- Classic 500 AVAX (`0xaf8d1839c3c67cf571aa74b5c12398d4901147b3`, chain 43114)
- Classic 500,000 cDAI (`0x2717c5e28cf931547b621a5dddb772ab6a35b701`, chain 1)
- cTornado (`0x03893a7c7463ae47d46bc7f091665f1893656003`, chain 1)
- ERC20Tornado (`0x07687e702b410fa43f4cb4af7fa097918ffd2730`, chain 1)
- ETHTornado (`0x1e34a77868e19a6647b1f2f47b51ed72dede95dd`, chain 10)
- Nova Contract (`0xd692fd2d0b2fbd2e52cfa5b5b9424bc981c30696`, chain 100)
- Nova Verifier 16 (`0x743494b60097a2230018079c02fe21a7b687eaa5`, chain 100)
- Nova Verifier 2 (`0xdf3a408c53e5078af6e8fb2a85088d46ee09a61b`, chain 100)
- TornadoCash_erc20 (`0x0836222f2b2b24a3f36f98668ed8f0b38d1a872f`, chain 1)
- TornadoCash_eth (`0x47ce0c6ed5b0ce3d3a51fdb1c52dc66a7c3c2936`, chain 1)
- TornadoCash_Eth_01 (`0x12d66f87a04a9e220743712ce6d9bb1b5616b8fc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/93 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/43 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 49 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 44 of 110 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 110
- Raw deployments: 111
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb541fc07bc7619fd4062a54d96268525cbc6ffef` | ⚠️ Unaudited |
| BatchTreeUpdateVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed3b00b651c4c7af77c2fddce4a388de84b507c6` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079ee67fce2f58472a96584a73c7ab9ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| Classic 0.1 BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-394245 | `0x84443cfd09a48af6ef360c6976c5392ac5023a1f` | ⚠️ Unaudited |
| Classic 0.1 ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-394176 | `0x84443cfd09a48af6ef360c6976c5392ac5023a1f` | ⚠️ Unaudited |
| Classic 0.1 ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394219 | `0x84443cfd09a48af6ef360c6976c5392ac5023a1f` | ⚠️ Unaudited |
| Classic 0.1 WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394159 | `0x178169b423a011fff22b9e3f3abea13414ddd0f1` | ⚠️ Unaudited |
| Classic 1 BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-394246 | `0xd47438c816c9e7f2e2888e060936a499af9582b3` | ⚠️ Unaudited |
| Classic 1 ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-394177 | `0xd47438c816c9e7f2e2888e060936a499af9582b3` | ⚠️ Unaudited |
| Classic 1 ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394220 | `0xd47438c816c9e7f2e2888e060936a499af9582b3` | ⚠️ Unaudited |
| Classic 1 WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394165 | `0x610b717796ad172b316836ac95a2ffad065ceab4` | ⚠️ Unaudited |
| Classic 1,000 DAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394173 | `0xfd8610d20aa15b7b2e3be39b396a1bc3516c7144` | ⚠️ Unaudited |
| Classic 1,000 MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-394216 | `0xdf231d99ff8b6c6cbf4e9b9a945cbacef9339178` | ⚠️ Unaudited |
| Classic 1,000 USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394172 | `0xd96f2b1c14db8458374d9aca76e26c3d18364307` | ⚠️ Unaudited |
| Classic 1,000 xDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394183 | `0xdf231d99ff8b6c6cbf4e9b9a945cbacef9339178` | ⚠️ Unaudited |
| Classic 10 AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394222 | `0x330bdfade01ee9bf63c209ee33102dd334618e0a` | ⚠️ Unaudited |
| Classic 10 BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-394244 | `0x330bdfade01ee9bf63c209ee33102dd334618e0a` | ⚠️ Unaudited |
| Classic 10 ETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394166 | `0x910cbd523d972eb0a6f4cae4618ad62622b39dbf` | ⚠️ Unaudited |
| Classic 10 ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-394175 | `0x330bdfade01ee9bf63c209ee33102dd334618e0a` | ⚠️ Unaudited |
| Classic 10 ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394218 | `0x330bdfade01ee9bf63c209ee33102dd334618e0a` | ⚠️ Unaudited |
| Classic 10 WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394168 | `0xbb93e510bbcd0b7beb5a853875f9ec60275cf498` | ⚠️ Unaudited |
| Classic 10,000 MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-394215 | `0xaf4c0b70b2ea9fb7487c7cbb37ada259579fe040` | ⚠️ Unaudited |
| Classic 10,000 xDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394181 | `0xaf4c0b70b2ea9fb7487c7cbb37ada259579fe040` | ⚠️ Unaudited |
| Classic 100 AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394221 | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ⚠️ Unaudited |
| Classic 100 BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-394243 | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ⚠️ Unaudited |
| Classic 100 DAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394171 | `0xd4b88df4d29f5cedd6857912842cff3b20c8cfa3` | ⚠️ Unaudited |
| Classic 100 ETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394167 | `0xa160cdab225685da1d56aa342ad8841c3b53f291` | ⚠️ Unaudited |
| Classic 100 ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394217 | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ⚠️ Unaudited |
| Classic 100 MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-394213 | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ⚠️ Unaudited |
| Classic 100 USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394164 | `0x4736dcf1b7a3d580672cce6e7c65cd5cc9cfba9d` | ⚠️ Unaudited |
| Classic 100 USDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394158 | `0x169ad27a470d064dede56a2d3ff727986b15d52b` | ⚠️ Unaudited |
| Classic 100 xDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394178 | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ⚠️ Unaudited |
| Classic 100,000 DAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394161 | `0x23773e65ed146a459791799d01336db287f25334` | ⚠️ Unaudited |
| Classic 100,000 MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-394214 | `0xa5c2254e4253490c54cef0a4347fddb8f75a4998` | ⚠️ Unaudited |
| Classic 100,000 xDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394180 | `0xa5c2254e4253490c54cef0a4347fddb8f75a4998` | ⚠️ Unaudited |
| Classic 5,000 cDAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394160 | `0x22aaa7720ddd5388a3c0a3333430953c68f1849b` | ⚠️ Unaudited |
| Classic 5,000,000 cDAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394170 | `0xd21be7248e0197ee08e0c20d4a96debdac3d20af` | ⚠️ Unaudited |
| Classic 500 AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394223 | `0xaf8d1839c3c67cf571aa74b5c12398d4901147b3` | ⚠️ Unaudited |
| Classic 500,000 cDAI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394162 | `0x2717c5e28cf931547b621a5dddb772ab6a35b701` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053c06006e67e09879c09ff012ff9d263df29` | ⚠️ Unaudited |
| cTornado | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394155 | `0x03893a7c7463ae47d46bc7f091665f1893656003` | ⚠️ Unaudited |
| ERC20Tornado | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394156 | `0x07687e702b410fa43f4cb4af7fa097918ffd2730` | ⚠️ Unaudited |
| ETHTornado | unknown | project_anchor | own_supporting | 0 | optimism | unit-394174 | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5562024784cc914069d67d89a28e3201bf7b57e7` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1ad94bcf445a406b892ef0d3082f4174088` | ⚠️ Unaudited |
| Mixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89450e30b806ab95341fade5a9010af146b3232b` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e758796408efdd65bbbd877e8ebceeb231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6696e6569f437f48b111734d72b225d14a7` | ⚠️ Unaudited |
| Nova Verifier 16 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394179 | `0x743494b60097a2230018079c02fe21a7b687eaa5` | ⚠️ Unaudited |
| Nova Verifier 2 | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394184 | `0xdf3a408c53e5078af6e8fb2a85088d46ee09a61b` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c07fa6ce103b43925dddb5e31ca568e53ba1` | ⚠️ Unaudited |
| Proposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b6c07b8940a7602fe4332afa915b366e56eace5` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d903f6003cca6255d85cca4d3b5e5146dc33925` | ⚠️ Unaudited |
| TORN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777feddddffc19ff86db637967013e6c6a116c` | ⚠️ Unaudited |
| TornadoCash_erc20 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394157 | `0x0836222f2b2b24a3f36f98668ed8f0b38d1a872f` | ⚠️ Unaudited |
| TornadoCash_Eth_01 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-394247 (2 proxies) | 2 deployments: ethereum `0x12d66f87a04a9e220743712ce6d9bb1b5616b8fc`; ethereum `0x47ce0c6ed5b0ce3d3a51fdb1c52dc66a7c3c2936` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db297c70758f31a63235edfded040a04ad3fd6c` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159cfd11677a4f2fe4fd0278dd37a95b986069` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Nova Contract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394182 | `0xd692fd2d0b2fbd2e52cfa5b5b9424bc981c30696` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-394163 | `0x3f615ba21bc6cc5d4a6d798c5950cc5c42937fbd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-394169 | `0xca0840578f57fe71599d29375e16783424023357` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394224 | `0x05e0b5b40b7b66098c2161a5ee11c5740a3a7c45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394225 | `0x0e3a09dda6b20afbb34ac7cd4a6881493f3e7bf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394226 | `0x23173fe8b96a4ad8d2e17fb83ea5dcccdca1ae52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394227 | `0x242654336ca2205714071898f67e254eb49acdce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394228 | `0x3aac1cc67c2ec5db4ea850957b967ba153ad6279` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394229 | `0x407cceeaa7c95d2fe2250bf9f2c105aa7aafb512` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394230 | `0x538ab61e8a9fc1b2f93b3dd9011d662d89be6fe6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394231 | `0x57b2b8c82f065de8ef5573f9730fc1449b403c9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394232 | `0x6bf694a291df3fec1f7e69701e3ab6c592435ae7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394233 | `0x723b78e67497e85279cb204544566f4dc5d2aca0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394234 | `0x76d85b4c0fc497eecc38902397ac608000a06607` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394235 | `0x776198ccf446dfa168347089d7338879273172cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394236 | `0x8281aa6795ade17c8973e1aedca380258bc124f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394237 | `0x833481186f16cece3f1eeea1a694c42034c3a0db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394238 | `0x94be88213a387e992dd87de56950a9aef34b9448` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394239 | `0xcc84179ffd19a1627e79f8648d09e095252bc418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394240 | `0xd5d6f8d9e784d0e26222ad3834500801a68d027d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394241 | `0xd8d7de3349ccaa0fde6298fe6d7b7d0d34586193` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-394242 | `0xedc5d01286f99a066559f60a585406f3878a033e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394185 | `0x09aedf485b0f3ab213015f13dbe15d9490e9bfbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394186 | `0x1428e5d2356b13778a13108b10c440c83011dfb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394187 | `0x1572afe6949fdf51cb3e0856216670ae9ee160ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394188 | `0x20bc314fc55345d74235731b6c0cd57ede6cdf2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394189 | `0x258356291e9000270118b07396fc8bfdf6646041` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394190 | `0x27fb0722d38996ff3ffa2f65a959ec2cd95c9525` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-394191 | `0x3ae6667167c0f44394106e197904519d808323ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394192 | `0x4088712ac9fad39ea133cdb9130e465d235e9642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394193 | `0x44c5c92ed73db43888210264f0c8b36fd68d8379` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394194 | `0x488f1d0135ef240d4594273aa5e05782c5d39de1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394195 | `0x4e69fd587118dfb64957d18654e3894118e9b1bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394196 | `0x4ff67cc3cd810556dd6ef72d12d72dcfa925ff95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394197 | `0x50a637770f5d161999420f7d70d888de47207145` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394198 | `0x5bed99c71f9416c2f8e1c36052ada73a0d4dbe4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394199 | `0x6921fd1a97441dd603a997ed6ddf388658daf754` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394200 | `0x6d0018890751efd31feb8166711b16732e2b496b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394201 | `0x73b4bd04bf83206b6e979be2507098f92edf4f90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394202 | `0x8c4a04d872a6c1be37964a21ba3a138525dff50b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394203 | `0x8cc930096b4df705a007c4a039bdfa1320ed2508` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394204 | `0x8d10d506d29fc62abb8a290b99f66db27fc43585` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394205 | `0xae523682eb597e057aca3dc009161a122656f00e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394206 | `0xcdd1fc3f5ac2782d83449d3abe80d6b7b273b0e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394207 | `0xd6663593e71e4916ecb6f6606e1a6fbfa1634ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394208 | `0xdbbec11be17ad70b931db6e01bcd1f6ae973b14e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394209 | `0xe2e051c18baaca3bfeb71b578f3748c519ca0628` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394210 | `0xe5324cd7602eeb387418e594b87acadee08aecad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394211 | `0xecd649870407cd43923a816cc6334a5bdf113621` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-394212 | `0xff34b3d4aee8ddcd6f9afffb6fe49bd371b8a357` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [tornado.cash](https://tornado.cash) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [README.md](https://github.com/tornadocash/tornado-core/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21191] tornado.cash — no match: The provided text only contains 'Tornado.Cash' which is a project name, not a specific contract or file. No scope section or contract names are identifiable.
- [21192] README.md — no match: The provided text is a README file for the Tornado Cash project, not an audit report. It mentions that audits were performed by ABDK Consulting and provides links to audit reports, but does not list specific contracts in scope. No contract names or audit date are extractable from this text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x03893a7c7463ae47d46bc7f091665f1893656003` | cTornado | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07687e702b410fa43f4cb4af7fa097918ffd2730` | ERC20Tornado | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1e34a77868e19a6647b1f2f47b51ed72dede95dd` | ETHTornado | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0836222f2b2b24a3f36f98668ed8f0b38d1a872f` | TornadoCash_erc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12d66f87a04a9e220743712ce6d9bb1b5616b8fc` | TornadoCash_Eth_01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [21191] tornado.cash
- [21192] README.md

Fork inheritance lineage and inherited audits are included when available.
