# Agentic Audit Brief: Ubeswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Ubeswap (`ubeswap`)
- Website: [https://ubeswap.org](https://ubeswap.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: celo
- Contract surface: 98 unique implementations (98 raw deployments)
- Coverage basis: 0/18 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $763,526.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ubeswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across celo. Structural roles: 15 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (15), supporting (3)
- Contract kinds: contract (18)
- Detected standards: erc165 (2), accesscontrol (1), erc20 (1), multicall (1)
- Frameworks: openzeppelin (11), uniswap-v3 (2), permit2 (1), solmate (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7167338ea247cc20b7a559bf171a3dcdb5de7a8a`, chain 42220)
- UnnamedContract (`0x897387c7b996485c3aaa85c94272cd6c506f8c8f`, chain 42220)
- Create2Deployer (`0x4a27c059fd7e383854ea7de6be9c390a795f6ee3`, chain 42220)
- GnosisSafeProxy (`0x3cdb7098842621c22721f8c576d49dc366555167`, chain 42220)
- QuoterV2 (`0xa8864a18fab1ed233ce1921f329a6a92dbcca56f`, chain 42220)
- RomulusDelegate (`0xd355a00220fba16b69cd8c4fbe16e02ca855f928`, chain 42220)
- Timelock (`0x936f5b0164b08bf0e123cdf356118343342fdaf6`, chain 42220)
- UbeAdvisoryVesting (`0xf7d06202b0779f9c314d67bad8538b3c661f7d10`, chain 42220)
- UbeEcosystemVesting (`0x3924c6b0003135683b59bab63c2b4a5631a6ae73`, chain 42220)
- UbeMarketingVesting (`0xd733bc0acd4583ffa0816d92ee7ef417370d0c5e`, chain 42220)
- UbeMiningReserveVesting (`0xae4634be8c69ff602e6dd9a1e3c5cecca3502968`, chain 42220)
- UbeswapV3Farming (`0xa6e9069cb055a425eb41d185b740b22ec8f51853`, chain 42220)
- UbeTeamVesting (`0x74d4983a29044b68aadd2bdb86bc82cf8c6c8b5c`, chain 42220)
- UbeToken (`0x71e26d0e519d14591b9de9a0fe9513a398101490`, chain 42220)
- UniswapInterfaceMulticall (`0x4d446f092461a0bfdebc72abc831541ca949d63f`, chain 42220)
- UniswapV2Factory (`0x62d5b84be28a183abb507e125b384122d2c25fae`, chain 42220)
- UniswapV2Router02 (`0xe3d8bd6aed4f159bc8000a9cd47cffdb95f96121`, chain 42220)
- UniswapV3Factory (`0x67fea58d5a5a4162ced847e13c2c81c73bf8aec4`, chain 42220)
- UniversalRouter (`0x3c255ded9b25f0bfb4ef1d14234bd2514d7a7a0d`, chain 42220)
- VotableStakingRewards (`0x388d611a57ac15dcc1b937f287e5e908ba5ff5c9`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/18 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 78 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 20 of 98 unique; 78 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 98
- Raw deployments: 98
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Create2Deployer | unknown | project_anchor | own_supporting | 0 | celo | unit-395280 | `0x4a27c059fd7e383854ea7de6be9c390a795f6ee3` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | celo | unit-395278 | `0x3cdb7098842621c22721f8c576d49dc366555167` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5c76245413c6c4cbe7a3fae395a8f7af06fdcd65` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6bd9193bb82fdf663ec6aea0a3baf2ad0170e694` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | celo | unit-395300 | `0xa8864a18fab1ed233ce1921f329a6a92dbcca56f` | ⚠️ Unaudited |
| RomulusDelegate | unknown | project_anchor | own_supporting | 1 | celo | unit-395309 | `0xd355a00220fba16b69cd8c4fbe16e02ca855f928` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x534408e91d755a0d898e1c508e987e8d0615b52c` | ⚠️ Unaudited |
| StakingRewardsCapped | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x799a23da264a157db6f9c02be62f82ce8d602a45` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5cde4d414f27e331b6738f783bc84c5507d8ee7a` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1d8c564cce485c2f053ef32652e4dba00d4265c4` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | celo | unit-395296 | `0x936f5b0164b08bf0e123cdf356118343342fdaf6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6e23691e355703fde907aa97fe9acabb2e4ffe67` | ⚠️ Unaudited |
| UbeAdvisoryVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395308 | `0xf7d06202b0779f9c314d67bad8538b3c661f7d10` | ⚠️ Unaudited |
| UbeConvert | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9dfc135e0984fe88acd45d68e62a73e98dbb7a36` | ⚠️ Unaudited |
| UbeEcosystemVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395274 | `0x3924c6b0003135683b59bab63c2b4a5631a6ae73` | ⚠️ Unaudited |
| UbeMarketingVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395304 | `0xd733bc0acd4583ffa0816d92ee7ef417370d0c5e` | ⚠️ Unaudited |
| UbeMiningReserveVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395302 | `0xae4634be8c69ff602e6dd9a1e3c5cecca3502968` | ⚠️ Unaudited |
| UbeswapV3Farming | unknown | project_anchor | own_supporting | 0 | celo | unit-395298 | `0xa6e9069cb055a425eb41d185b740b22ec8f51853` | ⚠️ Unaudited |
| UbeTeamVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395292 | `0x74d4983a29044b68aadd2bdb86bc82cf8c6c8b5c` | ⚠️ Unaudited |
| UbeToken | unknown | project_anchor | own_supporting | 0 | celo | unit-395290 | `0x71e26d0e519d14591b9de9a0fe9513a398101490` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | celo | unit-395282 | `0x4d446f092461a0bfdebc72abc831541ca949d63f` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | celo | unit-395284 | `0x62d5b84be28a183abb507e125b384122d2c25fae` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | project_anchor | own_supporting | 0 | celo | unit-395306 | `0xe3d8bd6aed4f159bc8000a9cd47cffdb95f96121` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | project_anchor | own_supporting | 0 | celo | unit-395286 | `0x67fea58d5a5a4162ced847e13c2c81c73bf8aec4` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | celo | unit-395276 | `0x3c255ded9b25f0bfb4ef1d14234bd2514d7a7a0d` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x65415d0bde9249e185d433a08823fd7fa7ebec66` | ⚠️ Unaudited |
| VotableStakingRewards | unknown | project_anchor | own_supporting | 0 | celo | unit-395272 | `0x388d611a57ac15dcc1b937f287e5e908ba5ff5c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x007cead18708a508d85605b54ac8282591d39140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x014453260b6296d5f31401a980170ac3633230f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x063f4ad1236831900d8d878449bd141286a678ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x06c54a34dd41df728cc9d470fa8a83ef50e4077a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x07c8520237005e456124d8ba39900be38cded410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0f697b1e68728966c6e2bf383de676a49ada115f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x13b0a5bf2589d603bb735c79813ee1aa6c12fb1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x148db03e4b483a9427d19bbdc58068d2325fbee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x155ae944e3107e2ccd90f8cac8aaf710232eeac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1860b609e245cae737f153c9b9ae937964f5e57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1c0afdde64b1554491a54d4d3ddc3bf8585cf063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1c2f6189109c8df2e129c0f130c48ca62fca3988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1f34a843832044a085bb9cae48cc7294d5478faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2b7ec7c6bc223450d00076f773a6300314ca9f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3b7ba332541ac14f6d74fe496f8a1118d0191f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x415f0716ece1ae6bebf961f98b0a8e7335d337e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x44e01d472ff86eb1636ce013e574f70de76e1f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4d22519c0bbc63bb6d2c4445d1e245a1f8b659d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e045fb19faa7006f61de94827998b4763da8280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4ec243a7d67c7e3f0235a11350f8260f130221d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f3c58164a816a53e4cfdf4eae9de84c6d3a87fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x53c0050c1253e66806b48630ff020efdb5a4abfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x54804898da24eeb3492ad176f36788e93bb383b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x572943f0c442b495d5360006840fbf2cfc834a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x57a5cb9aeacfab51a8619b1b0e47c28811a2dc0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x58a113eeecc50d934b43158e601549becca89ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5a07af212669f43970a390d5f1606e75ab9c242e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5dc48e2186979b92e46a980227e7feb16fa42810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5fe789ac69ad1030890f1854d954aec43909b93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x64422150636683d9b87e1845edda086ebeff19ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x663f54111dcfc7dee45a0d70e3bdf7ca96bc0cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6abbf1fa0a1e4169daa375deab079f236709a014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6d8ea7c3f837f456cd4d638c9cc2e5bdc25ed78b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-395288 | `0x7167338ea247cc20b7a559bf171a3dcdb5de7a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x81d3686e21686f47ea18179250c168f484a94dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8585a611521717ffe7d93cf264dbe936e484dba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x881eb619c4e592af41f8a19734909dbc37cde50c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-395294 | `0x897387c7b996485c3aaa85c94272cd6c506f8c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8a86a25ea559fe6632a0ffd1fd49a0a853b581b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8dd4c9985dd4072afd063239964c36c1ae9c79b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x90415b89d1ef945b8846ffa6118c3fd60eab9e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a720e7aed0212a38663545e2d9042a133c38b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9e7cc89106000bc075f95c6c2330eb77882fe839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9ea520d04b4e7754dcb97552cc601a942ff7e4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa4e52e95d24d65f572b823f301171bdcc0dbbd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa5250df087d124b92f4512055927e0a236c7f161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa58aca9ed4b0fd100b783d6c9bfea1b896f8a528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb1544ab8f5f1af3b31c250060d34ce74dd6027b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbb5dbd81c5484aac713ea94e07828a6f79ee1d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbc931fc41a0010eef81509b87bad3c85e9be0c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbdd748137d5e9df2ded3cfb802693a4240de2299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbe6f42adeb65b01ed1b776b525f1ff1d262771c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc0249112c43bc71cd0b31122cb50f56959ab6976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc08fd5f1bb6740f9b5868089244ce9ac5f3aa05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc8b9279de8921b2d221b8ba7bd1546def8e17ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd1620a07a4b82d082917a3c0717cae9ddfe4a982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4ee609ab68948e067c83f934fa565845bcd3f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xda44b76f6bbbf68d9ff1df1ad82c8b25bfc52633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf82f13381e9862b9bb0d2fe4369735d2a260377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe389f92b47d913f773254962ed638e12c28aa82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe8b9cc60d160332572e5b10ed9a20c507ea54063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf0c5f4c0b83cd139ef60e02f00a86c0f64d9c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf1ae50bc34580e3872d96c21977bd5b1c434ab08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf3037ab754c605e9fa0ab9814acfb21845467b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf637389f27b0d7d54716c7f153c72c2df1d4ea49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf7a7dcf9ca2f0eda2820f4608993ba3e1f09669b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf8b0f3ff7c263c578916b9cc3af6ef140c818274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfaec23634270c9cba648dc94eb19a34b19186eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfaedec30575d651dc97f6f070085b46d71a4030c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfb189c3820fbfbf8bd6da7ae0e6c034f85d5db29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfb8ca52748e70f887e9b8c5ffbb611d1ea4cc725` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 69
- Live contracts: 0
- Unknown liveness contracts: 69
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=69

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| celo | unverified unclassified | UnnamedContract<br>`0x007cead18708a508d85605b54ac8282591d39140` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x014453260b6296d5f31401a980170ac3633230f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x063f4ad1236831900d8d878449bd141286a678ea` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x06c54a34dd41df728cc9d470fa8a83ef50e4077a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x07c8520237005e456124d8ba39900be38cded410` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x0f697b1e68728966c6e2bf383de676a49ada115f` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x13b0a5bf2589d603bb735c79813ee1aa6c12fb1d` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x148db03e4b483a9427d19bbdc58068d2325fbee5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x155ae944e3107e2ccd90f8cac8aaf710232eeac3` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x1860b609e245cae737f153c9b9ae937964f5e57c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x1c0afdde64b1554491a54d4d3ddc3bf8585cf063` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x1c2f6189109c8df2e129c0f130c48ca62fca3988` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x3b7ba332541ac14f6d74fe496f8a1118d0191f27` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x415f0716ece1ae6bebf961f98b0a8e7335d337e8` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x44e01d472ff86eb1636ce013e574f70de76e1f32` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x4d22519c0bbc63bb6d2c4445d1e245a1f8b659d8` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x4e045fb19faa7006f61de94827998b4763da8280` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x4f3c58164a816a53e4cfdf4eae9de84c6d3a87fc` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x53c0050c1253e66806b48630ff020efdb5a4abfd` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x54804898da24eeb3492ad176f36788e93bb383b0` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x572943f0c442b495d5360006840fbf2cfc834a34` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x57a5cb9aeacfab51a8619b1b0e47c28811a2dc0a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x58a113eeecc50d934b43158e601549becca89ab5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x5a07af212669f43970a390d5f1606e75ab9c242e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x5dc48e2186979b92e46a980227e7feb16fa42810` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x5fe789ac69ad1030890f1854d954aec43909b93b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x663f54111dcfc7dee45a0d70e3bdf7ca96bc0cb7` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x6abbf1fa0a1e4169daa375deab079f236709a014` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x6d8ea7c3f837f456cd4d638c9cc2e5bdc25ed78b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x81d3686e21686f47ea18179250c168f484a94dec` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x8585a611521717ffe7d93cf264dbe936e484dba0` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x881eb619c4e592af41f8a19734909dbc37cde50c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x8a86a25ea559fe6632a0ffd1fd49a0a853b581b4` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x8dd4c9985dd4072afd063239964c36c1ae9c79b3` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x90415b89d1ef945b8846ffa6118c3fd60eab9e96` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x9a720e7aed0212a38663545e2d9042a133c38b23` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x9e7cc89106000bc075f95c6c2330eb77882fe839` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x9ea520d04b4e7754dcb97552cc601a942ff7e4ac` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xa4e52e95d24d65f572b823f301171bdcc0dbbd3e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xa58aca9ed4b0fd100b783d6c9bfea1b896f8a528` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xb1544ab8f5f1af3b31c250060d34ce74dd6027b2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xbb5dbd81c5484aac713ea94e07828a6f79ee1d22` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xbc931fc41a0010eef81509b87bad3c85e9be0c5a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xbdd748137d5e9df2ded3cfb802693a4240de2299` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xbe6f42adeb65b01ed1b776b525f1ff1d262771c2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xc0249112c43bc71cd0b31122cb50f56959ab6976` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xc08fd5f1bb6740f9b5868089244ce9ac5f3aa05e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xd1620a07a4b82d082917a3c0717cae9ddfe4a982` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xd4ee609ab68948e067c83f934fa565845bcd3f09` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xda44b76f6bbbf68d9ff1df1ad82c8b25bfc52633` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xdf82f13381e9862b9bb0d2fe4369735d2a260377` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xe8b9cc60d160332572e5b10ed9a20c507ea54063` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xf0c5f4c0b83cd139ef60e02f00a86c0f64d9c2f2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xf1ae50bc34580e3872d96c21977bd5b1c434ab08` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xf3037ab754c605e9fa0ab9814acfb21845467b3a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xf637389f27b0d7d54716c7f153c72c2df1d4ea49` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xf8b0f3ff7c263c578916b9cc3af6ef140c818274` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xfaedec30575d651dc97f6f070085b46d71a4030c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xfb189c3820fbfbf8bd6da7ae0e6c034f85d5db29` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0xfb8ca52748e70f887e9b8c5ffbb611d1ea4cc725` | non_address_book | unknown | unknown | unverified | n/a | `0x2c2bc76b97bce84a5a9c6e2835ab13306b964cf1` |
| celo | unverified unclassified | UnnamedContract<br>`0x1f34a843832044a085bb9cae48cc7294d5478faa` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0x2b7ec7c6bc223450d00076f773a6300314ca9f5c` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0x4ec243a7d67c7e3f0235a11350f8260f130221d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0x64422150636683d9b87e1845edda086ebeff19ea` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0xa5250df087d124b92f4512055927e0a236c7f161` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0xc8b9279de8921b2d221b8ba7bd1546def8e17ada` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0xe389f92b47d913f773254962ed638e12c28aa82d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0xf7a7dcf9ca2f0eda2820f4608993ba3e1f09669b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |
| celo | unverified unclassified | UnnamedContract<br>`0xfaec23634270c9cba648dc94eb19a34b19186eea` | non_address_book | unknown | unknown | unverified | n/a | `0xbd08a46f4dfc56aae6940adc19d353db455fad44` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0xa8864a18fab1ed233ce1921f329a6a92dbcca56f` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd355a00220fba16b69cd8c4fbe16e02ca855f928` | RomulusDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x936f5b0164b08bf0e123cdf356118343342fdaf6` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf7d06202b0779f9c314d67bad8538b3c661f7d10` | UbeAdvisoryVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x3924c6b0003135683b59bab63c2b4a5631a6ae73` | UbeEcosystemVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd733bc0acd4583ffa0816d92ee7ef417370d0c5e` | UbeMarketingVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xae4634be8c69ff602e6dd9a1e3c5cecca3502968` | UbeMiningReserveVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xa6e9069cb055a425eb41d185b740b22ec8f51853` | UbeswapV3Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x74d4983a29044b68aadd2bdb86bc82cf8c6c8b5c` | UbeTeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x71e26d0e519d14591b9de9a0fe9513a398101490` | UbeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x3c255ded9b25f0bfb4ef1d14234bd2514d7a7a0d` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x388d611a57ac15dcc1b937f287e5e908ba5ff5c9` | VotableStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
