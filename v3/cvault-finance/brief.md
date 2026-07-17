# Agentic Audit Brief: cVault Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: cVault Finance (`cvault-finance`)
- Website: [https://cvault.finance/](https://cvault.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 51 unique implementations (53 raw deployments)
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
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 23 of 51 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 51
- Raw deployments: 53
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
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d1572857e5976ae8d4a23c4131350e12e373423` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383136 | 2 deployments: ethereum `0x0ee460204887d98c297bb431e40b713f63ba78e0`; ethereum `0xbeb3075d3c231d23b03face34f50edf1f8d53a77` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383134 | `0x17b8c1a92b66b1cf3092c5d223cb3a129023b669` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x220564c9bd38aa1240c3507007970d9e30c0657d` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6b29a3f9a1e378a57410dc480c1b19f4f89de848` | ⚠️ Unaudited |
| Unimplemented | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c53b4b0a343c70a9e610bde28a269610d7e363c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383101 | `0x255ca4596a963883afe0ef9c85ea071cc050128b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383103 | `0x32ce7e48debdccbfe0cd037cc89526e4382cb81b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383105 | `0x54b276c8a484ebf2a244d933af5ffaf595ea58c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383110 | `0x7b5982dcab054c377517759d0d2a3a5d02615ab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383112 | `0x7ca9b4bab4e16bebedcff403f7397935d905f0d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383114 | `0x87cde0888282084c4676fe973b62a10199297597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383116 | `0x9cb1eeccd165090a4a091209e8c3a353954b1f0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383118 | `0xb2d834dd31816993ef53507eb1325430e67beefa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383120 | `0xc5cacb708425961594b63ec171f4df27a9c0d8c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383124 | `0xe22bbd638b24165206314f999ae27fec9e70dcf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383126 | `0xe508a37101fce81ab412626ee5f1a648244380de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383127 | `0xf3d513fa681ff6f8f7557533d19aea6a20b961f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383128 | `0xf7ca8f55c54cbb6d0965bc6d65c43adc500bc591` | ❓ Unverified |

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
| needs_review | 13 |

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
