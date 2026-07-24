# Agentic Audit Brief: Manta Pacific

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

- Project: Manta Pacific (`manta-pacific`)
- Website: [https://pacific-bridge.manta.network](https://pacific-bridge.manta.network)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, hyperliquid, manta-pacific
- Contract surface: 30 unique implementations (78 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $20,122,679.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Manta Pacific in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcfc1ef3692f50ea249698e7161043581541ce572`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 1 of 30 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 30
- Raw deployments: 78
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x1710450f1dab239a83834123508e10c910a5a063`; ethereum `0x1dc6184931dacb520a40dc756a5da614816d39fa`; ethereum `0x262181e34eed11740be0419b3af54f868c8415af`; ethereum `0x39860b5900d97a9750d9774b5d521cf93c552864`; ethereum `0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05`; ethereum `0x424b45d86c5278fa6d89d29116214eb647d202b5`; ethereum `0x5e99cf75ae9a76de366fb3e4a1f2a0b19be8902d`; ethereum `0x6d223eeef79e5ea639f034522b10ccd4dd719665`; ethereum `0x897c4f85812be79f0172f225fbd6550c9ea7abf6`; ethereum `0xa69f3d94a15161921d968263e62bd8ee81ddf561`; ethereum `0xc32db741acd8f74b73dc6e434366eefa9db0580d`; ethereum `0xdb27128ed4a1be7683ccfddb053dd5b713fc3284`; ethereum `0xe3cb5953e548262133f0a5ff230388cebf43e9db`; ethereum `0xe63ac96f9615b16c4ed33bed79a0b537e97a7a82`; ethereum `0xfd195da649e135995c6f81ccddc30bf2dadfbc4c` | ⚠️ Unaudited |
| BLSApkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8ad2384aaf9525bd7b4d3f73e8cc07421af2046f`; ethereum `0xa80f2401c8ae7d95c7995295dc2c0d651f25fd60` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8f537c029c3754e8eb34ea1ce2c0eade2745b5` | ⚠️ Unaudited |
| FinalityRelayerManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e132b3bd37f3f6e223cd23add390111e674c94e`; ethereum `0x9d6def8bb4d67ac2aabcc787767dc0b890f24980` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x305e88d809c9dc03179554bfbf85ac05ce8f18d6`; ethereum `0xb6c539bf372b7a11855b0189c22133b05cc230df` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x635ba609680c55c3bdd0b3627b4c5db21b13c310`; ethereum `0x9cddc6f65ed67ef19743ffdfd53501457ce8b51f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f`; ethereum `0xfb1e17245631cd10720401074a3dc9bf7fd3c32d` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3b95bc951ee0f553ba487327278cac44f29715e5`; ethereum `0x62b257a1b1fc81c4e6e5dc5b47f1e6184341cd58` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5e634981564fc645dcbc6546ae618d7870b30a` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30c789674ad3b458886bbc9abf42eee19ea05c1d` | ⚠️ Unaudited |
| Manta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x95cef13441be50d20ca4558cc0a27b601ac544e5` | ⚠️ Unaudited |
| MantaStakingMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb385a5412950c28144d74014f843189583a1d9fa`; ethereum `0xe9cde7482fdaab033b5ec2839ba8f7e5669ec65e` | ⚠️ Unaudited |
| MantaStakingMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89456655f1a53db5408a766cd9426df7fb93e81` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2165254f0dd74c19d07ed447b231447604d41e20`; ethereum `0xd4957750120ead4f9492895cf7103971e8ceb894` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9168765ee952de7c6f8fc6fad5ec209b960b7622` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf`; ethereum `0x120bd9cdae9f0f20c4cc022793b345779c35d78c`; ethereum `0x1c466b9371f8aba0d7c458be10a62192fcb8aa71`; ethereum `0x6ec90db7a29272a47c538d53ef4026e626e2c5ce`; ethereum `0x732970094bc3bf9eff25ec1b56a16eace6fea232`; ethereum `0x96d6e5ba62f66003748b60544bb355fb308771c4`; ethereum `0xb73603c5d87fa094b7314c74ace2e64d165016fb`; ethereum `0xd0e3a94c6751987cc48879646f4b28a9c33e3dcc`; ethereum `0xea4f12c5f62e252c2694076c169bed0818126fba`; ethereum `0xf417f5a458ec102b90352f697d6e2ac3a3d2851f`; ethereum `0xf4b428078bba69786849fc1e1773f5c6c40748fa`; ethereum `0xf992f6cab98bf812737b495dc7dbb20e20acf631` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x007957bf0681b75e92273a7018784ace6af8cb2d`; ethereum `0x1772e378555d2870035e38dbc33f37bb42410eb5`; ethereum `0x1a73810731536f3201ea1134d048ed999188007d`; ethereum `0x4d7e194d6b5915ca4e39bba7a030b50702a40e9e`; ethereum `0x65d6b21c95e1e72bdd91f868527910eaa892d48e`; ethereum `0x68b18d4c3ecc5bac0408de9ad722d31a738062bd`; ethereum `0x8a7b471537a26ad2d4a16d0ebd626d4a1f8d3be1`; ethereum `0xa2dca85bb892de55d8b262d1806114733106e8d1`; ethereum `0xc21f2e6c5792686e53e32cb88fc38f6c75b6e79d`; ethereum `0xc9ef2e3eaeb70f0b794a9d7d5cac4bcff1906995`; ethereum `0xe84162349a4d1d4df7443a53f6e12366c8dbdd0e`; ethereum `0xeb77d0c8794b73625b7f4d60d9ca64a2604c48cd`; ethereum `0xecde807ae6d972b615b266aa958a07f97cb0d8e5` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5` | ⚠️ Unaudited |
| SlashBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb880f8e47dc70910a97e9c4e5d9529d1e68fdbb2` | ⚠️ Unaudited |
| SlashHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd81521639245ee892bee8b24be614267d5ff354` | ⚠️ Unaudited |
| SystemConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x895e00269a05848f3c9889efa677d02ff7351a5d`; ethereum `0xef01a6ae995791fffca3d70bda7b91e5fa1ad0ae` | ⚠️ Unaudited |
| TokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d`; ethereum `0xb76d9fbfd8d9f6b946ee7ea5bb12deaf80e33997` | ⚠️ Unaudited |
| TokenReleaser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f5ac8579fc76d6bdd4dd33b707bd4073603a8e9`; ethereum `0x570225fe346634a68c6c367dccc8f7f9410ed505` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab64a3da57886cd4205176c72b8be63c34e46366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec638d2c7d0f07c0245ac94e51a51bac427d8262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x20654c12eae0c7a796cf2739021d3bf3f2466f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa5111c3f65596881c641c1c6af36208ad27b44da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388869 | `0xcfc1ef3692f50ea249698e7161043581541ce572` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 68
- Live contracts: 0
- Unknown liveness contracts: 68
- Source-verified contracts: 66
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=50, contamination review=3, source verified unclassified=13, unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | AddressManager<br>`0x1710450f1dab239a83834123508e10c910a5a063` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x1dc6184931dacb520a40dc756a5da614816d39fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x262181e34eed11740be0419b3af54f868c8415af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x39860b5900d97a9750d9774b5d521cf93c552864` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x424b45d86c5278fa6d89d29116214eb647d202b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x5e99cf75ae9a76de366fb3e4a1f2a0b19be8902d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x6d223eeef79e5ea639f034522b10ccd4dd719665` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0x897c4f85812be79f0172f225fbd6550c9ea7abf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0xa69f3d94a15161921d968263e62bd8ee81ddf561` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0xc32db741acd8f74b73dc6e434366eefa9db0580d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0xdb27128ed4a1be7683ccfddb053dd5b713fc3284` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0xe3cb5953e548262133f0a5ff230388cebf43e9db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0xe63ac96f9615b16c4ed33bed79a0b537e97a7a82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | AddressManager<br>`0xfd195da649e135995c6f81ccddc30bf2dadfbc4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0x305e88d809c9dc03179554bfbf85ac05ce8f18d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0x3b95bc951ee0f553ba487327278cac44f29715e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0xb6c539bf372b7a11855b0189c22133b05cc230df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x120bd9cdae9f0f20c4cc022793b345779c35d78c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x1c466b9371f8aba0d7c458be10a62192fcb8aa71` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x2165254f0dd74c19d07ed447b231447604d41e20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x6ec90db7a29272a47c538d53ef4026e626e2c5ce` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x732970094bc3bf9eff25ec1b56a16eace6fea232` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x9168765ee952de7c6f8fc6fad5ec209b960b7622` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0x96d6e5ba62f66003748b60544bb355fb308771c4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xb73603c5d87fa094b7314c74ace2e64d165016fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xd0e3a94c6751987cc48879646f4b28a9c33e3dcc` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xea4f12c5f62e252c2694076c169bed0818126fba` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xf417f5a458ec102b90352f697d6e2ac3a3d2851f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xf4b428078bba69786849fc1e1773f5c6c40748fa` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | Proxy<br>`0xf992f6cab98bf812737b495dc7dbb20e20acf631` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x007957bf0681b75e92273a7018784ace6af8cb2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x1772e378555d2870035e38dbc33f37bb42410eb5` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x1a73810731536f3201ea1134d048ed999188007d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x4d7e194d6b5915ca4e39bba7a030b50702a40e9e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x65d6b21c95e1e72bdd91f868527910eaa892d48e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x68b18d4c3ecc5bac0408de9ad722d31a738062bd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0x8a7b471537a26ad2d4a16d0ebd626d4a1f8d3be1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0xa2dca85bb892de55d8b262d1806114733106e8d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0xc21f2e6c5792686e53e32cb88fc38f6c75b6e79d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0xc9ef2e3eaeb70f0b794a9d7d5cac4bcff1906995` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0xe84162349a4d1d4df7443a53f6e12366c8dbdd0e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0xeb77d0c8794b73625b7f4d60d9ca64a2604c48cd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ProxyAdmin<br>`0xecde807ae6d972b615b266aa958a07f97cb0d8e5` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | ResolvedDelegateProxy<br>`0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | contamination review | L2OutputOracle<br>`0x1e5e634981564fc645dcbc6546ae618d7870b30a` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | contamination review | OptimismPortal<br>`0x445c62f4948f3b08a6bb1dbc51ef985b3eb199f1` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | source verified unclassified | L1CrossDomainMessenger<br>`0x9cddc6f65ed67ef19743ffdfd53501457ce8b51f` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | source verified unclassified | L1ERC721Bridge<br>`0xfb1e17245631cd10720401074a3dc9bf7fd3c32d` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | source verified unclassified | L1StandardBridge<br>`0x62b257a1b1fc81c4e6e5dc5b47f1e6184341cd58` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | source verified unclassified | OptimismMintableERC20Factory<br>`0xd4957750120ead4f9492895cf7103971e8ceb894` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | source verified unclassified | SystemConfig<br>`0xef01a6ae995791fffca3d70bda7b91e5fa1ad0ae` | non_address_book | unknown | unknown | verified | n/a | `0x01b6f1dced133b22b4021f0666567f2ee8a7c57a` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x570225fe346634a68c6c367dccc8f7f9410ed505` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xb385a5412950c28144d74014f843189583a1d9fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | contamination review | EmptyContract<br>`0xba8f537c029c3754e8eb34ea1ce2c0eade2745b5` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | BLSApkRegistry<br>`0x8ad2384aaf9525bd7b4d3f73e8cc07421af2046f` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | FinalityRelayerManager<br>`0x9d6def8bb4d67ac2aabcc787767dc0b890f24980` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | MantaStakingMiddleware<br>`0xe89456655f1a53db5408a766cd9426df7fb93e81` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | MantaStakingMiddleware<br>`0xe9cde7482fdaab033b5ec2839ba8f7e5669ec65e` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | SlashBurner<br>`0xb880f8e47dc70910a97e9c4e5d9529d1e68fdbb2` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | SlashHook<br>`0xcd81521639245ee892bee8b24be614267d5ff354` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | TokenDistributor<br>`0xb76d9fbfd8d9f6b946ee7ea5bb12deaf80e33997` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| ethereum | source verified unclassified | TokenReleaser<br>`0x4f5ac8579fc76d6bdd4dd33b707bd4073603a8e9` | non_address_book | unknown | unknown | verified | n/a | `0xbfda2df9cd91cf7a3e794edb9c268588d42d7c01` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x20654c12eae0c7a796cf2739021d3bf3f2466f24` | non_address_book | unknown | unknown | unverified | n/a | `0xbd4a0f12293c54e4e8ad221271cf0d395dd60a71` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa5111c3f65596881c641c1c6af36208ad27b44da` | non_address_book | unknown | unknown | unverified | n/a | `0xbd4a0f12293c54e4e8ad221271cf0d395dd60a71` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 5 |

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
