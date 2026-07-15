# Agentic Audit Brief: Loopring

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

- Project: Loopring (`loopring`)
- Website: [https://loopring.org/#/](https://loopring.org/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 195 unique implementations (446 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,125,806.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Loopring. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 127 contract row(s) across base, ethereum. Structural roles: 124 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 127
- Structural roles: unclassified (124), core (3)
- Contract kinds: contract (127)
- Detected standards: eip1271 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 127; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 179 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 127
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/98
- Verified + Unaudited implementations: 98
- Verified by bytecode match: 0
- Unverified implementations: 97
- Unique implementations: 195
- Raw deployments: 446
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (98)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddOfficialGuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b057...b1d62d` | ⚠️ Unaudited |
| AgentRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245429 | `0x39b9bf...38ea14` | ⚠️ Unaudited |
| AgentRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x8e1821...9a3240`; base `0x0d9b7f...87786b`; base `0x1b5544...fd1e69`; base `0x46c362...26644c`; base `0x533379...4f9f25`; base `0xd06824...f04eff` | ⚠️ Unaudited |
| AmmExitRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02d1b3...e9e7b1`; ethereum `0x643caf...bfcce5`; ethereum `0xe5fd79...df54a0` | ⚠️ Unaudited |
| AmmJoinRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2fad77...273d3e`; ethereum `0xd86ecd...fadf83`; ethereum `0xe34ded...466bfb` | ⚠️ Unaudited |
| AmmStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x67e66a...00df60`; ethereum `0xaae0a0...97143a`; ethereum `0xba64e6...626ee6` | ⚠️ Unaudited |
| AmmWithdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x40d9fa...374639`; ethereum `0xb97190...8c16b3`; ethereum `0xd2848b...398f7e` | ⚠️ Unaudited |
| BatchVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3edbc7...211b5f` | ⚠️ Unaudited |
| BlockVerifier | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245437 | `0x615034...8d01ef` | ⚠️ Unaudited |
| BlockVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x40598b...a94cf7`; base `0x18d587...2f15f9`; base `0x921c0e...c44f91`; base `0x95bd4d...f396e3`; base `0xae8de5...0032ad`; base `0xc9a437...591c94` | ⚠️ Unaudited |
| BlockVerifierOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb39412...e71b3f` | ⚠️ Unaudited |
| CancellableEmployeeTokenOwnershipPlan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8372cf...25cf8f` | ⚠️ Unaudited |
| Cloneable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59d0e7...4cc22a`; ethereum `0xb37828...663438` | ⚠️ Unaudited |
| Collection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x163cee...94da84`; ethereum `0x45881f...28e2ff`; ethereum `0x490095...d88d07`; ethereum `0x749a53...23fb73`; ethereum `0x7df389...8ac086`; ethereum `0x959f4c...976db8`; ethereum `0x9f17ee...13b7f5`; ethereum `0xc451dd...1a243e`; ethereum `0xca4b6b...58c206`; ethereum `0xd71607...991a3d`; ethereum `0xe06c7d...43a4a2`; ethereum `0xf7cff3...44445c` | ⚠️ Unaudited |
| ControllerImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243614...13ee91` | ⚠️ Unaudited |
| CounterfactualNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb25f6d...a7e55d`; ethereum `0xc852ac...d80026` | ⚠️ Unaudited |
| CounterfactualNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b581...6d6119` | ⚠️ Unaudited |
| CounterfactualNftExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0da5b1...e64f63`; ethereum `0xaf4c6c...4eff06` | ⚠️ Unaudited |
| DefaultDepositContract | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245439 | `0x674bdf...66bd3f` | ⚠️ Unaudited |
| DefaultDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4ee77c...2bec55`; base `0x65b0c7...442010`; base `0x732771...dc99fe` | ⚠️ Unaudited |
| DepositAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x4def0e...e99926`; base `0x1b561b...764d9f`; base `0xfb8c97...85459a` | ⚠️ Unaudited |
| DestroyableWalletAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245433 | `0x4cd8d4...f7f529` | ⚠️ Unaudited |
| DestroyableWalletAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf75b89...c28109` | ⚠️ Unaudited |
| DowntimeCostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x873685...a5c221`; ethereum `0xee38e9...fd686d` | ⚠️ Unaudited |
| EmployeeTokenOwnershipPlan2020 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1161ef...0870a4` | ⚠️ Unaudited |
| ERC1271Lib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd08e75...4a3c5a`; ethereum `0xdc6a94...b897b3` | ⚠️ Unaudited |
| ERC20Lib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7c43...789958` | ⚠️ Unaudited |
| ExchangeAccounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0805f5...a80fb0`; ethereum `0xc9a437...591c94` | ⚠️ Unaudited |
| ExchangeAdmins | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x410ac9...51b942`; ethereum `0x6b797b...07905b`; ethereum `0x919551...aa83c9`; ethereum `0xa0564f...1713ea`; ethereum `0xb9c5d8...ec3891`; ethereum `0xd06824...f04eff`; base `0x0e77d9...4a691c` | ⚠️ Unaudited |
| ExchangeBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x0845ab...2347ee`; ethereum `0x3a9c3e...6fe38d`; ethereum `0x4e4ea2...6501c2`; ethereum `0x6ce48c...7ea441`; ethereum `0x735720...9dd8bb`; ethereum `0x90e222...f05c3c`; base `0x013aa5...826069` | ⚠️ Unaudited |
| ExchangeBlocks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03fec3...e6538d`; ethereum `0x17d3ef...addf3b`; ethereum `0x5316ca...b4d8b7`; ethereum `0x571d92...73b67d`; ethereum `0x8c5b8e...7b4d3c`; ethereum `0x94cdf6...d2e84e`; ethereum `0xb01e1b...c797f3`; ethereum `0xb1fe32...067988`; base `0x874507...8002c7` | ⚠️ Unaudited |
| ExchangeConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3353ab...5f4ac8`; ethereum `0xe704a9...de1b08` | ⚠️ Unaudited |
| ExchangeDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07f50b...0872cc`; ethereum `0x7e185c...d4359c`; ethereum `0xe9d639...6f2975`; base `0x7e185c...d4359c` | ⚠️ Unaudited |
| ExchangeGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x013aa5...826069`; ethereum `0x0e3229...693d38`; ethereum `0x77fad7...c325b9`; ethereum `0x86aa01...b55c4d`; ethereum `0x8e0110...4a8681`; ethereum `0xa2f334...0afb9f`; base `0x0d75ce...3c1764` | ⚠️ Unaudited |
| ExchangeTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x24f51f...010b29`; ethereum `0x432bcd...0fa7f6`; ethereum `0x52c0df...e448bb`; ethereum `0x6be34a...cd1b03`; ethereum `0x846d93...ba5037`; ethereum `0xa3ac9b...8fc765`; base `0x99ce8b...8a96e9` | ⚠️ Unaudited |
| ExchangeV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245445 | 2 deployments: ethereum `0x0baba1...8f1ea4`; ethereum `0x26d8ba...ae7e82` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2fefbe...e9675d`; ethereum `0x3c294f...fab9da`; ethereum `0x4fb117...17e7ec`; ethereum `0x730ea8...d372ec`; ethereum `0x8c63d8...447ad7`; ethereum `0xa01d4d...de9685`; ethereum `0xc2d1e8...846105`; ethereum `0xcfba78...b5d32f` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x879938...4b4773`; base `0xb58d10...64b121` | ⚠️ Unaudited |
| ExchangeWithdrawals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0e77d9...4a691c`; ethereum `0x110a4f...f0ce4a`; ethereum `0x2058db...0df826`; ethereum `0x46a71e...fa9989`; ethereum `0x4d6924...d88d68`; ethereum `0x5045b1...2d0809`; ethereum `0xb1d6e6...c0a692`; base `0xc2d1e8...846105` | ⚠️ Unaudited |
| FastWithdrawalAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245443 | `0xec3cc6...b78a31` | ⚠️ Unaudited |
| FastWithdrawalAgent | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2023c4...20d99f`; base `0x41a2e4...aae769` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee94cf...4f87c5` | ⚠️ Unaudited |
| FinalCoreModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7c9f...e1ee55` | ⚠️ Unaudited |
| FinalSecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ff3f...d69482` | ⚠️ Unaudited |
| FinalTransferModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xac70c6...64f9b5`; ethereum `0xc25275...75e216`; ethereum `0xc9ad26...6cea8d` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245435 | `0x52ea19...a24470` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x6ef5c2...0cd61b`; base `0x058b93...7efcac`; base `0xceefae...d86415` | ⚠️ Unaudited |
| GuardianLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d968...86cde7` | ⚠️ Unaudited |
| HashStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ea97...e71e76` | ⚠️ Unaudited |
| ImplementationManagerOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab867...3d3f8a` | ⚠️ Unaudited |
| InheritanceLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc026...178bf9` | ⚠️ Unaudited |
| LockLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf4e84...08f300` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 113 | ethereum | unit-245447 (113 proxies) | 114 deployments: ethereum `0x008908...99d727`; ethereum `0x06ac0e...8dae4d`; ethereum `0x0818e9...cbe2d5`; ethereum `0x093137...f92bbf`; ethereum `0x0aa4d2...c8d786`; ethereum `0x0bcd57...329683`; ethereum `0x1230f7...1b8133`; ethereum `0x145f20...22db07`; ethereum `0x17baa2...186c48`; ethereum `0x18920d...c95036`; ethereum `0x18a1a6...d0b652`; ethereum `0x194db3...3c215a`; ethereum `0x1ad74c...fbe810`; ethereum `0x1b04a2...a1e94e`; ethereum `0x1cb97a...0bc438`; ethereum `0x1d28b2...2a4d74`; ethereum `0x1f78cd...0669ac`; ethereum `0x1f94ea...4753bd`; ethereum `0x22844c...10f5f4`; ethereum `0x24e4cf...cd96ef`; ethereum `0x2eab32...cecdb9`; ethereum `0x2ed5d3...db7b8a`; ethereum `0x2fac66...8ecfe5`; ethereum `0x33df02...5cc0fa`; ethereum `0x348412...48861a`; ethereum `0x37b6aa...44c1b1`; ethereum `0x3ec139...d28e3b`; ethereum `0x41e3b4...47dbe4`; ethereum `0x43eca2...005d6b`; ethereum `0x447356...e1d41f`; ethereum `0x4a7e38...d5afc5`; ethereum `0x4e585b...5fe74b`; ethereum `0x4f23ca...77c407`; ethereum `0x4facf6...8403d6`; ethereum `0x502b55...a404e5`; ethereum `0x5359f0...521b5c`; ethereum `0x554be7...24534e`; ethereum `0x567c1a...701e66`; ethereum `0x583208...e17df2`; ethereum `0x5c159d...f14842`; ethereum `0x5f24c3...64626b`; ethereum `0x5f6a99...9461b8`; ethereum `0x636a31...5d634f`; ethereum `0x66fad4...1aa276`; ethereum `0x69a8bd...0689c0`; ethereum `0x6bf006...5edba1`; ethereum `0x6ff8a3...c0adba`; ethereum `0x70c8e0...79d638`; ethereum `0x73b7bc...a5ffa8`; ethereum `0x746eeb...a9093b`; ethereum `0x759c0d...99a9f5`; ethereum `0x76d8ea...adf3d0`; ethereum `0x78a585...5bef29`; ethereum `0x7ab580...45afb1`; ethereum `0x7af6e5...27075b`; ethereum `0x7b854d...1c0677`; ethereum `0x7cd787...9fba73`; ethereum `0x8195be...0fb1f9`; ethereum `0x8303f8...f16251`; ethereum `0x83c11c...fe181f`; ethereum `0x83df13...8e1205`; ethereum `0x8572b8...b77563`; ethereum `0x85f2e9...6ddbde`; ethereum `0x8a6ba9...7f8582`; ethereum `0x8a9866...c725e1`; ethereum `0x8cf6c5...a2fd3d`; ethereum `0x8e8979...dc484c`; ethereum `0x8efad0...fc6b42`; ethereum `0x8f5a6e...8f8310`; ethereum `0x8f871a...3c087f`; ethereum `0x9387e0...343901`; ethereum `0x93bb5b...8c16d0`; ethereum `0x977544...5e4c69`; ethereum `0x97db7f...bf6c9a`; ethereum `0x994f94...eed4a8`; ethereum `0x9a94a8...df2635`; ethereum `0x9b7a20...4cc5f2`; ethereum `0x9c6013...6e7702`; ethereum `0xa0059a...4fb4b2`; ethereum `0xa2acf6...1bfde7`; ethereum `0xa2f4a8...e0b19a`; ethereum `0xa41e49...0fcbbb`; ethereum `0xa738de...fe1420`; ethereum `0xa762d8...2a86b0`; ethereum `0xa9d46d...007b81`; ethereum `0xaced28...10f961`; ethereum `0xb27b1f...453d7c`; ethereum `0xba64cd...555795`; ethereum `0xbbb360...b8f0d7`; ethereum `0xbbca47...6502e8`; ethereum `0xbdc384...3a7c48`; ethereum `0xbec0c5...b44437`; ethereum `0xc36306...9772ab`; ethereum `0xc418a3...4e178d`; ethereum `0xc50138...cf6f78`; ethereum `0xc6bc13...a698a4`; ethereum `0xc8f242...c5ba4b`; ethereum `0xcac495...858258`; ethereum `0xd04069...28f8cd`; ethereum `0xd4df78...4db07d`; ethereum `0xd85f59...6906b6`; ethereum `0xd9d681...318a09`; ethereum `0xe6cc0d...ad5743`; ethereum `0xe6f1c2...07191d`; ethereum `0xe7e807...80104b`; ethereum `0xee6a9d...9b1414`; ethereum `0xf11702...2037de`; ethereum `0xf85f03...c3d57f`; ethereum `0xf88de0...b6156e`; ethereum `0xf8e4ab...957c47`; ethereum `0xfa6680...568d98`; ethereum `0xfb64c2...d8ab9f`; ethereum `0xfd997e...b6e01c`; ethereum `0xfe88c4...9a1cda` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47ce50...d7bc2d`; ethereum `0xa573c5...9ebaa1` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6d5377...15a73c`; ethereum `0xee017d...872164` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x9795f5...f5256c`; ethereum `0xa186e2...d425f3`; ethereum `0xb81089...0ae7e6` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc2e3d...592cc5` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245469 | 2 deployments: ethereum `0xe6abfc...862430`; ethereum `0xe8ea36...5f5e20` | ⚠️ Unaudited |
| LoopringAmmSharedConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x19b281...fd473d`; ethereum `0xcff0e5...b906e1` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245427 | `0x153cdd...aa8512` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x42bc1a...8cb83a`; ethereum `0x5c367c...c1c073`; base `0x43d05b...501afe`; base `0x68499b...3737a4`; base `0xadcd97...5bcc59` | ⚠️ Unaudited |
| LoopringV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x18dd1d...960ac7`; ethereum `0x874507...8002c7`; base `0x1a75c2...894718`; base `0x267b9b...836c94`; base `0x3edbc7...211b5f`; base `0x571d92...73b67d` | ⚠️ Unaudited |
| LoopringV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245441 | `0xe56d6c...920c71` | ⚠️ Unaudited |
| LoopringV3Owner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc4ae8...992f17` | ⚠️ Unaudited |
| LVVaultNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae6987...01ecb0` | ⚠️ Unaudited |
| MetaTxLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e978...74be43` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d9b7f...87786b`; ethereum `0x277c2c...2ba8e4`; ethereum `0x95bd4d...f396e3` | ⚠️ Unaudited |
| MigrationToLoopringExchangeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x665f64...e9ddd6`; ethereum `0xf561ce...b3191e` | ⚠️ Unaudited |
| ModuleRegistryImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8af9c...0acab3` | ⚠️ Unaudited |
| MoodyBrainsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cacc9...d2fb5f` | ⚠️ Unaudited |
| MovingAveragePriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388110...eb450d` | ⚠️ Unaudited |
| NFTFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97be94...b911db`; ethereum `0xdb42e6...d82609` | ⚠️ Unaudited |
| OfficialGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9cf38f...f7a5a2`; ethereum `0xa48030...034f6f` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00ce6c...a0d151`; ethereum `0x3ea4a2...979712`; base `0xe2f623...1fd927` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x399d89...1421fc` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x40598b...a94cf7`; base `0xee38e9...fd686d` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x873685...a5c221`; base `0xb3c408...9356fc` | ⚠️ Unaudited |
| PriceOracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb12419...53da68`; ethereum `0xfbf231...e66733` | ⚠️ Unaudited |
| ProtocolFeeVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245431 | `0x4b89f8...fca171` | ⚠️ Unaudited |
| ProtocolFeeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x5bb8ef...1f1cb1`; base `0x277c2c...2ba8e4`; base `0x69ef9d...b5e965`; base `0x883f31...9fc7ac`; base `0xa3ac9b...8fc765`; base `0xe3a12f...978c09` | ⚠️ Unaudited |
| QuotaLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55542a...7b0efa` | ⚠️ Unaudited |
| QuotaStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15f50b...98618f` | ⚠️ Unaudited |
| RabbitWithdrawalAgent | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xab78c3...9d3264`; base `0x3b740f...553f93`; base `0xd06d38...6fae3c` | ⚠️ Unaudited |
| RecoverLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed078...c9842d` | ⚠️ Unaudited |
| SecurityStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f84f6...b6282a` | ⚠️ Unaudited |
| SignedRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35825b...30f314` | ⚠️ Unaudited |
| SimpleL2MintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7316e...47d381` | ⚠️ Unaudited |
| SmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ceed9...c52098`; ethereum `0x5fc8a1...514145` | ⚠️ Unaudited |
| StakingBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x199ca6...8ca079`; ethereum `0x3d3e1e...381ab3` | ⚠️ Unaudited |
| UniversalRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36f568...74214e`; ethereum `0x4c2103...77611f` | ⚠️ Unaudited |
| UpgradeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747240...4163e6` | ⚠️ Unaudited |
| UpgraderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x57d5ab...1b5b6b`; ethereum `0x5d6be6...d44d6b`; ethereum `0x9bd708...28b434`; ethereum `0x9db0fe...86545d` | ⚠️ Unaudited |
| UserStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4662b...8a4a5b` | ⚠️ Unaudited |
| VaultToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1bf6a4...0488cd`; ethereum `0xbf8b97...0d3cae`; ethereum `0xe38308...df9961` | ⚠️ Unaudited |
| WalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x262f27...47ada1`; ethereum `0x57e037...08650f`; ethereum `0x73d969...532fd5` | ⚠️ Unaudited |
| WalletImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58574...adde7a` | ⚠️ Unaudited |
| WhitelistLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb6c3...6f28cf` | ⚠️ Unaudited |
| WhitelistStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166364...a89e70` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (97)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0182c5...20bd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b707...7cca45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08afa2...c9e361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4c71...d85634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158fe7...3abd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200d5e...50accf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2133fb...a44b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdac2...910b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31830e...9e3ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35133b...011acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35d957...324848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361dbc...f4893c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b141e...58c6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bfc65...910c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8edb...0bf79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bdce...0fbd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4acae0...9d3ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53a08a...7895aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d96a9...ead697` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x605872...197983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6065f5...561823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626c61...3b2b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650fbb...754dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x682870...8aa133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68499b...3737a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7794c4...e66c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852f6b...c7e9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866c99...52461e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9b0b...ba082a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9230c4...1c369e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cb9c...6c045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e37cf...6ccebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa81719...cb57d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac23c0...38809e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6987...01ecb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb42bbc...3db7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb1dd3...4c2087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6399...abc62e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbca...7aeafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02731...a5d5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc52264...e11021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca7871...251378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80bd6...d2d2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda046b...4986c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd369f...85c16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376f7...874fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5e8e6...b2d5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6c4e...26c2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedeafa...6b7286` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf6cd96...8c59de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02427f...9c008b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x038363...fadd53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04f6de...805466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b6c46...21402c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17ca15...0e08a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18dd1d...960ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a716e...d9545e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d5a52...3aae45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x318485...4c192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x330e34...6e994f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3354e9...cf62f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c9d36...80e599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x415403...2251f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48b65e...1c37dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2103...77611f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5507e4...ffe31c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55911b...68763c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59d0e7...4cc22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bb8ef...1f1cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6175bf...4e2c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ae781...184034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d6505...7b13b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e7bd6...446570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82f58f...d75158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x849432...2734ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x891f07...22d503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e7e54...0303da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x925af9...877cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a45ea...5b5930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aefb2...a90a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa45802...4d8b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9c123...457b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeb439...817bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf92b8...7e62cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3263d...cba317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5ca74...be2cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe18e3...dac9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe639c...b8db46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7ee2c...61be59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc39ac...f12154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd14b3...b43f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd89483...fa4aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdef4f4...1c6253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe87654...ea98ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed8dec...cd4e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3392d...21ac08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4662b...8a4a5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [LoopringV3_1_Report_EN.pdf](https://github.com/Loopring/protocols/blob/master/packages/loopring_v3/security_audit/LoopringV3_1_Report_EN.pdf) | unknown | Audit | 2019-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11607] LoopringV3_1_Report_EN.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LoopringV3_1_Report_EN.pdf | BlockVerifier | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | CheckFillRateGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | CheckValidGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | DepositCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | DowntimeCostCalculator | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ExchangeProxy | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ExchangeV3 | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | FeeCalculatorGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | LoopringV3 | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | LzDecompressor | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | MatchingGadgets | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | MaxFillAmountsGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OffchainWithdrawalCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OnchainWithdrawalCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OrderCancellationCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OrderMatchingGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ProtocolFeeVault | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ProtocolRegistry | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | RingSettlementCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | RingSettlementGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | SignatureBasedAddressWhitelist | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | SignatureVerifier | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | TakerMakerMatchingGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | TransformRingSettlementDataGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | UserStakingPool | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 98 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11607] LoopringV3_1_Report_EN.pdf

Fork inheritance lineage and inherited audits are included when available.
