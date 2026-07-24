# Agentic Audit Brief: Aegis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, bsc, bsc-testnet, chain-1337, ethereum, katana, monad, optimism-sepolia, plasma, sepolia
- Contract surface: 342 unique implementations (370 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $35,767,707.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Aegis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across arbitrum, avalanche, avalanche-fuji, base, bsc, bsc-testnet, chain-1337, ethereum, katana, monad, optimism-sepolia, plasma, sepolia. Structural roles: 8 core, 7 supporting, 6 unclassified, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: core (8), supporting (7), unclassified (6), infra (2)
- Contract kinds: contract (23)
- Detected standards: ownable (9), erc165 (7), accesscontrol (5), ownable2step (5), erc1967proxy (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (16), chainlink (4), layerzero (3)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 23; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 98 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 244 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 309
- Unique implementations: 342
- Raw deployments: 370
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AegisConfig | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225682 | 2 deployments: ethereum `0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00`; bsc `0xb9f1e8417abaedf6fd838212267ca8260c4ca9da` | ⚠️ Unaudited |
| AegisMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03a346a9ae09e0e8bf38de1c49be45575393dea7`; ethereum `0x90ad8ff7b91bc705d50e5d92bee603b5620b6f77`; ethereum `0x9e27075fbbfd7276e4fc105447049f761316b87f`; ethereum `0xa30644ca67e0a93805c443df4a6e1856d8bd815b`; ethereum `0xad8fe6475776e7dc312c731ed93210cb66b5cda5`; ethereum `0xb341d7a48eea1cef41a1ed2a9d2caa9d15153c94`; ethereum `0xe91710246678f1fe8119c6de67a71e2012f875c2`; bsc `0x39df2d423df0bddba28f23c15c65a86554a2e141`; bsc `0x7c3f89bfd3f293f603e429ed127d30e7f4579134` | ⚠️ Unaudited |
| AegisMinting | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225685 | `0xc4df68e592245ca5202fe8b7c438d2b799820fc2` | ⚠️ Unaudited |
| AegisMinting | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225688 | `0x02bf8f0e046f471709e578b1e633077096ce65cf` | ⚠️ Unaudited |
| AegisMintingJUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7438a699e597794392376889bc7dd3dd1ad7273e`; ethereum `0xf21a16af7add0f958a1e15aadd64dd7c4c888a5d` | ⚠️ Unaudited |
| AegisMintingJUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225684 | `0xbb0f32d176590faedc7bc552b7ead7a86809b520` | ⚠️ Unaudited |
| AegisOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225679 | `0x2b4ad1d479561064cd1c311004aca93d15041aec` | ⚠️ Unaudited |
| AegisOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225691 | `0x588fd039cadc77ec85d25a072582624ca8d8cf15` | ⚠️ Unaudited |
| AegisOracleJUSD | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225687 | `0xfa449dc17194fdaca1dd2237c828938f1917e0e7` | ⚠️ Unaudited |
| AegisRewards | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225681 | `0x8adcfaf1b64cc514524b80565bcc732273ddeafd` | ⚠️ Unaudited |
| AegisRewards | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225693 | `0x93efaa2d2f6c3600d794233ed7e751d086e5b75e` | ⚠️ Unaudited |
| AegisRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8340f5af4d2eebb402102143e7267aca7112eebd`; bsc `0xd859e938258a62d684235f617d551149bf21debd` | ⚠️ Unaudited |
| AegisRewardsV2JUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6647c5936e30d8d9e0ede2508c3513eaef6758b7` | ⚠️ Unaudited |
| FeedRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225689 | `0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a` | ⚠️ Unaudited |
| JUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225686 | `0xc86168d2424d28942ee0866f043c1206bc9e4900` | ⚠️ Unaudited |
| JUSDMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d4c4f48f230037a9e154470ece79db85a11f52` | ⚠️ Unaudited |
| sJUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-225696 | 2 deployments: ethereum `0x4aa8949bb47da4b4f27345404ba1e5e7ea90bdb3`; ethereum `0x4ccd1aa42259bfebc314f8454a1090538d947e81` | ⚠️ Unaudited |
| sJUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x616e4d7d31a978e624f79f1a7e20ee37042ab792`; ethereum `0xa7f1de59ab1bf5fdc95229dd43d5ea45ad152474` | ⚠️ Unaudited |
| sJUSDOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edd6a7c9b635490f4a94e0cb85d63d6a084ce0f` | ⚠️ Unaudited |
| sJUSDSilo | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225678 | `0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a` | ⚠️ Unaudited |
| sYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x180da28d5e9e9827a3d43a0c94e7a3ee684e1997`; ethereum `0x29dd50b6637b1b117d678c20f01239e7091a9b63`; ethereum `0x4aa42b17bada0b24f0a6ff13c4e53605cced735e`; ethereum `0x7c94288e79f6de6e9baf2e5029cb94cff032fd69`; ethereum `0xd2188c292f294e5de506594a82a2fc683f27d08e`; ethereum `0xf07781182b47e728b040f9e35321260e359ff9f7`; bsc `0x29dd50b6637b1b117d678c20f01239e7091a9b63`; bsc `0x73833881e17d31df0ef7f17da0fd0a055a976bb7`; bsc `0x7de45013e374bb6dcb1364a233bbe9d2ba89bbb5`; bsc `0xc48ea88272e723366e124d9fd2607216969382ec`; bsc `0xe13d566be15893cf9e8e7ec9f660aebd15faa55d`; bsc `0xf07781182b47e728b040f9e35321260e359ff9f7` | ⚠️ Unaudited |
| sYUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-225697 | 2 deployments: ethereum `0xb0c63bb1667b6e9215aee562af2957739b2676fe`; ethereum `0xfe0ccc9942e98c963fe6b4e5194eb6e3baa4cb64` | ⚠️ Unaudited |
| sYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x24db057b19241eefb9b522e8627c293ed8f93af2`; bsc `0x42940c329e2a4d0bd0e828b7815c90111065415e` | ⚠️ Unaudited |
| sYUSDOFT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225692 | `0x85636bf94ea95c32e945b0db30a7cdc614f2691e` | ⚠️ Unaudited |
| sYUSDOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225677 | `0x1a7cde558d318052add800ca30dc7464920b41fc` | ⚠️ Unaudited |
| sYUSDV1OptOut | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d701a7b84b75746404ed27662d897bf6c5ea7f6`; ethereum `0xec843093ce8e3d04b44263d18595a416c632408a` | ⚠️ Unaudited |
| sYUSDV1OptOut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91de8954bce3f2238ad1f0628879e507adb23a4c` | ⚠️ Unaudited |
| YUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2332e3fdecb44695bad61428cacbd717c8646cf9` | ⚠️ Unaudited |
| YUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225680 | `0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a` | ⚠️ Unaudited |
| YUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225694 | `0xab3dbcd9b096c3ff76275038bf58eac10d22c61f` | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7552d1b6463f76ddf6dfd919970753bd689b82a4`; bsc `0xd2188c292f294e5de506594a82a2fc683f27d08e` | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225683 | `0xaf12b0ae5a72d7b8a8ec675f3e76e2db56143565` | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225690 | `0x539e46827c37a3ef11c7ce521cc56b4d59e602e3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (309)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1a44076050125825900e736c501f859c50fe728c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399b1c20896a8e40d430479e844d1d9b4445cd4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4fe78ef65bd8edded480efab030ba680646503c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab3dbcd9b096c3ff76275038bf58eac10d22c61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4fefd0851a37282a2d430186194939a4e7c2dec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1a44076050125825900e736c501f859c50fe728c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4fe78ef65bd8edded480efab030ba680646503c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x5ef457932c77e906fe81f80192bd6878526acadc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0268c6d20b5d2f98c00b21f692efa289d9ecb9f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x02ab1d6a239694ab1b82288496f1bfd0408a4cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x03201dcb4af8bca7c73a06c32031482ecdcc2833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x03a346a9ae09e0e8bf38de1c49be45575393dea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x03b130f7e49ad9ab4d6d25da7006765283ce9f4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x061dd9cb70b9e6f99486d81586b007a10213e81d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0731312eef4d0ee9ff89514ffc8f49284029e315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0847841d8829c685f6fda9078658723e844552e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x094d11022709817051e73efecb459da4aa418871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0d8d1beb616e2ff197f581833af9c8ee3e73dad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0da7c7e1b61c767d379373b4dda9ff5734f5cf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0e76790c544b940e14698cabacc3b8bd31b9a629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0f00ecec2c60a5f1451c662283281526008385a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0f5aaf0fbef717232fe0b439c4be0ae51cd46e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x10f8624c7c55eab9a511011415ec5298489637b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x15d367e207b8beeb7eb13ec62ed2d60829fb37c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x1775655d08a651a8042ff98afc44fc19c62abb74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x1a7cde558d318052add800ca30dc7464920b41fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x1afe05c8ee82cab2182fc169b27517085361f700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x1c080cbb6b7332e7c7e5bd392b8159b9e93ba01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x1dae7ebfb0daa9aeb8a956f38df6f297b9e32b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x201b8c9cef27e0362f04516277eefbab304ca23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x203d834f76f8caae2124e22d088fa8963ad43d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x22af0dac7863d1fc45fb7bf575c9c7ed8c5b14e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x23e0e5f2910b977d7ffd95923f4de13db16bd31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x2476e68b8a59b73afaef00e67cd4e8e295fe8772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x24db057b19241eefb9b522e8627c293ed8f93af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x25310b31845b5cb243ec27fd4bcd64f3c3afbad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x29dd50b6637b1b117d678c20f01239e7091a9b63` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x2c87c9259e024256c855807a49a2a512f9c71d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x2d701a7b84b75746404ed27662d897bf6c5ea7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x2f3d0f1cda4c58a23e2c9f7a7618f213020e5748` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x3066290f87c91fa474268066c1e7809a06c054d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x3497970fb980009cb7201fbb3e640f4fbd682074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x384217141af579a4dd4641c1e7b53b385aeb223b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x38a5b9165977bafa20c4825592c20d1eac8468c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x3a92939ef3ad90c12ccd8a7e6c6f58c74c15fae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x406c30c7becb1432b85a232edfc303256c1ab94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x418514458c1a73b1e68a9df920f3f374b48192a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x437d366418d7234aff58801c5f8a0b38a83de9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x493b44344e17566076e55bd8498d089c2129118e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x49902860421b0b3db2f35c69ad2103d9aa1c071c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4a154461e4218225098b98d455b3461f9f22124a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4aa42b17bada0b24f0a6ff13c4e53605cced735e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4bbbe188a49b0d3dcace5e680ded38753143e91f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4ce6563330166122dbe372ad7ec175b7783a0fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4ea9c25f9297981b0bd60161f68f02f87e1707a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x50193f63e479bf3cc7c7533aa899f5eacc873290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x50cf0240ccf93207ca0758bc45bdabd7e2e90814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x522e79d7d116b6e2cfa61430e615aad388765b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x539a18cb919ef3cc568bb7a2eb4577a1bef10c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x61eda3b57165daefbab960c713a7d06a71b94cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x620e12d874f9255ae9299c37fd393e2126f70a06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x626fa918339da3843946155a298de02cbe7a2105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6472e129d7648bc1a38e95d81048d6d9cb3ce1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6d085f5b83ceee338bf9bf076095218b0dfd584e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6dd1d53d0461671fcde57421a482c425e6b16894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6e6e6b28d0641231562803227b4e6bc7ff1a8339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6ec524b10c31fc7d2d80fd3493300153eb6b98cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x70bdf2874a0f068d760f61b09a05590f2758445c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7552d1b6463f76ddf6dfd919970753bd689b82a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x773b65dff82a5c49ec4002bb886b2fb4623071b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x78cab841fa3d899e8338cc9eb3eafc6783a31d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x78eeabb2cea640252fc6e8e564d79f2876122e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x79ab2011a998bba1f9acd3d1567b16f55d4c5286` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7a94fd95cc222e9f904ec1e537b8d113a1cb358e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7cfb64275057454c3e34a7d306c0a8f883f22d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7de45013e374bb6dcb1364a233bbe9d2ba89bbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7ec41c481bb3db072a4b113f5b6a5b9e93ad79eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7f74f36f3ad28a6960d0a397290e0f10f1561ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7f83b2e118e3cd6ebfcbec7bc9e487db5487af5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7ffef8eb8e3d6eb13b3ddc153122eb34ad07f0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x81bcc8151b22340a44be1508f556fa51ea43471f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x85636bf94ea95c32e945b0db30a7cdc614f2691e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x85fc06723e550d406ab249c4f6c8d1645f9fbab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x8756bc9d64a1ed9166fbcc0a21eb1efc118c8f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x898abbb3d44014dfbfa82e4ace3821304218ace1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x8cb08aee73454404255b7f1668c6dbfaa802cc38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x8e4c23e2dd97d4e8b9dbdb9e7696ffb72b8d6275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x9061152610a2ea46f49101fe4c04b950fb91fe02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x90994f4dbf4069bc58880bd889c84ddc3299053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x91de8954bce3f2238ad1f0628879e507adb23a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x942b5454968c7b01cecb8c8f3a7aaacd2834c8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x9804ee4b8fd7ee27a0e9355b609de2b72e8a1c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x9d2d677d50d8c0c633523ecf565fc49ce7b9f062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0x9f780d1a481d265901e175d349d9a6208429f3c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa02b9a1639d612ca6ca6e63627b9e4fb896c5dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa0abea43bbdd3630d6b08143cca7dd96c8ef092d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa1c55bef15a9aac5e455d40bdf2896422f752399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa216c889adbf6c6be15d3a7b98c565f6e1831e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa2524194be83023c83cc69a55a40f7b29488d2d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa3a46d09936dddbe3b010b07b4e8fb844abdbd49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa6107feb5b05e3d41c36fc60ffab29ef88032b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa6265c000bc059b6fda2d6acf8a9671c05647dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xad8fe6475776e7dc312c731ed93210cb66b5cda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xaef0c819ea163e02b22cebc774279eef7796e138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb0261e2a26a21eaa44772dba3bd0306f8abac6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb02fc8fa9fb1ca333c2e8028ba6eb6c0b1cdb3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb1ce86c3e34c23f90278c2868d43848f0909271a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb341d7a48eea1cef41a1ed2a9d2caa9d15153c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb623436b60adf5106e6aa92a80618dc248992c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb7967b2394f47d9aa428bd69910dd334596d1e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xb850bfc376e219df251e35a396e1248b187784e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xbca9f3b78ef3fc42c741ca838c8b9b4d9e90b9aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xbe52aca5988a2d0e1d6337ebacf5f1c254c075a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc00602ae1369d2f10bbe5f59734d88bc895717d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc01e69dd1f6dfd16387618cc40f915c053f5563b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc3f6fd45faa56de6f9ca26226ec3704ecd6e8277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc4df68e592245ca5202fe8b7c438d2b799820fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc702757f6bbfa36dc85c44eb58bd32d8a1b324a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc84e8deecdb69326c289a295cf252fea491c5758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc902a920d05732d98ab922c6d2b2a7d42cbae56e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xcac62e9085fa364f0901d5795b16427ea37ae98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xcd43ee9ea75122efba05db50e4e8db7e4acc835b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xcd56dc4493608cdc7bdb2d3bb3ea4f5dd0f17394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xcef01b450c2523828eae1380657a685b12fb8715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xd0307b705937014b6201e6db371fb69c39bd2cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xd032d177cff6d3e94c37407b51411c966a245490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xd52264ed0f33a0f646bc37fa50ae7b10d2b6b346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xd9ef92e8947aa43d59fc1a687647f760e754685f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xdebf5e31c93070245bc68cfa68e84c2e58bacc59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xe01aaf6914ac23307138e711e9627c3e16d25955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xe13d566be15893cf9e8e7ec9f660aebd15faa55d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xe246a76dd77a321a61e644c4dbffda9bb0171757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xe72727d419ee92d33d5e492962270cb06a4c8c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xe8f8929d36c651bd8f33ec65d5e2391e7f80f5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xe9c06d860b149d0503529b8ef4555663b2bd5cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xea16b837b553f0c55e60591df5a1b6f2da66a28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xeaae4fcb172c1561a173a2bb8090a369d9b5d44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xec843093ce8e3d04b44263d18595a416c632408a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xeefbbd65864dc0554d54118fb6285f1c4a848c1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xefae0b938ff734b67fd17e896bf1944b4895e61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf07781182b47e728b040f9e35321260e359ff9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf1103aa0b0566e151985b9780c8410131d981f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf4c0c1909227f9353f3f48728590696dff03c5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf55d126c1f514d70c5e4214d513e0a8b223ef095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf73e1d132315a2745e40225a32fe9d5f8b2324bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf7b8145f49478361b30d51f9a4c5e101fb2b7948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf7b97872a9ce774e6b68486aff5222b188e4ce6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xf83c00c9a2b1e6ce6d11f3d87bc5afd44dee84bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xfc94affc17eff5f0d75e11ee27f42555720c0aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xfcef626de4a0175ac962dd43eb0a002819faaefe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc-testnet | n/a | `0xfd631c7160cd7a6638f060a11f443bb4cf664df7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | monad | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | monad | n/a | `0xca2671dcd031a72359f456c212f62a9bda737cd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | monad | n/a | `0xf07781182b47e728b040f9e35321260e359ff9f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-1337 | n/a | `0x5fbdb2315678afecb367f032d93f642f64180aa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x1a44076050125825900e736c501f859c50fe728c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xca2671dcd031a72359f456c212f62a9bda737cd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xfcef626de4a0175ac962dd43eb0a002819faaefe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | n/a | `0xca2671dcd031a72359f456c212f62a9bda737cd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | n/a | `0xf07781182b47e728b040f9e35321260e359ff9f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x1a44076050125825900e736c501f859c50fe728c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4fe78ef65bd8edded480efab030ba680646503c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf07781182b47e728b040f9e35321260e359ff9f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0f87d43279bbedac86606c0205102a3385e2a104` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1dae7ebfb0daa9aeb8a956f38df6f297b9e32b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2c87c9259e024256c855807a49a2a512f9c71d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaa0035132577775b100ebd7edae9890c772f73f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe0fa3992a0c1390199c06aaf250d9be3fff473de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe3d75197fd648fb38292d49866f4d4bf2e5dbcc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xef300ba83697a8d8abf2f7e78de7536ab92d1e67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x03a346a9ae09e0e8bf38de1c49be45575393dea7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x1a44076050125825900e736c501f859c50fe728c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x4fe78ef65bd8edded480efab030ba680646503c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x539e46827c37a3ef11c7ce521cc56b4d59e602e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x773b65dff82a5c49ec4002bb886b2fb4623071b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xb02fc8fa9fb1ca333c2e8028ba6eb6c0b1cdb3af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xca2671dcd031a72359f456c212f62a9bda737cd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana | n/a | `0x3e82d55f05d68255a6625ea39738c1022c50c325` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana | n/a | `0x4fe78ef65bd8edded480efab030ba680646503c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana | n/a | `0xca2671dcd031a72359f456c212f62a9bda737cd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana | n/a | `0xfcef626de4a0175ac962dd43eb0a002819faaefe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0146347c5465d7ed237eef3d1199b6807ecb8613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0272a19b3c4c93a34414c393ef229b4f26c36310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x035f1ef188e4a204a68fdb0fc4d847a8dc325920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0524b20f305e2e2f7990b9afe28b4d5e4a76ea0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x070bf128e88a4520b3efa65ab1e4eb6f0f9e6632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07ff036318c0c4a189fa354ee181967998b19426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0847841d8829c685f6fda9078658723e844552e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a69d6b0671ef71bf69f8f33e426f3da46d4d8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0cd450f0f04121d565338ed10b27b7fbe27a2b32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1117db8c8c4f4a917ff947e518d3d45b2edbb0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12b6aa79b3922efa053d96c1ed2a84c528684c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14866185b1962b63c3ea9e03bc1da838bab34c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17dac87b07eac97de4e182fc51c925ebb7e723e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18800fdfb086052223bbe7c9fab5080cebf9dbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a81afb8146aeffcfc5e50e8479e826e7d55b910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1aaf50900c173a36e073d4963e9708f7e9142f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b44f3514812d835eb1bdb0acb33d3fa3351ee43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ca0c4b3d27718ad98124ae181b4c9ec8528027d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1dae7ebfb0daa9aeb8a956f38df6f297b9e32b29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1fe05c75a8affb3889a3078da7eccc0805dc727a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x203d834f76f8caae2124e22d088fa8963ad43d7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x214a8eb47ca8c66c9acf491d8c5a0c6b6b0bbc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2192462fb213098ccf2ed00e56ca128f3b38b6d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2606dffb6dfd8e9871cce1c0a3f153f5d5f65106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27555adb8301e47f5d214e51a889d90662dabc58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x27604917fb09ed13e00a95ac6f75bf3142b92e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c44fbe77ca5fad24b627befa82680d1177a1f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c87c9259e024256c855807a49a2a512f9c71d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x392aab1b27cef93f217436df26f2dbae2647307f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42585ed362b3f1bca95c640fdff35ef899212734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45f4fbcbb9dcce37cd56a86e6c781f471f642c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x498d8bcce2e3aef50a69cd6f1ca6cb8f3e3b5c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4998b70502d063367f9d2337f43e122313d0b0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a8b4fd89d35d87317f07bcdd6c0482d2c4def17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c782e6bc668679e1b4388b5d31bf92cf51aab19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x522e79d7d116b6e2cfa61430e615aad388765b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x55ada5d7cda6f8881202024832a2266fc11a262a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a2734cc0341ea6564df3d00171cc99c63b1a7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5fb1616f78da7afc9ff79e0371741a747d2a7f22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x626fa918339da3843946155a298de02cbe7a2105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x666ca6fc75b44f3ff2d321c5947031141409b152` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x694aa1769357215de4fac081bf1f309adc325306` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6ffb6caa98b90458b0446855943c6588dd480c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70bdf2874a0f068d760f61b09a05590f2758445c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x719e22e3d4b690e5d96ccb40619180b5427f14ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7a94fd95cc222e9f904ec1e537b8d113a1cb358e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7afc270a572738115a7d7700ce1c1e2b88e44d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7bddedd522ac1eda20152080981824d1c10cf649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7eabaf0dabbbe3995165bb34044aa29e49f775e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7effff6c112e30f9653a0880368c0b8fcd413050` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7ffef8eb8e3d6eb13b3ddc153122eb34ad07f0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85b9a7ebe6d80105a5629e3e46be89c08cc1f67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86524f04533e0ab00b254454745c158bd34f0c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x871011b38a4790b591538874d3596db5268b39d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x898abbb3d44014dfbfa82e4ace3821304218ace1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89f0910415d53d793d788544655b7f5a6d1a2c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a6af2b75f23831adc973ce6288e5329f63d86c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90994f4dbf4069bc58880bd889c84ddc3299053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90fed00c44ae95f96a7883af38782ef937c72a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91334100d6c471aa04de2c9ec2f7766d1297b292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91fab41f5f3be955963a986366edacff1aaeaa83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x938f59c83b0ca1381e76262d0a63f96e304d817e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95123cb08f49527915787db1e1dcd92bc5cc9645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9584bfddb13fdd5c1dca879e2ff178dc1cf79559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9708230eaa2fbfa97ccb400248a8f01d94dad5f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97c91ae763f45a058f7f8caee1f2375175868a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98b7db0b0a2a2dc767b8f60859526a9b37eca759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d9305445f404e925563d5d5ecc65c815ec1655b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa02b9a1639d612ca6ca6e63627b9e4fb896c5dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa0abea43bbdd3630d6b08143cca7dd96c8ef092d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa152357e1a2f5f8763babcfce9d5faaac5ade83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2f78ab2355fe2f984d808b5cee7fd0a93d5270e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa44fbc1c37e87a095c62069cc3436a7f41eb26d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa458add66fb85c528de4f0bd64d4bc258bbfa100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa499daf6ac08c629deb70b5e8d851273fbf880e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa5112e0e26ef695a25f7a0ac422813a3257934bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa8d8524be97a6b0bdfa9ab2635e18e9fe8384eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9650f88d7984f1b6765d80ff6fac493b870cbe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaebcb9e713480aa54bab87346e6343b7ed2f48f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbdb3cf921a11aca2c2e93f4dcb89bf9c0927e822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe13b17107f95372e58ceb07b76264e53e8276e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0f82a46033b8bdba4bb0b0e28bc2006f64355bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc32f0a9d70a34b9e7377c10fdad88512596f61ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5981f461d74c46eb4b0cf3f4ec79f025573b0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc59e3633baac79493d908e63626716e204a45edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6d72a8796c0d86c8f9385878fa787ae02e537ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc832f4063d654ac62708c67f9b079dc6186ea406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcac62e9085fa364f0901d5795b16427ea37ae98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb3ff00b07c118900156c2409dcde8227250c89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd56dc4493608cdc7bdb2d3bb3ea4f5dd0f17394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcec096681f327d7a39c2c28903be521b95bdf3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xced45b1fb91c1bb36d6961e5a1c58ce39a270ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd404d68e5616e9c7045be2dc1c5865ee328b6638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8a2c8882291fbdb6019dbb97e7fe37d7d067461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9ef92e8947aa43d59fc1a687647f760e754685f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdf21a3b705e8be047cf04e7e76c310928b3790b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0fa3992a0c1390199c06aaf250d9be3fff473de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe4450d4467302f2ac4ba272b22733650a8bc40d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe61114e62dac8da67cdb2f3caf68a7cba22842d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe70e53eadfd72a8f8773286296636818196b7e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9a95e1acaf2b7509d1ace2a9102647ab10c99fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9c06d860b149d0503529b8ef4555663b2bd5cae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xed24fc36d5ee211ea25a80239fb8c4cfd80f12ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeefbbd65864dc0554d54118fb6285f1c4a848c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeffbcdd2fe58acd0b4989bc17c072685a61e77ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0f80b3b02bc158ebb8ab23777854f1216631f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf48a4014f342fb48831c7b6aa648b2452824026e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf7b97872a9ce774e6b68486aff5222b188e4ce6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe86969f28076d046efc095341913ac6eb4ae8c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x0847841d8829c685f6fda9078658723e844552e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x522e79d7d116b6e2cfa61430e615aad388765b42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x898abbb3d44014dfbfa82e4ace3821304218ace1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xa0abea43bbdd3630d6b08143cca7dd96c8ef092d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xcd56dc4493608cdc7bdb2d3bb3ea4f5dd0f17394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xe9c06d860b149d0503529b8ef4555663b2bd5cae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xfa658332cc24237169bef3dce4a409179b865f53` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 274
- Live contracts: 0
- Unknown liveness contracts: 274
- Source-verified contracts: 44
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=10, candidate review=28, exact address book overlap=1, source verified unclassified=5, unverified unclassified=230

Showing first 200 of 274 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | AegisMinting<br>`0x03a346a9ae09e0e8bf38de1c49be45575393dea7` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMinting<br>`0x90ad8ff7b91bc705d50e5d92bee603b5620b6f77` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMinting<br>`0x9e27075fbbfd7276e4fc105447049f761316b87f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMinting<br>`0xad8fe6475776e7dc312c731ed93210cb66b5cda5` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMinting<br>`0xb341d7a48eea1cef41a1ed2a9d2caa9d15153c94` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMinting<br>`0xe91710246678f1fe8119c6de67a71e2012f875c2` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMintingJUSD<br>`0x7438a699e597794392376889bc7dd3dd1ad7273e` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMintingJUSD<br>`0xf21a16af7add0f958a1e15aadd64dd7c4c888a5d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate auto own | AegisMinting<br>`0x39df2d423df0bddba28f23c15c65a86554a2e141` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| candidate auto own | AegisMinting<br>`0x7c3f89bfd3f293f603e429ed127d30e7f4579134` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | ERC1967Proxy<br>`0x2d701a7b84b75746404ed27662d897bf6c5ea7f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | JUSD<br>`0xc86168d2424d28942ee0866f043c1206bc9e4900` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | JUSDMintBurnOFTAdapter<br>`0x70d4c4f48f230037a9e154470ece79db85a11f52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sJUSD<br>`0x4ccd1aa42259bfebc314f8454a1090538d947e81` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sJUSD<br>`0xa7f1de59ab1bf5fdc95229dd43d5ea45ad152474` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sJUSDOFTAdapter<br>`0x8edd6a7c9b635490f4a94e0cb85d63d6a084ce0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x180da28d5e9e9827a3d43a0c94e7a3ee684e1997` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x29dd50b6637b1b117d678c20f01239e7091a9b63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x4aa42b17bada0b24f0a6ff13c4e53605cced735e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x7c94288e79f6de6e9baf2e5029cb94cff032fd69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0xb0c63bb1667b6e9215aee562af2957739b2676fe` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0xd2188c292f294e5de506594a82a2fc683f27d08e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0xf07781182b47e728b040f9e35321260e359ff9f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | TransparentUpgradeableProxy<br>`0x616e4d7d31a978e624f79f1a7e20ee37042ab792` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | YUSD<br>`0x2332e3fdecb44695bad61428cacbd717c8646cf9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | YUSDMintBurnOFTAdapter<br>`0x7552d1b6463f76ddf6dfd919970753bd689b82a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | AegisOracle<br>`0x588fd039cadc77ec85d25a072582624ca8d8cf15` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| candidate review | sYUSD<br>`0x29dd50b6637b1b117d678c20f01239e7091a9b63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x42940c329e2a4d0bd0e828b7815c90111065415e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x73833881e17d31df0ef7f17da0fd0a055a976bb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0x7de45013e374bb6dcb1364a233bbe9d2ba89bbb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0xc48ea88272e723366e124d9fd2607216969382ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0xe13d566be15893cf9e8e7ec9f660aebd15faa55d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSD<br>`0xf07781182b47e728b040f9e35321260e359ff9f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | sYUSDOFT<br>`0x85636bf94ea95c32e945b0db30a7cdc614f2691e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | TransparentUpgradeableProxy<br>`0x24db057b19241eefb9b522e8627c293ed8f93af2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| candidate review | YUSD<br>`0xab3dbcd9b096c3ff76275038bf58eac10d22c61f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| candidate review | YUSDMintBurnOFTAdapter<br>`0xd2188c292f294e5de506594a82a2fc683f27d08e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| exact address book overlap | FeedRegistry<br>`0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa28cb80673f59c21a3d1214913ab9c1f41c5e54b` |
| source verified unclassified | AegisRewardsV2<br>`0x8340f5af4d2eebb402102143e7267aca7112eebd` | non_address_book | unknown | unknown | verified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| source verified unclassified | AegisRewardsV2JUSD<br>`0x6647c5936e30d8d9e0ede2508c3513eaef6758b7` | non_address_book | unknown | unknown | verified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| source verified unclassified | sYUSDV1OptOut<br>`0x91de8954bce3f2238ad1f0628879e507adb23a4c` | non_address_book | unknown | unknown | verified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| source verified unclassified | sYUSDV1OptOut<br>`0xec843093ce8e3d04b44263d18595a416c632408a` | non_address_book | unknown | unknown | verified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| source verified unclassified | AegisRewardsV2<br>`0xd859e938258a62d684235f617d551149bf21debd` | non_address_book | unknown | unknown | verified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x399b1c20896a8e40d430479e844d1d9b4445cd4a` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xc4fefd0851a37282a2d430186194939a4e7c2dec` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x0268c6d20b5d2f98c00b21f692efa289d9ecb9f5` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x02ab1d6a239694ab1b82288496f1bfd0408a4cd2` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x03201dcb4af8bca7c73a06c32031482ecdcc2833` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0x03a346a9ae09e0e8bf38de1c49be45575393dea7` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x03b130f7e49ad9ab4d6d25da7006765283ce9f4b` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0731312eef4d0ee9ff89514ffc8f49284029e315` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x0847841d8829c685f6fda9078658723e844552e5` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0d8d1beb616e2ff197f581833af9c8ee3e73dad3` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0da7c7e1b61c767d379373b4dda9ff5734f5cf1b` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0x0e76790c544b940e14698cabacc3b8bd31b9a629` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0f00ecec2c60a5f1451c662283281526008385a4` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0f5aaf0fbef717232fe0b439c4be0ae51cd46e26` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x10f8624c7c55eab9a511011415ec5298489637b2` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x15d367e207b8beeb7eb13ec62ed2d60829fb37c6` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x1775655d08a651a8042ff98afc44fc19c62abb74` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x1a7cde558d318052add800ca30dc7464920b41fc` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x1afe05c8ee82cab2182fc169b27517085361f700` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x1c080cbb6b7332e7c7e5bd392b8159b9e93ba01b` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x1dae7ebfb0daa9aeb8a956f38df6f297b9e32b29` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x201b8c9cef27e0362f04516277eefbab304ca23d` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x203d834f76f8caae2124e22d088fa8963ad43d7f` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x22af0dac7863d1fc45fb7bf575c9c7ed8c5b14e8` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0x23e0e5f2910b977d7ffd95923f4de13db16bd31e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x2476e68b8a59b73afaef00e67cd4e8e295fe8772` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x24db057b19241eefb9b522e8627c293ed8f93af2` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x25310b31845b5cb243ec27fd4bcd64f3c3afbad2` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x29dd50b6637b1b117d678c20f01239e7091a9b63` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x2d701a7b84b75746404ed27662d897bf6c5ea7f6` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x2f3d0f1cda4c58a23e2c9f7a7618f213020e5748` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x3497970fb980009cb7201fbb3e640f4fbd682074` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x384217141af579a4dd4641c1e7b53b385aeb223b` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x38a5b9165977bafa20c4825592c20d1eac8468c4` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x3a92939ef3ad90c12ccd8a7e6c6f58c74c15fae7` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x406c30c7becb1432b85a232edfc303256c1ab94c` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x418514458c1a73b1e68a9df920f3f374b48192a4` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x437d366418d7234aff58801c5f8a0b38a83de9f7` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0x493b44344e17566076e55bd8498d089c2129118e` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x49902860421b0b3db2f35c69ad2103d9aa1c071c` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x4a154461e4218225098b98d455b3461f9f22124a` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x4aa42b17bada0b24f0a6ff13c4e53605cced735e` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x4bbbe188a49b0d3dcace5e680ded38753143e91f` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x4ea9c25f9297981b0bd60161f68f02f87e1707a3` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x50cf0240ccf93207ca0758bc45bdabd7e2e90814` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x522e79d7d116b6e2cfa61430e615aad388765b42` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x539a18cb919ef3cc568bb7a2eb4577a1bef10c08` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x61eda3b57165daefbab960c713a7d06a71b94cdb` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0x620e12d874f9255ae9299c37fd393e2126f70a06` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x6472e129d7648bc1a38e95d81048d6d9cb3ce1af` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x6d085f5b83ceee338bf9bf076095218b0dfd584e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x6dd1d53d0461671fcde57421a482c425e6b16894` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x6e6e6b28d0641231562803227b4e6bc7ff1a8339` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x6ec524b10c31fc7d2d80fd3493300153eb6b98cb` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x70bdf2874a0f068d760f61b09a05590f2758445c` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x7552d1b6463f76ddf6dfd919970753bd689b82a4` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x773b65dff82a5c49ec4002bb886b2fb4623071b4` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x78cab841fa3d899e8338cc9eb3eafc6783a31d90` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x78eeabb2cea640252fc6e8e564d79f2876122e9a` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x79ab2011a998bba1f9acd3d1567b16f55d4c5286` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x7cfb64275057454c3e34a7d306c0a8f883f22d5c` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x7de45013e374bb6dcb1364a233bbe9d2ba89bbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x7ec41c481bb3db072a4b113f5b6a5b9e93ad79eb` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x7f83b2e118e3cd6ebfcbec7bc9e487db5487af5a` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x81bcc8151b22340a44be1508f556fa51ea43471f` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0x85636bf94ea95c32e945b0db30a7cdc614f2691e` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x85fc06723e550d406ab249c4f6c8d1645f9fbab2` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x8756bc9d64a1ed9166fbcc0a21eb1efc118c8f2d` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x898abbb3d44014dfbfa82e4ace3821304218ace1` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x8cb08aee73454404255b7f1668c6dbfaa802cc38` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x8e4c23e2dd97d4e8b9dbdb9e7696ffb72b8d6275` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x9061152610a2ea46f49101fe4c04b950fb91fe02` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x90994f4dbf4069bc58880bd889c84ddc3299053c` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x91de8954bce3f2238ad1f0628879e507adb23a4c` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x942b5454968c7b01cecb8c8f3a7aaacd2834c8ae` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x9804ee4b8fd7ee27a0e9355b609de2b72e8a1c68` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x9d2d677d50d8c0c633523ecf565fc49ce7b9f062` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0x9f780d1a481d265901e175d349d9a6208429f3c5` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xa0abea43bbdd3630d6b08143cca7dd96c8ef092d` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xa1c55bef15a9aac5e455d40bdf2896422f752399` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xa216c889adbf6c6be15d3a7b98c565f6e1831e59` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xa2524194be83023c83cc69a55a40f7b29488d2d7` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xa6107feb5b05e3d41c36fc60ffab29ef88032b08` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xa6265c000bc059b6fda2d6acf8a9671c05647dde` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xad8fe6475776e7dc312c731ed93210cb66b5cda5` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xaef0c819ea163e02b22cebc774279eef7796e138` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xb0261e2a26a21eaa44772dba3bd0306f8abac6d4` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xb02fc8fa9fb1ca333c2e8028ba6eb6c0b1cdb3af` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xb1ce86c3e34c23f90278c2868d43848f0909271a` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xb341d7a48eea1cef41a1ed2a9d2caa9d15153c94` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xb623436b60adf5106e6aa92a80618dc248992c87` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xb7967b2394f47d9aa428bd69910dd334596d1e0b` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xb850bfc376e219df251e35a396e1248b187784e2` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xbca9f3b78ef3fc42c741ca838c8b9b4d9e90b9aa` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xc00602ae1369d2f10bbe5f59734d88bc895717d4` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xc01e69dd1f6dfd16387618cc40f915c053f5563b` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xc3f6fd45faa56de6f9ca26226ec3704ecd6e8277` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xc4df68e592245ca5202fe8b7c438d2b799820fc2` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xc702757f6bbfa36dc85c44eb58bd32d8a1b324a8` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xc84e8deecdb69326c289a295cf252fea491c5758` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xc902a920d05732d98ab922c6d2b2a7d42cbae56e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xcac62e9085fa364f0901d5795b16427ea37ae98a` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xcd43ee9ea75122efba05db50e4e8db7e4acc835b` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xcd56dc4493608cdc7bdb2d3bb3ea4f5dd0f17394` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xcef01b450c2523828eae1380657a685b12fb8715` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xd0307b705937014b6201e6db371fb69c39bd2cfa` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xd032d177cff6d3e94c37407b51411c966a245490` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xd52264ed0f33a0f646bc37fa50ae7b10d2b6b346` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xd9ef92e8947aa43d59fc1a687647f760e754685f` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xdebf5e31c93070245bc68cfa68e84c2e58bacc59` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xe01aaf6914ac23307138e711e9627c3e16d25955` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xe13d566be15893cf9e8e7ec9f660aebd15faa55d` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xe246a76dd77a321a61e644c4dbffda9bb0171757` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xe72727d419ee92d33d5e492962270cb06a4c8c44` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0xe8f8929d36c651bd8f33ec65d5e2391e7f80f5de` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xe9c06d860b149d0503529b8ef4555663b2bd5cae` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xea16b837b553f0c55e60591df5a1b6f2da66a28a` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xeaae4fcb172c1561a173a2bb8090a369d9b5d44a` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xec843093ce8e3d04b44263d18595a416c632408a` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xeefbbd65864dc0554d54118fb6285f1c4a848c1b` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xf07781182b47e728b040f9e35321260e359ff9f7` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xf1103aa0b0566e151985b9780c8410131d981f19` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xf4c0c1909227f9353f3f48728590696dff03c5f3` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xf55d126c1f514d70c5e4214d513e0a8b223ef095` | non_address_book | unknown | unknown | unverified | n/a | `0xbbb4c35bcf2e8cf950590a18e1f89c532d7063cb` |
| unverified unclassified | UnnamedContract<br>`0xf73e1d132315a2745e40225a32fe9d5f8b2324bb` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xf7b8145f49478361b30d51f9a4c5e101fb2b7948` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xf7b97872a9ce774e6b68486aff5222b188e4ce6c` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xf83c00c9a2b1e6ce6d11f3d87bc5afd44dee84bb` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xfc94affc17eff5f0d75e11ee27f42555720c0aab` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0xfcef626de4a0175ac962dd43eb0a002819faaefe` | non_address_book | unknown | unknown | unverified | n/a | `0x84fe172c15bb030baa0dd497d30dd436c6b750e9` |
| unverified unclassified | UnnamedContract<br>`0xfd631c7160cd7a6638f060a11f443bb4cf664df7` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x2c87c9259e024256c855807a49a2a512f9c71d38` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xaa0035132577775b100ebd7edae9890c772f73f6` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xe0fa3992a0c1390199c06aaf250d9be3fff473de` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0xe3d75197fd648fb38292d49866f4d4bf2e5dbcc6` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x0146347c5465d7ed237eef3d1199b6807ecb8613` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x0272a19b3c4c93a34414c393ef229b4f26c36310` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x035f1ef188e4a204a68fdb0fc4d847a8dc325920` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0524b20f305e2e2f7990b9afe28b4d5e4a76ea0c` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x070bf128e88a4520b3efa65ab1e4eb6f0f9e6632` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x07ff036318c0c4a189fa354ee181967998b19426` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x0847841d8829c685f6fda9078658723e844552e5` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x0a69d6b0671ef71bf69f8f33e426f3da46d4d8c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x0cd450f0f04121d565338ed10b27b7fbe27a2b32` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x12b6aa79b3922efa053d96c1ed2a84c528684c12` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x14866185b1962b63c3ea9e03bc1da838bab34c19` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x17dac87b07eac97de4e182fc51c925ebb7e723e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x18800fdfb086052223bbe7c9fab5080cebf9dbee` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x1a81afb8146aeffcfc5e50e8479e826e7d55b910` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x1aaf50900c173a36e073d4963e9708f7e9142f96` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x1b44f3514812d835eb1bdb0acb33d3fa3351ee43` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x1ca0c4b3d27718ad98124ae181b4c9ec8528027d` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x203d834f76f8caae2124e22d088fa8963ad43d7f` | non_address_book | unknown | unknown | unverified | n/a | `0x7e95d72996e7a0b1d95561f9dfa26e11a80cf8f4` |
| unverified unclassified | UnnamedContract<br>`0x2192462fb213098ccf2ed00e56ca128f3b38b6d3` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |
| unverified unclassified | UnnamedContract<br>`0x2606dffb6dfd8e9871cce1c0a3f153f5d5f65106` | non_address_book | unknown | unknown | unverified | n/a | `0xa51614d51e6ac66fb7aa5a4ff9ed57ac4431a1d0` |
| unverified unclassified | UnnamedContract<br>`0x27555adb8301e47f5d214e51a889d90662dabc58` | non_address_book | unknown | unknown | unverified | n/a | `0x8af05b6df31035aeba506e7afc40af348cbe4ae1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [getfailsafe.com/aegis-jusd-smart-contract-audit](https://getfailsafe.com/aegis-jusd-smart-contract-audit) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Aegis-FailSafe-Smart-Contract-Audit-Report.pdf](https://getfailsafe.com/pdfs/Aegis-FailSafe-Smart-Contract-Audit-Report.pdf) | FailSafe | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20636] getfailsafe.com/aegis-jusd-smart-contract-audit — no match: No explicit scope section or file listing found. Extracted contract names from findings and descriptions. Audit date not found.
- [20637] Aegis-FailSafe-Smart-Contract-Audit-Report.pdf — no match: All contracts listed in the 'In-scope' section of the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| getfailsafe.com/aegis-jusd-smart-contract-audit | JUSD | unmatched — not counted | — | mentioned as token contract with blacklist checks | no |
| getfailsafe.com/aegis-jusd-smart-contract-audit | YUSD | unmatched — not counted | — | mentioned as token contract with blacklist checks | no |
| getfailsafe.com/aegis-jusd-smart-contract-audit | JUSDMintBurnOFTAdapter | unmatched — not counted | — | explicitly named in finding 3 | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisChainlinkOracleV2 | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisChainlinkOracleV3 | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisConfig | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisMinting | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisMintingJUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisOracle | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisOracleJUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisRewards | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisRewardsManual | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | JUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | JUSDMintBurnOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | JUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | TimelockController | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | YUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | YUSDMintBurnOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | YUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | ClaimRewardsLib | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSDOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSDSilo | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSDOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSDSilo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 309 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 29 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20636] getfailsafe.com/aegis-jusd-smart-contract-audit
- [20637] Aegis-FailSafe-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
