# Agentic Audit Brief: SPOT Cash

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 15 (3 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SPOT Cash (`spot-cash`)
- Website: [https://www.spot.cash](https://www.spot.cash)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 178 unique implementations (181 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $204,028.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SPOT Cash. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5613fc36a431c9c2746763b80c1dd89e03593871`, chain 1)
- UnnamedContract (`0x82a91a0d599a45d8e9af781d67f695d7c72869bd`, chain 1)
- UnnamedContract (`0x8689fa9991834bcf0387b31b7986ac311bab6ab5`, chain 1)
- UnnamedContract (`0xc1f33e0cf7e40a67375007104b929e49a581bafe`, chain 1)
- UnnamedContract (`0x8f2e6758c4d6570344bd5007dec6301cd57590a0`, chain 8453)
- RouterV2 (`0xce2878d1f2901efaf48cd456e586b470c145d1bc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 172 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 178 unique; 172 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/48
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 130
- Unique implementations: 178
- Raw deployments: 181
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 2.1% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RouterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392958 | `0xce2878d1f2901efaf48cd456e586b470c145d1bc` | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMPLChainBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53049bcf7ca8190ce2eea81747292133d8730a83` | ⚠️ Unaudited |
| AmpleBondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d63d307a2b50c3e76eb12cfba002bf9d8e286f6` | ⚠️ Unaudited |
| App | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ab5ff14f658f1aa122f56ca86cf5f5682dcd9ba` | ⚠️ Unaudited |
| BasicFeeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff732ca9efc95e853fbd71a5c61647cd0c0898a3` | ⚠️ Unaudited |
| BillBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce64cd7583864f7005898aa133c74dbccaca063` | ⚠️ Unaudited |
| BondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216362799cf20a27b246ef0fccf03bc4b8912a96` | ⚠️ Unaudited |
| BondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b135c839d61808e1ec6f84151cd9429b0920374` | ⚠️ Unaudited |
| BondIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2e49edcd5ce08677bab6d791c863f1361b52f2` | ⚠️ Unaudited |
| ButtonswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8de4ab6c65e274630f5279f74eb69b66327ce50` | ⚠️ Unaudited |
| ButtonswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d8c77fff3cdcc43804275ad9997b603a7817c5` | ⚠️ Unaudited |
| ButtonTokenWamplRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c76a2ce5f285f10c5674bee172b420b4e20a983` | ⚠️ Unaudited |
| CDRPricingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437ef588307a6e1367e29283edb1740a8b5cbeaa` | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27730429adca6f1fcefdc05e222d64cffd59d201` | ⚠️ Unaudited |
| CharmGeyserRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bb91dafdb5e1aa7d56a1d6c93fa774678406ceb` | ⚠️ Unaudited |
| DRBalancerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f60625c5b4bdf89b9f18b9c681310e6b3dacdbd` | ⚠️ Unaudited |
| DualAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f46c1545abac895d3ca18f75eadd452643cffb` | ⚠️ Unaudited |
| DualAuctionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1696d00fe4b0f473facbf1958c49090ba55b47a2` | ⚠️ Unaudited |
| ExclusiveGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b3f315e9e7bd3ec8c38bbd31a18a26982f29a66`; ethereum `0xbc82c2fd4222cadce03338b054bcf9dddaf13885` | ⚠️ Unaudited |
| FeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cb728991deb43a55d475885ff07a694bf1cc6b` | ⚠️ Unaudited |
| Geyser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0ec93391752ef1a06aa2b83d15c3a5814651c891`; ethereum `0x298d2c30271e2360b2d6316193b393d3d201084b` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc43803f203e3821213be687120ad44c8a21a7e7` | ⚠️ Unaudited |
| ImplementationDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52d1cea2d36c1e43b776a3392e21aff2ad74ba3` | ⚠️ Unaudited |
| MedianOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a18bfb505b49aed12f19f271cc1183f98ff4f71` | ⚠️ Unaudited |
| Package | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722bcc1c85037c7c233eff80f3c057b980cf972e` | ⚠️ Unaudited |
| PerpetualTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a15571db9bfd13d6fba6fd86049e69b73bfa83` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ccca91368815c1d575f54eeb4c260438b808d2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21a18c81ad418c6c96d4484a97b4632acfbc8914` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e316b724b1ce80aef68f3c7bccd44a060763440` | ⚠️ Unaudited |
| RolloverVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e8adfa8d829dac1c305544a86b53ed0ddd536a` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f600e08540178719bf656e6b43fc15a529c393` | ⚠️ Unaudited |
| SpotAppraiser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b8cf9f99fa69740579114ed4f7559768f27300` | ⚠️ Unaudited |
| SpotCDRPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b03340d27bc5470aa46da007cd5bde89201739` | ⚠️ Unaudited |
| SpotPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8f519878c10ce36c6aaf89c1aeefaade5d7881` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8e7396ecd4b8472b58a138578569d1d8774b09` | ⚠️ Unaudited |
| TrancheClassDiscountStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c85fb101192e3b969c03533a3be0b3d5f764cef` | ⚠️ Unaudited |
| TrancheFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb90e982be14a51828d20fd8a78ec08910b8f7ad` | ⚠️ Unaudited |
| TrancheManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0028c40c8a09449852ea4d2e9aa4d25895f285f` | ⚠️ Unaudited |
| UFragments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3222a6c3fd5927437c9e5f4c9eb5c98b22bcde48` | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1b228a749077b8e307c5856ce62ef35d96dca2ea`; ethereum `0x75864415dad8e40575b741a018e024e68a81dc07` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f723008eec3493a31b6faf7d9fdf3a82322223c` | ⚠️ Unaudited |
| UsdcSpotManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f67158859fe0f69f5773570ec60444fe0c1693c` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a09ffa4d4310c7f59dc538a1481d8ba2214cef0` | ⚠️ Unaudited |
| WAMPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb171c18ce90b633db442f2a6f72874093b49ef` | ⚠️ Unaudited |
| WamplLoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06111c76430d31c640228609f334c207547faab8` | ⚠️ Unaudited |
| WamplOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410f6cd88a590122a693b0e990d0d094a53363fb` | ⚠️ Unaudited |
| WethLoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2119bd77031d5a6c69d7b15a3a73e15a91cbc721` | ⚠️ Unaudited |
| WethWamplManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169ec5446830538e5979121e962621df6003b857` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (130)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027ba57b46c2b9cdbe38c7c44e13a347f05dd578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0874f14f2a4df25836778b8e2a2447d7814514be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ed22a00576e41b64b686857b484987a3ad1a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b44c25b2b27ccb489e5db1c7ddeb99e73c9b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f0d43245273bfcd0c47a145d36399bf5bb4905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1afc8131fff39f8d330e529aeafc2a36a9a5486a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b20e49d6a1f8d1b688ec2f021d709f610af6a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fee4745e70509fbdc718bedf5050f471298c1ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x207c25378b0a50647fcb018eb31b54117cc894b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x232acbabd4cfedb3f23dae1d1df5b75f6e4613f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2398f3fa50c7f9cd75c517478695cfd6b710ae55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2427ce6351842ad4a9ede807d58aa71c5ecb022f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2720b17d14103e163c9e074c1a2dffb78230b197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2978b4103985a6668ce345555b0febde64fb092f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa3136a43eaf71b207c0bce383e6a7836dd3259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c628463de226433820dd479be27360deb4592d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc0e7f1b90b707e22edcc707a9bb875308ca92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302a402be522735c1543bed2a0cc015520b0ee04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3048ec25950fd4cabe8c907d461c37434aac4d07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x340c194063c0e459227dc9e19a45885e044b723e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368dbe853c23523e9a3a54c420ccbe978e5a3a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38fad0aeb6f15cf72bac43448b011f2c8b6167ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392b58f407efe1681a2ebb470600bc2146d231a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x416a5c76966b8b829baca531e9d8e3b041c39d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a473617d5e0e554adda155ef8fc6808ef387f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c0427da62bd16f88058420deb8a80874c2c97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c3d3735084f5f69d4e214fe2680a0c870bbfe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7bcedc6ae736b10bc84c4cfb7105a2b03b6afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d383929302c3744967fdd561d86156b566b13da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508a41c98f50e51988ef57d3c09fa3fdd929c46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53096a5e74713e58f65487c407ee693310fc854b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392954 | `0x5613fc36a431c9c2746763b80c1dd89e03593871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x569f042c54b094a10e6fe1b52515eec507d8da06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ed0272f99ebd903043399a51794f966d72e526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x574fca658b4b59e965c0e5f74761ae0ac41da6a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d177f718e902e59cf3cbd19519194bcc437fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bc95edc2a05247235dd5d6d1773b8ccb95d083b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d76aad615b5c6ab2dd41a56638c0e779bab423c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dc5488b35c34a43fe19ba9de38b63806fab4b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec6f02d0b657e4a56d6020bc21f19f2ca13eca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62cbe9f24413485f04fa62f9548c7855ec4a5425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640eb153c954a031e9bb9dac197a7ece0b54f1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x671f768157f6c8a33ada9b864c8dfaf5b13f1e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6785fa26191eb531c54fd093931f395c4b01b583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699a5fd46f5886e79f430ba4d050d303848375dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ca2e2b0f2e1964bbccede5b2dd37ae25966662f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71868d38ea3b3eb5e4db9a45ee355548b46c82e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72799ffd1f4ccf92ea2b1ee0cada16a5461c4d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728d8bd67b4271a6d7f8424d0e41b41dcb762d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780eb92040bf24cd9bf993505390e88e8ed59935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7935ac0b6e36c9f5cc385acdb2d8fb5f0e3dd3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a97977adb9761e5c01bfa6122b10fb8b5aa98d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2d34f137877ba6226b39d9fbead484149e4dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2e9353d3bf71d9f9246b1291ee29dfb11b32c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d299550cff9075b80d83d5b55d04f78034e5fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x803094e6427c0bd10398236433f6c18b7abf98ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8213ed1a8fc9c935cae8b35b9b8535dc5911eef8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392955 | `0x82a91a0d599a45d8e9af781d67f695d7c72869bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a3bf604afcb3543a649e213f1c71ea283405de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85d1ba777eb3fcbb10c82cdf3aaa8231e21b6777` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392956 | `0x8689fa9991834bcf0387b31b7986ac311bab6ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f12ae68315a89b885a2f1b0610fe2a9e1720b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894fd594d385ff3d8af371456454522979863196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c624d6a336ede5da3bda01574cf091a938ea906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ccffa4eff52b2a91ef461a16c0e85ed491124c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4d2d9649153c78ea14e10821f11b5ea8041806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ffcc418075e4d7a284701a3fad8c151fef96b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90013fb4d3f9844f930f5db8dd53cff38824e3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914a766578c2397da969b3ca088e3e757249a435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9443b779d4aedf97d2b93d7cda5fa0bb6312dff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a02fe68c88e3b5445f3850c800be47acb59f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x965fbfebda76d9aa11642c1d0074cdf02e546f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c9775e076fdf99388c029550155032ba2d8914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdba3bc5ab8ec0e895344705dc85fc29645748a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c05476b16aefde9d0350c0c2acac9bc5c9b1630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce5056eeed22e4569a39daa670bacd277df3ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9de6b8140a1fab02409af2093645d32a07cdccda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07df4a1721bf151104234a8b73b93e5e371f7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa088aef966cad7fe0b38e28c2e07590127ab4ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ad2a279929f40fb6dfe5e0914e64df2aaf2bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa19604b951592170dda857cbe46609b85ab00dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3da50b74e2e3b64bc648f142baffb164bcf158c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa528f136546376af19715ea008fc16b392fca131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa759f960dd59a1ad32c995ecabe802a0c35f244f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa76df05bab61444fa2c1c5c1e14a3ad912a00eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85be82083e032edf32a19028df558484b399196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8b1f51418811f1ae96322df69cf8c3c5920e17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa17f42c2f28ba8ef1de171c5e8e4ebd3cd5f2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf1f71bfaf81699100e4092a689b7763be2eb267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4b08adbae78f5f5ff40324faf82117cbf700d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8108316305a760c42ce1050ebfe638dae4ab1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdb71cb20694c62f29d6695730513c218b859983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf27a8f1c3eb9a3d15a00265368afd39c0b6133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc029595d6026b8bbeb33dcd47600a91564549e29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392957 | `0xc1f33e0cf7e40a67375007104b929e49a581bafe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2727c8a3c2c63b80b720f1ac56c7462cd166b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4620bd46d19950fbf5f7581b3473f004d04f43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc70f5bc82ccb3de00400814ff8bd406c271db3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca353e5daa10b6fd5b455ccff874a6674c35759f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02b9458642d98eb874c2e6f68c50c2fd95fc983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46ba6d942050d489dbd938a2c909a5d5039a161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd530ff90a4943fa5ad4afe94cf9006fb081d2778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64fa63dc5e8fcb743457e47e4d522e11ff1ad66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89533d12a2c2968550ebdf25d5690b6df044dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90fcb328d90b778d1f6719d781045bbbac8f251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda04fcaf748472e62ddf8720968429ddeed73cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05bc20e6c9e9dc0cb72a9ff3b509aa362a785d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe22977381506bf094cb3ed50cb8834e358f7ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe67247df709ac753e6cb6657f07b36c9163d5a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84547a57626f5d611cf5f496627668963b2d01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f883600f875021e6b4c67aa1d47c85763e6736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea07b7a9cc3819f4a27aff6a1ec1eb63c7fd8610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeac308fa45a9b64cfb6965e8d1237b39016862e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca709a67e8e774c827547d900e01b763f77e99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a45fa4fbec33a2a51e08058bea92761c08d7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf41cdfaae972fde08c50594d452dfdd9de94eabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4ff6a7203f91ae72d0273df7596a5df5a85999b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e32814a46dee4fbd947057714127ab1178d688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3a1b55f77d0ced6706283c16296f8317c70e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfad454b578a54c0602fb6d711f26fd701235fab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9ed5b26c73d6c3bc444ffc6dedd297d940f61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc74f7b04c620dad6a750d4f60f13586e2b1ef54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd1cd0802f8c29d45f1135046481bfb1ccbba0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3171eca94a00e40b3671803d899d3fd86c073c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfec99d2ca91d1d4874cbea65b9f78b8b0298484e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1c9293eace8dd7778e4d5834c5d06efce3c079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7d65c538b2968e72e7a4bf59d33eb4081ce4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff85de0c9faa09862ab9183f6ee90eca19c8103c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d4f70b55f7883e5981b41e91c3ed908821063f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392959 | `0x8f2e6758c4d6570344bd5007dec6301cd57590a0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 128
- Live contracts: 0
- Unknown liveness contracts: 128
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=128

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x027ba57b46c2b9cdbe38c7c44e13a347f05dd578` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x0874f14f2a4df25836778b8e2a2447d7814514be` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x13ed22a00576e41b64b686857b484987a3ad1a3b` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x15b44c25b2b27ccb489e5db1c7ddeb99e73c9b67` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x19f0d43245273bfcd0c47a145d36399bf5bb4905` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x1afc8131fff39f8d330e529aeafc2a36a9a5486a` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x1b20e49d6a1f8d1b688ec2f021d709f610af6a0a` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x1fee4745e70509fbdc718bedf5050f471298c1ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x207c25378b0a50647fcb018eb31b54117cc894b1` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x232acbabd4cfedb3f23dae1d1df5b75f6e4613f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x2398f3fa50c7f9cd75c517478695cfd6b710ae55` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x2427ce6351842ad4a9ede807d58aa71c5ecb022f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x2720b17d14103e163c9e074c1a2dffb78230b197` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x2978b4103985a6668ce345555b0febde64fb092f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x298d2c30271e2360b2d6316193b393d3d201084b` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x2aa3136a43eaf71b207c0bce383e6a7836dd3259` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x2c628463de226433820dd479be27360deb4592d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x2cc0e7f1b90b707e22edcc707a9bb875308ca92f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0x302a402be522735c1543bed2a0cc015520b0ee04` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x3048ec25950fd4cabe8c907d461c37434aac4d07` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x340c194063c0e459227dc9e19a45885e044b723e` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x368dbe853c23523e9a3a54c420ccbe978e5a3a9d` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x38fad0aeb6f15cf72bac43448b011f2c8b6167ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x392b58f407efe1681a2ebb470600bc2146d231a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x416a5c76966b8b829baca531e9d8e3b041c39d43` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x48a473617d5e0e554adda155ef8fc6808ef387f5` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x48c0427da62bd16f88058420deb8a80874c2c97a` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x49c3d3735084f5f69d4e214fe2680a0c870bbfe3` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x4a7bcedc6ae736b10bc84c4cfb7105a2b03b6afc` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x4d383929302c3744967fdd561d86156b566b13da` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x508a41c98f50e51988ef57d3c09fa3fdd929c46e` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x53096a5e74713e58f65487c407ee693310fc854b` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x569f042c54b094a10e6fe1b52515eec507d8da06` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x56ed0272f99ebd903043399a51794f966d72e526` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x574fca658b4b59e965c0e5f74761ae0ac41da6a7` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x59d177f718e902e59cf3cbd19519194bcc437fef` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x5bc95edc2a05247235dd5d6d1773b8ccb95d083b` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x5d76aad615b5c6ab2dd41a56638c0e779bab423c` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x5dc5488b35c34a43fe19ba9de38b63806fab4b23` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x5ec6f02d0b657e4a56d6020bc21f19f2ca13eca9` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x62cbe9f24413485f04fa62f9548c7855ec4a5425` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x640eb153c954a031e9bb9dac197a7ece0b54f1e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x671f768157f6c8a33ada9b864c8dfaf5b13f1e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x6785fa26191eb531c54fd093931f395c4b01b583` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x699a5fd46f5886e79f430ba4d050d303848375dd` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x6ca2e2b0f2e1964bbccede5b2dd37ae25966662f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x71868d38ea3b3eb5e4db9a45ee355548b46c82e0` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0x72799ffd1f4ccf92ea2b1ee0cada16a5461c4d96` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0x728d8bd67b4271a6d7f8424d0e41b41dcb762d81` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x75864415dad8e40575b741a018e024e68a81dc07` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x780eb92040bf24cd9bf993505390e88e8ed59935` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x7935ac0b6e36c9f5cc385acdb2d8fb5f0e3dd3b7` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x7a97977adb9761e5c01bfa6122b10fb8b5aa98d6` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x7b2d34f137877ba6226b39d9fbead484149e4dea` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x7b2e9353d3bf71d9f9246b1291ee29dfb11b32c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x7d299550cff9075b80d83d5b55d04f78034e5fe9` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x803094e6427c0bd10398236433f6c18b7abf98ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x8213ed1a8fc9c935cae8b35b9b8535dc5911eef8` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x85a3bf604afcb3543a649e213f1c71ea283405de` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x85d1ba777eb3fcbb10c82cdf3aaa8231e21b6777` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x88f12ae68315a89b885a2f1b0610fe2a9e1720b9` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x894fd594d385ff3d8af371456454522979863196` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x8c624d6a336ede5da3bda01574cf091a938ea906` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0x8ccffa4eff52b2a91ef461a16c0e85ed491124c1` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x8e4d2d9649153c78ea14e10821f11b5ea8041806` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x8ffcc418075e4d7a284701a3fad8c151fef96b68` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x90013fb4d3f9844f930f5db8dd53cff38824e3cf` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x914a766578c2397da969b3ca088e3e757249a435` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x9443b779d4aedf97d2b93d7cda5fa0bb6312dff2` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x94a02fe68c88e3b5445f3850c800be47acb59f9d` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x965fbfebda76d9aa11642c1d0074cdf02e546f3c` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x99c9775e076fdf99388c029550155032ba2d8914` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x9bdba3bc5ab8ec0e895344705dc85fc29645748a` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x9c05476b16aefde9d0350c0c2acac9bc5c9b1630` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x9ce5056eeed22e4569a39daa670bacd277df3ef1` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x9de6b8140a1fab02409af2093645d32a07cdccda` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa07df4a1721bf151104234a8b73b93e5e371f7e8` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xa088aef966cad7fe0b38e28c2e07590127ab4ccb` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa0ad2a279929f40fb6dfe5e0914e64df2aaf2bec` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xa19604b951592170dda857cbe46609b85ab00dee` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa3da50b74e2e3b64bc648f142baffb164bcf158c` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa528f136546376af19715ea008fc16b392fca131` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa759f960dd59a1ad32c995ecabe802a0c35f244f` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xa76df05bab61444fa2c1c5c1e14a3ad912a00eba` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa85be82083e032edf32a19028df558484b399196` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xa8b1f51418811f1ae96322df69cf8c3c5920e17d` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xaa17f42c2f28ba8ef1de171c5e8e4ebd3cd5f2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xaf1f71bfaf81699100e4092a689b7763be2eb267` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xb4b08adbae78f5f5ff40324faf82117cbf700d49` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xb8108316305a760c42ce1050ebfe638dae4ab1ba` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xbc82c2fd4222cadce03338b054bcf9dddaf13885` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xbdb71cb20694c62f29d6695730513c218b859983` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xbdf27a8f1c3eb9a3d15a00265368afd39c0b6133` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xc029595d6026b8bbeb33dcd47600a91564549e29` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xc2727c8a3c2c63b80b720f1ac56c7462cd166b3f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xc4620bd46d19950fbf5f7581b3473f004d04f43f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xc70f5bc82ccb3de00400814ff8bd406c271db3c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xca353e5daa10b6fd5b455ccff874a6674c35759f` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xd02b9458642d98eb874c2e6f68c50c2fd95fc983` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xd46ba6d942050d489dbd938a2c909a5d5039a161` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xd530ff90a4943fa5ad4afe94cf9006fb081d2778` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xd64fa63dc5e8fcb743457e47e4d522e11ff1ad66` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xd89533d12a2c2968550ebdf25d5690b6df044dc3` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xd90fcb328d90b778d1f6719d781045bbbac8f251` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xda04fcaf748472e62ddf8720968429ddeed73cec` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xe05bc20e6c9e9dc0cb72a9ff3b509aa362a785d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xe22977381506bf094cb3ed50cb8834e358f7ef6c` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xe67247df709ac753e6cb6657f07b36c9163d5a7d` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xe84547a57626f5d611cf5f496627668963b2d01c` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xe9f883600f875021e6b4c67aa1d47c85763e6736` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xea07b7a9cc3819f4a27aff6a1ec1eb63c7fd8610` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xeac308fa45a9b64cfb6965e8d1237b39016862e3` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xeca709a67e8e774c827547d900e01b763f77e99f` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xf0a45fa4fbec33a2a51e08058bea92761c08d7d5` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xf41cdfaae972fde08c50594d452dfdd9de94eabc` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xf4ff6a7203f91ae72d0273df7596a5df5a85999b` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xf8e32814a46dee4fbd947057714127ab1178d688` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xfa3a1b55f77d0ced6706283c16296f8317c70e52` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xfad454b578a54c0602fb6d711f26fd701235fab6` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xfb9ed5b26c73d6c3bc444ffc6dedd297d940f61c` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xfc74f7b04c620dad6a750d4f60f13586e2b1ef54` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xfd1cd0802f8c29d45f1135046481bfb1ccbba0f3` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xfd3171eca94a00e40b3671803d899d3fd86c073c` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xfec99d2ca91d1d4874cbea65b9f78b8b0298484e` | non_address_book | unknown | unknown | unverified | n/a | `0xd7e86bd77784217324b4e94aedc68e5c8227ec2b` |
| unverified unclassified | UnnamedContract<br>`0xff1c9293eace8dd7778e4d5834c5d06efce3c079` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xff7d65c538b2968e72e7a4bf59d33eb4081ce4e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0xff85de0c9faa09862ab9183f6ee90eca19c8103c` | non_address_book | unknown | unknown | unverified | n/a | `0xa308de214e01c365834e3344c1088b0d2b97559c` |
| unverified unclassified | UnnamedContract<br>`0x7d4f70b55f7883e5981b41e91c3ed908821063f9` | non_address_book | unknown | unknown | unverified | n/a | `0x48a152e1274f2b8c8767cb9faa1056c09313ebfd` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Spot-v2.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/v2.0.0/PeckShield-Audit-Report-Spot-v2.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-Spot-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/v3.0.0/PeckShield-Audit-Report-Spot-v1.0.pdf) | PeckShield | Audit | 2024-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high|medium |
| [PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/vaults/BillBroker/v1.0.0/PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21453] PeckShield-Audit-Report-Spot-v2.0.pdf — no match: No explicit scope table; contracts extracted from findings targets. Audit date from cover page.
- [21454] PeckShield-Audit-Report-Spot-v1.0.pdf — matched: No explicit scope table; contracts extracted from findings targets and recommendations.
- [21456] PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf — no match: The report does not have a dedicated scope section or table listing contracts in scope. However, the findings consistently target 'BillBroker' and mention 'Multiple Contracts' in PVE-003. No other contract names are explicitly identified as in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Spot-v2.0.pdf | RolloverVault | unmatched — not counted | — | Target in finding PVE-001 and PVE-003 | no |
| PeckShield-Audit-Report-Spot-v2.0.pdf | PerpetualTranche | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Spot-v2.0.pdf | RouterV1 | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | PerpetualTranche | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BondIssue | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BondIssuer | unmatched — not counted | — | mentioned in finding PVE-001 target and recommendation | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | RouterV2 | own contract | RouterV2 (selected) `0xce2878d1f2901efaf48cd456e586b470c145d1bc` — deployed 2024-04-15 20:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Spot-v1.0.pdf | FeePolicy | unmatched — not counted | — | mentioned in finding PVE-003 target and PVE-005 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BondHelpers | unmatched — not counted | — | mentioned in finding PVE-004 target | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | RolloverVault | unmatched — not counted | — | mentioned in finding PVE-001 recommendation | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | UniswapV3PoolHelpers | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BillBroker | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf | BillBroker | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, and PVE-003; mentioned as the main contract in scope. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 130 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=3
- Match method counts: unique_name=3

Zero-match audit list:

- [21453] PeckShield-Audit-Report-Spot-v2.0.pdf
- [21456] PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
