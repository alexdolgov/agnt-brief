# Agentic Audit Brief: Aerodrome

## Project Overview

- Project: Aerodrome (`aerodrome`)
- Website: [https://aerodrome.finance/](https://aerodrome.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:58.062Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 67 unique implementations (67 raw deployments)
- DeFi Llama TVL: $310,170,753.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 61 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 4 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (governable, initializegovernedupgradeabilityproxy, peripheryimmutablestate). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Compound Finance** (`compound-finance`) in the CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, … subsystem.
11 audits inherited from `compound-finance`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 67 (66 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/65 (15.4%)
- Deployed-live implementations: 66 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/67
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 67
- Raw deployments: 67
- Audits discovered: 11 (0 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 15.4% (ChainSecurity, OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 10 | 14.9% | 2024-12 |
| OpenZeppelin | Tier 1 | 10 | 14.9% | 2022-06 |
| Trail of Bits | Tier 1 | 10 | 14.9% | 2020-02 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrossChainRemoteStrategy | unknown | base | n/a | [`0x5f81a5...e7a92d`](./contracts/base-8453/0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d/) | ✅ Audited |
| OETHBase | unknown | base | n/a | [`0x1c62a3...b82be9`](./contracts/base-8453/0x1c62a3c2620f2fb7ba5d50c9da2dec214cb82be9/) | ✅ Audited |
| OETHBaseVaultAdmin | unknown | base | n/a | [`0xd50f7d...70d1a7`](./contracts/base-8453/0xd50f7d13632ccadcf24fb74676981099fe70d1a7/) | ✅ Audited |
| OETHBaseVaultCore | unknown | base | n/a | [`0x4a759f...6caaab`](./contracts/base-8453/0x4a759f78b1a1995b57c9d3b40eb1cdc2b66caaab/) | ✅ Audited |
| OETHbHydrexAMOStrategy | unknown | base | n/a | [`0xc5d369...4f38e0`](./contracts/base-8453/0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0/) | ✅ Audited |
| OUSDVault | unknown | base | n/a | [`0xa96fd1...3820f9`](./contracts/base-8453/0xa96fd141e92de60394103c7f9e045662913820f9/) | ✅ Audited |
| ProtocolGovernor | unknown | base | n/a | [`0x94c012...33f410`](./contracts/base-8453/0x94c012a23a8a65a6f40608da30534a46a433f410/) | ✅ Audited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ✅ Audited |
| VotingEscrow | unknown | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ✅ Audited |
| WOETH | unknown | base | n/a | [`0x9745a0...52d478`](./contracts/base-8453/0x9745a051bd218d78eb6b5d0f53c685f6b052d478/) | ✅ Audited |

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aero | unknown | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AirdropDistributor | unknown | base | n/a | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | n/a | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | base | n/a | [`0x362dbd...655b26`](./contracts/base-8453/0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26/) | ⚠️ Unaudited |
| BasePrices | unknown | base | n/a | [`0xee7174...eff166`](./contracts/base-8453/0xee717411f6e44f9fee011835c8e6faac5deff166/) | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | base | n/a | [`0xd87243...bbf839`](./contracts/base-8453/0xd8724322f44e5c58d7a815f542036fb17dbbf839/) | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | base | n/a | [`0x80c864...acf835`](./contracts/base-8453/0x80c864704dd06c3693ed5179190786ee38acf835/) | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | base | n/a | [`0x6d04c7...f79670`](./contracts/base-8453/0x6d04c71d805c158a3e786b3feed3a6b490f79670/) | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | base | n/a | [`0x26179a...28e759`](./contracts/base-8453/0x26179ada0f7cb714c11a8190e1f517988c28e759/) | ⚠️ Unaudited |
| CLFactory | unknown | base | n/a | [`0x5e7bb1...06809a`](./contracts/base-8453/0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a/) | ⚠️ Unaudited |
| CLGauge | unknown | base | n/a | [`0x1296a1...6025b5`](./contracts/base-8453/0x1296a1b532e33f01091cf728706a94268c6025b5/) | ⚠️ Unaudited |
| CLGaugeFactory | unknown | base | n/a | [`0x3e703f...9b6fbc`](./contracts/base-8453/0x3e703fd2b6506e2abcce2c8b5633872a7d9b6fbc/) | ⚠️ Unaudited |
| CLPool | unknown | base | n/a | [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/) | ⚠️ Unaudited |
| Counter | unknown | base | n/a | [`0x430d45...d75fb8`](./contracts/base-8453/0x430d459700add442a501f4b3c70de7f9c3d75fb8/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | [`0x2dd416...1ca9d1`](./contracts/base-8453/0x2dd4162d4685657c06cd8f027cca3208311ca9d1/) | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | base | n/a | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | base | n/a | [`0xdb282a...b4c1e3`](./contracts/base-8453/0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3/) | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | base | n/a | [`0x851de5...37904b`](./contracts/base-8453/0x851de5ea424557b52d1d6debe5bda12a7d37904b/) | ⚠️ Unaudited |
| FactoryRegistry | unknown | base | n/a | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | ⚠️ Unaudited |
| Forwarder | unknown | base | n/a | [`0x15e627...a05dcc`](./contracts/base-8453/0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc/) | ⚠️ Unaudited |
| GaugeFactory | unknown | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | base | n/a | [`0x834c0d...2fda52`](./contracts/base-8453/0x834c0da026d5f933c2c18fa9f8ba7f1f792fda52/) | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | base | n/a | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ⚠️ Unaudited |
| Minter | unknown | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | base | n/a | [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/) | ⚠️ Unaudited |
| MixedRouteQuoterV2 | unknown | base | n/a | [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | base | n/a | [`0x0681d1...4ec818`](./contracts/base-8453/0x0681d141da398e567a677f0eaf13c8815c4ec818/) | ⚠️ Unaudited |
| NFTSVG | unknown | base | n/a | [`0x212665...f4dc52`](./contracts/base-8453/0x212665aaea8da0a3b71a47a53b3100ef4cf4dc52/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | base | n/a | [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | base | n/a | [`0x01b0ca...d53c55`](./contracts/base-8453/0x01b0cacb9a8004e08d075c919b5df3b59fd53c55/) | ⚠️ Unaudited |
| OETH | unknown | base | n/a | [`0x10b342...439989`](./contracts/base-8453/0x10b342e0205fc20a0934d1a0f25e270520439989/) | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | base | n/a | [`0x02f2c6...d7f8d6`](./contracts/base-8453/0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6/) | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | base | n/a | [`0xa50fd5...5ffad8`](./contracts/base-8453/0xa50fd560af7433d00d231b397512f5df375ffad8/) | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | base | n/a | [`0x0cbeac...54c22e`](./contracts/base-8453/0x0cbeacf86232fc04050cd679d860516f7254c22e/) | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | base | n/a | [`0xbc80da...97c75b`](./contracts/base-8453/0xbc80da22601eae8720ed8ab117eb88c92b97c75b/) | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | base | n/a | [`0x98a0cb...38cc93`](./contracts/base-8453/0x98a0cbef61bd2d21435f433be4cd42b56b38cc93/) | ⚠️ Unaudited |
| OETHBaseZapper | unknown | base | n/a | [`0x3b56c0...4d2bc1`](./contracts/base-8453/0x3b56c09543d3068f8488ed34e6f383c3854d2bc1/) | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | base | n/a | [`0xe6bebe...08d9c3`](./contracts/base-8453/0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3/) | ⚠️ Unaudited |
| OETHDripper | unknown | base | n/a | [`0x0030c7...e6b16a`](./contracts/base-8453/0x0030c7dc6cb7f449e9566f273342c3370ee6b16a/) | ⚠️ Unaudited |
| OETHVault | unknown | base | n/a | [`0xe9f783...92fd66`](./contracts/base-8453/0xe9f783e7d9fceb90988fdf89bbb2bc3e7092fd66/) | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | base | n/a | [`0x9d98cf...7bcf6a`](./contracts/base-8453/0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a/) | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | base | n/a | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | ⚠️ Unaudited |
| PerlinNoise | unknown | base | n/a | [`0x0b3a74...d9990e`](./contracts/base-8453/0x0b3a7479694d678fb34ef737811cb31b9dd9990e/) | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | base | n/a | [`0xf63398...9d4a37`](./contracts/base-8453/0xf633980a61e9f90a41d030676059dc201d9d4a37/) | ⚠️ Unaudited |
| PoolFactory | unknown | base | n/a | [`0x420dd3...ce40da`](./contracts/base-8453/0x420dd381b31aef6683db6b902084cb0ffece40da/) | ⚠️ Unaudited |
| QuoterV2 | unknown | base | n/a | [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| Router | unknown | base | n/a | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| SugarHelper | unknown | base | n/a | [`0x0ad09a...b6edd5`](./contracts/base-8453/0x0ad09a66af0154a84e86f761313d02d0abb6edd5/) | ⚠️ Unaudited |
| SwapRouter | unknown | base | n/a | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| Timelock | unknown | base | n/a | [`0xf817cb...61464f`](./contracts/base-8453/0xf817cb3092179083c48c014688d98b72fb61464f/) | ⚠️ Unaudited |
| Trig | unknown | base | n/a | [`0x1d75c4...1a216f`](./contracts/base-8453/0x1d75c4dda3d28b4f2ab634c439e495cf211a216f/) | ⚠️ Unaudited |
| UniversalRouter | unknown | base | n/a | [`0x6cb442...00be3e`](./contracts/base-8453/0x6cb442acf35158d5eda88fe602221b67b400be3e/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | base | n/a | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | ⚠️ Unaudited |
| WOETHBase | unknown | base | n/a | [`0x2e1826...583408`](./contracts/base-8453/0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408/) | ⚠️ Unaudited |

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
| [compound-governance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-audit](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [compound-3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [compound-2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-finance-patch-audit](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-finance-mcd-dsr-integration](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-alpha-governance-system-audit](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-tether-integration-audit](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.chainsecurity.com/security-audit/compound-iii](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-iii-audit](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |
| [www.openzeppelin.com/news/compound-comp-distribution-system-audit](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +11 more | inherited | 10 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | Aero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | AirdropDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x362dbd...655b26`](./contracts/base-8453/0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26/) | BaseBridgeHelperModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xee7174...eff166`](./contracts/base-8453/0xee717411f6e44f9fee011835c8e6faac5deff166/) | BasePrices | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd87243...bbf839`](./contracts/base-8453/0xd8724322f44e5c58d7a815f542036fb17dbbf839/) | BridgedBaseWOETHProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x80c864...acf835`](./contracts/base-8453/0x80c864704dd06c3693ed5179190786ee38acf835/) | BridgedWOETHStrategyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d04c7...f79670`](./contracts/base-8453/0x6d04c71d805c158a3e786b3feed3a6b490f79670/) | CCTPHookWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26179a...28e759`](./contracts/base-8453/0x26179ada0f7cb714c11a8190e1f517988c28e759/) | ClaimBribesSafeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5e7bb1...06809a`](./contracts/base-8453/0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a/) | CLFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1296a1...6025b5`](./contracts/base-8453/0x1296a1b532e33f01091cf728706a94268c6025b5/) | CLGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e703f...9b6fbc`](./contracts/base-8453/0x3e703fd2b6506e2abcce2c8b5633872a7d9b6fbc/) | CLGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/) | CLPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x430d45...d75fb8`](./contracts/base-8453/0x430d459700add442a501f4b3c70de7f9c3d75fb8/) | Counter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2dd416...1ca9d1`](./contracts/base-8453/0x2dd4162d4685657c06cd8f027cca3208311ca9d1/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | DelegationLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdb282a...b4c1e3`](./contracts/base-8453/0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3/) | DirectStakingBaseHandlerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x851de5...37904b`](./contracts/base-8453/0x851de5ea424557b52d1d6debe5bda12a7d37904b/) | DirectStakingHandlerL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | FactoryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15e627...a05dcc`](./contracts/base-8453/0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ManagedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/) | MixedRouteQuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0681d1...4ec818`](./contracts/base-8453/0x0681d141da398e567a677f0eaf13c8815c4ec818/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x212665...f4dc52`](./contracts/base-8453/0x212665aaea8da0a3b71a47a53b3100ef4cf4dc52/) | NFTSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01b0ca...d53c55`](./contracts/base-8453/0x01b0cacb9a8004e08d075c919b5df3b59fd53c55/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10b342...439989`](./contracts/base-8453/0x10b342e0205fc20a0934d1a0f25e270520439989/) | OETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02f2c6...d7f8d6`](./contracts/base-8453/0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6/) | OETHBaseDripperProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa50fd5...5ffad8`](./contracts/base-8453/0xa50fd560af7433d00d231b397512f5df375ffad8/) | OETHBaseHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cbeac...54c22e`](./contracts/base-8453/0x0cbeacf86232fc04050cd679d860516f7254c22e/) | OETHBaseHarvesterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbc80da...97c75b`](./contracts/base-8453/0xbc80da22601eae8720ed8ab117eb88c92b97c75b/) | OETHBaseOracleRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x98a0cb...38cc93`](./contracts/base-8453/0x98a0cbef61bd2d21435f433be4cd42b56b38cc93/) | OETHBaseVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b56c0...4d2bc1`](./contracts/base-8453/0x3b56c09543d3068f8488ed34e6f383c3854d2bc1/) | OETHBaseZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe6bebe...08d9c3`](./contracts/base-8453/0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3/) | OETHbHydrexAMOProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0030c7...e6b16a`](./contracts/base-8453/0x0030c7dc6cb7f449e9566f273342c3370ee6b16a/) | OETHDripper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe9f783...92fd66`](./contracts/base-8453/0xe9f783e7d9fceb90988fdf89bbb2bc3e7092fd66/) | OETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9d98cf...7bcf6a`](./contracts/base-8453/0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a/) | OETHVaultValueChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | PatchedManagedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b3a74...d9990e`](./contracts/base-8453/0x0b3a7479694d678fb34ef737811cb31b9dd9990e/) | PerlinNoise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf63398...9d4a37`](./contracts/base-8453/0xf633980a61e9f90a41d030676059dc201d9d4a37/) | PermissionedRebaseModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420dd3...ce40da`](./contracts/base-8453/0x420dd381b31aef6683db6b902084cb0ffece40da/) | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad09a...b6edd5`](./contracts/base-8453/0x0ad09a66af0154a84e86f761313d02d0abb6edd5/) | SugarHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf817cb...61464f`](./contracts/base-8453/0xf817cb3092179083c48c014688d98b72fb61464f/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d75c4...1a216f`](./contracts/base-8453/0x1d75c4dda3d28b4f2ab634c439e495cf211a216f/) | Trig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6cb442...00be3e`](./contracts/base-8453/0x6cb442acf35158d5eda88fe602221b67b400be3e/) | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | VotingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2e1826...583408`](./contracts/base-8453/0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408/) | WOETHBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=110

Fork inheritance lineage and inherited audits are included when available.
