# Agentic Audit Brief: cVault Finance

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

- Project: cVault Finance (`cvault-finance`)
- Website: [https://cvault.finance/](https://cvault.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 157 unique implementations (162 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,198,797.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for cVault Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across ethereum. Structural roles: 10 core. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (10)
- Contract kinds: contract (10)
- Detected standards: erc1967proxy (7), ownable (2), erc20 (1)
- Frameworks: openzeppelin (3), foundry (1), openzeppelin-upgradeable (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x255ca4596a963883afe0ef9c85ea071cc050128b`, chain 1)
- UnnamedContract (`0x32ce7e48debdccbfe0cd037cc89526e4382cb81b`, chain 1)
- UnnamedContract (`0x54b276c8a484ebf2a244d933af5ffaf595ea58c5`, chain 1)
- UnnamedContract (`0x7b5982dcab054c377517759d0d2a3a5d02615ab8`, chain 1)
- UnnamedContract (`0x7ca9b4bab4e16bebedcff403f7397935d905f0d3`, chain 1)
- UnnamedContract (`0x87cde0888282084c4676fe973b62a10199297597`, chain 1)
- UnnamedContract (`0x9cb1eeccd165090a4a091209e8c3a353954b1f0f`, chain 1)
- UnnamedContract (`0xb2d834dd31816993ef53507eb1325430e67beefa`, chain 1)
- UnnamedContract (`0xbeb3075d3c231d23b03face34f50edf1f8d53a77`, chain 1)
- UnnamedContract (`0xc0d019a4ffd6d1ba7fba6de77caa81af60586167`, chain 1)
- UnnamedContract (`0xc5cacb708425961594b63ec171f4df27a9c0d8c9`, chain 1)
- UnnamedContract (`0xe22bbd638b24165206314f999ae27fec9e70dcf6`, chain 1)
- UnnamedContract (`0xe508a37101fce81ab412626ee5f1a648244380de`, chain 1)
- UnnamedContract (`0xf3d513fa681ff6f8f7557533d19aea6a20b961f2`, chain 1)
- UnnamedContract (`0xf7ca8f55c54cbb6d0965bc6d65c43adc500bc591`, chain 1)
- AdminUpgradeabilityProxy (`0x00a66189143279b6db9b77294688f47959f37642`, chain 1)
- AdminUpgradeabilityProxy (`0x0ee460204887d98c297bb431e40b713f63ba78e0`, chain 1)
- AdminUpgradeabilityProxy (`0x17b8c1a92b66b1cf3092c5d223cb3a129023b669`, chain 1)
- AdminUpgradeabilityProxy (`0x2e2a33ceca9aef101d679ed058368ac994118e7a`, chain 1)
- AdminUpgradeabilityProxy (`0x5dca4093bfe88d6fd5511fb78f6a777d47314d35`, chain 1)
- AdminUpgradeabilityProxy (`0xaac50b95fbb13956d7c45511f24c3bf9e2a4a76b`, chain 1)
- AdminUpgradeabilityProxy (`0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816`, chain 1)
- CORE (`0x62359ed7505efc61ff1d56fef82158ccaffa23d7`, chain 1)
- DELTA_Limited_Staking_Window (`0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab`, chain 1)
- FeeApprover (`0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 23 of 157 unique; 134 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 119
- Unique implementations: 157
- Raw deployments: 162
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383132 | `0x00a66189143279b6db9b77294688f47959f37642` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d1572857e5976ae8d4a23c4131350e12e373423`; ethereum `0xfe3715cb208e93199fecd73ca0be7c118e8024a6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383136 | 2 deployments: ethereum `0x0ee460204887d98c297bb431e40b713f63ba78e0`; ethereum `0xbeb3075d3c231d23b03face34f50edf1f8d53a77` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383134 | `0x17b8c1a92b66b1cf3092c5d223cb3a129023b669` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x220564c9bd38aa1240c3507007970d9e30c0657d`; ethereum `0x8b571caa4cc1c6f4104062bc75948aabb19b6c5e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383138 | 2 deployments: ethereum `0x2e2a33ceca9aef101d679ed058368ac994118e7a`; ethereum `0xc0d019a4ffd6d1ba7fba6de77caa81af60586167` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383140 | `0x5dca4093bfe88d6fd5511fb78f6a777d47314d35` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x98107c16bad83508d23f2933eca63fe5283f43f5` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383142 | `0xaac50b95fbb13956d7c45511f24c3bf9e2a4a76b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383130 | `0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816` | ⚠️ Unaudited |
| CLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4668150f005a53997794dade1ef495329ee47f49` | ⚠️ Unaudited |
| cLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558c3403ae31a3519b5d701770675726826e2ed5` | ⚠️ Unaudited |
| CORE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383108 | `0x62359ed7505efc61ff1d56fef82158ccaffa23d7` | ⚠️ Unaudited |
| CORE_RLP_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904cf9487312f1034814056f1f99be49e74bcc70` | ⚠️ Unaudited |
| CoreDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf66cd2f8755a21d3c8683a10269f795c0532dd58` | ⚠️ Unaudited |
| CoreDAOTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fb0b7a48b56ac5f2cf08ff07ea1878d63caad0` | ⚠️ Unaudited |
| COREDEX_RLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40874dd359743f9b230076f2fa2711fcfb3b93cb` | ⚠️ Unaudited |
| COREGlobals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a3872597be26562d3873bfda8842ec7efa78ae` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c0a1d938415bb12fda3900e4a8d7967c276994` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d59c297949b49bc63372c13ce39d7aa9fb40a1` | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943` | ⚠️ Unaudited |
| DELTA_Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4079d05467dc8b68f93dff1eb024ab1196f7cb0` | ⚠️ Unaudited |
| DELTA_Limited_Staking_Window | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383122 | `0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab` | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0b4754698aa98cd229f75a463de83242a4765a` | ⚠️ Unaudited |
| DELTA_Reserve_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x021af35df295dcfbe769e0e08f22de7252a63c34` | ⚠️ Unaudited |
| DeltaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3e8f6f30163d22203d0d86c608ca1a056345bc` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f71504aa757bd12a1d4c41c0e948226c918783` | ⚠️ Unaudited |
| FeeApprover | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383099 | `0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587` | ⚠️ Unaudited |
| Fixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e6b83bfb960f64218b82858ecd89a8351538fb` | ⚠️ Unaudited |
| IWannaDie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9a94f43a7c6e452a45c0039dde717b8f089a5b` | ⚠️ Unaudited |
| OVLBalanceHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4eba67a81cda00ac6b4aa0ddb72eecdb612ee1` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42716df6b1dbda9ac05526f18882cbeb6853387b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x55e16bbd61550572f30580d51abc8fc2e21246b7` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370f101ad006b10f3050ed2621924e72d1d77436` | ⚠️ Unaudited |
| StableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3554fc4998f83967dcab5b2ef858e8e63fefbd26` | ⚠️ Unaudited |
| TeamShareTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0912f4ecabe8cbc076d37c248942b8721f169c8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b29a3f9a1e378a57410dc480c1b19f4f89de848`; ethereum `0x9e20ec2933afe047a7854960ba6e81e02c54c38b` | ⚠️ Unaudited |
| Unimplemented | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c53b4b0a343c70a9e610bde28a269610d7e363c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (119)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0064e4235fad30baf8af50145aac283e4feee1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025b275dd3b79dc3b79e3f60d0a46516d2396059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a39fb8d3c74745ba0e40248d01b893a4835845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0629056846681d820728653fe0916cb2e80ff4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3e07fcaaecb2e8afc078e20f978d11d3d6fa19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b1402cc76ad57e60ebed9813eaa2916c1016947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f199137f96ef9269897edef4157940a4d4aa475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103741afa92ad9da88fd5dd12c686f79f1e4d057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105aa95947c16999f32190f3eac8dabddc8e39d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x134f00a389d7b429b4ec14712599b853b694f782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17bc6558834f60236b917408691ab555c6662ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c05066beb2ff704ed4a6d319a2b05c02e836a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf85c1356662327e9f083326883f5635d383c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e1322f6b9b1427e2cc3a6943b763d89d10a5202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2241919669c05fe2afd3f5d23eb52615941d510d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c91cdd1e00cd4d7d029f0db94020fce3c486e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22cc20d703c356a542af3814a631fdac31460672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383101 | `0x255ca4596a963883afe0ef9c85ea071cc050128b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25858ce5f5ff0c615942c97068f56eab49fe71da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2929f4bbb47bc6b40e098c2d94f373209416c967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c5ba68e44fb6cc7f1312e8419102a07112e0916` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383103 | `0x32ce7e48debdccbfe0cd037cc89526e4382cb81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394bbcc550b57f397116d2b5ea8fa1218488a653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398ab4e965ec2039d01bea1d5c80bc626c02c954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c9b5f80c7de7ff4c33d4ea861c25ecd780bcc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c03c797a7f5d88dc3e5f32a7d2c2ce03792ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43dd7026284ac8f95eb02bb1bd68d0699b0ae9ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ad04e9302e79dd5760eaf3eaec5335b8abd0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48f32cffd47a0150c72de7e48b3afe46c306e199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x500933ad730a2308c02af34464f543fc451e0eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a4b684b0486422ff6e5372fcc3f4a5124a559f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383105 | `0x54b276c8a484ebf2a244d933af5ffaf595ea58c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556176e9e4bd34b853631b2a5c1c7b2f96348f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bcada0d7f07ebe2677e11045644def7949aba1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef0b59cd8808608e8ea73cd1c3c7d24696f2c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x614659165dd0edd4b2cdd14b9ee827bb2729d58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64379d246fe38a2c7cf35b5b33b56d7b718c22fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64c6f28e6757fb0018aba7364062a4c50f90bff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf15a530314d80baa5560539d7f327f3dbe0eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cda184df54d8e093e315b822f61bc511e9b8a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e570dc0531e786a703f778a1d1c2b6ffba0b53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f507e089049f9533733a4cff65ef44c59b6f0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fd1cb57eadd1873493b07ca07b2a92993272f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708722e26de791459e3faee0667d3e26a75059d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c50f4f9b0478fe6ad8481f44030247b0d8b2fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383110 | `0x7b5982dcab054c377517759d0d2a3a5d02615ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0f5f9d36be65227a325e51f215172367d6e01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c7ff16ddf45e108715d16c8e4ed09f7b40dc841` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383112 | `0x7ca9b4bab4e16bebedcff403f7397935d905f0d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e7ac62d8d2873c4e9ff93d6f08bd03ff9bbe96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8017624c3797be8ca8666e7545768a341253de83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80af363fd2833c24a43d88b78f172b36c17c4cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8493a2707a664a3847929a1885ef290a53be6d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859b2fce1f098a9a42f30f2d672de3e2de66c20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x865834b597be14cb0fe5e1e86bf12ba01fec1d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x867dacc8bca7c6339cbdeb9a536507a7d7058634` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383114 | `0x87cde0888282084c4676fe973b62a10199297597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882efb8fb11a1ed2940a2795cc9e10ae642f851e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad66f7e0e3e3dc331d3dbf2c662d7ae293c1fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e35f75bb1ce41fa6f2a42a4e05330c5a86d3ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9282d0831100a8b0d30b862929bd9238913cc7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969534980335c8428814d2eb87848d96f331b3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969a34dea532cdb1340f4291a7bc606f188df248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a97908748285a0d0856d0a61909bad572b2fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98505e6ec84ce8d5da63eabee768e5a74c5e8d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c92c7dc68c7ad09c6dc286319d206f32d88cac7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383116 | `0x9cb1eeccd165090a4a091209e8c3a353954b1f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d38902cd69a42441a98237d67ea257016dd1796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dbbfebf347758c5ef6b96fddcb0f6d0fa840220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e349ff624e8872afaefd3d25c4e5666011a67a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e674ca13c796a827901d8612da80116502d54af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea3b5b4ec044b70375236a281986106457b20ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe9bb6b66958f2271c4b0ad23f6e8dda8c221be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0bb29c7b5af808bdbf020766113d864f9262a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa16782b2dedc2085da1eaefb3be71b02dccf59bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a9571fc12f3ee2a750adfd9bd4720ea3de71d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa244f14bed2e6cba7c0cc6489441e7aafbbe31af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa533698e11a28cb641fb60035ed9ab9130a98e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5896040a349baf4b769ede67f487e3ca62867eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa888494075cf7bc6f9c0956348fe206cffba4879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a9da203d9840793d86d3d12467aea6f042b8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6bb145d749fd867d383c5779f6adae0a12c291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf51264e13cab125e5d533fb4f6d63bc2c09e955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafdd2c68ae8667d3c979085dbdaf3fe7089cb22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a3f83e879c20bbd2187a773ceabf371e788654` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383118 | `0xb2d834dd31816993ef53507eb1325430e67beefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a350d2cd92f0aec73c91fcae45ccd29c7e641e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe2343eff6e6fac1f2bc2887d41f506670711831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebdaf458e1192c009a9a2c6b6d9d41c02e9545b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfa5b7b4b0e22700b49e4051ace0c2a2263629a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fa5bf5b839809f766353e00324eda2dc0403cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32d1b235974989eec34d3b9423106397aade91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3977a4acefb771cd7c28cb6229b5d19a3dc1b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc42b4eae71ec4ab7b8328e7e3140ae03ea5c9b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4336cdca29a1244f63d9c911239bdd5028f850d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383120 | `0xc5cacb708425961594b63ec171f4df27a9c0d8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa68f14d434d909783c547a337962c17eee9740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcda945230a5e8c0c61ac28adfe16e15bb012e2cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ea2a4771e7ce09f2cc02d69ebf9d41a85cf161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6bd04bb4fddd7faaf6b21d94934f4823b1520af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a55f64835d6e9925b1fe69e5e942bc0accf506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdad70b25fbbaba9613a18d9301987ccd896f9fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaeca59d122b51c815ecb8719629ef1306a32118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc3571339aa61da5beaeabc669ee0b6a051b1c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02c077baae03f1e3827a10088694a6939261d46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383124 | `0xe22bbd638b24165206314f999ae27fec9e70dcf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ad20906d37873b1e082fd5b5134ffe020cd309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ad8863dd3229c5662fee9175656990cae5cb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b861789d1f7daf9b0a402e783794057b85b4d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383126 | `0xe508a37101fce81ab412626ee5f1a648244380de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe790acb649fe438302e44289ae4dc5462014a0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed686b17db3ae6fd2f614519b8b47ae1fef8fe15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf236c3b27d6f3367d3a76f9d655019b780aeaa57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf249c5b422758d91d8f05e1cc5fc85cf4b667461` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383127 | `0xf3d513fa681ff6f8f7557533d19aea6a20b961f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383128 | `0xf7ca8f55c54cbb6d0965bc6d65c43adc500bc591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcfc434ee5bff924222e084a8876eee74ea7cfba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfec5989ee4dc89ef9ebc18aa3a916e182ae29daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed4ec1348a4068d4934e09492428fd92e399e5c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 109
- Live contracts: 0
- Unknown liveness contracts: 109
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=109

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x2241919669c05fe2afd3f5d23eb52615941d510d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22cc20d703c356a542af3814a631fdac31460672` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25858ce5f5ff0c615942c97068f56eab49fe71da` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2929f4bbb47bc6b40e098c2d94f373209416c967` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x398ab4e965ec2039d01bea1d5c80bc626c02c954` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48ad04e9302e79dd5760eaf3eaec5335b8abd0fd` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48f32cffd47a0150c72de7e48b3afe46c306e199` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x556176e9e4bd34b853631b2a5c1c7b2f96348f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5bcada0d7f07ebe2677e11045644def7949aba1b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bf15a530314d80baa5560539d7f327f3dbe0eec` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e570dc0531e786a703f778a1d1c2b6ffba0b53d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x708722e26de791459e3faee0667d3e26a75059d2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75c50f4f9b0478fe6ad8481f44030247b0d8b2fc` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c0f5f9d36be65227a325e51f215172367d6e01a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e7ac62d8d2873c4e9ff93d6f08bd03ff9bbe96c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80af363fd2833c24a43d88b78f172b36c17c4cdd` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x859b2fce1f098a9a42f30f2d672de3e2de66c20e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x865834b597be14cb0fe5e1e86bf12ba01fec1d77` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x867dacc8bca7c6339cbdeb9a536507a7d7058634` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9282d0831100a8b0d30b862929bd9238913cc7b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x969a34dea532cdb1340f4291a7bc606f188df248` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97a97908748285a0d0856d0a61909bad572b2fd4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98505e6ec84ce8d5da63eabee768e5a74c5e8d65` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c92c7dc68c7ad09c6dc286319d206f32d88cac7` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d38902cd69a42441a98237d67ea257016dd1796` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9dbbfebf347758c5ef6b96fddcb0f6d0fa840220` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e20ec2933afe047a7854960ba6e81e02c54c38b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e349ff624e8872afaefd3d25c4e5666011a67a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e674ca13c796a827901d8612da80116502d54af` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ea3b5b4ec044b70375236a281986106457b20ef` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9fe9bb6b66958f2271c4b0ad23f6e8dda8c221be` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0bb29c7b5af808bdbf020766113d864f9262a61` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1a9571fc12f3ee2a750adfd9bd4720ea3de71d0` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa244f14bed2e6cba7c0cc6489441e7aafbbe31af` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa533698e11a28cb641fb60035ed9ab9130a98e0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa888494075cf7bc6f9c0956348fe206cffba4879` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8a9da203d9840793d86d3d12467aea6f042b8a4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac6bb145d749fd867d383c5779f6adae0a12c291` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0a3f83e879c20bbd2187a773ceabf371e788654` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8a350d2cd92f0aec73c91fcae45ccd29c7e641e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfa5b7b4b0e22700b49e4051ace0c2a2263629a2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1fa5bf5b839809f766353e00324eda2dc0403cf` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3977a4acefb771cd7c28cb6229b5d19a3dc1b83` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc42b4eae71ec4ab7b8328e7e3140ae03ea5c9b98` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4336cdca29a1244f63d9c911239bdd5028f850d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0ea2a4771e7ce09f2cc02d69ebf9d41a85cf161` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6bd04bb4fddd7faaf6b21d94934f4823b1520af` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8a55f64835d6e9925b1fe69e5e942bc0accf506` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdad70b25fbbaba9613a18d9301987ccd896f9fe8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaeca59d122b51c815ecb8719629ef1306a32118` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc3571339aa61da5beaeabc669ee0b6a051b1c41` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe02c077baae03f1e3827a10088694a6939261d46` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3ad20906d37873b1e082fd5b5134ffe020cd309` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4b861789d1f7daf9b0a402e783794057b85b4d8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed686b17db3ae6fd2f614519b8b47ae1fef8fe15` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf236c3b27d6f3367d3a76f9d655019b780aeaa57` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf249c5b422758d91d8f05e1cc5fc85cf4b667461` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfcfc434ee5bff924222e084a8876eee74ea7cfba` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe3715cb208e93199fecd73ca0be7c118e8024a6` | non_address_book | unknown | unknown | unverified | n/a | `0x5a16552f59ea34e44ec81e58b3817833e9fd5436` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0064e4235fad30baf8af50145aac283e4feee1ef` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x025b275dd3b79dc3b79e3f60d0a46516d2396059` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04a39fb8d3c74745ba0e40248d01b893a4835845` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0629056846681d820728653fe0916cb2e80ff4dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a3e07fcaaecb2e8afc078e20f978d11d3d6fa19` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b1402cc76ad57e60ebed9813eaa2916c1016947` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f199137f96ef9269897edef4157940a4d4aa475` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x103741afa92ad9da88fd5dd12c686f79f1e4d057` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x105aa95947c16999f32190f3eac8dabddc8e39d1` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x134f00a389d7b429b4ec14712599b853b694f782` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17bc6558834f60236b917408691ab555c6662ad8` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c05066beb2ff704ed4a6d319a2b05c02e836a27` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1cf85c1356662327e9f083326883f5635d383c01` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e1322f6b9b1427e2cc3a6943b763d89d10a5202` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22c91cdd1e00cd4d7d029f0db94020fce3c486e3` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c5ba68e44fb6cc7f1312e8419102a07112e0916` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x394bbcc550b57f397116d2b5ea8fa1218488a653` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40c9b5f80c7de7ff4c33d4ea861c25ecd780bcc7` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41c03c797a7f5d88dc3e5f32a7d2c2ce03792ea5` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43dd7026284ac8f95eb02bb1bd68d0699b0ae9ca` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x500933ad730a2308c02af34464f543fc451e0eaf` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54a4b684b0486422ff6e5372fcc3f4a5124a559f` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ef0b59cd8808608e8ea73cd1c3c7d24696f2c59` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x614659165dd0edd4b2cdd14b9ee827bb2729d58d` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64379d246fe38a2c7cf35b5b33b56d7b718c22fb` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64c6f28e6757fb0018aba7364062a4c50f90bff7` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cda184df54d8e093e315b822f61bc511e9b8a04` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f507e089049f9533733a4cff65ef44c59b6f0ae` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6fd1cb57eadd1873493b07ca07b2a92993272f33` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c7ff16ddf45e108715d16c8e4ed09f7b40dc841` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8017624c3797be8ca8666e7545768a341253de83` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8493a2707a664a3847929a1885ef290a53be6d96` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x882efb8fb11a1ed2940a2795cc9e10ae642f851e` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ad66f7e0e3e3dc331d3dbf2c662d7ae293c1fe0` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b571caa4cc1c6f4104062bc75948aabb19b6c5e` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e35f75bb1ce41fa6f2a42a4e05330c5a86d3ea0` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x969534980335c8428814d2eb87848d96f331b3ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa16782b2dedc2085da1eaefb3be71b02dccf59bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5896040a349baf4b769ede67f487e3ca62867eb` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf51264e13cab125e5d533fb4f6d63bc2c09e955` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafdd2c68ae8667d3c979085dbdaf3fe7089cb22d` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe2343eff6e6fac1f2bc2887d41f506670711831` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbebdaf458e1192c009a9a2c6b6d9d41c02e9545b` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc32d1b235974989eec34d3b9423106397aade91c` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcaa68f14d434d909783c547a337962c17eee9740` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcda945230a5e8c0c61ac28adfe16e15bb012e2cf` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3ad8863dd3229c5662fee9175656990cae5cb37` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe790acb649fe438302e44289ae4dc5462014a0d9` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfec5989ee4dc89ef9ebc18aa3a916e182ae29daf` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfed4ec1348a4068d4934e09492428fd92e399e5c` | non_address_book | unknown | unknown | unverified | n/a | `0xd5b47b80668840e7164c1d1d81af8a9d9727b421` |

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
| ethereum | `0x62359ed7505efc61ff1d56fef82158ccaffa23d7` | CORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab` | DELTA_Limited_Staking_Window | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587` | FeeApprover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 12 |
| needs_review | 119 |

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
