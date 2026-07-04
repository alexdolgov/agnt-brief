# Agentic Audit Brief: BladeSwap

## Project Overview

- Project: BladeSwap (`bladeswap`)
- Website: [https://bladeswap.xyz](https://bladeswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.556Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: blast
- Contract surface: 44 unique implementations (44 raw deployments)
- DeFi Llama TVL: $197,728.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 44 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 16 common project-authored base contract(s) (blastgovernorsetup, erc165, timestamp). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Henjin DEX** (`henjin-dex`) in the AlgebraPoolDeployer, BasePluginV1Factory subsystem.
2 audits inherited from `henjin-dex`, scoped to that subsystem.

Total inherited audits: 2. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/42 (4.8%)
- Deployed-live implementations: 44 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/44
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 3 (1 direct, 2 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 2 | 4.5% | n/a |
| unknown | Tier 2 | 2 | 4.5% | n/a |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPoolDeployer | unknown | blast | n/a | [`0x3120cb...827835`](./contracts/blast-81457/0x3120cb20646017e8cad24d3d0302ea2083827835/) | ✅ Audited |
| BasePluginV1Factory | unknown | blast | n/a | [`0x073cce...81f6c3`](./contracts/blast-81457/0x073cce6afb187323eb704af107a9a728cc81f6c3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminFacet | unknown | blast | n/a | [`0x8be972...1ed3c1`](./contracts/blast-81457/0x8be972bbaaf57f43bff5901a788df38b401ed3c1/) | ⚠️ Unaudited |
| AlgebraBladeIncentiveMaker | unknown | blast | n/a | [`0x12aaba...6e0fb1`](./contracts/blast-81457/0x12aaba5a8ec297ade0e3d2c97ccc22a4156e0fb1/) | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | blast | n/a | [`0x089124...89fe71`](./contracts/blast-81457/0x089124f146509359af0eb52f6cc7f06a2389fe71/) | ⚠️ Unaudited |
| AlgebraConverter | unknown | blast | n/a | [`0x6b75bb...9bf022`](./contracts/blast-81457/0x6b75bb64a41b38d57c39381d0c285daaa89bf022/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | blast | n/a | [`0x23d3a3...af47f3`](./contracts/blast-81457/0x23d3a34c1723a83ece3db05405be0a9f78af47f3/) | ⚠️ Unaudited |
| AlgebraFactory | unknown | blast | n/a | [`0x1757f1...d97a1e`](./contracts/blast-81457/0x1757f1c224fc4cd99a5cb9d5db8f77122ad97a1e/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | blast | n/a | [`0x1ab39a...739b4e`](./contracts/blast-81457/0x1ab39a79652929831e5333dc0edacb422d739b4e/) | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | blast | n/a | [`0x013802...ceb8fd`](./contracts/blast-81457/0x013802305a25a286f2dc95950b6254f4c3ceb8fd/) | ⚠️ Unaudited |
| Blade | unknown | blast | n/a | [`0x3a4394...322cbf`](./contracts/blast-81457/0x3a439433dcb1cd6869dc23d3bedceff797322cbf/) | ⚠️ Unaudited |
| Box | unknown | blast | n/a | [`0x194fa3...b3e943`](./contracts/blast-81457/0x194fa3066d3a44c5b74394298a317839c7b3e943/) | ⚠️ Unaudited |
| Cherry | unknown | blast | n/a | [`0x758106...05c333`](./contracts/blast-81457/0x75810655c507214da899b5ed46ef337b1505c333/) | ⚠️ Unaudited |
| Claim | unknown | blast | n/a | [`0x7fef67...1c083b`](./contracts/blast-81457/0x7fef67b108fc05e83a9bb8eb9f665791bf1c083b/) | ⚠️ Unaudited |
| FarmingCenter | unknown | blast | n/a | [`0x8d2eb2...9bc168`](./contracts/blast-81457/0x8d2eb277a50c5aeef2c04ef4819055639f9bc168/) | ⚠️ Unaudited |
| InspectorFacet | unknown | blast | n/a | [`0x8e02ad...2e4b5a`](./contracts/blast-81457/0x8e02ada26ecf813202735d0883977c098d2e4b5a/) | ⚠️ Unaudited |
| Lens | unknown | blast | n/a | [`0xce54ab...5e376f`](./contracts/blast-81457/0xce54ab6c79c259bbdb8f4babea97f05f225e376f/) | ⚠️ Unaudited |
| LinearBribeFactory | unknown | blast | n/a | [`0x5045c4...6946d9`](./contracts/blast-81457/0x5045c448a06498c29694b7348ec5a5010b6946d9/) | ⚠️ Unaudited |
| MarketMakerFactory | unknown | blast | n/a | [`0x0a3c4c...b971da`](./contracts/blast-81457/0x0a3c4c899df38da088c93aea52cd8ce207b971da/) | ⚠️ Unaudited |
| NFT | unknown | blast | n/a | [`0x757105...8dbf08`](./contracts/blast-81457/0x7571058f0423d9bd24b798ecd4135c47f78dbf08/) | ⚠️ Unaudited |
| NFTHolderFacet | unknown | blast | n/a | [`0x2641a0...97377c`](./contracts/blast-81457/0x2641a05b44d5530fa44b1737415818174097377c/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | blast | n/a | [`0x4e3219...a0094d`](./contracts/blast-81457/0x4e3219980d3a4ed73c286cd6d828c6e54fa0094d/) | ⚠️ Unaudited |
| OverflowICO | unknown | blast | n/a | [`0x1bc5f0...2b4222`](./contracts/blast-81457/0x1bc5f075837e27fd1c02ed3742842dda5a2b4222/) | ⚠️ Unaudited |
| PlainOverflowICO | unknown | blast | n/a | [`0x06ef68...e9a41f`](./contracts/blast-81457/0x06ef68722da95ff858d1fbe6ac99be3e00e9a41f/) | ⚠️ Unaudited |
| Quoter | unknown | blast | n/a | [`0x96d1e7...2a6522`](./contracts/blast-81457/0x96d1e789cb0992d15335a99af7e3531c6d2a6522/) | ⚠️ Unaudited |
| QuoterV2 | unknown | blast | n/a | [`0x4b1632...34ed00`](./contracts/blast-81457/0x4b1632b19a9d41cada6b78bced3205838534ed00/) | ⚠️ Unaudited |
| SalaryPayment | unknown | blast | n/a | [`0x6c48d1...6df14b`](./contracts/blast-81457/0x6c48d1d3ced5cd8d37e6626bb1cef02c696df14b/) | ⚠️ Unaudited |
| SimpleAuthorizer | unknown | blast | n/a | [`0x06b143...c9d9cb`](./contracts/blast-81457/0x06b1431b2cfc81fd1e428d6a4916fec395c9d9cb/) | ⚠️ Unaudited |
| StableSwapPoolFactory | unknown | blast | n/a | [`0x5f0af3...3a77f2`](./contracts/blast-81457/0x5f0af33207aa4f62d678cdead8d2dd4e8e3a77f2/) | ⚠️ Unaudited |
| SwapAuxillaryFacet | unknown | blast | n/a | [`0x94052f...298620`](./contracts/blast-81457/0x94052fd2e9d6073eec85e9bede37cc71fc298620/) | ⚠️ Unaudited |
| SwapFacet | unknown | blast | n/a | [`0x10f6b1...95382c`](./contracts/blast-81457/0x10f6b147d51f7578f760065df7f174c3bc95382c/) | ⚠️ Unaudited |
| SwapHelperFacet | unknown | blast | n/a | [`0x1e4f59...1727dd`](./contracts/blast-81457/0x1e4f59a9bafd7c96dfce8c73a6a900b61d1727dd/) | ⚠️ Unaudited |
| SwapHelperFacet2 | unknown | blast | n/a | [`0x0f8020...05cb7b`](./contracts/blast-81457/0x0f8020ff5c2290b57db481f0c7db561c3e05cb7b/) | ⚠️ Unaudited |
| SwapRouter | unknown | blast | n/a | [`0x422f44...7db286`](./contracts/blast-81457/0x422f442e02df680336563f26a04e3754247db286/) | ⚠️ Unaudited |
| TickLens | unknown | blast | n/a | [`0x17fbdc...d2f3f0`](./contracts/blast-81457/0x17fbdc4b95cb227e9700623f5cc381b0a9d2f3f0/) | ⚠️ Unaudited |
| TimelockController | unknown | blast | n/a | [`0x58534a...7f8396`](./contracts/blast-81457/0x58534a65e415a2601092a769bb3ece09b17f8396/) | ⚠️ Unaudited |
| TokenFactory | unknown | blast | n/a | [`0x3ab5ba...b04997`](./contracts/blast-81457/0x3ab5ba717cb20def2ed08bc03c8a3aa716b04997/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | [`0x3cc69c...5a64d7`](./contracts/blast-81457/0x3cc69ccda8f0be8a6a52840862a17fb2615a64d7/) | ⚠️ Unaudited |
| VeBlade | unknown | blast | n/a | [`0x1f12e6...cfe07c`](./contracts/blast-81457/0x1f12e68869ff3432aac30217f0a129a240cfe07c/) | ⚠️ Unaudited |
| VelocoreLens | unknown | blast | n/a | [`0x11879d...8a2ec7`](./contracts/blast-81457/0x11879da73f1edbe0f93d9cbaf1811c01d78a2ec7/) | ⚠️ Unaudited |
| Voter | unknown | blast | n/a | [`0x57bda1...4d54f9`](./contracts/blast-81457/0x57bda1e8d77e681a2be548c4ed5134283d4d54f9/) | ⚠️ Unaudited |
| WETHConverter | unknown | blast | n/a | [`0x5cf055...06d2ff`](./contracts/blast-81457/0x5cf0552a0177ff00cb1e72b2390b2fd49606d2ff/) | ⚠️ Unaudited |
| XYKPool | unknown | blast | n/a | [`0xf4c920...0f6ec3`](./contracts/blast-81457/0xf4c92048f10b261e89f70c6dc4e4e9bbac0f6ec3/) | ⚠️ Unaudited |
| XYKPoolFactory | unknown | blast | n/a | [`0x40f1da...fac083`](./contracts/blast-81457/0x40f1dabface8ff25b3fe96e18ab426076dfac083/) | ⚠️ Unaudited |

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
| [Bailsec - Algebra Integral - Update Audit (differential) Final Report Github (+Resolution).pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Algebra%20Integral%20-%20Update%20Audit%20(differential)%20Final%20Report%20Github%20(%2BResolution).pdf) | unknown | Audit | n/a | unknown | Inherited from Henjin DEX — forked code, scoped to AlgebraPoolDeployer, BasePluginV1Factory | inherited | 2 | n/a |
| [Bailsec - Algebra Core Update Audit (differential) - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Algebra%20Core%20Update%20Audit%20(differential)%20-%20Final%20Report.pdf) | BailSec | Audit | n/a | unknown | Inherited from Henjin DEX — forked code, scoped to AlgebraPoolDeployer, BasePluginV1Factory | inherited | 2 | n/a |
| [- [Audits]()](https://bladeswap.gitbook.io/bladeswap/resources/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x8be972...1ed3c1`](./contracts/blast-81457/0x8be972bbaaf57f43bff5901a788df38b401ed3c1/) | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x12aaba...6e0fb1`](./contracts/blast-81457/0x12aaba5a8ec297ade0e3d2c97ccc22a4156e0fb1/) | AlgebraBladeIncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x089124...89fe71`](./contracts/blast-81457/0x089124f146509359af0eb52f6cc7f06a2389fe71/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6b75bb...9bf022`](./contracts/blast-81457/0x6b75bb64a41b38d57c39381d0c285daaa89bf022/) | AlgebraConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x23d3a3...af47f3`](./contracts/blast-81457/0x23d3a34c1723a83ece3db05405be0a9f78af47f3/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1757f1...d97a1e`](./contracts/blast-81457/0x1757f1c224fc4cd99a5cb9d5db8f77122ad97a1e/) | AlgebraFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1ab39a...739b4e`](./contracts/blast-81457/0x1ab39a79652929831e5333dc0edacb422d739b4e/) | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x013802...ceb8fd`](./contracts/blast-81457/0x013802305a25a286f2dc95950b6254f4c3ceb8fd/) | AlgebraVaultFactoryStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3a4394...322cbf`](./contracts/blast-81457/0x3a439433dcb1cd6869dc23d3bedceff797322cbf/) | Blade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x194fa3...b3e943`](./contracts/blast-81457/0x194fa3066d3a44c5b74394298a317839c7b3e943/) | Box | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x758106...05c333`](./contracts/blast-81457/0x75810655c507214da899b5ed46ef337b1505c333/) | Cherry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x7fef67...1c083b`](./contracts/blast-81457/0x7fef67b108fc05e83a9bb8eb9f665791bf1c083b/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8d2eb2...9bc168`](./contracts/blast-81457/0x8d2eb277a50c5aeef2c04ef4819055639f9bc168/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8e02ad...2e4b5a`](./contracts/blast-81457/0x8e02ada26ecf813202735d0883977c098d2e4b5a/) | InspectorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xce54ab...5e376f`](./contracts/blast-81457/0xce54ab6c79c259bbdb8f4babea97f05f225e376f/) | Lens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5045c4...6946d9`](./contracts/blast-81457/0x5045c448a06498c29694b7348ec5a5010b6946d9/) | LinearBribeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0a3c4c...b971da`](./contracts/blast-81457/0x0a3c4c899df38da088c93aea52cd8ce207b971da/) | MarketMakerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x757105...8dbf08`](./contracts/blast-81457/0x7571058f0423d9bd24b798ecd4135c47f78dbf08/) | NFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2641a0...97377c`](./contracts/blast-81457/0x2641a05b44d5530fa44b1737415818174097377c/) | NFTHolderFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4e3219...a0094d`](./contracts/blast-81457/0x4e3219980d3a4ed73c286cd6d828c6e54fa0094d/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1bc5f0...2b4222`](./contracts/blast-81457/0x1bc5f075837e27fd1c02ed3742842dda5a2b4222/) | OverflowICO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x06ef68...e9a41f`](./contracts/blast-81457/0x06ef68722da95ff858d1fbe6ac99be3e00e9a41f/) | PlainOverflowICO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x96d1e7...2a6522`](./contracts/blast-81457/0x96d1e789cb0992d15335a99af7e3531c6d2a6522/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4b1632...34ed00`](./contracts/blast-81457/0x4b1632b19a9d41cada6b78bced3205838534ed00/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6c48d1...6df14b`](./contracts/blast-81457/0x6c48d1d3ced5cd8d37e6626bb1cef02c696df14b/) | SalaryPayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x06b143...c9d9cb`](./contracts/blast-81457/0x06b1431b2cfc81fd1e428d6a4916fec395c9d9cb/) | SimpleAuthorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5f0af3...3a77f2`](./contracts/blast-81457/0x5f0af33207aa4f62d678cdead8d2dd4e8e3a77f2/) | StableSwapPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x94052f...298620`](./contracts/blast-81457/0x94052fd2e9d6073eec85e9bede37cc71fc298620/) | SwapAuxillaryFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x10f6b1...95382c`](./contracts/blast-81457/0x10f6b147d51f7578f760065df7f174c3bc95382c/) | SwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1e4f59...1727dd`](./contracts/blast-81457/0x1e4f59a9bafd7c96dfce8c73a6a900b61d1727dd/) | SwapHelperFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0f8020...05cb7b`](./contracts/blast-81457/0x0f8020ff5c2290b57db481f0c7db561c3e05cb7b/) | SwapHelperFacet2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x422f44...7db286`](./contracts/blast-81457/0x422f442e02df680336563f26a04e3754247db286/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x17fbdc...d2f3f0`](./contracts/blast-81457/0x17fbdc4b95cb227e9700623f5cc381b0a9d2f3f0/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3ab5ba...b04997`](./contracts/blast-81457/0x3ab5ba717cb20def2ed08bc03c8a3aa716b04997/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1f12e6...cfe07c`](./contracts/blast-81457/0x1f12e68869ff3432aac30217f0a129a240cfe07c/) | VeBlade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x11879d...8a2ec7`](./contracts/blast-81457/0x11879da73f1edbe0f93d9cbaf1811c01d78a2ec7/) | VelocoreLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x57bda1...4d54f9`](./contracts/blast-81457/0x57bda1e8d77e681a2be548c4ed5134283d4d54f9/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5cf055...06d2ff`](./contracts/blast-81457/0x5cf0552a0177ff00cb1e72b2390b2fd49606d2ff/) | WETHConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xf4c920...0f6ec3`](./contracts/blast-81457/0xf4c92048f10b261e89f70c6dc4e4e9bbac0f6ec3/) | XYKPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x40f1da...fac083`](./contracts/blast-81457/0x40f1dabface8ff25b3fe96e18ab426076dfac083/) | XYKPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=4

Zero-match audit list:

- [19575] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
