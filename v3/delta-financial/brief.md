# Agentic Audit Brief: Delta Financial

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Delta Financial (`delta-financial`)
- Website: [https://www.delta.finance](https://www.delta.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 65 unique implementations (109 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,496,097.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Delta Financial. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 unclassified, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9e20ec2933afe047a7854960ba6e81e02c54c38b`, chain 1)
- TransparentUpgradeableProxy (`0x6b29a3f9a1e378a57410dc480c1b19f4f89de848`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (1 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 63 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 1 of 65 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 65
- Raw deployments: 109
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x98107c16bad83508d23f2933eca63fe5283f43f5`; ethereum `0xa244f14bed2e6cba7c0cc6489441e7aafbbe31af`; ethereum `0xc3977a4acefb771cd7c28cb6229b5d19a3dc1b83` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d1572857e5976ae8d4a23c4131350e12e373423`; ethereum `0xfe3715cb208e93199fecd73ca0be7c118e8024a6` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b5982dcab054c377517759d0d2a3a5d02615ab8`; ethereum `0xf3d513fa681ff6f8f7557533d19aea6a20b961f2` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0xb8a350d2cd92f0aec73c91fcae45ccd29c7e641e`; ethereum `0xdc3571339aa61da5beaeabc669ee0b6a051b1c41`; ethereum `0xe4b861789d1f7daf9b0a402e783794057b85b4d8` | ⚠️ Unaudited |
| cBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf236c3b27d6f3367d3a76f9d655019b780aeaa57` | ⚠️ Unaudited |
| CLending | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4668150f005a53997794dade1ef495329ee47f49`; ethereum `0x54b276c8a484ebf2a244d933af5ffaf595ea58c5` | ⚠️ Unaudited |
| cLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x558c3403ae31a3519b5d701770675726826e2ed5`; ethereum `0xa888494075cf7bc6f9c0956348fe206cffba4879` | ⚠️ Unaudited |
| cLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87cde0888282084c4676fe973b62a10199297597`; ethereum `0xf7ca8f55c54cbb6d0965bc6d65c43adc500bc591` | ⚠️ Unaudited |
| CORE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62359ed7505efc61ff1d56fef82158ccaffa23d7` | ⚠️ Unaudited |
| CORE_LGE_3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaac50b95fbb13956d7c45511f24c3bf9e2a4a76b` | ⚠️ Unaudited |
| CORE_RLP_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904cf9487312f1034814056f1f99be49e74bcc70` | ⚠️ Unaudited |
| coreDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00a66189143279b6db9b77294688f47959f37642` | ⚠️ Unaudited |
| CoreDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf66cd2f8755a21d3c8683a10269f795c0532dd58` | ⚠️ Unaudited |
| CoreDAOTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc3fb0b7a48b56ac5f2cf08ff07ea1878d63caad0`; ethereum `0xe508a37101fce81ab412626ee5f1a648244380de` | ⚠️ Unaudited |
| COREDEX_RLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x40874dd359743f9b230076f2fa2711fcfb3b93cb`; ethereum `0x75c50f4f9b0478fe6ad8481f44030247b0d8b2fc`; ethereum `0x98505e6ec84ce8d5da63eabee768e5a74c5e8d65`; ethereum `0x9d38902cd69a42441a98237d67ea257016dd1796` | ⚠️ Unaudited |
| COREForkMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5dca4093bfe88d6fd5511fb78f6a777d47314d35` | ⚠️ Unaudited |
| COREForkMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6bd04bb4fddd7faaf6b21d94934f4823b1520af` | ⚠️ Unaudited |
| COREGlobals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x20a3872597be26562d3873bfda8842ec7efa78ae`; ethereum `0x22cc20d703c356a542af3814a631fdac31460672` | ⚠️ Unaudited |
| COREGlobals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x255ca4596a963883afe0ef9c85ea071cc050128b` | ⚠️ Unaudited |
| COREv1Router | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0ee460204887d98c297bb431e40b713f63ba78e0`; ethereum `0xbeb3075d3c231d23b03face34f50edf1f8d53a77` | ⚠️ Unaudited |
| COREv1Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ad04e9302e79dd5760eaf3eaec5335b8abd0fd` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x16c0a1d938415bb12fda3900e4a8d7967c276994`; ethereum `0x2241919669c05fe2afd3f5d23eb52615941d510d`; ethereum `0x97a97908748285a0d0856d0a61909bad572b2fd4`; ethereum `0x9dbbfebf347758c5ef6b96fddcb0f6d0fa840220`; ethereum `0xc42b4eae71ec4ab7b8328e7e3140ae03ea5c9b98`; ethereum `0xd0ea2a4771e7ce09f2cc02d69ebf9d41a85cf161`; ethereum `0xdaeca59d122b51c815ecb8719629ef1306a32118` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x556176e9e4bd34b853631b2a5c1c7b2f96348f2c`; ethereum `0xac6bb145d749fd867d383c5779f6adae0a12c291` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7ca9b4bab4e16bebedcff403f7397935d905f0d3`; ethereum `0xc5cacb708425961594b63ec171f4df27a9c0d8c9` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d59c297949b49bc63372c13ce39d7aa9fb40a1` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6bf15a530314d80baa5560539d7f327f3dbe0eec`; ethereum `0x9fe9bb6b66958f2271c4b0ad23f6e8dda8c221be` | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943` | ⚠️ Unaudited |
| DELTA_Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa4079d05467dc8b68f93dff1eb024ab1196f7cb0`; ethereum `0xf249c5b422758d91d8f05e1cc5fc85cf4b667461` | ⚠️ Unaudited |
| DELTA_Limited_Staking_Window | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab` | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b0b4754698aa98cd229f75a463de83242a4765a`; ethereum `0x9282d0831100a8b0d30b862929bd9238913cc7b0`; ethereum `0x9c92c7dc68c7ad09c6dc286319d206f32d88cac7` | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdad70b25fbbaba9613a18d9301987ccd896f9fe8`; ethereum `0xfcfc434ee5bff924222e084a8876eee74ea7cfba` | ⚠️ Unaudited |
| DELTA_Reserve_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x021af35df295dcfbe769e0e08f22de7252a63c34`; ethereum `0x6e570dc0531e786a703f778a1d1c2b6ffba0b53d` | ⚠️ Unaudited |
| DeltaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3e8f6f30163d22203d0d86c608ca1a056345bc` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f71504aa757bd12a1d4c41c0e948226c918783` | ⚠️ Unaudited |
| FannyVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816` | ⚠️ Unaudited |
| FeeApprover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587` | ⚠️ Unaudited |
| Fixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e6b83bfb960f64218b82858ecd89a8351538fb` | ⚠️ Unaudited |
| FlashArbitrageController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x220564c9bd38aa1240c3507007970d9e30c0657d` | ⚠️ Unaudited |
| FlashArbitrageController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2929f4bbb47bc6b40e098c2d94f373209416c967` | ⚠️ Unaudited |
| IWannaDie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9a94f43a7c6e452a45c0039dde717b8f089a5b` | ⚠️ Unaudited |
| OVLBalanceHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d4eba67a81cda00ac6b4aa0ddb72eecdb612ee1`; ethereum `0x867dacc8bca7c6339cbdeb9a536507a7d7058634`; ethereum `0xbfa5b7b4b0e22700b49e4051ace0c2a2263629a2` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x42716df6b1dbda9ac05526f18882cbeb6853387b`; ethereum `0x7e7ac62d8d2873c4e9ff93d6f08bd03ff9bbe96c`; ethereum `0x969a34dea532cdb1340f4291a7bc606f188df248`; ethereum `0xa0bb29c7b5af808bdbf020766113d864f9262a61`; ethereum `0xed686b17db3ae6fd2f614519b8b47ae1fef8fe15` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-383712 | 2 deployments: ethereum `0x9e349ff624e8872afaefd3d25c4e5666011a67a5`; ethereum `0x9ea3b5b4ec044b70375236a281986106457b20ef` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x55e16bbd61550572f30580d51abc8fc2e21246b7`; ethereum `0x9cb1eeccd165090a4a091209e8c3a353954b1f0f`; ethereum `0xc4336cdca29a1244f63d9c911239bdd5028f850d`; ethereum `0xe02c077baae03f1e3827a10088694a6939261d46`; ethereum `0xe3ad20906d37873b1e082fd5b5134ffe020cd309` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370f101ad006b10f3050ed2621924e72d1d77436` | ⚠️ Unaudited |
| StableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3554fc4998f83967dcab5b2ef858e8e63fefbd26` | ⚠️ Unaudited |
| TeamShareTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0912f4ecabe8cbc076d37c248942b8721f169c8e`; ethereum `0x5bcada0d7f07ebe2677e11045644def7949aba1b` | ⚠️ Unaudited |
| TransferHandler01 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e2a33ceca9aef101d679ed058368ac994118e7a`; ethereum `0xc0d019a4ffd6d1ba7fba6de77caa81af60586167` | ⚠️ Unaudited |
| TransferHandler01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x865834b597be14cb0fe5e1e86bf12ba01fec1d77`; ethereum `0x9e674ca13c796a827901d8612da80116502d54af` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383711 | 2 deployments: ethereum `0x6b29a3f9a1e378a57410dc480c1b19f4f89de848`; ethereum `0x9e20ec2933afe047a7854960ba6e81e02c54c38b` | ⚠️ Unaudited |
| Unimplemented | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c53b4b0a343c70a9e610bde28a269610d7e363c` | ⚠️ Unaudited |
| wCORE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17b8c1a92b66b1cf3092c5d223cb3a129023b669` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25858ce5f5ff0c615942c97068f56eab49fe71da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398ab4e965ec2039d01bea1d5c80bc626c02c954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f32cffd47a0150c72de7e48b3afe46c306e199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708722e26de791459e3faee0667d3e26a75059d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0f5f9d36be65227a325e51f215172367d6e01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80af363fd2833c24a43d88b78f172b36c17c4cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859b2fce1f098a9a42f30f2d672de3e2de66c20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a9571fc12f3ee2a750adfd9bd4720ea3de71d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa533698e11a28cb641fb60035ed9ab9130a98e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a9da203d9840793d86d3d12467aea6f042b8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a3f83e879c20bbd2187a773ceabf371e788654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fa5bf5b839809f766353e00324eda2dc0403cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a55f64835d6e9925b1fe69e5e942bc0accf506` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 102
- Live contracts: 2
- Unknown liveness contracts: 100
- Source-verified contracts: 88
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, contamination review=12, exact address book overlap=2, source verified unclassified=73, unverified unclassified=14

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | Unimplemented<br>`0x0c53b4b0a343c70a9e610bde28a269610d7e363c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | CORE_RLP_Factory<br>`0x904cf9487312f1034814056f1f99be49e74bcc70` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | DELTA_Deep_Farming_Vault<br>`0x44d59c297949b49bc63372c13ce39d7aa9fb40a1` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | DELTA_Limited_Staking_Window<br>`0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | DELTA_Reserve_Vault<br>`0x021af35df295dcfbe769e0e08f22de7252a63c34` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | DeltaRouter<br>`0x7b3e8f6f30163d22203d0d86c608ca1a056345bc` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | Fixer<br>`0x36e6b83bfb960f64218b82858ecd89a8351538fb` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | IWannaDie<br>`0x1d9a94f43a7c6e452a45c0039dde717b8f089a5b` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | OVLBalanceHandler<br>`0x3d4eba67a81cda00ac6b4aa0ddb72eecdb612ee1` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | OVLTransferHandler<br>`0x42716df6b1dbda9ac05526f18882cbeb6853387b` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | ProxyFactory<br>`0x370f101ad006b10f3050ed2621924e72d1d77436` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | StableYield<br>`0x3554fc4998f83967dcab5b2ef858e8e63fefbd26` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | contamination review | TeamShareTimelock<br>`0x0912f4ecabe8cbc076d37c248942b8721f169c8e` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | exact address book overlap | DELTAToken<br>`0x9ea3b5b4ec044b70375236a281986106457b20ef` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x6b29a3f9a1e378a57410dc480c1b19f4f89de848` | project_anchor | unknown | live | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x0d1572857e5976ae8d4a23c4131350e12e373423` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x0ee460204887d98c297bb431e40b713f63ba78e0` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x220564c9bd38aa1240c3507007970d9e30c0657d` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x255ca4596a963883afe0ef9c85ea071cc050128b` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x2929f4bbb47bc6b40e098c2d94f373209416c967` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x2e2a33ceca9aef101d679ed058368ac994118e7a` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x54b276c8a484ebf2a244d933af5ffaf595ea58c5` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x5dca4093bfe88d6fd5511fb78f6a777d47314d35` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x7b5982dcab054c377517759d0d2a3a5d02615ab8` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0x98107c16bad83508d23f2933eca63fe5283f43f5` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xa244f14bed2e6cba7c0cc6489441e7aafbbe31af` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xaac50b95fbb13956d7c45511f24c3bf9e2a4a76b` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xac6bb145d749fd867d383c5779f6adae0a12c291` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xb8a350d2cd92f0aec73c91fcae45ccd29c7e641e` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xc3977a4acefb771cd7c28cb6229b5d19a3dc1b83` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xc5cacb708425961594b63ec171f4df27a9c0d8c9` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xd6bd04bb4fddd7faaf6b21d94934f4823b1520af` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xdc3571339aa61da5beaeabc669ee0b6a051b1c41` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xe508a37101fce81ab412626ee5f1a648244380de` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | AdminUpgradeabilityProxy<br>`0xf7ca8f55c54cbb6d0965bc6d65c43adc500bc591` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cBTC<br>`0xe4b861789d1f7daf9b0a402e783794057b85b4d8` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cBTC<br>`0xf236c3b27d6f3367d3a76f9d655019b780aeaa57` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cBTC<br>`0xf3d513fa681ff6f8f7557533d19aea6a20b961f2` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cBTC<br>`0xfe3715cb208e93199fecd73ca0be7c118e8024a6` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CLending<br>`0x4668150f005a53997794dade1ef495329ee47f49` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cLGE<br>`0x558c3403ae31a3519b5d701770675726826e2ed5` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cLGE<br>`0x87cde0888282084c4676fe973b62a10199297597` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | cLGE<br>`0xa888494075cf7bc6f9c0956348fe206cffba4879` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreDAOTreasury<br>`0xc3fb0b7a48b56ac5f2cf08ff07ea1878d63caad0` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREDEX_RLP<br>`0x40874dd359743f9b230076f2fa2711fcfb3b93cb` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREDEX_RLP<br>`0x75c50f4f9b0478fe6ad8481f44030247b0d8b2fc` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREDEX_RLP<br>`0x98505e6ec84ce8d5da63eabee768e5a74c5e8d65` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREDEX_RLP<br>`0x9d38902cd69a42441a98237d67ea257016dd1796` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREGlobals<br>`0x20a3872597be26562d3873bfda8842ec7efa78ae` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREGlobals<br>`0x22cc20d703c356a542af3814a631fdac31460672` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREv1Router<br>`0x48ad04e9302e79dd5760eaf3eaec5335b8abd0fd` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | COREv1Router<br>`0xbeb3075d3c231d23b03face34f50edf1f8d53a77` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0x16c0a1d938415bb12fda3900e4a8d7967c276994` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0x2241919669c05fe2afd3f5d23eb52615941d510d` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0x556176e9e4bd34b853631b2a5c1c7b2f96348f2c` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0x7ca9b4bab4e16bebedcff403f7397935d905f0d3` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0x97a97908748285a0d0856d0a61909bad572b2fd4` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0x9dbbfebf347758c5ef6b96fddcb0f6d0fa840220` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0xc42b4eae71ec4ab7b8328e7e3140ae03ea5c9b98` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0xd0ea2a4771e7ce09f2cc02d69ebf9d41a85cf161` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | CoreVault<br>`0xdaeca59d122b51c815ecb8719629ef1306a32118` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Deep_Farming_Vault<br>`0x6bf15a530314d80baa5560539d7f327f3dbe0eec` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Distributor<br>`0xa4079d05467dc8b68f93dff1eb024ab1196f7cb0` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Rebasing_Liquidity_Token<br>`0x1b0b4754698aa98cd229f75a463de83242a4765a` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Rebasing_Liquidity_Token<br>`0x9282d0831100a8b0d30b862929bd9238913cc7b0` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Rebasing_Liquidity_Token<br>`0x9c92c7dc68c7ad09c6dc286319d206f32d88cac7` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Rebasing_Liquidity_Token<br>`0xdad70b25fbbaba9613a18d9301987ccd896f9fe8` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | DELTA_Reserve_Vault<br>`0x6e570dc0531e786a703f778a1d1c2b6ffba0b53d` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | EmptyContract<br>`0xf6f71504aa757bd12a1d4c41c0e948226c918783` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | FeeApprover<br>`0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLBalanceHandler<br>`0x867dacc8bca7c6339cbdeb9a536507a7d7058634` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLBalanceHandler<br>`0xbfa5b7b4b0e22700b49e4051ace0c2a2263629a2` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLTransferHandler<br>`0x7e7ac62d8d2873c4e9ff93d6f08bd03ff9bbe96c` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLTransferHandler<br>`0x969a34dea532cdb1340f4291a7bc606f188df248` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLTransferHandler<br>`0x9e349ff624e8872afaefd3d25c4e5666011a67a5` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLTransferHandler<br>`0xa0bb29c7b5af808bdbf020766113d864f9262a61` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | OVLTransferHandler<br>`0xed686b17db3ae6fd2f614519b8b47ae1fef8fe15` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0x55e16bbd61550572f30580d51abc8fc2e21246b7` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0x9cb1eeccd165090a4a091209e8c3a353954b1f0f` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0xc4336cdca29a1244f63d9c911239bdd5028f850d` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0xe02c077baae03f1e3827a10088694a6939261d46` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0xe3ad20906d37873b1e082fd5b5134ffe020cd309` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | TeamShareTimelock<br>`0x5bcada0d7f07ebe2677e11045644def7949aba1b` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | TransferHandler01<br>`0x865834b597be14cb0fe5e1e86bf12ba01fec1d77` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | TransferHandler01<br>`0x9e674ca13c796a827901d8612da80116502d54af` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | TransferHandler01<br>`0xc0d019a4ffd6d1ba7fba6de77caa81af60586167` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x9fe9bb6b66958f2271c4b0ad23f6e8dda8c221be` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0xfcfc434ee5bff924222e084a8876eee74ea7cfba` | non_address_book | unknown | unknown | verified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25858ce5f5ff0c615942c97068f56eab49fe71da` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x398ab4e965ec2039d01bea1d5c80bc626c02c954` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48f32cffd47a0150c72de7e48b3afe46c306e199` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x708722e26de791459e3faee0667d3e26a75059d2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c0f5f9d36be65227a325e51f215172367d6e01a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80af363fd2833c24a43d88b78f172b36c17c4cdd` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x859b2fce1f098a9a42f30f2d672de3e2de66c20e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e20ec2933afe047a7854960ba6e81e02c54c38b` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1a9571fc12f3ee2a750adfd9bd4720ea3de71d0` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa533698e11a28cb641fb60035ed9ab9130a98e0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8a9da203d9840793d86d3d12467aea6f042b8a4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0a3f83e879c20bbd2187a773ceabf371e788654` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1fa5bf5b839809f766353e00324eda2dc0403cf` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8a55f64835d6e9925b1fe69e5e942bc0accf506` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/delta-finance](https://skynet.certik.com/projects/delta-finance) | CertiK | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21299] skynet.certik.com/projects/delta-finance — no match: Extracted from 'Audited Files' section; only two files listed with truncated SHA256 hashes. Audit date from 'Last Audit was delivered on 7/23/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/delta-finance | ISwapAggregator | unmatched — not counted | — | listed in Audited Files | no |
| skynet.certik.com/projects/delta-finance | Curve | unmatched — not counted | — | listed in Audited Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21299] skynet.certik.com/projects/delta-finance

Fork inheritance lineage and inherited audits are included when available.
