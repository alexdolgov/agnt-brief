# Agentic Audit Brief: Manta Pacific

## Project Overview

- Project: Manta Pacific (`manta-pacific`)
- Website: [https://pacific-bridge.manta.network](https://pacific-bridge.manta.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.383Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum, manta
- Contract surface: 21 unique implementations (69 raw deployments)
- DeFi Llama TVL: $20,122,679.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 29 project-authored contract(s) across 2 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 5 common project-authored base contract(s) (semver, contextupgradeable, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 59 (56 live, 3 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 18 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 21
- Raw deployments: 69
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

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | 15 deployments: ethereum [`0x1710450f1dab239a83834123508e10c910a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/); ethereum `0x1dc6184931dacb520a40dc756a5da614816d39fa`; ethereum `0x262181e34eed11740be0419b3af54f868c8415af`; ethereum `0x39860b5900d97a9750d9774b5d521cf93c552864`; ethereum `0x3ad319bb4872f8cb75a26ac30cc4bd2d56b67b05`; ethereum `0x424b45d86c5278fa6d89d29116214eb647d202b5`; ethereum `0x5e99cf75ae9a76de366fb3e4a1f2a0b19be8902d`; ethereum `0x6d223eeef79e5ea639f034522b10ccd4dd719665`; ethereum `0x897c4f85812be79f0172f225fbd6550c9ea7abf6`; ethereum `0xa69f3d94a15161921d968263e62bd8ee81ddf561`; ethereum `0xc32db741acd8f74b73dc6e434366eefa9db0580d`; ethereum `0xdb27128ed4a1be7683ccfddb053dd5b713fc3284`; ethereum `0xe3cb5953e548262133f0a5ff230388cebf43e9db`; ethereum `0xe63ac96f9615b16c4ed33bed79a0b537e97a7a82`; ethereum `0xfd195da649e135995c6f81ccddc30bf2dadfbc4c` | ⚠️ Unaudited |
| BLSApkRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ad2384aaf9525bd7b4d3f73e8cc07421af2046f`](./contracts/ethereum-1/0x8ad2384aaf9525bd7b4d3f73e8cc07421af2046f/); ethereum `0xa80f2401c8ae7d95c7995295dc2c0d651f25fd60` | ⚠️ Unaudited |
| FinalityRelayerManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x8e132b3bd37f3f6e223cd23add390111e674c94e`](./contracts/ethereum-1/0x8e132b3bd37f3f6e223cd23add390111e674c94e/); ethereum `0x9d6def8bb4d67ac2aabcc787767dc0b890f24980` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e`](./contracts/ethereum-1/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x305e88d809c9dc03179554bfbf85ac05ce8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/); ethereum `0xb6c539bf372b7a11855b0189c22133b05cc230df` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x635ba609680c55c3bdd0b3627b4c5db21b13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/); ethereum `0x9cddc6f65ed67ef19743ffdfd53501457ce8b51f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/); ethereum `0xfb1e17245631cd10720401074a3dc9bf7fd3c32d` | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b95bc951ee0f553ba487327278cac44f29715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/); ethereum `0x62b257a1b1fc81c4e6e5dc5b47f1e6184341cd58` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x30c789674ad3b458886bbc9abf42eee19ea05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef13441be50d20ca4558cc0a27b601ac544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MantaStakingMiddleware | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb385a5412950c28144d74014f843189583a1d9fa`](./contracts/ethereum-1/0xb385a5412950c28144d74014f843189583a1d9fa/); ethereum `0xe9cde7482fdaab033b5ec2839ba8f7e5669ec65e` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2165254f0dd74c19d07ed447b231447604d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/); ethereum `0xd4957750120ead4f9492895cf7103971e8ceb894` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x9168765ee952de7c6f8fc6fad5ec209b960b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf`](./contracts/ethereum-1/0x0f2486b9c7ba7a1edd9ab33c7a5586d6481e47bf/); ethereum `0x120bd9cdae9f0f20c4cc022793b345779c35d78c`; ethereum `0x1c466b9371f8aba0d7c458be10a62192fcb8aa71`; ethereum `0x6ec90db7a29272a47c538d53ef4026e626e2c5ce`; ethereum `0x732970094bc3bf9eff25ec1b56a16eace6fea232`; ethereum `0x96d6e5ba62f66003748b60544bb355fb308771c4`; ethereum `0xb73603c5d87fa094b7314c74ace2e64d165016fb`; ethereum `0xd0e3a94c6751987cc48879646f4b28a9c33e3dcc`; ethereum `0xea4f12c5f62e252c2694076c169bed0818126fba`; ethereum `0xf417f5a458ec102b90352f697d6e2ac3a3d2851f`; ethereum `0xf4b428078bba69786849fc1e1773f5c6c40748fa`; ethereum `0xf992f6cab98bf812737b495dc7dbb20e20acf631` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 13 deployments: ethereum [`0x007957bf0681b75e92273a7018784ace6af8cb2d`](./contracts/ethereum-1/0x007957bf0681b75e92273a7018784ace6af8cb2d/); ethereum `0x1772e378555d2870035e38dbc33f37bb42410eb5`; ethereum `0x1a73810731536f3201ea1134d048ed999188007d`; ethereum `0x4d7e194d6b5915ca4e39bba7a030b50702a40e9e`; ethereum `0x65d6b21c95e1e72bdd91f868527910eaa892d48e`; ethereum `0x68b18d4c3ecc5bac0408de9ad722d31a738062bd`; ethereum `0x8a7b471537a26ad2d4a16d0ebd626d4a1f8d3be1`; ethereum `0xa2dca85bb892de55d8b262d1806114733106e8d1`; ethereum `0xc21f2e6c5792686e53e32cb88fc38f6c75b6e79d`; ethereum `0xc9ef2e3eaeb70f0b794a9d7d5cac4bcff1906995`; ethereum `0xe84162349a4d1d4df7443a53f6e12366c8dbdd0e`; ethereum `0xeb77d0c8794b73625b7f4d60d9ca64a2604c48cd`; ethereum `0xecde807ae6d972b615b266aa958a07f97cb0d8e5` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x895e00269a05848f3c9889efa677d02ff7351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/); ethereum `0xef01a6ae995791fffca3d70bda7b91e5fa1ad0ae` | ⚠️ Unaudited |
| TokenDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d`](./contracts/ethereum-1/0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d/); ethereum `0xb76d9fbfd8d9f6b946ee7ea5bb12deaf80e33997` | ⚠️ Unaudited |
| TokenReleaser | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f5ac8579fc76d6bdd4dd33b707bd4073603a8e9`](./contracts/ethereum-1/0x4f5ac8579fc76d6bdd4dd33b707bd4073603a8e9/); ethereum `0x570225fe346634a68c6c367dccc8f7f9410ed505` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xab64a3da57886cd4205176c72b8be63c34e46366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec638d2c7d0f07c0245ac94e51a51bac427d8262` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1710450f1dab239a83834123508e10c910a5a063`](./contracts/ethereum-1/0x1710450f1dab239a83834123508e10c910a5a063/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ad2384aaf9525bd7b4d3f73e8cc07421af2046f`](./contracts/ethereum-1/0x8ad2384aaf9525bd7b4d3f73e8cc07421af2046f/) | BLSApkRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e132b3bd37f3f6e223cd23add390111e674c94e`](./contracts/ethereum-1/0x8e132b3bd37f3f6e223cd23add390111e674c94e/) | FinalityRelayerManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x305e88d809c9dc03179554bfbf85ac05ce8f18d6`](./contracts/ethereum-1/0x305e88d809c9dc03179554bfbf85ac05ce8f18d6/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x635ba609680c55c3bdd0b3627b4c5db21b13c310`](./contracts/ethereum-1/0x635ba609680c55c3bdd0b3627b4c5db21b13c310/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f`](./contracts/ethereum-1/0xbe896f53bb658c9eecabbdf4a4db85e4b8481c8f/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b95bc951ee0f553ba487327278cac44f29715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30c789674ad3b458886bbc9abf42eee19ea05c1d`](./contracts/ethereum-1/0x30c789674ad3b458886bbc9abf42eee19ea05c1d/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x95cef13441be50d20ca4558cc0a27b601ac544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | Manta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb385a5412950c28144d74014f843189583a1d9fa`](./contracts/ethereum-1/0xb385a5412950c28144d74014f843189583a1d9fa/) | MantaStakingMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2165254f0dd74c19d07ed447b231447604d41e20`](./contracts/ethereum-1/0x2165254f0dd74c19d07ed447b231447604d41e20/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9168765ee952de7c6f8fc6fad5ec209b960b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5`](./contracts/ethereum-1/0x2fe3ad97a60eb7c79a976fc18bb5ffd07dd94ba5/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x895e00269a05848f3c9889efa677d02ff7351a5d`](./contracts/ethereum-1/0x895e00269a05848f3c9889efa677d02ff7351a5d/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d`](./contracts/ethereum-1/0x04c74e8a11c669acfb7ee01012bbf5cf1e57a10d/) | TokenDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5ac8579fc76d6bdd4dd33b707bd4073603a8e9`](./contracts/ethereum-1/0x4f5ac8579fc76d6bdd4dd33b707bd4073603a8e9/) | TokenReleaser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
