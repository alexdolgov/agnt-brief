# Agentic Audit Brief: merit-circle

## Project Overview

- Project: merit-circle (`merit-circle`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.612Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, ethereum
- Contract surface: 33 unique implementations (33 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 32 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 5 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (basepool, accesscontrolenumerable, erc20votes). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/31 (0.0%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
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

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Adapter | unknown | ethereum | n/a | [`0xd0eb46...8df8a1`](./contracts/ethereum-1/0xd0eb46d464551441549b9bad5b4aeb2d238df8a1/) | ⚠️ Unaudited |
| BeamProxyOFT | unknown | ethereum | n/a | [`0x2cc787...68ba60`](./contracts/ethereum-1/0x2cc787ed364600b0222361c4188308fa8e68ba60/) | ⚠️ Unaudited |
| BeamToken | unknown | ethereum | n/a | [`0x62d0a8...b0bfce`](./contracts/ethereum-1/0x62d0a8458ed7719fdaf978fe5929c6d342b0bfce/) | ⚠️ Unaudited |
| CastleOfBlackwaterProxyOFT | unknown | ethereum | n/a | [`0x1fceea...34d901`](./contracts/ethereum-1/0x1fceeafcf64939020b94451ebef3dbcc1e34d901/) | ⚠️ Unaudited |
| Collectibles | unknown | ethereum | n/a | [`0x778fdd...d2dbcc`](./contracts/ethereum-1/0x778fdd0987c7bf6c9bf02186c17d9bfb2fd2dbcc/) | ⚠️ Unaudited |
| Constitution | unknown | ethereum | n/a | [`0x47e037...cf437c`](./contracts/ethereum-1/0x47e037c9d5ef7cabe5389cedaa5e51f5c0cf437c/) | ⚠️ Unaudited |
| DomiProxyOFT | unknown | ethereum | n/a | [`0x31b917...fbb652`](./contracts/ethereum-1/0x31b91707099552de72f97568b3c94d0d79fbb652/) | ⚠️ Unaudited |
| EntryPoint | unknown | avalanche | n/a | [`0x5ff137...6d2789`](./contracts/avalanche-43114/0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789/) | ⚠️ Unaudited |
| EthereumNativeOFT | unknown | ethereum | n/a | [`0x85f1da...e382c0`](./contracts/ethereum-1/0x85f1da85e5fe047b946417cb5466f9b5f0e382c0/) | ⚠️ Unaudited |
| ForgottenPlaylandProxyOFT | unknown | ethereum | n/a | [`0xbb6ca8...60321f`](./contracts/ethereum-1/0xbb6ca854d6a812943decd0aaea45ae98e760321f/) | ⚠️ Unaudited |
| HNFT | unknown | ethereum | n/a | [`0x8a1c49...20962c`](./contracts/ethereum-1/0x8a1c4920faa7a8e1c70a80a0b1aa3d5a6920962c/) | ⚠️ Unaudited |
| LiquidityMiningManager | unknown | ethereum | n/a | [`0x21b563...3b9d36`](./contracts/ethereum-1/0x21b56371c9d064fe18cca5798e164c25d73b9d36/) | ⚠️ Unaudited |
| MeritID | unknown | ethereum | n/a | [`0xc79903...afe4a2`](./contracts/ethereum-1/0xc79903fe6f268f2ac77a85df1c319bbd18afe4a2/) | ⚠️ Unaudited |
| MeritNFTDropFactory | unknown | ethereum | n/a | [`0x0c8015...7e1f42`](./contracts/ethereum-1/0x0c8015c94f21544aa958a55849a2af1f987e1f42/) | ⚠️ Unaudited |
| MeritToken | unknown | ethereum | n/a | [`0x949d48...f9e5d6`](./contracts/ethereum-1/0x949d48eca67b17269629c7194f4b727d4ef9e5d6/) | ⚠️ Unaudited |
| MerkleDrop | unknown | ethereum | n/a | [`0xc5f4e8...90da08`](./contracts/ethereum-1/0xc5f4e865591842e753ee03b132b99ecd6090da08/) | ⚠️ Unaudited |
| MerkleOrchard | unknown | ethereum | n/a | [`0x03caec...560e7e`](./contracts/ethereum-1/0x03caec60a734da03f3ee8f8aca8834e8c3560e7e/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x8fb422...af6ddf`](./contracts/ethereum-1/0x8fb4223b7751243ae14987d6fc9e71d06aaf6ddf/) | ⚠️ Unaudited |
| MintableTestNFT | unknown | ethereum | n/a | [`0xae33b5...3dcb0c`](./contracts/ethereum-1/0xae33b53e2e42846ee446aafae412caf7253dcb0c/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x236bda...86c6c0`](./contracts/ethereum-1/0x236bda4589e44e6850f5ac6a74bfca398a86c6c0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x56234f...61a219`](./contracts/ethereum-1/0x56234f99393c2af40a3fe901dceef0b03d61a219/) | ⚠️ Unaudited |
| ProxyOFTWithFeeUpgradeable | unknown | ethereum | n/a | [`0x2a66d5...cd322a`](./contracts/ethereum-1/0x2a66d51407b84b82b5aff3dec4d49f72cbcd322a/) | ⚠️ Unaudited |
| ProxyONFT721Upgradeable | unknown | ethereum | n/a | [`0xd512a5...e2edeb`](./contracts/ethereum-1/0xd512a5c1e694b848271fc3ce879e8e7632e2edeb/) | ⚠️ Unaudited |
| Sablier | unknown | ethereum | n/a | [`0xbaffeb...55a130`](./contracts/ethereum-1/0xbaffeb35357316c8256e0cf534c9258c2a55a130/) | ⚠️ Unaudited |
| TimeLockNonTransferablePool | unknown | ethereum | n/a | [`0x44c01e...87820e`](./contracts/ethereum-1/0x44c01e5e4216f3162538914d9c7f5e6a0d87820e/) | ⚠️ Unaudited |
| TimeLockNonTransferablePoolUnlocked | unknown | ethereum | n/a | [`0x1cf049...47edbc`](./contracts/ethereum-1/0x1cf0494e03516ce466780d34c1f96269eb47edbc/) | ⚠️ Unaudited |
| TokenBurner | unknown | ethereum | n/a | [`0x4f2e21...2b44a2`](./contracts/ethereum-1/0x4f2e21062db87d1023e6e5941c5e8c2de32b44a2/) | ⚠️ Unaudited |
| TokenSaver | unknown | ethereum | n/a | [`0x4c298a...a0bd73`](./contracts/ethereum-1/0x4c298adeb93907d87b04ec9087177c85cca0bd73/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xccb632...331d61`](./contracts/ethereum-1/0xccb63225a7b19dcf66717e4d40c9a72b39331d61/) | ⚠️ Unaudited |
| UsdcProxyOFT | unknown | ethereum | n/a | [`0x5b0e68...3f85e1`](./contracts/ethereum-1/0x5b0e68a82568e9af16337b1a07e9b8ed583f85e1/) | ⚠️ Unaudited |
| UsdtProxyOFT | unknown | ethereum | n/a | [`0x6702e7...3fd223`](./contracts/ethereum-1/0x6702e778780ad5f0d1c1c53e367971b1ad3fd223/) | ⚠️ Unaudited |
| View | unknown | ethereum | n/a | [`0x36c62c...5462ea`](./contracts/ethereum-1/0x36c62c5f86bef7c13b34765fc444b002295462ea/) | ⚠️ Unaudited |
| WhitelistedNFTSale | unknown | ethereum | n/a | [`0x4f59cc...b72a8c`](./contracts/ethereum-1/0x4f59cc0e919be7ebbf1c33e6eec8506df4b72a8c/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd0eb46...8df8a1`](./contracts/ethereum-1/0xd0eb46d464551441549b9bad5b4aeb2d238df8a1/) | Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cc787...68ba60`](./contracts/ethereum-1/0x2cc787ed364600b0222361c4188308fa8e68ba60/) | BeamProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62d0a8...b0bfce`](./contracts/ethereum-1/0x62d0a8458ed7719fdaf978fe5929c6d342b0bfce/) | BeamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fceea...34d901`](./contracts/ethereum-1/0x1fceeafcf64939020b94451ebef3dbcc1e34d901/) | CastleOfBlackwaterProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x778fdd...d2dbcc`](./contracts/ethereum-1/0x778fdd0987c7bf6c9bf02186c17d9bfb2fd2dbcc/) | Collectibles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47e037...cf437c`](./contracts/ethereum-1/0x47e037c9d5ef7cabe5389cedaa5e51f5c0cf437c/) | Constitution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31b917...fbb652`](./contracts/ethereum-1/0x31b91707099552de72f97568b3c94d0d79fbb652/) | DomiProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5ff137...6d2789`](./contracts/avalanche-43114/0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85f1da...e382c0`](./contracts/ethereum-1/0x85f1da85e5fe047b946417cb5466f9b5f0e382c0/) | EthereumNativeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb6ca8...60321f`](./contracts/ethereum-1/0xbb6ca854d6a812943decd0aaea45ae98e760321f/) | ForgottenPlaylandProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a1c49...20962c`](./contracts/ethereum-1/0x8a1c4920faa7a8e1c70a80a0b1aa3d5a6920962c/) | HNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21b563...3b9d36`](./contracts/ethereum-1/0x21b56371c9d064fe18cca5798e164c25d73b9d36/) | LiquidityMiningManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc79903...afe4a2`](./contracts/ethereum-1/0xc79903fe6f268f2ac77a85df1c319bbd18afe4a2/) | MeritID | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8015...7e1f42`](./contracts/ethereum-1/0x0c8015c94f21544aa958a55849a2af1f987e1f42/) | MeritNFTDropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x949d48...f9e5d6`](./contracts/ethereum-1/0x949d48eca67b17269629c7194f4b727d4ef9e5d6/) | MeritToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5f4e8...90da08`](./contracts/ethereum-1/0xc5f4e865591842e753ee03b132b99ecd6090da08/) | MerkleDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03caec...560e7e`](./contracts/ethereum-1/0x03caec60a734da03f3ee8f8aca8834e8c3560e7e/) | MerkleOrchard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fb422...af6ddf`](./contracts/ethereum-1/0x8fb4223b7751243ae14987d6fc9e71d06aaf6ddf/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae33b5...3dcb0c`](./contracts/ethereum-1/0xae33b53e2e42846ee446aafae412caf7253dcb0c/) | MintableTestNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236bda...86c6c0`](./contracts/ethereum-1/0x236bda4589e44e6850f5ac6a74bfca398a86c6c0/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a66d5...cd322a`](./contracts/ethereum-1/0x2a66d51407b84b82b5aff3dec4d49f72cbcd322a/) | ProxyOFTWithFeeUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd512a5...e2edeb`](./contracts/ethereum-1/0xd512a5c1e694b848271fc3ce879e8e7632e2edeb/) | ProxyONFT721Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaffeb...55a130`](./contracts/ethereum-1/0xbaffeb35357316c8256e0cf534c9258c2a55a130/) | Sablier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c01e...87820e`](./contracts/ethereum-1/0x44c01e5e4216f3162538914d9c7f5e6a0d87820e/) | TimeLockNonTransferablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cf049...47edbc`](./contracts/ethereum-1/0x1cf0494e03516ce466780d34c1f96269eb47edbc/) | TimeLockNonTransferablePoolUnlocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f2e21...2b44a2`](./contracts/ethereum-1/0x4f2e21062db87d1023e6e5941c5e8c2de32b44a2/) | TokenBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c298a...a0bd73`](./contracts/ethereum-1/0x4c298adeb93907d87b04ec9087177c85cca0bd73/) | TokenSaver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b0e68...3f85e1`](./contracts/ethereum-1/0x5b0e68a82568e9af16337b1a07e9b8ed583f85e1/) | UsdcProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6702e7...3fd223`](./contracts/ethereum-1/0x6702e778780ad5f0d1c1c53e367971b1ad3fd223/) | UsdtProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c62c...5462ea`](./contracts/ethereum-1/0x36c62c5f86bef7c13b34765fc444b002295462ea/) | View | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f59cc...b72a8c`](./contracts/ethereum-1/0x4f59cc0e919be7ebbf1c33e6eec8506df4b72a8c/) | WhitelistedNFTSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
