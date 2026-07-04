# Agentic Audit Brief: Myriad Markets

## Project Overview

- Project: Myriad Markets (`myriad-markets`)
- Website: [https://myriad.markets/markets](https://myriad.markets/markets)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:33.526Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, linea
- Contract surface: 39 unique implementations (39 raw deployments)
- DeFi Llama TVL: $466,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 34 project-authored contract(s) across 2 chain(s); 8 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 16 common project-authored base contract(s) (contextupgradeable, reentrancyguardtransientupgradeable, erc165). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Lido** (`lido`) in the NameWrapper, OwnedResolver, PublicResolver subsystem.
15 audits inherited from `lido`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/39 (7.7%)
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/39
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 15 (0 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 15 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 7.7% (Code4rena, Cyfrin, MixBytes, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 7.7% | 2026-03 |
| Composable Security | Tier 2 | 3 | 7.7% | 2026-06 |
| Cyfrin | Tier 1 | 3 | 7.7% | 2026-05 |
| MixBytes | Tier 1 | 3 | 7.7% | 2026-05 |
| Nethermind | Tier 2 | 3 | 7.7% | 2026-04 |
| Spearbit | Tier 1 | 3 | 7.7% | 2026-03 |
| yAudit | Tier 2 | 3 | 7.7% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NameWrapper | unknown | linea | n/a | [`0xa53cca...13c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | ✅ Audited |
| OwnedResolver | unknown | linea | n/a | [`0x9453dc...f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | ✅ Audited |
| PublicResolver | unknown | linea | n/a | [`0x86c5ae...733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminRegistry | unknown | bsc | n/a | [`0xcaadcd...a4f653`](./contracts/bsc-56/0xcaadcdf80a88e0024642fe9cbeff4011b7a4f653/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | linea | n/a | [`0x6e8439...b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20USDT | unknown | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| ConditionalTokens | unknown | bsc | n/a | [`0x641373...2654dc`](./contracts/bsc-56/0x6413734f92248d4b29ae35883290bd93212654dc/) | ⚠️ Unaudited |
| CryptoCREOracle | unknown | bsc | n/a | [`0xd6a00f...11f2e5`](./contracts/bsc-56/0xd6a00f56955ac5aa9901b2a98e504a6d6811f2e5/) | ⚠️ Unaudited |
| ENSRegistry | unknown | linea | n/a | [`0x50130b...121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | linea | n/a | [`0xdb75db...d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ⚠️ Unaudited |
| ExecutorsGuard | unknown | bsc | n/a | [`0xfdffc9...e85189`](./contracts/bsc-56/0xfdffc9616d7939523ed07abe8d76e8afa0e85189/) | ⚠️ Unaudited |
| FeeModule | unknown | bsc | n/a | [`0x423abc...03a7e7`](./contracts/bsc-56/0x423abc7b68dd11c3756f59fb2c155d27f003a7e7/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | linea | n/a | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | linea | n/a | [`0x0e57c8...5c2dc8`](./contracts/linea-59144/0x0e57c8d26671e267c3c971824b93343bb75c2dc8/) | ⚠️ Unaudited |
| L2MessageService | unknown | linea | n/a | [`0x05d437...b960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | ⚠️ Unaudited |
| L2USDCBridge | unknown | linea | n/a | [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ⚠️ Unaudited |
| LineaSurgeXP | unknown | linea | n/a | [`0x96b3a1...124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | ⚠️ Unaudited |
| LineaVoyageXP | unknown | linea | n/a | [`0xd83af4...cf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | ⚠️ Unaudited |
| LineaXP | unknown | linea | n/a | [`0xc24e7b...9cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | ⚠️ Unaudited |
| MyriadCTFExchange | unknown | bsc | n/a | [`0x3f5c62...3a3364`](./contracts/bsc-56/0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364/) | ⚠️ Unaudited |
| NegRiskAdapter | unknown | bsc | n/a | [`0xd96f26...93d53a`](./contracts/bsc-56/0xd96f26703ddbf7d1cb6858640eca34cf1893d53a/) | ⚠️ Unaudited |
| PredictionMarketV3_4 | unknown | bsc | n/a | [`0x39e66e...bef340`](./contracts/bsc-56/0x39e66ee6b2ddaf4defded3038e0162180dbef340/) | ⚠️ Unaudited |
| PredictionMarketV3Manager | unknown | linea | n/a | [`0xdefb36...e03bad`](./contracts/linea-59144/0xdefb36c47754d2e37d44b8b8c647d4d643e03bad/) | ⚠️ Unaudited |
| PredictionMarketV3ManagerCLOB | unknown | bsc | n/a | [`0x9ab121...d37f2b`](./contracts/bsc-56/0x9ab1213d360bea3eda75d88d81d7fbfc9fd37f2b/) | ⚠️ Unaudited |
| PredictionMarketV3Querier | unknown | bsc | n/a | [`0xdefb36...e03bad`](./contracts/bsc-56/0xdefb36c47754d2e37d44b8b8c647d4d643e03bad/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | linea | n/a | [`0x1e1f6f...39774e`](./contracts/linea-59144/0x1e1f6f22f97b4a7522d8b62e983953639239774e/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | linea | n/a | [`0x08d3ff...2b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ⚠️ Unaudited |
| Root | unknown | linea | n/a | [`0xfbf795...151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | ⚠️ Unaudited |
| SportsCREOracle | unknown | bsc | n/a | [`0xe5d08a...7a1065`](./contracts/bsc-56/0xe5d08a4797c0bd67e1b6b0acb4730c12be7a1065/) | ⚠️ Unaudited |
| Stablecoin | unknown | bsc | n/a | [`0x339838...8a6616`](./contracts/bsc-56/0x3398385c205c060ef54744ee817c1487e28a6616/) | ⚠️ Unaudited |
| StablecoinV2 | unknown | bsc | n/a | [`0x8d0d00...f08b0d`](./contracts/bsc-56/0x8d0d000ee44948fc98c9b98a4fa4921476f08b0d/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | linea | n/a | [`0x18703d...866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | ⚠️ Unaudited |
| TokenBridge | unknown | linea | n/a | [`0x0ffcbe...03444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x05f519...e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x0ece76...2203f0`](./contracts/linea-59144/0x0ece76334fb560f2b1a49a60e38cf726b02203f0/) | ⚠️ Unaudited |
| UniversalResolver | unknown | linea | n/a | [`0x3aa974...3a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | linea | n/a | [`0xe79869...4c02c0`](./contracts/linea-59144/0xe798695d2e78f7caeb5bbf3385433959324c02c0/) | ⚠️ Unaudited |
| WrappedCollateral | unknown | bsc | n/a | [`0x9f124c...067acc`](./contracts/bsc-56/0x9f124ce59d8de0274574949400640a2677067acc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [Composable Security Lido Oracle V8 Audit Report.pdf](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [Cyfrin CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes Lido v3 Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes Lido Easy Track stVaults Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [Cyfrin CircuitBreaker Formal Verification Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes Lido DeFi Wrapper MellowStrategyAdapter Security Audit Report 03-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=45

Fork inheritance lineage and inherited audits are included when available.
