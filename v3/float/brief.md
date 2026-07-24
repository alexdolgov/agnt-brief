# Agentic Audit Brief: Float

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

- Project: Float (`float`)
- Website: [https://floatprotocol.com/](https://floatprotocol.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, polygon
- Contract surface: 566 unique implementations (566 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $145,106.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Float in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 566 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/68
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 498
- Unique implementations: 566
- Raw deployments: 566
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaTestFLT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140220 | `0x01309a1ec476871760d9ea454628500bccc1e011` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140189 | `0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140183 | `0x217945d4cb3386420252da73743f1730f38266e9` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140181 | `0x1dd4d86180eee39ac4fb35eca67cacf608ab5741` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140212 | `0xaff90532e2937ff290009521e7e120ed062d4f34` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140179 | `0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140218 | `0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140209 | `0xac33e98174a897ecf21bd5c6e67696007aa58527` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140211 | `0xadaf18d79f316005542da4ecb1624b59c4e6e398` | ⚠️ Unaudited |
| DeprecatedSyntheticTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140163 | `0x01829f1fa8512ca54b2709faea59e155ce4c03e4` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140204 | `0x72281a435fe5a9945e04ef4d0a32771430106587` | ⚠️ Unaudited |
| FloatCapital_v0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140168 | `0x443908279dee487e70b46f25401a64343adbe04b` | ⚠️ Unaudited |
| GemCollectorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140200 | `0x5cdbfcdab16a3b17516cdcbd0df582cbe30edb33` | ⚠️ Unaudited |
| GEMS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140190 | `0x2d56f047805aea38062f248a05d3157c961bf287` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140224 | `0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140215 | `0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140178 | `0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140174 | `0x102011863cc4f506d1387cd6b22c522602ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140198 | `0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | ⚠️ Unaudited |
| JoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140207 | `0x9ad6c38be94206ca50bb0d90783181662f0cfa10` | ⚠️ Unaudited |
| JoeHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140205 | `0x82fe038ea4b50f9c957da326c412ebd73462077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140217 | `0xfdf50fea3527fad31fa840b748fd3694ae8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140195 | `0x4247c5dbac51a135939cc904c34e4913b6bcdcfe` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140214 | `0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140210 | `0xacff0fbf56baeb9ef677de19aded8f7a950bcb58` | ⚠️ Unaudited |
| JoeRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140201 | `0x60ae616a2155ee3d9a68541ba4544862310933d4` | ⚠️ Unaudited |
| JoeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140203 | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140182 | `0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140192 | `0x363637833d110f86e47311e4c54e520982721f3b` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140186 | `0x267a4576293d55b53c769606e886e1f343149df5` | ⚠️ Unaudited |
| KeeperExperiment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140202 | `0x661c9a1ad0dc7c7f1d8da87239c952479fc56df2` | ⚠️ Unaudited |
| LongShort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140169 | `0x45bdab6840929937619d44fd2e8def962d8d2882` | ⚠️ Unaudited |
| LongShortAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140187 | `0x284c8f5802157902619289726963985cb0551f84` | ⚠️ Unaudited |
| LongShortPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140166 | `0x16488343e508c2bfb7f180185848f924184c9c9f` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140213 | `0xd6a4f121ca35509af06a0be99093d08462f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140180 | `0x188bed1968b795d5c9022f6a0bb5931ac4c18f00` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140175 | `0x10338ee9417260b486a4d1452ee2496338b05348` | ⚠️ Unaudited |
| OracleManagerFlipp3ning | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140170 | `0x70a760acd5503a8d6746bc7f00571f570ae0ad44` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140216 | `0xe59988d947f80b59ff1de7bd413e5e5517906cb2` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140194 | `0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140177 | `0x107b31d84bf6cec672f3af924471bb6f4fb8555a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140176 | `0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140206 | `0x8729438eb15e2c8b576fcc6aecda6a148776c0f5` | ⚠️ Unaudited |
| QiAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140199 | `0x5c0401e81bc07ca70fad469b451682c0d747ef1c` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140225 | `0x334ad834cd4481bb02d09615e7c11a00579a7909` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140197 | `0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140185 | `0x23de2004592b04d594d23c9a928d0552e29d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140208 | `0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140184 | `0x2274491950b2d6d79b7e69b683b482282ba14885` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140173 | `0x05d06afb994047acee8c205500ab1aa25c5a3388` | ⚠️ Unaudited |
| SlowTradeSyntheticTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140172 | `0x048858971030b416e41c74e641f8432c8921b24d` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140165 | `0x11bf56dee7f3627985552a8b7aa6845a6636e3b7` | ⚠️ Unaudited |
| StakerAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140196 | `0x45b24d45e8111680232a617e1c44597981216fec` | ⚠️ Unaudited |
| StakerPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140167 | `0x3750b2f732e2c58c348b731deeb50bc651c5d91b` | ⚠️ Unaudited |
| SyntheticTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140164 | `0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140171 | `0x0147c0212ca4aba29d26dffd3c800893080ef296` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140191 | `0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140228 | `0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140193 | `0x3c5486b85faae29b071f2a616a59ca7bf8f73682` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140219 | `0x595b1408c9c2bf121c7674e270ca7acc0bbf100c` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140222 | `0xce5da4bebba980bec39da5b118750a47a23d4b85` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140230 | `0x01829f1fa8512ca54b2709faea59e155ce4c03e4` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140226 | `0x0db3c59c187ecfa36a9c9f6cfa3664d06c2b5556` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140227 | `0x4e813624e1e0906e23fa22e2d120b4c4e2f89e4e` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140223 | `0xcd62196cc117ea7fd9525ade37e44d01209e8ebb` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140229 | `0xd2eeaaff35281757f87e4d535763c3d4c35b62c1` | ⚠️ Unaudited |
| YieldManagerAaveBasic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140221 | `0x1372276638bfc1fce909b05783d91e526b801669` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140188 | `0x2c7b8e971c704371772edaf16e0db381a8d02027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (498)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x054c8abc3dacecbedb1d7d6adfcb3fc5efa0aacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06a48438456150bb5f299935379c86e07d17bb38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cd66118d3c4ad7e0ba666bf2ab496bb84977d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1545747ab2255b065fb0c0badbb80e80bc2d93ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x155c2e55efc4b30b6990366d6c1c4d4bc0e9381c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x168a5d1217aecd258b03018d5bf1a1677a07b733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16dcb8d591bc82f1f2ab33d420b735c60fbc0be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17944c3f8dad962f06ee7b66e3fcd59338290393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1dd19fbe3b5fed40fac429531784fa5883fecba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f507a4572cb2a75995afe9bd92f0eedfe9a4fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x200ed895a0439967aaf09777f236acd5957e7fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22bab5e075ef273590afe3ae238fd25f461cf48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2aed59e3b1b17f14cb7de24fcb929a10d78b0790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b4f433678b62139ac090b1add062dda7b41b804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fe0eb0ad48fedc8d83fe21ab3fa06bb804ffda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x333267a0a04a50e258f441f0d4302729ff736b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38c23db64e4a22a9f277216a34a88f5a1fb3cf5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cb62c423af4c56f4f47b4565e423da5592b68cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d4857c545673f8249a9f87f3559e7eea8fa1d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44cf7f673a3821c8c6291d1b9eeefef2d06b358d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4806b2d4431adece40de76f943ffb2a4beb05a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a23e3416943d2eeac1172af00baaebb1aff993d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b76a3aba005584c65b4551842a12c154c8b76a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e84ba20f944c5cd34c8cef2937ba13a907396c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50c17ecf8f9f7a21f7002c7b987f555948bd52e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x550fad8cbf1c9518fb5c193f959dc0d39b934014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x597faad02712522e603b53846856c8cc3deab417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5add940afd2077c7332205d971bdb7efda0b1a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bf9dfb1b27c28e5a1d8e5c5385a1a353ec9d118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6735fdd28c71d17c9a26f1cbf0082358bfb622ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67c349467d639a9e0822c079aee8df9964308bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6900606ce0c6c1d567f8a6edfd43e18de1408f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x694c240e63cf60a2cd2d38d84d902744640accda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6eb2a8a09aba37789f0b205905157a5918cf6011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x756218a9476bf7c75a887d9c7ab916de15ab5ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76b4d80058181c8d18d9cda47e9328f0f2b14922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ad3a979d45e1636558a5c3d8bd8a4da4cb30349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c939d4597bb78412aaadf9b1a6a28f12da28555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87b4991df71bd1bc297fd0aa8c7a9ba301f29d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92f29dfcea469ab498ade826fb41d065482b6aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97b0ba4a8ba02b8d002c156a7bedbf5264cc0f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a0416de7fb34cf1703f340eb4298f6925460128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f5e065153fb956533f5f3fe27299686bb3107bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ff82be37deb38c0006774139e15babc9b98f9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0fd3eadd7caa5b221dd731ff0cbf699492a0a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa21100a883a22c3c4ffaf7f21d1af15cbd5b965d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3c744326ec76ae5233194cb0d1dfc7ef6520072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5f32126b7f0c893c32caebf76faab7fac2b1336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa89762e8e67da8d0338adaf1dd4ad2d4b588f845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa99273ca035d0b0e73a8346422404648adad5f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaca7693fb7b3d170674e43c18383bd29744095bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaccf2b2f526f956c4f7de0cce47b9cb98dfa70e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb10ffc060cc7659f0726c8452a586e30338145cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb25e7e8d9e8372e88f72db9c1fd1513c440f6808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb26289bee42aa1ad51466dc28e68ab89f0541a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb57935a7d395db097a26e26cc38586c6492e1bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3d08de0f82c6056c79436e61ce1435cc9c0ec08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5e7a22f643635610c39abbc2b8962cbe90ac4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7913be3f22216a0c2c2229e264ecaeb672b7800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0667fdb16f184708fa54bbccbff346ef037e67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd13322f5742bc0b100613898cdbfe3a67dfc4362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd62048b12ffb29e5d7fd98b4f5c8d408fe45eaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd97b4d013b31df04b6917dc318d3197169c36bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd99830c7199bc3f2e67daabae92541039c1421bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcceb82879dde577b0a6042331c85b87b9dc843c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd020eb7d105d5496edda7a33c5aeb54b26a0476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe016097138f8d44cf4604105003a452a5c6997f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe222470497901ef69f7ef3ce4b9830d35bea945a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe49d794cdc788585578f22b4b0e81f11ec9232fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7c89eb987c415b4233789e5cec0ee7407d2c47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb1bb399997463d8fd0cb85c89da0fc958006441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee0c19f26b3b3a4fb82f466a6023dcd979c27a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefe423827b87751f9eb91a90a78edc624601565b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf17cef41655c7aa2987ef5973ea816f0b7db2735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4158c14cf50d47bcb3ee91c658971e3f76141ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8522d24bb2d45057a187b0b8ee57e447bf3d3e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8908ac067d1764281d482b0e278ad2ec431b4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf996569ca45b50afe01c1b2d1258d3e396d78534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfadbc9637be82deed5aec42468be8b21562dc989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb4449b3a2f86b4a99907855ed6ce4ddc8cf8247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd6652a4410a9a229a1018f5fb4c705e7b1a519f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfdd76c8d809b44a8c40a28c52778ba29e0eff13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe350b84b5e608121cd0c6b5dd061890bc63dc16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01309a1ec476871760d9ea454628500bccc1e011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01b269d2e685127f6ca3dfdc3494b204dd2145e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02d632ba7f2a046817af67ef7b279080d3cab641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0473f2bb3eebfe6c014f196835624d6db12465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x063fd075441de59ccf0d941fa0500cb0b95db0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0769179b35243a0506e890e09603c922be72cd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07897e6fbfb0c05821d6816e2c7e632251b4c23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07dfe570aabed486f5577472f7f7952de425a922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08247547281bc215c4c1481bf4f1077eb19b1fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a1ed23c34e8b0f6527c2d24c65a685ea5fab895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a3b77599e3c313a9059ff768faee349a0972c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b94d3afa017e853c82676b4118500b8f9de5864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0babedc30d786ed751ff4b68da96da4a4cab3689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cc47aa1252f25fd95b65f19c2fd6db33366a557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cd66118d3c4ad7e0ba666bf2ab496bb84977d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d8696eebdb5c9b4dc2aa7a7124fdd505dac16e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fb72b771511062c5fd1811fbdfdfeda4afaf162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f67276b71842a0c757d4432124096b32cb5029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1101a719b823d1d8a9c2890d1deffa66c38f8cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11bf56dee7f3627985552a8b7aa6845a6636e3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1237804f7f4b538844fa5be835f1862b57dfb337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x132492509bc416f95fcbaba63f3d9dceecce10d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1372276638bfc1fce909b05783d91e526b801669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14d458a63561ffe961544252d8eb05e606664301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14f28f124db1af40a3f034c611db75dea736e08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1545747ab2255b065fb0c0badbb80e80bc2d93ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1565398057096d4bf5b843f37279dee15e0feae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x168a5d1217aecd258b03018d5bf1a1677a07b733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16dcb8d591bc82f1f2ab33d420b735c60fbc0be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16f419bbca0529ecc99ff595681b822e328ed79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1771ba12fe9427c8416e7b64ae7349f287dba954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17944c3f8dad962f06ee7b66e3fcd59338290393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x193a8a9a278bd649b19234461c145929d4a789de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19ac199be93a9d06ee259ff3a39f71d35bbd3234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a772776921a8d6cfdb266891d69907c474c30a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1adbde469581bfd0454fc61c7e74ec2bf7330024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af353148f2316487b5311fcd522c037842d232c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2d9116606c09d6c9903eabc1bca2e6239b440c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dcaa44bea82bd135c51b158e5e702e3c1843951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f507a4572cb2a75995afe9bd92f0eedfe9a4fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22991504b79ff4215f537d6d1c3bce151de321fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23eb4187580524d25ff93a3571b1969b8018f628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24b67308384e8003ff8d6f4ac12414a03c5dfa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250a0a76bb0139d65f14500c0149d2766ea109b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25dd4a2900ee3b16f8381349a34813d41d29d7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28adbb2822601449ff4a271c0b587d726ea7a0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28b96112f586234067343a58f8238d3efb7a1221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29472d511808ce925f501d25f9ee9effd2328db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2967317938e801cab3badd9c1f3a8feea0f9bd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29e480d97ff2544047c7b89c9096058c834cd907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a834dd3e1732ee6c37c8b93b7b5b08091086401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2cd215bc634df4962f296578a2b87a9d7a1de38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d5ec1744b8ba4639e4576c2f46e2b5f698ea40c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d85bd1c06c6dabb9acbce20f7e1b60ace96ea9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e3a352f4a94f8df17835d659853629b7e7975e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ed5cda38f295a50f59974ed75a6b46269ff11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fe0eb0ad48fedc8d83fe21ab3fa06bb804ffda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31ba32089d5474fe5b60411985c5d227d9d859ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32044834e239f5e2444052dbeeb1a3cc416cccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3278c8358e58c1ba485c20a484a58215444e848c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fa3df22bac262f72a688877e728094b6eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36a4c537ef66429624537070e30dbc2c53e3b941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38266ebc5c90ce4f93f4d373021c1d87c926c4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x386fbff27b386738cbd16f253adf0f5f72122329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3893e983f7896052976645d9bbfe247583072d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38c23db64e4a22a9f277216a34a88f5a1fb3cf5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a24bcc42d28b8887bf315918319bd4d0b58f5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ac92878ccdd55934ecf0fd49f65689cbe16b974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b34e169438fc65ed1c018655d04e5b0f3185ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c32463e25f562fbb3684125246c5b2ed30354ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c9211212118ce5fab57676c88541841d6d7b5d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb560faeff708e21513b0ea7e65963f08eaad04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb62c423af4c56f4f47b4565e423da5592b68cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d4857c545673f8249a9f87f3559e7eea8fa1d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dca53bd528f5cb71ad837d6760074733ca60a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e612511900457c364190abf4b072a9fd001acd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e92639d1231befffd38d887199f87b813ff864d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fdb10bcecdc61077f698123e98ce2a373d1dd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43feff8296f4e7fd914b99e51a78c65c95682414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x443908279dee487e70b46f25401a64343adbe04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x444d68379832b3570503c7f0e67c54087a6890fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44cf7f673a3821c8c6291d1b9eeefef2d06b358d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4518502fcd88e7d39ad650e0290a8113baab3077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4533e90f4fe097b406257fc8ea041c57ad2e5358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45acb67c90615acbe9566c6aadc23ef418587d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45b2c4139d96f44667577c0d7f7a7d170b420324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45bdab6840929937619d44fd2e8def962d8d2882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4785abb80dee0fa3c6403d74c00b62f15cd9569a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4796e1e2ae921b8408ab52c0fc9dd991d57bfaef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47a21f14794b6229cc2a1ddfe4498c9e48f1c16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x486af39519b4dc9a7fccd318217352830e8ad9b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a586daa5d5edcd8182339c24291fb510fa4d271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b76a3aba005584c65b4551842a12c154c8b76a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ca98ca34ee279e4966a7c54e6eeff67d1ed23e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d0b7302d7ad0b0f9efdf16caed64868ed377313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4da4b8cf5400196092c23a1d25a5b8f49b3b69b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e3db546546ea2e3e5df625a8cfd46be724f548e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e84ba20f944c5cd34c8cef2937ba13a907396c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e931f09ee083b7abfb116889622d6f337112538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e9f683a27a6bdad3fc2764003759277e93696e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f3a25ec5c7b85894a75a8a1e4582bc6ac29573f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51b321078b72050912b333cfc68716c4dbeba308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51ea4aa329baeafe09ebacd8c5e7a3d55df5fd5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52d69a3f6ed50857e57be1f0cf1914db385ea435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5410c210c0011fe8dbd3aaef3d376e4105e4c118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56232da4916dc48bf19b060e693db9ceecf8a432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5640b2e8724231e5e7baa53375dc63d7bbea04eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x564780a6aa44be1ca103b6c3f30e8593efbbacd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x585e7bc75089ed111b656faa7aeb1104f5b96c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x592f70bd9ec0ce89c4b430fac4dbc020b2419f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x595b1408c9c2bf121c7674e270ca7acc0bbf100c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bf9dfb1b27c28e5a1d8e5c5385a1a353ec9d118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5caaf127cda59a1e640414aaebecd2408c006e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cb269c602c6d09999ed3df56e8f618bac69cbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d57f62027f567855e815489d2365c7976899c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5da155d0e75aa0e2b4c9cfc662275b95915405ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f0902b53f91b92b41f5a04c80bca3a722865095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f1670308a1d310bab7e679abcfd3f85a53dfe06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2a43eeb6d624e145f2d7efebd13cade7083ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x621cda10820555adae8506eec296cb9621e491ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62387711313cc10f433b32e010a05bf768c2f037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x627237170706db6b63362e14b8195f2df87e9f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62819fcbcb977906f36e1d3fb0012ddd408ec070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x647da94ae8ec35e9627df11bffad19513892cf2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650967969025dd84a3328f30b110eed22a76f430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66fa316b49ee32aab7a7f88f08e16d8e907efb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x670968ed86ae309f552acc60cb6716b9f8198eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6735fdd28c71d17c9a26f1cbf0082358bfb622ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67c349467d639a9e0822c079aee8df9964308bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6861317b2901ee29ff10ae851af2234380422aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x692782448c146806be6a3c0b801d5eab5f8e8551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69b044028aad1c6f0ef10cc44276f38c4f2bb8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a621d256cfeda1c10ab0cbd1ff8d5310b35e4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6af7e24ac12b6e6e72606746833587edafeec3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b5a37d2096f4f8445423f2e88bc6cc76093a86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6be4edab8e1d2886758c0e143016de526b906d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6caf4068adc5766447205c9e51488586219d51c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d34318aaeb5a2d404c0c176cc7db69865368edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ee70ba71c6e95893b34b78d20906858fd031ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x703473623885ffd8357527c61ec14a03a6b96460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70466e105170d8bad56ba390a48bac649fad27cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70a5e4384a39775918eb430dede38b0121be307b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70f7d4bc2725288a72ed3ca85a167c70bb5ac7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x717064e62c6c33780851d915f379249faac03673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7319d21efc9283e0b95e238bf3ec691fc1559f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x737fdfb2365973474befa244953954c5b6fddf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73cd077010c53bbc140b70b8ddb9c832db6e9ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74d108bbf2c08cf76e97fbaf40e1aa7b7e6c7526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x756218a9476bf7c75a887d9c7ab916de15ab5ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76145e99d3f4165a313e8219141ae0d26900b710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x763dc8d725637571ea4cb85b6de3a1f568e64864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76eaa100e46475d69d22d9f42810ba4136f63008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x770b6e8a1b39f1a3ea06069cbd6d1e0b5db264f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77533a0b34cd9aa135ebe795dc40666ca295c16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77b995ff2bd2b5287f940bc379fbe214506403e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79d79d50a9392a29357376e7870f7d59fc872e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a17fb34ce43ff7e5ef0a74a828ffed459bf3421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a609a474ac272f552b19defecd440210fdc490e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aca03e01e170107d01381a13281e4517f0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ad3a979d45e1636558a5c3d8bd8a4da4cb30349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d0a3006bafd1df0ac2870d4cf3c8ecb22311326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9d90a915a74e4acaea1c0de4efa07fd9e87740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dcdb863215656e34470690432058b03d7ec03b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e4d8a05e10f6cb3d19822ac7742ec034a31c1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e94999005976e0715b3bac0ad2f70aa8822063f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ef4e0a14f81f4964dbcb65ad915ce2361b975e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fa4538f2cd08d4be4172351544cec6206bcb6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x810998c1014b877cde1370bf75e5defa0fcbf66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81516ec24d6d6b9952f2470002bbde4e5c23f592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x815cbe0e248d2d378c5e9c141b2ba9adaba2c9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8165aa29e883892d4b84775ec8abd0b6cfaec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81a00330a5d7a1d4e73570a3959a7e2ad998237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81b53932b3fa037a7d1d649a3c7fc0baaa3d9136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x828bdff8aa4e6bb31c58ad41beab5ca0dd4bc334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82ea6f7bf853a199ab921137b119b6d41f08038e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x835866d37afb8cb8f8334dccdaf66cf01832ff5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x838549b9608cf3aeb98504d7ad213525a2aa34cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83c27aff5aa000e61adafa99ab8c482da97f5ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83c6720e8961e948dd3ce7815cae4f0fa7c6ea8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x846a4c2e80da03e4d8aef07a9503ecf854bfff23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x861726bfe27931a4e22a7277bde6cb8432b65856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8627966f00a67c96f1f08e2197e7cbe46852b3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8637eb17e3f5553c9890db55f4d104e4b908636d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x865c1a2388e0e9c2d9b347d8dcac617e056d16d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86884879b4213187e19fc2cd191133b86b43cc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x872f15955dbdc1055405305558bf89ab3af8030f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x884d2e9ff9e36b3e5ce293f48e959b39ab9d0861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88e02662c1c22a256c5ac9be93bfe2c4ff5dda60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x895a539c88ca8a360ff0b085fd9c054ca61c02e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89a415b3d20098e6a6c8f7a59001c67bd3129821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89ecdda0d98b796e1bb93a578e0559509a033f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b33e813e6757f5c1a5e662333463c2ab23d99b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b58a5a6e8651d6ade1deec04e89131fae662afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b650e26404ac6837539ca96812f0123601e4448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c90b3c9b5d27a375ab694d5a456a44b54f1c369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cc49baf5211dd4fbc2e7641e7d17a4ca3d8a98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ce7b1ed1a2ea5dfd33b29713049fe40080a0509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d5b529acbf96e4045ee019ecc0472ab2cae4a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8dd97ba0a4521b171af9ce8f6c20b4917ce627e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f1ac8b06ec617faaefde44220760993e889af96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9010e0f1b4c62f42b1ff66b0caaddf486014f17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90566b41215e9173c7e8af73ebd3f5869870f097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90bbc3995f473d64f973ab8066e77b98a71f6fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91cdfc11b797fbef8d97c623b0cac1994b6edb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x927be1425f2c3599ced2146459f6491ee450848b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x929f5cab61dfec79a5431a7734a68d714c4633fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x931b5dffebf156b3c295f0c50bbad494d35989ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x948cf23e1593d6b41d8de8b79e603e4734566e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94f02669ef4302dbea809ab5e053ad07ce910ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x952d827765b0b65465e3ab280b0d42819656d57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96a6b2d888ec1dec1db4495680c7596616c20718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9711563c33968d063fe0a41f809c4834fa997c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97b0ba4a8ba02b8d002c156a7bedbf5264cc0f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97e3a6446e9b0d9313c30cf8ddcf65659a213612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99727c80726332b3b59ff5158f106c6155f4e01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fba28c75747417571c5f3fe50015aac2bb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a0416de7fb34cf1703f340eb4298f6925460128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b711b3a4ea4390c77c9438852086b3d5af3bc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c1e133e9c58ec6dceabf5e428bb162353da9e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c5b9ea52e0270a6bdc4d0daf9224766000e135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d11384e518e25184a6dde0f54e5b141a1441f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d638d66bc4eaa770bd091e9c2339fb39af70168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e6cab0d18291c56e7e1d6e92c268bdc75c05b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9eb54aed8426cbcbb2d65ea74c94aadadf793200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f509ae4e18d5a14afb51e16519c2936915b896c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8c00dce50f2cc5f4f9bad0a79cdd1023b7c983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fb133b2c5218d7ddb97422aa27c0ed04122c944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fcb6badfd73112c08e1cd607bbc09246263fa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1246c3d11049e4d3fdb319455d1c721a65f83fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2008a8c6a0f8f5cc6ca59b38d5dd90455a840d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa43a73f17ecde987a9127a5cbe46b7923f351c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa477283a10fb47b9682c9626c1463fcae9baccd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49facb26236aa5842b0817f634c482de9a38f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4e65d6ea294e3f4847651921adfd4e93f7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa526c8919f190ae0b93049aa1bdc1264d4419d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60ef5447008adaf6de56320e9dff507b828b9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71a7cbfb554519c5a8d2f9d0043ed0ff22959fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9539b2ea79b35d2efe5b22d9dbae2459fd80838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabca5892cff78a4f44a5e8b947662e92b77af7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad478c853f507f9efed87c87b3ce50a4182f77e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadf398289eb94b123fefa9b536970eb2058c10e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaedadfa7027eb38749096cc63fa2bfc2b1cf180f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeee314a3b0d88439b77fca9f125bbb66baaf61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf2c034c764d53005cc6cbc092518112cbd652bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafb2aa50d458a5611a8e212f094871a992c7fe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb06b4639b93863fecc3993eb0d6bf9779716bce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb165b44bd0011e910892079a09cc0dff23735944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1e9aaaa3ad2de4e9134ac58ea0d8e6a3990e7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb26289bee42aa1ad51466dc28e68ab89f0541a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2bb1e77fbafbe7b7295390ce66aa75dff7e5e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2d98a914c471ef2736e6875503f84bcae191cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31a198f6fc551b3cb1262f4cec863f7240dfec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3d05b9db17fd6308b85875ad7344c1c4fb8a30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb41bb502d214499b1637d7f1c398a00df081714b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5a917ed59db899f26ce05cc75e6bc16f927f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6785ea4e229f50c42c25aa67c8ba7f631aef852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb779a4a28012e12ff904754bbe72f60423af0a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7b46f62b924c857ef49fadc73e57fc6f0693e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb864ba8d53a87472d6eab93ebae58c65023d274e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf1a2e7d8525c3a75a51067550ec6154a8cb510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb09ac1c984b9d93104cedb21642cc15d09bfec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb28e074c1448c92b1403ba3bd4d6905e20a7ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb83b6ecdeff084d7cd0a6ad96c3e7483672d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb95aa2089a3494e466d3cbe6d6c21eeefd7b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc05fb8b47f6d574672a70eee04d73c647ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd3938c97fe5946f44ce105850820c99bb7cf506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf70239349cd43598f7587a093232d07c5d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfdbe35168953c9d29bdf9a0043f902f233c76e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc13b1c927565c5af8fcaf9ef7387172c447f6796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc146783a59807154f92084f9243eb139d58da696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc17f9953c9cb1ecfacbed9c1c9d2e6f959f9a47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc22f01ddc8010ee05574028528614634684ec29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc356607e2ec30884bb0f84033c4d81419d2350bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3e997334527e6f9fcefc5606e3a34f47b2b3429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc436f5bc8a8bd9c9e240a2a83d44705ec87a9d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5e7a22f643635610c39abbc2b8962cbe90ac4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6001b0e628c967af6638f7538791ab3c4669249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc63085dd11fc473e6db8eba20af191885d9158e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc698d4fa211bdba3e48fe880efe371372774673c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7868fd263a08f26a5683bdbaef12fcf508a2cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d1747944e528e0ab46651f04c51bc0f0155b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d35cdbc83cb4b90027a8036193f989c1395be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc988c170d0e38197dc634a45bf00169c7aa7ca19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9e5999b8e75c3feb117f6f73e664b9f3c8ca65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fb2f508b2ab47826d6ccf2f965b21b24ba58d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbaf300379da70be2f7964f6076610b633c15965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd85feb8efc260a6648d1d6190e98bbb087348ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdac336a4839090a091b0e7a9f8938f3a730fbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce095a9657a02025081e0607c8d8b081c76a75ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce5da4bebba980bec39da5b118750a47a23d4b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce63eca0c8a2084c1baece7737db88f10c412c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf45712a54d5b223df46a2b4389d0c01af2af557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf62b6e1c54b69e59cff552cfff247671594429b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0c23f8a3777d96e7561b0b5c5ce8b5afc0c2fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0f02b1a6a123a996fcc0bc49ae0218924b73464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12cf5515a1acb84967980fcfada2832851e3075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd192f8393391c46f05ab3741fae6818328c281a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd19dacf775f9cdce4926c0467e3add92ca9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1bb834a4291db09d71e4436ef3bda343f9fbe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2355d8ead2b2cc4ca659a154028021c49074347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2d80963dd7e951e6c03497cb1e6f8719d9ccb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd31460889fb321bc28739cb66ef681e021b1496a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd38a19100530b99c3b84cca971dfd96bd557aa91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd555c9012e0a150de7932370d56d6b6d6e4ebccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd603663bf9f8e3709445492112a9271248fa5360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ae651985a871c1bc254748c40ecc733110bc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7c24697963cb02d6e63130812970cbdd08c3ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd84c9dcd05d8d75c70297beb07e148fa0a93db7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd915fdb10530ef2a8337b4b0bb33f1b0bc015531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd97b4d013b31df04b6917dc318d3197169c36bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd98ac9f32cbb73ebf21c6f5e06bb050e86dce91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdad1d732e319fa87fe54afb10f229ae78b881ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0730f8fc5f0efa1c304716a50d0a96ce4a7c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0d421bef747406bb5c947dd75e7fda5ea187a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc13687554205e5b89ac783db14bb5bba4a1edac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3b37b5f0fe5d3f8b8701a3f8d81a02ee8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc883b026f78ff494199778001b23f38eda89d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcfce109f0920cf7270e48972240dab7351899b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddf06d89c908bc38e03067d65408d632fda4fd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde8cb3a7084e5bb6acc39afe8d0e67825379d652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf1339ef77ba1ebd33cbe0d83b289af4c0ef8fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf781bb633ab9d0041877f169ba47f07ba242aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe016097138f8d44cf4604105003a452a5c6997f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe11c7a822547ba1910a5932472bf3ebfbb6b3c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe194c4c5ac32a3c9ffdb358d9bfd523a0b6d1568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2ecc226fd2d5cead96f3f9f00efae9fafe75eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe34309613b061545d42c4160ec4d64240b114482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe35e9cd716d9b87ed4bc2bb7ee8249aaee9a386f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe49d794cdc788585578f22b4b0e81f11ec9232fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59bb0090de7bdb1198fec7018134691f404d0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5ba4d94be0480a9dd21e38dfad5e9e408cd298b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6ffd92b9f77fbf5bfec0f3d9c9d027c4cf3ba6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe72438e508039e94250756c69c3e6b520e4d3f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe734779ca7a5eca71bf87af3938b60b22f628cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7b6fdf96c9692f0a16996081299bc6ad7123450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7c89eb987c415b4233789e5cec0ee7407d2c47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8a191026e71c303b0f40f15be93403f7d529707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8ea55f1bd8150323e9b96755a74819071cbc015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea347ef58dfb129035dd40d6f88b453400d6d0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea5e11c8b5ae79d139da1c9839a961ea70cbbf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea95bb9f3ea203e6df26cebc0b0b104b479d7aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb1f569271b2997779e11c5df6f457753d6e0b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb2a90ed68017ac1b068077c5d1537f4c544036c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb41c98513ff3f975016b26e16cbf26e2f1b1df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb73d5cbb26536f714785b7864806542f41ab9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebea851d28722e53aacdc831d2894e25f460e62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec8184390ff917370d700c10ea3c85d25fdd7d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed6aaf91a2b084bd594dbd1245be3691f9f637ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee0c19f26b3b3a4fb82f466a6023dcd979c27a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed14f39a6927404c31a08def1ff22bc0d54847c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefe423827b87751f9eb91a90a78edc624601565b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf063c35430bb3b01bc693aaead0e4cd593004da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf17cef41655c7aa2987ef5973ea816f0b7db2735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19c35991d1c2b961e5bce260095f34a55ecb452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2eb595f140d86fe7631ae2ed711f4e844734279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf47b8c42664ef345f0be5e1c2dbfeea027d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf65a0817d7c5b78c97b4265576afbd9535503d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf68a9f5a766b9ae93317fb45e4e7138c14399a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf805e22c81ef330967eec52f7edb0c6b31fd5ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf88d8e5803cde818b46a013a7d2845cf3550317c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf975aa561812cb957aa29c8dfac2c2494868ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf996569ca45b50afe01c1b2d1258d3e396d78534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4329691859e8f3a811b039e9e747b8d76abf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4ceb42b72f0c5e9cdedf68c006bdee5d0a1846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfadbc9637be82deed5aec42468be8b21562dc989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb0388daf4004d34d5a3209e1e5dd8c96a2a6d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb058632c903ef564ba9be42da94e818691a3fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc22e8fa703c557ce2224524824a0784fed56a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc2f38445be02504df62753216fd2a4566747bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdd76c8d809b44a8c40a28c52778ba29e0eff13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf984af7a4cd6cc5a4fa703240cf0ff4b1b0447` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 498
- Live contracts: 0
- Unknown liveness contracts: 498
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=498

Showing first 200 of 498 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x054c8abc3dacecbedb1d7d6adfcb3fc5efa0aacf` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x06a48438456150bb5f299935379c86e07d17bb38` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x0cd66118d3c4ad7e0ba666bf2ab496bb84977d96` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1545747ab2255b065fb0c0badbb80e80bc2d93ce` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x155c2e55efc4b30b6990366d6c1c4d4bc0e9381c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x168a5d1217aecd258b03018d5bf1a1677a07b733` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x16dcb8d591bc82f1f2ab33d420b735c60fbc0be5` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x17944c3f8dad962f06ee7b66e3fcd59338290393` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1dd19fbe3b5fed40fac429531784fa5883fecba3` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1f507a4572cb2a75995afe9bd92f0eedfe9a4fbd` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x200ed895a0439967aaf09777f236acd5957e7fe4` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x22bab5e075ef273590afe3ae238fd25f461cf48c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x2aed59e3b1b17f14cb7de24fcb929a10d78b0790` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x2b4f433678b62139ac090b1add062dda7b41b804` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x2fe0eb0ad48fedc8d83fe21ab3fa06bb804ffda5` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x333267a0a04a50e258f441f0d4302729ff736b7f` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x38c23db64e4a22a9f277216a34a88f5a1fb3cf5e` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x3cb62c423af4c56f4f47b4565e423da5592b68cd` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x3d4857c545673f8249a9f87f3559e7eea8fa1d02` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x44cf7f673a3821c8c6291d1b9eeefef2d06b358d` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4806b2d4431adece40de76f943ffb2a4beb05a36` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4a23e3416943d2eeac1172af00baaebb1aff993d` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4b76a3aba005584c65b4551842a12c154c8b76a1` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4e84ba20f944c5cd34c8cef2937ba13a907396c0` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x50c17ecf8f9f7a21f7002c7b987f555948bd52e9` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x550fad8cbf1c9518fb5c193f959dc0d39b934014` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x597faad02712522e603b53846856c8cc3deab417` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x5add940afd2077c7332205d971bdb7efda0b1a95` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x5bf9dfb1b27c28e5a1d8e5c5385a1a353ec9d118` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x6735fdd28c71d17c9a26f1cbf0082358bfb622ad` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x67c349467d639a9e0822c079aee8df9964308bc9` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x6900606ce0c6c1d567f8a6edfd43e18de1408f0f` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x694c240e63cf60a2cd2d38d84d902744640accda` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x6eb2a8a09aba37789f0b205905157a5918cf6011` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x756218a9476bf7c75a887d9c7ab916de15ab5ddf` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x76b4d80058181c8d18d9cda47e9328f0f2b14922` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x7ad3a979d45e1636558a5c3d8bd8a4da4cb30349` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x7c939d4597bb78412aaadf9b1a6a28f12da28555` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x87b4991df71bd1bc297fd0aa8c7a9ba301f29d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x92f29dfcea469ab498ade826fb41d065482b6aba` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x97b0ba4a8ba02b8d002c156a7bedbf5264cc0f7a` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x9a0416de7fb34cf1703f340eb4298f6925460128` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x9f5e065153fb956533f5f3fe27299686bb3107bb` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x9ff82be37deb38c0006774139e15babc9b98f9dd` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xa0fd3eadd7caa5b221dd731ff0cbf699492a0a86` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xa21100a883a22c3c4ffaf7f21d1af15cbd5b965d` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xa3c744326ec76ae5233194cb0d1dfc7ef6520072` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xa5f32126b7f0c893c32caebf76faab7fac2b1336` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xa89762e8e67da8d0338adaf1dd4ad2d4b588f845` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xa99273ca035d0b0e73a8346422404648adad5f0b` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xaca7693fb7b3d170674e43c18383bd29744095bf` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xaccf2b2f526f956c4f7de0cce47b9cb98dfa70e5` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xb10ffc060cc7659f0726c8452a586e30338145cf` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xb25e7e8d9e8372e88f72db9c1fd1513c440f6808` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xb26289bee42aa1ad51466dc28e68ab89f0541a7f` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xb57935a7d395db097a26e26cc38586c6492e1bf6` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xc3d08de0f82c6056c79436e61ce1435cc9c0ec08` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xc5e7a22f643635610c39abbc2b8962cbe90ac4cf` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xc7913be3f22216a0c2c2229e264ecaeb672b7800` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xd0667fdb16f184708fa54bbccbff346ef037e67c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xd13322f5742bc0b100613898cdbfe3a67dfc4362` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xd62048b12ffb29e5d7fd98b4f5c8d408fe45eaae` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xd97b4d013b31df04b6917dc318d3197169c36bfd` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xd99830c7199bc3f2e67daabae92541039c1421bb` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xdcceb82879dde577b0a6042331c85b87b9dc843c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xdd020eb7d105d5496edda7a33c5aeb54b26a0476` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xe016097138f8d44cf4604105003a452a5c6997f2` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xe222470497901ef69f7ef3ce4b9830d35bea945a` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xe49d794cdc788585578f22b4b0e81f11ec9232fb` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xe7c89eb987c415b4233789e5cec0ee7407d2c47f` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xeb1bb399997463d8fd0cb85c89da0fc958006441` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xee0c19f26b3b3a4fb82f466a6023dcd979c27a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xefe423827b87751f9eb91a90a78edc624601565b` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xf17cef41655c7aa2987ef5973ea816f0b7db2735` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xf4158c14cf50d47bcb3ee91c658971e3f76141ec` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xf8522d24bb2d45057a187b0b8ee57e447bf3d3e7` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xf8908ac067d1764281d482b0e278ad2ec431b4a9` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xf996569ca45b50afe01c1b2d1258d3e396d78534` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xfadbc9637be82deed5aec42468be8b21562dc989` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xfb4449b3a2f86b4a99907855ed6ce4ddc8cf8247` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xfd6652a4410a9a229a1018f5fb4c705e7b1a519f` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xfdd76c8d809b44a8c40a28c52778ba29e0eff13d` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0xfe350b84b5e608121cd0c6b5dd061890bc63dc16` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x01309a1ec476871760d9ea454628500bccc1e011` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x01b269d2e685127f6ca3dfdc3494b204dd2145e3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x02d632ba7f2a046817af67ef7b279080d3cab641` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x0473f2bb3eebfe6c014f196835624d6db12465a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x063fd075441de59ccf0d941fa0500cb0b95db0c6` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0769179b35243a0506e890e09603c922be72cd75` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x07897e6fbfb0c05821d6816e2c7e632251b4c23a` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x07dfe570aabed486f5577472f7f7952de425a922` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x08247547281bc215c4c1481bf4f1077eb19b1fa2` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0a1ed23c34e8b0f6527c2d24c65a685ea5fab895` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x0a3b77599e3c313a9059ff768faee349a0972c0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0b94d3afa017e853c82676b4118500b8f9de5864` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0babedc30d786ed751ff4b68da96da4a4cab3689` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0cc47aa1252f25fd95b65f19c2fd6db33366a557` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0cd66118d3c4ad7e0ba666bf2ab496bb84977d96` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x0d8696eebdb5c9b4dc2aa7a7124fdd505dac16e1` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0fb72b771511062c5fd1811fbdfdfeda4afaf162` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x10f67276b71842a0c757d4432124096b32cb5029` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1101a719b823d1d8a9c2890d1deffa66c38f8cda` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x11bf56dee7f3627985552a8b7aa6845a6636e3b7` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1237804f7f4b538844fa5be835f1862b57dfb337` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x132492509bc416f95fcbaba63f3d9dceecce10d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1372276638bfc1fce909b05783d91e526b801669` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x14d458a63561ffe961544252d8eb05e606664301` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x14f28f124db1af40a3f034c611db75dea736e08a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1545747ab2255b065fb0c0badbb80e80bc2d93ce` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1565398057096d4bf5b843f37279dee15e0feae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x168a5d1217aecd258b03018d5bf1a1677a07b733` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x16dcb8d591bc82f1f2ab33d420b735c60fbc0be5` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x16f419bbca0529ecc99ff595681b822e328ed79e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1771ba12fe9427c8416e7b64ae7349f287dba954` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x17944c3f8dad962f06ee7b66e3fcd59338290393` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x193a8a9a278bd649b19234461c145929d4a789de` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x19ac199be93a9d06ee259ff3a39f71d35bbd3234` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1a772776921a8d6cfdb266891d69907c474c30a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1adbde469581bfd0454fc61c7e74ec2bf7330024` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1af353148f2316487b5311fcd522c037842d232c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1b2d9116606c09d6c9903eabc1bca2e6239b440c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x1dcaa44bea82bd135c51b158e5e702e3c1843951` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x1f507a4572cb2a75995afe9bd92f0eedfe9a4fbd` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x22991504b79ff4215f537d6d1c3bce151de321fb` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x23eb4187580524d25ff93a3571b1969b8018f628` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x24b67308384e8003ff8d6f4ac12414a03c5dfa7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x250a0a76bb0139d65f14500c0149d2766ea109b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x25dd4a2900ee3b16f8381349a34813d41d29d7cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x28adbb2822601449ff4a271c0b587d726ea7a0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x28b96112f586234067343a58f8238d3efb7a1221` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x29472d511808ce925f501d25f9ee9effd2328db2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2967317938e801cab3badd9c1f3a8feea0f9bd20` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x29e480d97ff2544047c7b89c9096058c834cd907` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x2a834dd3e1732ee6c37c8b93b7b5b08091086401` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2cd215bc634df4962f296578a2b87a9d7a1de38b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2d5ec1744b8ba4639e4576c2f46e2b5f698ea40c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x2d85bd1c06c6dabb9acbce20f7e1b60ace96ea9b` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2e3a352f4a94f8df17835d659853629b7e7975e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2ed5cda38f295a50f59974ed75a6b46269ff11bd` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x2fe0eb0ad48fedc8d83fe21ab3fa06bb804ffda5` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x31ba32089d5474fe5b60411985c5d227d9d859ce` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x32044834e239f5e2444052dbeeb1a3cc416cccee` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3278c8358e58c1ba485c20a484a58215444e848c` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x33fa3df22bac262f72a688877e728094b6eb35c2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x36a4c537ef66429624537070e30dbc2c53e3b941` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x38266ebc5c90ce4f93f4d373021c1d87c926c4f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x386fbff27b386738cbd16f253adf0f5f72122329` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3893e983f7896052976645d9bbfe247583072d27` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x38c23db64e4a22a9f277216a34a88f5a1fb3cf5e` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3a24bcc42d28b8887bf315918319bd4d0b58f5ed` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x3ac92878ccdd55934ecf0fd49f65689cbe16b974` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3b34e169438fc65ed1c018655d04e5b0f3185ecc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3c32463e25f562fbb3684125246c5b2ed30354ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3c9211212118ce5fab57676c88541841d6d7b5d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3cb560faeff708e21513b0ea7e65963f08eaad04` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3cb62c423af4c56f4f47b4565e423da5592b68cd` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3d4857c545673f8249a9f87f3559e7eea8fa1d02` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x3dca53bd528f5cb71ad837d6760074733ca60a63` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3e612511900457c364190abf4b072a9fd001acd1` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3e92639d1231befffd38d887199f87b813ff864d` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x3fdb10bcecdc61077f698123e98ce2a373d1dd0b` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x43feff8296f4e7fd914b99e51a78c65c95682414` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x443908279dee487e70b46f25401a64343adbe04b` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x444d68379832b3570503c7f0e67c54087a6890fe` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x44cf7f673a3821c8c6291d1b9eeefef2d06b358d` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4518502fcd88e7d39ad650e0290a8113baab3077` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4533e90f4fe097b406257fc8ea041c57ad2e5358` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x45acb67c90615acbe9566c6aadc23ef418587d87` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x45b2c4139d96f44667577c0d7f7a7d170b420324` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x45bdab6840929937619d44fd2e8def962d8d2882` | non_address_book | unknown | unknown | unverified | n/a | `0x921c380d6047f09a4e61d29d1fc054fb52259ca9` |
| unverified unclassified | UnnamedContract<br>`0x4785abb80dee0fa3c6403d74c00b62f15cd9569a` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x4796e1e2ae921b8408ab52c0fc9dd991d57bfaef` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x47a21f14794b6229cc2a1ddfe4498c9e48f1c16c` | non_address_book | unknown | unknown | unverified | n/a | `0xc3b5e35ee12b139c64e95b1e846bdb217a7806bf` |
| unverified unclassified | UnnamedContract<br>`0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| unverified unclassified | UnnamedContract<br>`0x486af39519b4dc9a7fccd318217352830e8ad9b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| unverified unclassified | UnnamedContract<br>`0x4a586daa5d5edcd8182339c24291fb510fa4d271` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code423n4.com/reports/2021-08-floatcapital](https://code4rena.com/reports/2021-08-floatcapital) | Code4rena | Contest | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17486] code423n4.com/reports/2021-08-floatcapital — no match: Extracted contract names from scope description and findings. The report states 43 smart contracts but only lists a subset in findings. Audit date from report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code423n4.com/reports/2021-08-floatcapital | LongShort | unmatched — not counted | — | mentioned in scope and findings | no |
| code423n4.com/reports/2021-08-floatcapital | Staker | unmatched — not counted | — | mentioned in scope and findings | no |
| code423n4.com/reports/2021-08-floatcapital | SyntheticToken | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | TokenFactory | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | YieldManagerAave | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | YieldManager | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | FloatToken | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | ILendingPool | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | Short | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 498 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [17486] code423n4.com/reports/2021-08-floatcapital

Fork inheritance lineage and inherited audits are included when available.
