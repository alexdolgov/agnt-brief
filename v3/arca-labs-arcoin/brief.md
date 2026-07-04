# Agentic Audit Brief: Arca Labs ArCoin

## Project Overview

- Project: Arca Labs ArCoin (`arca-labs-arcoin`)
- Website: [https://www.arcalabs.com/](https://www.arcalabs.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:30.115Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $451,937.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 19 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (basedscontract, serviceconsumer, idsserviceconsumer). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Grove Finance** (`grove-finance`) in the ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, SecuritizeOnRamp, TokenLibrary subsystem.
7 audits inherited from `grove-finance`, scoped to that subsystem.

Total inherited audits: 7. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/42 (14.3%)
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/42
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 7 (0 direct, 7 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 14.3% (Certora, ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 6 | 14.3% | 2025-12 |
| ChainSecurity | Tier 1 | 6 | 14.3% | n/a |
| Spearbit | Tier 1 | 6 | 14.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ComplianceServiceLibrary | unknown | ethereum | n/a | [`0x2a49ee...ed528c`](./contracts/ethereum-1/0x2a49ee732c76837b7e7e181e9c3c43946eed528c/) | ✅ Audited |
| InvestorLockManager | unknown | ethereum | n/a | [`0x0e4d0f...c29fda`](./contracts/ethereum-1/0x0e4d0fc75407de18bde9930cbbc3238ebac29fda/) | ✅ Audited |
| PublicStockOnRamp | unknown | ethereum | n/a | [`0x0d0051...373c0c`](./contracts/ethereum-1/0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c/) | ✅ Audited |
| Redemption | unknown | ethereum | n/a | [`0x4580d3...1ee0a0`](./contracts/ethereum-1/0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0/) | ✅ Audited |
| SecuritizeOnRamp | unknown | ethereum | n/a | [`0x0db0dd...84b9a3`](./contracts/ethereum-1/0x0db0dd371646b62c0de87b72101009f50484b9a3/) | ✅ Audited |
| TokenLibrary | unknown | ethereum | n/a | [`0x550bca...bc97e5`](./contracts/ethereum-1/0x550bcacd69c722e19eee0599ef502c358ebc97e5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowanceAssetProvider | unknown | ethereum | n/a | [`0xb743c5...1e6b39`](./contracts/ethereum-1/0xb743c527546f6e009d1e4c87bbf2095f061e6b39/) | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | ethereum | n/a | [`0x0aa5dc...6f0ec3`](./contracts/ethereum-1/0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3/) | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | ethereum | n/a | [`0x9a6282...69c493`](./contracts/ethereum-1/0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493/) | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | ethereum | n/a | [`0x5a9431...fdc922`](./contracts/ethereum-1/0x5a943134fc891f0d8ecc3c8f8dd3b25944fdc922/) | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | ethereum | n/a | [`0x15023f...400f4c`](./contracts/ethereum-1/0x15023f401e6065a2b55db7a96297960b4b400f4c/) | ⚠️ Unaudited |
| Disperse | unknown | ethereum | n/a | [`0x63866e...0bd31b`](./contracts/ethereum-1/0x63866ebe37dd39565d6f9b752e0a2177f70bd31b/) | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | ethereum | n/a | [`0x1e5d83...e37021`](./contracts/ethereum-1/0x1e5d83ff1a6d32c53f25937664c53e9b57e37021/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x021840...b0c6aa`](./contracts/ethereum-1/0x021840988add1cb60be98d8ba1c577e314b0c6aa/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0490a0...61f814`](./contracts/ethereum-1/0x0490a00cd72c4c51186afeb97c2d8b567261f814/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x04fb23...ff8e66`](./contracts/ethereum-1/0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x05dae9...f5385d`](./contracts/ethereum-1/0x05dae9bfbc82ed6bfa707087126f7af850f5385d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x065674...8511a3`](./contracts/ethereum-1/0x0656748e529baac7338a2dc99297bb9f568511a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x068d79...1492b6`](./contracts/ethereum-1/0x068d79fd744ed0b64c1a1d218683e699811492b6/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x06ac06...a780a3`](./contracts/ethereum-1/0x06ac066b0f918ca8a1d13a420035530085a780a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x06d4bc...e8c565`](./contracts/ethereum-1/0x06d4bcbfa12782ea136f77fd6031ea364be8c565/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x078646...210d91`](./contracts/ethereum-1/0x078646dd17ef2b9d7c346ac76c426004c9210d91/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x07952f...76a561`](./contracts/ethereum-1/0x07952f21df5068bfa900ff317e6aaf4fe376a561/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0885f3...cd4aa3`](./contracts/ethereum-1/0x0885f310222f3c8d237b36861d1a84e551cd4aa3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x189fd4...b97229`](./contracts/ethereum-1/0x189fd44ef6901c1d096c95e41909d83743b97229/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x1ea550...68ad4f`](./contracts/ethereum-1/0x1ea550a49c0f6def620f734c6329c4c12a68ad4f/) | ⚠️ Unaudited |
| GlobalRegistryService | unknown | ethereum | n/a | [`0x1d95f6...3e8c75`](./contracts/ethereum-1/0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75/) | ⚠️ Unaudited |
| IssuerMulticall | unknown | ethereum | n/a | [`0x02658c...e57b7d`](./contracts/ethereum-1/0x02658cc68a706fdd8474619040d3d6df54e57b7d/) | ⚠️ Unaudited |
| MbpsFeeManager | unknown | ethereum | n/a | [`0x184cb1...ec649d`](./contracts/ethereum-1/0x184cb128c1d4778da88bbde95c35d199aaec649d/) | ⚠️ Unaudited |
| OmnibusTBEController | unknown | ethereum | n/a | [`0x1cf534...d8035f`](./contracts/ethereum-1/0x1cf534f2bebe9c69bcbde5ab33a7d184d5d8035f/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x063803...c63070`](./contracts/ethereum-1/0x0638033f826c88d8b540a26c0a31130694c63070/) | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | ethereum | n/a | [`0x226b44...c7c66f`](./contracts/ethereum-1/0x226b44eaab75be8000b1700c413e42513bc7c66f/) | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | ethereum | n/a | [`0x12263b...169db8`](./contracts/ethereum-1/0x12263bef18d07c48940eaa56f7b2efc665169db8/) | ⚠️ Unaudited |
| RegistryService | unknown | ethereum | n/a | [`0x0ef785...49f2e4`](./contracts/ethereum-1/0x0ef785e8783a9daa336850df39d251d12749f2e4/) | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | ethereum | n/a | [`0x1b9aaf...5d06a5`](./contracts/ethereum-1/0x1b9aaf91dd71ea63487026908d06ab97c05d06a5/) | ⚠️ Unaudited |
| SecuritizeSwap | unknown | ethereum | n/a | [`0x4a107b...bee141`](./contracts/ethereum-1/0x4a107baec38840e744d397f6a7e90ffc36bee141/) | ⚠️ Unaudited |
| SecuritizeVault | unknown | ethereum | n/a | [`0x4535b3...723dea`](./contracts/ethereum-1/0x4535b360b4907b44b27cd499e07ed7772b723dea/) | ⚠️ Unaudited |
| Settlement | unknown | ethereum | n/a | [`0x6c97c9...ac5fbb`](./contracts/ethereum-1/0x6c97c9754880e569c8f098b3cc654089f7ac5fbb/) | ⚠️ Unaudited |
| TokenReallocator | unknown | ethereum | n/a | [`0x0002fc...507cf8`](./contracts/ethereum-1/0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8/) | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | ethereum | n/a | [`0x466513...cd66ab`](./contracts/ethereum-1/0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab/) | ⚠️ Unaudited |
| VaultRegistrar | unknown | ethereum | n/a | [`0x121d63...79711d`](./contracts/ethereum-1/0x121d63424e6f8632602f8f67848a28209179711d/) | ⚠️ Unaudited |
| WalletRegistrar | unknown | ethereum | n/a | [`0x04c360...194a6f`](./contracts/ethereum-1/0x04c360034c30803eaffcb5e2a4bf708a49194a6f/) | ⚠️ Unaudited |

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
| [cantina.xyz/portfolio/71794706-b078-4579-8f50-a9bd25d732d3](https://cantina.xyz/portfolio/71794706-b078-4579-8f50-a9bd25d732d3) | Spearbit | Audit | n/a | unknown | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |
| [ChainSecurity_GroveLabs_Basin_Audit.pdf](https://reports.chainsecurity.com/GroveLabs/ChainSecurity_GroveLabs_Basin_Audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |
| [v160-cantina-audit.pdf](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-cantina-audit.pdf) | Spearbit | Audit | n/a | unknown | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |
| [v160-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-chainsecurity-audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |
| [v180-certora-audit.pdf](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |
| [v180-chainsecurity-audit.pdf](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-chainsecurity-audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |
| [v180-certora-audit.pdf](https://raw.githubusercontent.com/grove-labs/grove-alm-controller/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Spearbit | Audit | 2025-12 | fresh | Inherited from Grove Finance — forked code, scoped to ComplianceServiceLibrary, InvestorLockManager, PublicStockOnRamp, Redemption, +2 more | inherited | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=48

Fork inheritance lineage and inherited audits are included when available.
