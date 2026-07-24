# Agentic Audit Brief: Tornado Cash

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Tornado Cash (`tornado-cash`)
- Website: [https://tornadocash.eth.limo/](https://tornadocash.eth.limo/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, bsc, ethereum, gnosis, goerli, optimism, polygon, sepolia
- Contract surface: 305 unique implementations (307 raw deployments)
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
- Outside the address book: 212 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 44 of 305 unique; 261 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 305
- Raw deployments: 307
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
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb541fc07bc7619fd4062a54d96268525cbc6ffef`; ethereum `0xe25a4c20d222c8d202467f9c4cb964b4819bb3ca` | ⚠️ Unaudited |
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

### ❓ Unverified (245)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Nova Contract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-394182 | `0xd692fd2d0b2fbd2e52cfa5b5b9424bc981c30696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x100341623d0e9e3cd5be19e8db7c53709812a873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1356c899d8c9467c7f71c195612f8a395abf2f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24acd5e922850d67344294d4c3ba0925c8a3465f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b85802d66a195c8ff9c45964526a2f3256c85de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c031def2175f4f5aabda87b169bac91a44a2048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f14e983f27905ce38c9142a7c836366dc9d2c03` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-394163 | `0x3f615ba21bc6cc5d4a6d798c5950cc5c42937fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c57b58b5bbabdccd639e691f6d47c9a150ec2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0010eea43265f020a55a722199a09fb16f6055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83584f83f26af4edda9cbe8c730bc87c364b28fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a1b5cdb22c43faab4abeb5c74999895464ddaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad122c22b14202b4490edaf288fdb3c7cb3ff5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60c772958a3ed56c1f15dd055ba37ac8e523a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeaac358560e11f52454d997aaff2c5731b6f8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c8094b234dce6e03f10a5b673c1d8c69739a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba214c1c1928a32bffe790263e38b4af9bfcd659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6955ddc0b07ea6514c1c27077764129a13d832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc1e3fdcb4edf37fea6e7f42a39670079b34783` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-394169 | `0xca0840578f57fe71599d29375e16783424023357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0957127d271d77bd0476d9e97873378eb14c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce172ce1f20ec0b3728c9965470eaf994a03557a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd691f27f38b395864ea86cfc7253969b409c362d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf266317c04672c034e183d3f5851991b33433a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60dd140cff0706bae9cd734ac3ae76ad9ebc32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67721a2d8f736e75a49fdd7fad2e31d8676542a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc2d97b5e77b3690242dbf7c93059f1af19578e` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00f7fecfaebed9499e1f3f9d04e755a21e5fc47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x012bac54348c0e635dcac9d5fb99f06f24136c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x01781cecba4fab7e0177c882cc0ecfccd5ee68a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02c3e5420527d75c1c864a58d6a2a73b0efbfa4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0496275d34753a48320ca58103d5220d394ff77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04dd9334b4ad4d2f0b951f7f51fb109e7fb01f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0562453c3dafbb5e625483af58f4e6d668c44e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x098a890bafdf6fb4acd24bf107d20ea15d229c62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394185 | `0x09aedf485b0f3ab213015f13dbe15d9490e9bfbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0bd5f04b456ab34a2ab3e9d556fe5b3a41a0bc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c41107f8011efdc410b936df984ae0e7efbcb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f154441c7026edd6a89cc3a5faa2f64c7335c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10523767fcf7c59d78575848c7b30c7a690b40b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x139d4efddaac44dfbf1fbe9b23a635663ebfd4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1410420d603293cc0eec6ec0234a5c4b4061f4b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394186 | `0x1428e5d2356b13778a13108b10c440c83011dfb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14fc51b7df22b4d393cd45504b9f0a3002a63f3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394187 | `0x1572afe6949fdf51cb3e0856216670ae9ee160ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16e49256b40ab13884a4ca83fccc476d365159e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17263735b1687bddfe9115e6ca389e1b312ef3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x177f4611b27cb66f5e6a51b4dd956f37a75f883b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19cdece64ede475ba0eb114ff4e319d64ef8eccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c740a435a06b77b118eff8c0a19695e7c8169bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ce1ba9946c30b4c505631ad9e3e0342877fde02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d28eee666aa5b738bac6426d2184a0f60d4aa2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1df99d4c612a7f70e60ed736a497dafd7702f8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f864a11e0ba69de1a7a098cb9b44e57a02fc68e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f885520b7bd528e46b390040f12e753dce43004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394188 | `0x20bc314fc55345d74235731b6c0cd57ede6cdf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2348efe2c535c9ee9a8264cfa672c87d16afb20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23dab3c64f12b27b5d1a95835227efbb3aa19631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2563e9081484d97351241706c48ede85ca42f271` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394189 | `0x258356291e9000270118b07396fc8bfdf6646041` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394190 | `0x27fb0722d38996ff3ffa2f65a959ec2cd95c9525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x29f2d40b0605204364af54ec677bd022da425d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2aa7819f2e88af4cff8fd0869abdb97e336101ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b01399da41808df94e6aa04eb319f192f0350b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e021eead190cd55c0ceecf308416d0ba0a8a015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2fc0604ae02fa8ab833f135b0c01dfa45f88daa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32064632c1b5bc83d6c22285da91f71edd7024ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3246d6476dcc255b64342911d267f6ca3013068d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3506dd5c32166ed798efd72fd11a0568da06c30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37dc7863a743fca4e532bbe6dee644b87d636ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3809351b99909e2e4f21b9c7e2d43875af6912c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x387d311e47e80b498169e6fb51d3193167d89f7d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-394191 | `0x3ae6667167c0f44394106e197904519d808323ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ec2b6f818b72442fc36561e9f930dd2b60957d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f7e88ad1938634150a3480ac5a58706f7a7655a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394192 | `0x4088712ac9fad39ea133cdb9130e465d235e9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40b10cf80ed7520e57caa9fa14774c6aca5ff839` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394193 | `0x44c5c92ed73db43888210264f0c8b36fd68d8379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x450369751448ebb5d390e9497421769f115d8537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4528650653e323026c4cd22b9d2bb983971fc2e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45f3df824e6df2dc30afbe25a60645066475d144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48424f2779be0f03cdf6f02e17a591a9bf7af89f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394194 | `0x488f1d0135ef240d4594273aa5e05782c5d39de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b74fdb04828462fe1ddd9010a1522356a27712c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bf0c2c74717a4e538cfe25dd389c21a139e0096` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394195 | `0x4e69fd587118dfb64957d18654e3894118e9b1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e86d3aa271fa418f38d7262fdba2989c94aa5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4eee0bb72c2717310318f27628b3c8a708e4951c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f04218ecc7d2756f84836d2dc267293504cabcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394196 | `0x4ff67cc3cd810556dd6ef72d12d72dcfa925ff95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50360e830f4cc6d9daa1e74d2a5ad9644fd202c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394197 | `0x50a637770f5d161999420f7d70d888de47207145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50a715d63bdcd5455a3308932a624263d170dd74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x51343cdd552b1b21c61103830f83e883bbcbcf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x521247b4d0a51e71de580da2cbf99eb40a44b3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x548cf45cf3c7f4e142aa73a4dc8c88bd26663f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54bde009156053108e73e2401aea755e38f92098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x56033e114c61183590d39ba847400f02022ebe47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x566f946211e0e5e082b36870380b58775403dab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x579b73872a7a7ac7510ac77e23a88f4ba92954b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b7f03ff08b7700866555400a71bbe2301d1cbaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5bb220afc6e2e008cb2302a83536a019ed245aa2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394198 | `0x5bed99c71f9416c2f8e1c36052ada73a0d4dbe4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5cb1008969a2d5face8ef32732e6a306d0d0ef2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e659d4c0f8a727d00ae70f96a02c4a64f76c5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x604264f8017fef3b11b3dd63537cb501560380b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6185621c00ea1b46b2865b49d5a96d7ef730dbf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61e11aba0ea933700a74155c845b8ed6c200acc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63dea961a0b2e2df4f7a4bb61cbc39bf53a6eb32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66b3b92fb1b2635504cd5f878e26abd8826aaf1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68194a729c2450ad26072b3d33adacbcef39d574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6820e1b2d9186418950e9f7489765fdfad7910ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68695f5e532d1792c04c169cc7c4c318b6ce8981` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394199 | `0x6921fd1a97441dd603a997ed6ddf388658daf754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69529987fa4a075d0c00b0128fa848dc9ebbe9ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x699784a7bbbd29021927b57059c932b10feb9bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69b9843a16a6e9933125ebd97659ba3ccbe2ef8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c60d915c7a646860dba836ffcb7f112b6cfdc76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394200 | `0x6d0018890751efd31feb8166711b16732e2b496b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d09af48575bacfbaaff1e32d3e102929d2a8a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d906e526a4e2ca02097ba9d0caa3c382f52278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d95337c02b979afd33dd5468abc5c86aed6d52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fa0c0dbaeaf41ec93cdc10f78fd40a4d709bb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x727220cecc01f09924fde6f0569d36738fe0765f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394201 | `0x73b4bd04bf83206b6e979be2507098f92edf4f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7533a269c52fd50400da6df6a7c832249d9ae826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77241299ffa12df99da6c3d9f195aa298955aec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7768248e1ff75612c18324bad06bb393c1206980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x784b90ba1e9a8cf3c9939c2e072f058b024c4b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78b04ad18d76b6e2f41c84af4c4c5c5c61b60a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7908bc4f69d1c3510255e776b6c096469ce68f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ab177b781c2925b84e982c275cb8e672d4d6904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7acf1b9a0cf9f3360370fc17b6c05b06cff77cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ae9672f80ba3fc60a6203346003c7d957acf984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7bfd1cb02fed5a5644185586a55e8d05eb4a07e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ce1062e0688bc3d7699987a38bba84353f69881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f2be3b178deeff716cd6ff03ef79a1dff360ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x812c23640dc89ff6cb8b5af44a3094a94b26b93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x815cbb7a6b212549ef4562f8864b7423159cea02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x821458d9d723c5bdd2565a84ebfca8e3aed11894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82cf17c02a3eedcb03a71869c8c5a144b8ceb3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83ce6ea0b939222719e6c3c373928c700a975a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x878d09968546fe21e9370aad8399b3af98895185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88541670e55cc00beefd87eb59edd1b7c511ac9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x897790c7434bd3c93775b421520a5158af77f2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a0e31de20651fe58a369fd6f76c21a8ff7f8d42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394202 | `0x8c4a04d872a6c1be37964a21ba3a138525dff50b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394203 | `0x8cc930096b4df705a007c4a039bdfa1320ed2508` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394204 | `0x8d10d506d29fc62abb8a290b99f66db27fc43585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f30ec9fb348513494ccc1710528e744efa71003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93090a50e508924b523fd9e24f4508e03328d6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9423502bc4b7ad35ad06545765aeece91dff296a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x94a9d9ac8a22534e3faca9f4e7f2e2cf85d5e4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95b4968851b6c7a890ba89fa3a33fe775ce782d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98458d6a99489f15e6eb5afa67acfacf6f211051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9af11c35c5d3ae182c0050438972aac4376f9516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b6f2dc5475b3c27f46b2b47fd554bf404353c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9bdf15a56a03a542ea588137233013abc5a4b98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d846140818a1617a8842603b1e18b620df1355e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa0cc3b621267971621f310953edf40067f53181b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa209ee6bc38920e432e7037838d9d3d37b2586b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa21cf1b2aaee7a79c8c738cf3f882543806a4fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2a9323c4f63f6e59a53320d48dd7a3ec0f00de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa32a1edce878adeec2613964290400e795329d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7945c8fbde87f847dc2058074fb7b7e469bf23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa813cc4d67821fbacf24659e414a1cf6c551373c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8877386bed5020e37a67a53056c2a62d279d594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa93c9a46bf94752d4b195398b28345ca52fbb748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa8e23fb1079ea71e0a56f48a2aa51851d8433d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad7ebd14e268a9d126851b1ca2abba3a3ccc0a65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394205 | `0xae523682eb597e057aca3dc009161a122656f00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb13cfa6f8b2eed2c37fb00ff0c1a59807c585810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4c1398d92e5a9987124c025c67842227a3a0039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5d0ef1548d9c70d3e7a96ca67a2d7ebc5b1173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8141857d82ec821141c17fa74dfef062eb8594d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba25de9a7dc623b30799f33b770d31b44c2c3b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc2a876ad87c8edb281c36de13fa72041bbb20ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1d9847913ea269dda16e372b51f95ff0c057c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc481b290d55e4866da8b543685ded142a6170636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4bf5cbdabe595361438f8c6a187bdc330539c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc558dbdd856501fcd9aaf1e62eae57a9f0629a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc61960a34a53e65b30f50bb2122513c1c8a1bd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc70c0edaaa236d48454786719aab1935867b45be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc959483dba39aa9e78757139af0e9a2edeb3f42d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9e3f58dc7250cc6ee9366b6302d090d4380ead7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca30c502d52f905fb3d04ee60ca48f5a1a89f8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbe15c1f40f1d7ee1de3756d1557d5fdc2a50bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbe68cdd7688ecbfb2f2a381e624dbb47caaf26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd4e0d6d2b1252e2a709b8ae97dba31164c5a709` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394206 | `0xcdd1fc3f5ac2782d83449d3abe80d6b7b273b0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd09f71b23e54a180e1fecc7669f5f6a6c3a76bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0df82de051244f04bff3a8bb1f62e1cd39eed92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1cf2fbf4fb82045ee0b116eb107d29246e8dce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd32bcd056b3e4265ebbc752bce04f9d3e84aea1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4bdb51fb96996ca24a5c49e7b57f94a1850fa30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4fea5bd40ce7d0f7b269678541ff0a95fcb4b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5643962495cc20610ed264dfc198df8f0426105` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394207 | `0xd6663593e71e4916ecb6f6606e1a6fbfa1634ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd790ed256e81b6799c3ebb8704129d2391132de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8a6f62302da6c7e700e4f46ad3127278334f692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda678ef100c13504eddb8a228a1e8e4cb139f189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda9d4f9b69ac6c22e444ed9af0cfc043b7a7f53f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394208 | `0xdbbec11be17ad70b931db6e01bcd1f6ae973b14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbbfba4096fd294bf52cea1a56e3e19bd89f38ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdde0e8e6d3653614878bf5009edc317bc129fe2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde7562059fe64b3d088a26a3f8b60e77dcb81ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe20cf465a163c395e7dde1466cdd1abe695b4658` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394209 | `0xe2e051c18baaca3bfeb71b578f3748c519ca0628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe38c93180a6ce4173d88793c0671ad1dd417c7d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394210 | `0xe5324cd7602eeb387418e594b87acadee08aecad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe70cdc67c91d5519dd4682ca162e40480773255a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeae631a727f3c4b88aa247b0d3084e2abb17d47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb5f71ab0f002cab71ce687a4b88b9bfacd33bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec3feb483ad15d9c807612de07468853552e9519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec52c9c4ab0fffacfeb52b298343da4eb73f0ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec8ca7b0d6b397f781dc3798d0113c6f2456a2c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-394211 | `0xecd649870407cd43923a816cc6334a5bdf113621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xedc70d581e7db7964251b6e9cdfd80c91d77b970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf05f0da6bc8f05899ba21c299c7461910dfa3907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0d0017efa05d820c1c131818858d82ebfbf03d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf864f011c5a97fd8da79baed78ba77b47112935a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8fb3713d459d7c1018bd0a49d19b4c44290ebe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfaa8fc5637f280f1d8f1a2dc1de73c3fa5b3b504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfbc748b4f6ffb9997b8dcc10fb7494620747a82c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-394212 | `0xff34b3d4aee8ddcd6f9afffb6fe49bd371b8a357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffb52d464115792fe639b017148ce5b6ffbb042f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 196
- Live contracts: 0
- Unknown liveness contracts: 196
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=196

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x100341623d0e9e3cd5be19e8db7c53709812a873` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1356c899d8c9467c7f71c195612f8a395abf2f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24acd5e922850d67344294d4c3ba0925c8a3465f` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b85802d66a195c8ff9c45964526a2f3256c85de` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c031def2175f4f5aabda87b169bac91a44a2048` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f14e983f27905ce38c9142a7c836366dc9d2c03` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41c57b58b5bbabdccd639e691f6d47c9a150ec2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b0010eea43265f020a55a722199a09fb16f6055` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83584f83f26af4edda9cbe8c730bc87c364b28fe` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94a1b5cdb22c43faab4abeb5c74999895464ddaf` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ad122c22b14202b4490edaf288fdb3c7cb3ff5e` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa60c772958a3ed56c1f15dd055ba37ac8e523a0d` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaeaac358560e11f52454d997aaff2c5731b6f8a6` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1c8094b234dce6e03f10a5b673c1d8c69739a00` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba214c1c1928a32bffe790263e38b4af9bfcd659` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc6955ddc0b07ea6514c1c27077764129a13d832` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfc1e3fdcb4edf37fea6e7f42a39670079b34783` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd0957127d271d77bd0476d9e97873378eb14c44` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce172ce1f20ec0b3728c9965470eaf994a03557a` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd691f27f38b395864ea86cfc7253969b409c362d` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe25a4c20d222c8d202467f9c4cb964b4819bb3ca` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf266317c04672c034e183d3f5851991b33433a26` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf60dd140cff0706bae9cd734ac3ae76ad9ebc32a` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf67721a2d8f736e75a49fdd7fad2e31d8676542a` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbc2d97b5e77b3690242dbf7c93059f1af19578e` | non_address_book | unknown | unknown | unverified | n/a | `0x8589427373d6d84e98730d7795d8f6f8731fda16` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x10523767fcf7c59d78575848c7b30c7a690b40b3` | non_address_book | unknown | unknown | unverified | n/a | `0x237c8bf3e59cb634b23563577ddca46b40bd4096` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1df99d4c612a7f70e60ed736a497dafd7702f8ab` | non_address_book | unknown | unknown | unverified | n/a | `0x237c8bf3e59cb634b23563577ddca46b40bd4096` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7ae9672f80ba3fc60a6203346003c7d957acf984` | non_address_book | unknown | unknown | unverified | n/a | `0x237c8bf3e59cb634b23563577ddca46b40bd4096` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa21cf1b2aaee7a79c8c738cf3f882543806a4fb8` | non_address_book | unknown | unknown | unverified | n/a | `0x237c8bf3e59cb634b23563577ddca46b40bd4096` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xad7ebd14e268a9d126851b1ca2abba3a3ccc0a65` | non_address_book | unknown | unknown | unverified | n/a | `0x237c8bf3e59cb634b23563577ddca46b40bd4096` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc70c0edaaa236d48454786719aab1935867b45be` | non_address_book | unknown | unknown | unverified | n/a | `0x237c8bf3e59cb634b23563577ddca46b40bd4096` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x00f7fecfaebed9499e1f3f9d04e755a21e5fc47c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x012bac54348c0e635dcac9d5fb99f06f24136c9a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x01781cecba4fab7e0177c882cc0ecfccd5ee68a9` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x02c3e5420527d75c1c864a58d6a2a73b0efbfa4d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0496275d34753a48320ca58103d5220d394ff77f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x04dd9334b4ad4d2f0b951f7f51fb109e7fb01f1d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0562453c3dafbb5e625483af58f4e6d668c44e19` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x098a890bafdf6fb4acd24bf107d20ea15d229c62` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0bd5f04b456ab34a2ab3e9d556fe5b3a41a0bc8d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0c41107f8011efdc410b936df984ae0e7efbcb50` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0f154441c7026edd6a89cc3a5faa2f64c7335c80` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x139d4efddaac44dfbf1fbe9b23a635663ebfd4af` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1410420d603293cc0eec6ec0234a5c4b4061f4b1` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x14fc51b7df22b4d393cd45504b9f0a3002a63f3f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x16e49256b40ab13884a4ca83fccc476d365159e8` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x17263735b1687bddfe9115e6ca389e1b312ef3e4` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x177f4611b27cb66f5e6a51b4dd956f37a75f883b` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x19cdece64ede475ba0eb114ff4e319d64ef8eccf` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1c740a435a06b77b118eff8c0a19695e7c8169bb` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ce1ba9946c30b4c505631ad9e3e0342877fde02` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1d28eee666aa5b738bac6426d2184a0f60d4aa2a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1f864a11e0ba69de1a7a098cb9b44e57a02fc68e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1f885520b7bd528e46b390040f12e753dce43004` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2348efe2c535c9ee9a8264cfa672c87d16afb20d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x23dab3c64f12b27b5d1a95835227efbb3aa19631` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2563e9081484d97351241706c48ede85ca42f271` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x29f2d40b0605204364af54ec677bd022da425d03` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2aa7819f2e88af4cff8fd0869abdb97e336101ee` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2b01399da41808df94e6aa04eb319f192f0350b3` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2e021eead190cd55c0ceecf308416d0ba0a8a015` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2fc0604ae02fa8ab833f135b0c01dfa45f88daa2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x32064632c1b5bc83d6c22285da91f71edd7024ee` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3246d6476dcc255b64342911d267f6ca3013068d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3506dd5c32166ed798efd72fd11a0568da06c30e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x37dc7863a743fca4e532bbe6dee644b87d636ea0` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3809351b99909e2e4f21b9c7e2d43875af6912c6` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x387d311e47e80b498169e6fb51d3193167d89f7d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3ec2b6f818b72442fc36561e9f930dd2b60957d2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3f7e88ad1938634150a3480ac5a58706f7a7655a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x40b10cf80ed7520e57caa9fa14774c6aca5ff839` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x450369751448ebb5d390e9497421769f115d8537` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4528650653e323026c4cd22b9d2bb983971fc2e2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x45f3df824e6df2dc30afbe25a60645066475d144` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x48424f2779be0f03cdf6f02e17a591a9bf7af89f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4b74fdb04828462fe1ddd9010a1522356a27712c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4bf0c2c74717a4e538cfe25dd389c21a139e0096` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4e86d3aa271fa418f38d7262fdba2989c94aa5ba` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4eee0bb72c2717310318f27628b3c8a708e4951c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4f04218ecc7d2756f84836d2dc267293504cabcc` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50360e830f4cc6d9daa1e74d2a5ad9644fd202c1` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50a715d63bdcd5455a3308932a624263d170dd74` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x51343cdd552b1b21c61103830f83e883bbcbcf56` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x521247b4d0a51e71de580da2cbf99eb40a44b3bf` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x548cf45cf3c7f4e142aa73a4dc8c88bd26663f43` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x54bde009156053108e73e2401aea755e38f92098` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x56033e114c61183590d39ba847400f02022ebe47` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x566f946211e0e5e082b36870380b58775403dab9` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x579b73872a7a7ac7510ac77e23a88f4ba92954b7` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5b7f03ff08b7700866555400a71bbe2301d1cbaf` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5bb220afc6e2e008cb2302a83536a019ed245aa2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5cb1008969a2d5face8ef32732e6a306d0d0ef2a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5e659d4c0f8a727d00ae70f96a02c4a64f76c5cb` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x604264f8017fef3b11b3dd63537cb501560380b5` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6185621c00ea1b46b2865b49d5a96d7ef730dbf0` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x61e11aba0ea933700a74155c845b8ed6c200acc8` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x63dea961a0b2e2df4f7a4bb61cbc39bf53a6eb32` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x66b3b92fb1b2635504cd5f878e26abd8826aaf1e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x68194a729c2450ad26072b3d33adacbcef39d574` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6820e1b2d9186418950e9f7489765fdfad7910ab` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x68695f5e532d1792c04c169cc7c4c318b6ce8981` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x69529987fa4a075d0c00b0128fa848dc9ebbe9ce` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x699784a7bbbd29021927b57059c932b10feb9bc3` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x69b9843a16a6e9933125ebd97659ba3ccbe2ef8a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6c60d915c7a646860dba836ffcb7f112b6cfdc76` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6d09af48575bacfbaaff1e32d3e102929d2a8a6b` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6d906e526a4e2ca02097ba9d0caa3c382f52278e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6d95337c02b979afd33dd5468abc5c86aed6d52a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6fa0c0dbaeaf41ec93cdc10f78fd40a4d709bb4d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x727220cecc01f09924fde6f0569d36738fe0765f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7533a269c52fd50400da6df6a7c832249d9ae826` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x77241299ffa12df99da6c3d9f195aa298955aec6` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7768248e1ff75612c18324bad06bb393c1206980` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x784b90ba1e9a8cf3c9939c2e072f058b024c4b8a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x78b04ad18d76b6e2f41c84af4c4c5c5c61b60a10` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7908bc4f69d1c3510255e776b6c096469ce68f25` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7ab177b781c2925b84e982c275cb8e672d4d6904` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7acf1b9a0cf9f3360370fc17b6c05b06cff77cb2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7bfd1cb02fed5a5644185586a55e8d05eb4a07e2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7ce1062e0688bc3d7699987a38bba84353f69881` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7f2be3b178deeff716cd6ff03ef79a1dff360ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x812c23640dc89ff6cb8b5af44a3094a94b26b93a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x815cbb7a6b212549ef4562f8864b7423159cea02` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x821458d9d723c5bdd2565a84ebfca8e3aed11894` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x82cf17c02a3eedcb03a71869c8c5a144b8ceb3e2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x83ce6ea0b939222719e6c3c373928c700a975a6a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x878d09968546fe21e9370aad8399b3af98895185` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x88541670e55cc00beefd87eb59edd1b7c511ac9a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x897790c7434bd3c93775b421520a5158af77f2f0` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8a0e31de20651fe58a369fd6f76c21a8ff7f8d42` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8f30ec9fb348513494ccc1710528e744efa71003` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x93090a50e508924b523fd9e24f4508e03328d6d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9423502bc4b7ad35ad06545765aeece91dff296a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x94a9d9ac8a22534e3faca9f4e7f2e2cf85d5e4c8` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x95b4968851b6c7a890ba89fa3a33fe775ce782d3` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x98458d6a99489f15e6eb5afa67acfacf6f211051` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9af11c35c5d3ae182c0050438972aac4376f9516` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9b6f2dc5475b3c27f46b2b47fd554bf404353c35` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9bdf15a56a03a542ea588137233013abc5a4b98a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9d846140818a1617a8842603b1e18b620df1355e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa0cc3b621267971621f310953edf40067f53181b` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa209ee6bc38920e432e7037838d9d3d37b2586b2` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa2a9323c4f63f6e59a53320d48dd7a3ec0f00de5` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa32a1edce878adeec2613964290400e795329d83` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa7945c8fbde87f847dc2058074fb7b7e469bf23a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa813cc4d67821fbacf24659e414a1cf6c551373c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa8877386bed5020e37a67a53056c2a62d279d594` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa93c9a46bf94752d4b195398b28345ca52fbb748` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xaa8e23fb1079ea71e0a56f48a2aa51851d8433d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb13cfa6f8b2eed2c37fb00ff0c1a59807c585810` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb4c1398d92e5a9987124c025c67842227a3a0039` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb5d0ef1548d9c70d3e7a96ca67a2d7ebc5b1173e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb8141857d82ec821141c17fa74dfef062eb8594d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xba25de9a7dc623b30799f33b770d31b44c2c3b77` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbc2a876ad87c8edb281c36de13fa72041bbb20ec` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc1d9847913ea269dda16e372b51f95ff0c057c6d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc481b290d55e4866da8b543685ded142a6170636` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc4bf5cbdabe595361438f8c6a187bdc330539c60` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc558dbdd856501fcd9aaf1e62eae57a9f0629a3c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc61960a34a53e65b30f50bb2122513c1c8a1bd6a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc959483dba39aa9e78757139af0e9a2edeb3f42d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc9e3f58dc7250cc6ee9366b6302d090d4380ead7` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xca30c502d52f905fb3d04ee60ca48f5a1a89f8db` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcbe15c1f40f1d7ee1de3756d1557d5fdc2a50bbd` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcbe68cdd7688ecbfb2f2a381e624dbb47caaf26c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xcd4e0d6d2b1252e2a709b8ae97dba31164c5a709` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd09f71b23e54a180e1fecc7669f5f6a6c3a76bee` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd0df82de051244f04bff3a8bb1f62e1cd39eed92` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd1cf2fbf4fb82045ee0b116eb107d29246e8dce9` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd32bcd056b3e4265ebbc752bce04f9d3e84aea1e` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd4bdb51fb96996ca24a5c49e7b57f94a1850fa30` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd4fea5bd40ce7d0f7b269678541ff0a95fcb4b68` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd5643962495cc20610ed264dfc198df8f0426105` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd790ed256e81b6799c3ebb8704129d2391132de0` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd8a6f62302da6c7e700e4f46ad3127278334f692` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xda678ef100c13504eddb8a228a1e8e4cb139f189` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xda9d4f9b69ac6c22e444ed9af0cfc043b7a7f53f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdbbfba4096fd294bf52cea1a56e3e19bd89f38ea` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdde0e8e6d3653614878bf5009edc317bc129fe2f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xde7562059fe64b3d088a26a3f8b60e77dcb81ebe` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe20cf465a163c395e7dde1466cdd1abe695b4658` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe38c93180a6ce4173d88793c0671ad1dd417c7d8` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe70cdc67c91d5519dd4682ca162e40480773255a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xeae631a727f3c4b88aa247b0d3084e2abb17d47d` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xeb5f71ab0f002cab71ce687a4b88b9bfacd33bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xec3feb483ad15d9c807612de07468853552e9519` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xec52c9c4ab0fffacfeb52b298343da4eb73f0ece` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xec8ca7b0d6b397f781dc3798d0113c6f2456a2c5` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xedc70d581e7db7964251b6e9cdfd80c91d77b970` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf05f0da6bc8f05899ba21c299c7461910dfa3907` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf0d0017efa05d820c1c131818858d82ebfbf03d7` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf864f011c5a97fd8da79baed78ba77b47112935a` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf8fb3713d459d7c1018bd0a49d19b4c44290ebe5` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfaa8fc5637f280f1d8f1a2dc1de73c3fa5b3b504` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xfbc748b4f6ffb9997b8dcc10fb7494620747a82c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xffb52d464115792fe639b017148ce5b6ffbb042f` | non_address_book | unknown | unknown | unverified | n/a | `0xfa0e305e0f46ab04f00ae6b5f4560d61a2183e00` |

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
| needs_review | 283 |

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
