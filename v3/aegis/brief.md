# Agentic Audit Brief: Aegis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, bsc, bsc-testnet, chain-1337, ethereum, katana, monad, optimism-sepolia, plasma, sepolia
- Contract surface: 113 unique implementations (141 raw deployments)
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
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 80
- Unique implementations: 113
- Raw deployments: 141
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

### ❓ Unverified (80)

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1a44076050125825900e736c501f859c50fe728c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4fe78ef65bd8edded480efab030ba680646503c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x5ef457932c77e906fe81f80192bd6878526acadc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x061dd9cb70b9e6f99486d81586b007a10213e81d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x094d11022709817051e73efecb459da4aa418871` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x2c87c9259e024256c855807a49a2a512f9c71d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x3066290f87c91fa474268066c1e7809a06c054d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4ce6563330166122dbe372ad7ec175b7783a0fc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x50193f63e479bf3cc7c7533aa899f5eacc873290` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x626fa918339da3843946155a298de02cbe7a2105` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7a94fd95cc222e9f904ec1e537b8d113a1cb358e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7f74f36f3ad28a6960d0a397290e0f10f1561ff7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7ffef8eb8e3d6eb13b3ddc153122eb34ad07f0e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa02b9a1639d612ca6ca6e63627b9e4fb896c5dcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa3a46d09936dddbe3b010b07b4e8fb844abdbd49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xbe52aca5988a2d0e1d6337ebacf5f1c254c075a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xefae0b938ff734b67fd17e896bf1944b4895e61e` | ❓ Unverified |
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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1117db8c8c4f4a917ff947e518d3d45b2edbb0aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1dae7ebfb0daa9aeb8a956f38df6f297b9e32b29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1fe05c75a8affb3889a3078da7eccc0805dc727a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x214a8eb47ca8c66c9acf491d8c5a0c6b6b0bbc5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x27604917fb09ed13e00a95ac6f75bf3142b92e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c44fbe77ca5fad24b627befa82680d1177a1f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c87c9259e024256c855807a49a2a512f9c71d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x626fa918339da3843946155a298de02cbe7a2105` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x694aa1769357215de4fac081bf1f309adc325306` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6ffb6caa98b90458b0446855943c6588dd480c18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7a94fd95cc222e9f904ec1e537b8d113a1cb358e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7ffef8eb8e3d6eb13b3ddc153122eb34ad07f0e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa02b9a1639d612ca6ca6e63627b9e4fb896c5dcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa8d8524be97a6b0bdfa9ab2635e18e9fe8384eda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaebcb9e713480aa54bab87346e6343b7ed2f48f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc832f4063d654ac62708c67f9b079dc6186ea406` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdf21a3b705e8be047cf04e7e76c310928b3790b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe70e53eadfd72a8f8773286296636818196b7e79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xed24fc36d5ee211ea25a80239fb8c4cfd80f12ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf7b97872a9ce774e6b68486aff5222b188e4ce6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6edce65403992e310a62460808c4b910d972f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xfa658332cc24237169bef3dce4a409179b865f53` | ❓ Unverified |

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
| needs_review | 80 |

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
