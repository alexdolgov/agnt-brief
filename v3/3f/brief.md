# Agentic Audit Brief: 3F

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 3F (`3f`)
- Website: [https://www.3f.xyz/](https://www.3f.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 377 unique implementations (379 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,130,971.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for 3F. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum, sepolia. Structural roles: 5 core, 1 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3), erc1967proxy (1), erc20 (1)
- Frameworks: solady (3), openzeppelin (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 58 contracts are derived from known codebases. 58 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04e769e7327c445ed8414eba8823caa77b1a514e`, chain 1)
- UnnamedContract (`0x06e8ef80bbb3f70596e9985dcd7adc10f400b7a5`, chain 1)
- UnnamedContract (`0x15ad372aa8b288ffab36f3e260f8f41f03b23a62`, chain 1)
- UnnamedContract (`0x18c0450d17517f0c8e9170cb8cd9db373b9551e2`, chain 1)
- UnnamedContract (`0x20ed12d66d1171e80847cfabe306c44cfd54436f`, chain 1)
- UnnamedContract (`0x23deb2e216a5c63a0a34216e8713e4024785e451`, chain 1)
- UnnamedContract (`0x2e3ad0ee08d7f1ff01560292dbb330d25b657fae`, chain 1)
- UnnamedContract (`0x3a11fd0ba4f3ce9aa38a279415ed1cfa3259fd6e`, chain 1)
- UnnamedContract (`0x3db868070ac94a6dab6468a1decf6cbc425e0cfc`, chain 1)
- UnnamedContract (`0x40fc031711b10d9515edbc98df6ad416424a7a3b`, chain 1)
- UnnamedContract (`0x433d5b175148da32ffe1e1a37a939e1b7e79be4d`, chain 1)
- UnnamedContract (`0x4614f7a56a3eb83b2ff9fa4b4b9575b28fb68644`, chain 1)
- UnnamedContract (`0x476681b494a8729895c895e94e7c343952296a2a`, chain 1)
- UnnamedContract (`0x503cd4470bbc9f71a0e7fd6b994a7052ff0236af`, chain 1)
- UnnamedContract (`0x52ea2c12734b5bb61e1edf52bb0f01d9206493fc`, chain 1)
- UnnamedContract (`0x5a4ba8c54d937b25942a6c771925cffc4f274e6f`, chain 1)
- UnnamedContract (`0x5b5dab7cd3826dde65c4eecab6ab3c77462b7c98`, chain 1)
- UnnamedContract (`0x64debb48b1661208f779d1280a76ee74e4a0f338`, chain 1)
- UnnamedContract (`0x677fcc1efecf4cb6c95dc94d90788db086366ad3`, chain 1)
- UnnamedContract (`0x6915ec1955238fe601b27a5f3a2f51acf97b4a06`, chain 1)
- UnnamedContract (`0x69162d7764cff4a5d67c7245385987060a56ea86`, chain 1)
- UnnamedContract (`0x7495a9331b45908e26be32d84114f8309520da93`, chain 1)
- UnnamedContract (`0x7c3467c50061e46acb15813e21c20bee9fc2cd7d`, chain 1)
- UnnamedContract (`0x7e5436dc9f0e340df95c824b64bdd442966a0247`, chain 1)
- UnnamedContract (`0x8460f0c057870848c8425436906351132d396c89`, chain 1)
- UnnamedContract (`0x84a32e5128c654b1bfc017caab14062060894747`, chain 1)
- UnnamedContract (`0x86f03bf6a073df7c0d680bd96adae3d9a0363566`, chain 1)
- UnnamedContract (`0x88c24cef412c466f336c41f1983943496203f2f0`, chain 1)
- UnnamedContract (`0x8b4b3c7b288375dcd68c112209e8acb9fb2b5b30`, chain 1)
- UnnamedContract (`0x97092577b394bbdc7404a62eb8a6c3e735e98cfe`, chain 1)
- UnnamedContract (`0x9d565f2475fab9257b7d452a25c0a61b4ece1bc6`, chain 1)
- UnnamedContract (`0xa0a3f589510af4515631ffefa108b51989f5a821`, chain 1)
- UnnamedContract (`0xa202dcca28edb9f76d3e0bf8e65f64ef9faf6103`, chain 1)
- UnnamedContract (`0xa8b76a025675e218623e6e036ca5c34085f4a489`, chain 1)
- UnnamedContract (`0xb73465ab073422a2899b2d93d33c88df74d8e853`, chain 1)
- UnnamedContract (`0xbd01610302814e3f5c7d50215ce19810351113ec`, chain 1)
- UnnamedContract (`0xbf05cc19cc9dfc1ff508a08b0126a252526eb03e`, chain 1)
- UnnamedContract (`0xbf1d0c5c66416548040e87651b383a2827d4275f`, chain 1)
- UnnamedContract (`0xbf309b724cc35078132882bfbd478d255349be60`, chain 1)
- UnnamedContract (`0xc31c2be7b93a877c856ee097571c29f560b51926`, chain 1)
- UnnamedContract (`0xc588f2622928024ce09d1c55baa6b5c313153219`, chain 1)
- UnnamedContract (`0xc728a3813311084e725dea641df1e1e9074794ca`, chain 1)
- UnnamedContract (`0xcab791828834db675f6db1ad3e04f7ca8fca60a4`, chain 1)
- UnnamedContract (`0xd2723473d9b67272408ffbf3dc0cc8e9b3f15a88`, chain 1)
- UnnamedContract (`0xd8f2ad12ac2034576253c84c56da87cf0592f49d`, chain 1)
- UnnamedContract (`0xdab29f4f099ec638db47c7e2c876e32e5db46ef9`, chain 1)
- UnnamedContract (`0xdaecbbfa78221d599f71564ce5670bcada2b2b65`, chain 1)
- UnnamedContract (`0xdd62e50ebe96e2fead51cddac149aa2c5ec94240`, chain 1)
- UnnamedContract (`0xe8642bc84c6665839bdba633a6355b7642bde516`, chain 1)
- UnnamedContract (`0xeb10b36b1f4cb84a2fd96c867e45c47f2270c099`, chain 1)
- UnnamedContract (`0xf458ad24b1de7c653e8471efb0b87710b316b7d9`, chain 1)
- UnnamedContract (`0xf51bb72a2bc96d4481e057a2fd09e1b19e08cada`, chain 1)
- UnnamedContract (`0xf844fab8e5c8e010a8338d524acdf05c49564832`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- IdleCDOTranche (`0xc26a6fa2c37b38e549a4a1807543801db684f99c`, chain 1)
- MorphoBorrowPosition (`0x0382f1f72e5e4b5126e1eeec6474e45f002a3440`, chain 1)
- ParetoFund (`0x0ce1fdd75ab75b6d2788796021af5b0942d35e59`, chain 1)
- USCCFund (`0x0e828a993ac8b350b749404ce2966f396594a733`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (5 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 58/108 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 278 discovered implementations shown in the inventory but excluded from coverage (14 third-party/infra; 28 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Confirmed-live implementations: 58 of 377 unique; 319 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/177
- Verified + Unaudited implementations: 174
- Verified by bytecode match: 0
- Unverified implementations: 200
- Unique implementations: 377
- Raw deployments: 379
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 75.0% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 3 | 1.7% | 2026-04 |
| Spearbit | Tier 1 | 2 | 1.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MorphoBorrowPosition | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225187 | `0x0382f1f72e5e4b5126e1eeec6474e45f002a3440` | ✅ Audited |
| ParetoFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225190 | `0x0ce1fdd75ab75b6d2788796021af5b0942d35e59` | ✅ Audited |
| USCCFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225191 | `0x0e828a993ac8b350b749404ce2966f396594a733` | ✅ Audited |

### ⚠️ Verified + Unaudited (174)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0086e1e119ecc95be344c3efca7b39f15a01b423` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04397a4f83256e7aed344d974b70d8a120c67ece` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00cac58ea1bdf7893d68284f55751a49ae73d6d4` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-225217 | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08db226d63ce724a6091ba82d28dfc76ceca23d8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x28fac5334c9f7262b3a3fe707e250e01053e07b5` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6818254e0a141ca3d85a5f44989f18e820e33ccb` | ⚠️ Unaudited |
| AllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x42d75c8fdbbf046df0fe1ff388da16ff99de8149` | ⚠️ Unaudited |
| AsyncVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4880799ee5200fc58da299e965df644fbf46780b` | ⚠️ Unaudited |
| CentrifugeFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c49406f797a2cc24a3b419be25bfe2519ab5dec` | ⚠️ Unaudited |
| CentrifugeFundFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e07ba07a846d9fa1ea2f2a74579f2f1c2f3386b` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb984bbd8c3382f1ddc8bd605383830160f3` | ⚠️ Unaudited |
| ChronicleVAO_Centrifuge_JAAA_Consumer_1 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x02cf8c9fba24d79886dac40cb620f0930c6e8ec0` | ⚠️ Unaudited |
| CommitDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3b2a7e46ff1c5003ea1bc0d125a226989f471fd` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba` | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03563deef50b957f69232de055ea1a8aa6d854d9` | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747e819b878956fb6e5eb936a6415a5d037ff388` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eeb875dd64f6313ff315679791ae1a27c19a5df` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014f606c37cfd6fc42ec11d10086df500125e0a5` | ⚠️ Unaudited |
| EarlyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc` | ⚠️ Unaudited |
| ERC1967Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f862fa0612a8709f6dec4a7b39af015cd4e82e` | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c4a2b14f0acd936226a598be6bfed190e098d1` | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf93471a82241c2be469d83d960932721b098ffb` | ⚠️ Unaudited |
| Facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e013ca8ff612a58f53c822904cdd0ec538a4a4f` | ⚠️ Unaudited |
| FalconXAAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f6aed34fd936355b5358fee4de847dcf649` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-225294 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adfbf10e9833ee6dd57b3569c5755f8139a993d` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc5f88bb46e364e36294eec3fea833c362e8c71` | ⚠️ Unaudited |
| GovernableFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107a369bc066c77ff061c7d2420618a6ce31b925` | ⚠️ Unaudited |
| GovernorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02faf7cfee786111eae6747a0c344b48c1ed5e5` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2256b25cfc8e35c3135664fd03e77595042fe31b` | ⚠️ Unaudited |
| Idle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875773784af8135ea0ef43b5a374aad105c5d39e` | ⚠️ Unaudited |
| IdleAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3` | ⚠️ Unaudited |
| IdleAaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5a5d7832e9084fd88885823afa8cd99250a70c` | ⚠️ Unaudited |
| IdleBatchedMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea9ae797972ad9fc52c55105d184d8b059bb716` | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17979eb3866efdf5aa295f0d41a82c6fd5ceb5e8` | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a` | ⚠️ Unaudited |
| IdleCDOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9916bb9498f637e2fa86c2028e26275dc9a631` | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27` | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56050f117d675041da6a4b501f0cb75d455759a1` | ⚠️ Unaudited |
| IdleCDORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84fdee80f18957a041354e99c7eb407467d94d8e` | ⚠️ Unaudited |
| IdleCDOTranche | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225230 | `0xc26a6fa2c37b38e549a4a1807543801db684f99c` | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b` | ⚠️ Unaudited |
| IdleCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd` | ⚠️ Unaudited |
| IdleCompoundETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca` | ⚠️ Unaudited |
| IdleCompoundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c39daf173646c4ce9e6a678425ed965c98ccc66` | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1745c027ab3082c3b1019db69af295f095500663` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c89df6c8b1ab81ef90855120fafb93d7fca3254` | ⚠️ Unaudited |
| IdleDSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587fe6430a1148df4868e9e71357a179110c608a` | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f650177f95ef142aa2a26da407ad014cf5784` | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3886557ed1698dbd496a4a0f2e00df8918ea45e0` | ⚠️ Unaudited |
| IdleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4e705315aca451db40bf7c067077c768b3ffd0` | ⚠️ Unaudited |
| IdleFulcrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727d9c331e9481167dc61a9289c948da25be825e` | ⚠️ Unaudited |
| IdleFulcrumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1` | ⚠️ Unaudited |
| IdleMcdBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab2a7ed1a0c58dea84de880b4f1710229137211` | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b8c3ee1bafb4af5826d41137cd5caf878083619` | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4916ee4a761e5cff5b4a3183f109f3e141a12569` | ⚠️ Unaudited |
| IdlePriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaefb1325a2c1756bc3fcc516d6c2cf947d225358` | ⚠️ Unaudited |
| IdlePYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3af1317450d291c328525a8eb183d5cca45553d` | ⚠️ Unaudited |
| IdlePYTClear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa575b3a6d88e9c1b5196cb7e2a14962a5c533559` | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff31c69a983bac080f23f21be965650758d19d18` | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa86028323ba310fe4488f74085de99ed0264d8` | ⚠️ Unaudited |
| IdleRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781616fb046a4e39c239e39bfeff1a07d4b753f4` | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec470753b56ced3784ce29db7c297f0c1b75fc87` | ⚠️ Unaudited |
| IdleRebalancerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fcd8adac59adc2eb94355eb2f43f869bbc9582` | ⚠️ Unaudited |
| IdleRebalancerV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5a50d4125882083aaefdd370848771286a84a` | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506` | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1` | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051ba97b84a921f4134376af2c7e3a38229b0933` | ⚠️ Unaudited |
| IdleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cecc30087f4b3e894dad8398307faa2f0ac2b9` | ⚠️ Unaudited |
| IdleTokenFungible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d41f858d803af86e5192a77a798ad7d97e906ca` | ⚠️ Unaudited |
| IdleTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6` | ⚠️ Unaudited |
| IdleTokenV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fec85c0eaaace2b24926eabbf8373b26240931a` | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1` | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42740698959761baf1b06baa51efbd88cb1d862b` | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1` | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70728f08e97303d757be4cd97a7d27b65dd41e6d` | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765` | ⚠️ Unaudited |
| IdleViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2adf7ccf0241b60747d194b3ea163e28105dadec` | ⚠️ Unaudited |
| IntentDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbeeaa5e6a7627d6a2b52fae481c1f32d4b56e55` | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4d23403c31ba26a4b84af09364d503ad2bcc68` | ⚠️ Unaudited |
| LockedIDLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69369507aa7a44156cc297448ab57e3c15d26485` | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dd27112bdd615c3a2d649fe22d8ee27e448152` | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603cb545b98aca3691be869871b34ae72ccfddca` | ⚠️ Unaudited |
| Morpho | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db5a6bd77572748e541a0cf42f787f5fe03049e` | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac` | ⚠️ Unaudited |
| MorphoBorrowPositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b67d24cc44d9b98edb20a7901bcd92852a2352d` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e4eb0647fd1f9029499d41153a7cccb1ab5d886` | ⚠️ Unaudited |
| MorphoFlashLoanRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8426eede1788b6f373cbc77faf82344aabee7ed4` | ⚠️ Unaudited |
| MorphoFlashLoanRequestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2729c9273acb2cb4503ab3d0d8e584e7f915007` | ⚠️ Unaudited |
| MorphoRebalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882ffc4d28a52cbd6940dfdb03a93ffccbe6e096` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd975bda5d3354e9c09bdadd792a52a4f83b308cd` | ⚠️ Unaudited |
| ParetoDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b70fca01ab3745e24303b56f72296614768c337` | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ace8d682987c2219fe8cd314b858c326a4c3fd` | ⚠️ Unaudited |
| ParetoFundFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9dd141d26077ee38c21e25687fd80edc7bc039a` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0472b7a5b3f051e61b7844d137143a6b1779fa72` | ⚠️ Unaudited |
| PositionManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0667429d1717b3e5fe783a6c472d6d901fe5fa` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972a64d108e250df98dbeac8170678501f5ef181` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5` | ⚠️ Unaudited |
| PriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886b102953ab3eaf719df7b80b03cd5203c201f1` | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d0799a2f740120dacbfec33c5374b9086d069b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0138a84f821809e2d01b16d053f4b4a5b88b725e` | ⚠️ Unaudited |
| Request | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a9c1053872503ffd47d71b3034213164457c8ee`; ethereum `0xbb3ad41bd3e7aa9fbc11fe9f782724d2d4523b43` | ⚠️ Unaudited |
| RequestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde293185e96a42f4c7d1c6479407920b19012ca5` | ⚠️ Unaudited |
| RequestWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fcd87948cbf46605d6ded0ed56d3daccd9daf9e` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031f71b5369c251a6544c41ce059e6b3d61e42c6` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ba139337a3618186f3aa9f71ed8aa943c3dcae` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b5b65c6464651403955ac6d71f9c0204169d3` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a07723bb06bf9307e4e1998834832728e6cdb49` | ⚠️ Unaudited |
| SuperstateRestrictedWrappedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cbf36b98676567577f59531ff3f9f7151fe5e10` | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14d60e7fdc0d71d8611742720e4c50e7a974020c` | ⚠️ Unaudited |
| SyncDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd893b617b212d64e601eb143f7700ba35485c9a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6dabbc2b275114a2366555d6c481ef08fdc2556` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0f93d040de44e78f251b03c43be9cf317dcf64` | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da050cf37747fd665adacdc0ce482f62442fb94` | ⚠️ Unaudited |
| TrancheWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf96f4b91c6d424fb34aa9a33855b5c8ed1fe66d` | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a` | ⚠️ Unaudited |
| TransferGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53cddf929e27003e7c5c42d1cb0c8b152af24ce0` | ⚠️ Unaudited |
| TransferGuardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b68f4f8454493aad1611d48d8b8557068dad2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00d39058943b4a6f01cb3386a7f44b84ab482c8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0186e34de71987303b4ed4a027ed939a1178a73b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0198792f2849397908c092b6b57654e1a57a4cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x01b8a788d2742d8d1706fce7204fb523c51e175c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0962fb33a7e0172d0e413b0fab003bee5142e6b6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0b4f695b05902efc14344d19ed1d0b0e061c8a3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0cac674ebd77bbd899f6079932768f6d59da089a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x16f6be72882b24527f94c7bccabf77b62608083b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1f5a97fb665e295303d2f7215ba2160cc5313c8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25e7337037817dd9bddd0334ca1591f370518893` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x271c616157e69a43b4977412a64183cf110edf16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x271ce5ded4ccbd28833bddf8a8093517299920f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29c794b9a70752c41d65ebccef1c1ee697387510` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x29d094110c7a89f1cb6c975df0a38cae80f24b21` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35168324dc1981addc3bc915788e200bedf77865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x35df8a95b348dd87167ed00b3421ba15d95ac1c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3687c0f8760371fc1bd1c7bc28695c388cded5a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x37de1d299c93743472343699c58ec95000870dc5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3bcba0afd36c9b350f46c570f89ab70817d122cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4473bc90118b18be890af42d793b5252c4dc382d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x62b17c9083db5941197e83bd385985b8878b58fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728da7cb8272284238bd3e47909823d63a58d` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x32060337ffe29efa355f9add5f832ad6a638a696`; ethereum `0xf53058899bc9c8aea01f272872491da4a41020a3` | ⚠️ Unaudited |
| USCC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41feb4943df07f6793c059f98f28ed0e15f6852b` | ⚠️ Unaudited |
| USCCFundFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593e35ba2659e651639cd7107246e35b8d03717f` | ⚠️ Unaudited |
| USCCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce236c888fa6d8dba00e7d66cfd9bc9cadea2e1` | ⚠️ Unaudited |
| USTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986a1475f3c7786973e1b83cd6240521c51a1af` | ⚠️ Unaudited |
| USTBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee7037db155b6fa18c9727169d39f63a8794da` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0238247e71ad0ab272203af13baea72e99ee7c3c` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f119504455762c9bbbce4ac9ee7fde457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec245bb779883786b44ab3aaad5313ff6582` | ⚠️ Unaudited |
| VesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf875f2c6e4cc1688dfe4ecf79583193b6089972` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3310b0b57b86d376040b755f94a925f39c4320` | ⚠️ Unaudited |
| WrappedAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dad4fcd26e0902661cbd80f03ddb5d5908df340` | ⚠️ Unaudited |
| yxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d81b042bb9939b4d32cdf7861774c442a2685ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225188 | `0x04e769e7327c445ed8414eba8823caa77b1a514e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0681989eebeb6b9517debeec2b46c5402e09b1a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225189 | `0x06e8ef80bbb3f70596e9985dcd7adc10f400b7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08342012f325fcae63a75161e174e5f02d93d123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b40707577d73c50a6247d3669035ac5175589d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4db3e3cba95e6f1a6710b512de22f7f52442c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f85a02e464fc6b34ebc0782e50c5b507d8143d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x110b1a4913ae288384548d7e5593321b46299746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x157be90e4e7d74328f00c2c74ddb17d6d3d2b379` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225192 | `0x15ad372aa8b288ffab36f3e260f8f41f03b23a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d4f80e843ddf4079b250de2ac9113840f558f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17326885c4f0b267d6379a5a83892e847fe73f3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225193 | `0x18c0450d17517f0c8e9170cb8cd9db373b9551e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6c8bb1c14edf4f849911e54f31dd1f1e9852d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce594059783a5e922a70abf7a44814624eae682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d03be22368d81abe96761fd2acc7fd3415c5497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2096569f04ae0baf9b8ddde7d0168e3da20b1cd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225194 | `0x20ed12d66d1171e80847cfabe306c44cfd54436f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x23a08f352992730d8a8b8e95655c7fea97b39459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a685a5ece0e1cc5e1641d4da14b6b38c19733e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b107e7c1d5f0ee13e2253198122a7192d5d87a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225195 | `0x23deb2e216a5c63a0a34216e8713e4024785e451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2776cdb4453ca35c730496a97fe6ddb40859752a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c4c2e9f38a3c8eb776996297141fb5e31ce684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaf65adb5b7a7461fadcab6eb6d3c563e4de8a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c5c1ddb30fddaa242829dd04f17cbd8dc166f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225196 | `0x2e3ad0ee08d7f1ff01560292dbb330d25b657fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e44a8a049c4c937c79d3bd3f9798ac940b54655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321d1db5b8cbbe362851308c11d235d0854b862d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38abbadd2803d0636eb4988b71a3b0b2f63879d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394546470ee55bede9704a1b4307b8e4e720925d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a4103e45b8f6c519b86f3264b381ef1f597edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225197 | `0x3a11fd0ba4f3ce9aa38a279415ed1cfa3259fd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1367c028814a0369062c0d65367d75cc4848b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225198 | `0x3db868070ac94a6dab6468a1decf6cbc425e0cfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225199 | `0x40fc031711b10d9515edbc98df6ad416424a7a3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225200 | `0x433d5b175148da32ffe1e1a37a939e1b7e79be4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4540f04fc12af707d9c49ec92bc6531d93944a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c5a2031cecd025c62681dd24b1f5c43a3126d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225201 | `0x4614f7a56a3eb83b2ff9fa4b4b9575b28fb68644` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225202 | `0x476681b494a8729895c895e94e7c343952296a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ca3678e200b590003b502f8d721d0fca076834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a95407190db7b0aceb95ad16fac754810e87f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca6bc6cce86e14f13574373f02406f1330ccade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cdcdf16815d9b85860ece39189da5ee46dfdf8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e85f953f139b9255af521b2412d99b54b7dba4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225203 | `0x503cd4470bbc9f71a0e7fd6b994a7052ff0236af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x516002c48805031ea4a1e8ee5a1669d541c6333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x516b2299e872e84d0fb4fac5047a78ca7f23333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b7665535d849da0499ecd017d41c4e44894e4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225204 | `0x52ea2c12734b5bb61e1edf52bb0f01d9206493fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225205 | `0x5a4ba8c54d937b25942a6c771925cffc4f274e6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225206 | `0x5b5dab7cd3826dde65c4eecab6ab3c77462b7c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f23fe9228e7ff28b1625f173635507ded319c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x615d2c28dc55b29909bf9edfadb29541ddb31683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629ed336f6600552bbe72b07148cac8341336d95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225207 | `0x64debb48b1661208f779d1280a76ee74e4a0f338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67547e1f4956cd25c975d65874625c8d0c5b5141` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225208 | `0x677fcc1efecf4cb6c95dc94d90788db086366ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68066d2891254f1f3285cac0bb16b65b28ee3cab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225209 | `0x6915ec1955238fe601b27a5f3a2f51acf97b4a06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225210 | `0x69162d7764cff4a5d67c7245385987060a56ea86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f1a53dbf76022064cb83d7670f7b96c2020541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a17251c72de03243e6ce4921aa105d3f142333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c72f1e894d9a1fa9dea85bc2c272748da9f2cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efa0dd25ef0fa9ede4522798f190d94e5ea6626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71f94e8918e1b3e81388535e2898da07b890421e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e71853122312c57b53474e061d37259bb8b9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x745742ab90deb0c6f9cf7fe78720d1112d86686a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225211 | `0x7495a9331b45908e26be32d84114f8309520da93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758754f323d19ffd06cdc3ca758a6a0c377d333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a39def0e8f782755c624651590fd45ae2aed27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad8e7b43b1bca5a06ad925582b30168f2fbbc4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225212 | `0x7c3467c50061e46acb15813e21c20bee9fc2cd7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225213 | `0x7e5436dc9f0e340df95c824b64bdd442966a0247` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x809649b3af57e0ae8c53342e628f367eaa464622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8321cc2dd0423258508e2ece27f346bc2881f8d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225214 | `0x8460f0c057870848c8425436906351132d396c89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225215 | `0x84a32e5128c654b1bfc017caab14062060894747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b495e4cb00ab18ad94bfd7920479cc79e8ebfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225216 | `0x86f03bf6a073df7c0d680bd96adae3d9a0363566` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225218 | `0x88c24cef412c466f336c41f1983943496203f2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a269868c3ed6c9e49eccefc487c9c43b7fbc073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2c51d0e538647a3b360c55018c85591df62601` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225219 | `0x8b4b3c7b288375dcd68c112209e8acb9fb2b5b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b857d72342657237c82453e477fa8f1f4ea7c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c4fd42bebffbed28f790af29d801a336ebf7958` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c5ddcd3f601c91d1bf51c8ec26066010acaba7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0b1b6c11e28eea4f427c35143f5a44e72cd9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901237fd05f794e63e174634a1199f1f4110240c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949a1d8bb6d79af138ccf9836af9f846180a7f9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225220 | `0x97092577b394bbdc7404a62eb8a6c3e735e98cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990ce15a60effa3ec30427f6279096b228ac42fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cce1ec365a9822a257c09cdef9d0642dff36108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225221 | `0x9d565f2475fab9257b7d452a25c0a61b4ece1bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225222 | `0xa0a3f589510af4515631ffefa108b51989f5a821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225223 | `0xa202dcca28edb9f76d3e0bf8e65f64ef9faf6103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa262902c0f759886b7155db2de6e5a2cd4a4477f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa34950a975cd7a8ae12fb9fe0aafc0b81819dd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3693ee525992067f140aa07ccb286cf259b2c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225224 | `0xa8b76a025675e218623e6e036ca5c34085f4a489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c51db20553dcfc667fee16cb4e9f1135f0333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac110194fca4ebc73139d18766e98f055a4018b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf52dcea93dd95233aad61b9152629ec1e5816f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf895c514d2448150b67f3c0b828250bd947ce7e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xaffd8f5578e8590665de561bde9e7badb99300d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb221115149deb7dd4356eabd004c9a8e6a28a078` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225225 | `0xb73465ab073422a2899b2d93d33c88df74d8e853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93482fc51980fdbe8b7fd2af7037bb43960d0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb97b0d8e9ac44076e2a30a41b82caf580266181c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaced1dbc080a3bbd7f4a693bbe7db17079428ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf52fffe88182f1e40d5f8aa74aaf87a30066c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225226 | `0xbd01610302814e3f5c7d50215ce19810351113ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225227 | `0xbf05cc19cc9dfc1ff508a08b0126a252526eb03e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225228 | `0xbf1d0c5c66416548040e87651b383a2827d4275f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225229 | `0xbf309b724cc35078132882bfbd478d255349be60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225231 | `0xc31c2be7b93a877c856ee097571c29f560b51926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc406dc8225776d0fef7910c4983758ba1a4cd4d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225232 | `0xc588f2622928024ce09d1c55baa6b5c313153219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59c1aa780b604199f075b08b56d2af4f903497d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7087abd0203ed5d220cb56182bd19cfedc0333f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225233 | `0xc728a3813311084e725dea641df1e1e9074794ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225234 | `0xcab791828834db675f6db1ad3e04f7ca8fca60a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcedb69d781569eb3a46deca2617ccbd6c7b5d343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfca9be2a5028ca164042ac899e9c371da8fc5d1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd011ee229e7459ba1ddd22631ef7bf528d424a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18292bb5e96da1dbc6a6b6fe0f7d7b5cc8fb0cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225235 | `0xd2723473d9b67272408ffbf3dc0cc8e9b3f15a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd53758a04f1d8fdb13722d9ccb26f2e1c04b462a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd70da18fadc174b899db0bb8ed0e5118996725dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c64aa32e0f58127d6f12a771ffa87b40ec8074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e6e59c4e27259748805e61d288c342cfde362b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225236 | `0xd8f2ad12ac2034576253c84c56da87cf0592f49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd983072f23d0682bdbe727cb18dc62952549b11a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225237 | `0xdab29f4f099ec638db47c7e2c876e32e5db46ef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225238 | `0xdaecbbfa78221d599f71564ce5670bcada2b2b65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225239 | `0xdd62e50ebe96e2fead51cddac149aa2c5ec94240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2296b7e66b1f5400ea39e82eaf4e9c9f67cfc07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5cb3b93f831e794037aa0792d8877135586e3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61eca1ffbfbf351a8f8d6211487473218d7dba9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225240 | `0xe8642bc84c6665839bdba633a6355b7642bde516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9103eb99e1601aad0fa070e3cbea27f37667858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9fe68b4feface241b753d4315dd47d61fb15a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225241 | `0xeb10b36b1f4cb84a2fd96c867e45c47f2270c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee9e06e090181e7ddd7871d80a710cebc99b7079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06adb57e7b76d38a943b3e85da870067a7c9927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf084341032a8cc372df3cce64611ead4c6b2333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0fc92fbabdbdf177fe26e9c4289401ab31e355a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2fcfaf80983da98fc5cafbdfec1315f32043c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38dc697b29640201c1068400ada5bb2a8a4147f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225242 | `0xf458ad24b1de7c653e8471efb0b87710b316b7d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225243 | `0xf51bb72a2bc96d4481e057a2fd09e1b19e08cada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58eb81d14e520f2cbd11d0e47853e3359c04864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6fc1f318bc45c4cd98143db237c80d20878db9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225244 | `0xf844fab8e5c8e010a8338d524acdf05c49564832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb435cca805f24f7a01fa8bf515165465b921d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd0fd06462f3ee5a7065cdb49ebb8ec11792e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcbda99891c0a31be2b70c8c20e1f5294300333f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd47520724e7dc432b041a283ef889fa9f492e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed562562393ec44eab40a26880eea88238e99ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225245 | `0x0681989eebeb6b9517debeec2b46c5402e09b1a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225246 | `0x0f4db3e3cba95e6f1a6710b512de22f7f52442c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225247 | `0x0f85a02e464fc6b34ebc0782e50c5b507d8143d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225248 | `0x15d4f80e843ddf4079b250de2ac9113840f558f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225250 | `0x1b6c8bb1c14edf4f849911e54f31dd1f1e9852d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225251 | `0x1d03be22368d81abe96761fd2acc7fd3415c5497` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225252 | `0x23a08f352992730d8a8b8e95655c7fea97b39459` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225253 | `0x29c4c2e9f38a3c8eb776996297141fb5e31ce684` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225254 | `0x2aaf65adb5b7a7461fadcab6eb6d3c563e4de8a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225255 | `0x2c5c1ddb30fddaa242829dd04f17cbd8dc166f52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225256 | `0x2e44a8a049c4c937c79d3bd3f9798ac940b54655` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225257 | `0x38abbadd2803d0636eb4988b71a3b0b2f63879d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225258 | `0x39a4103e45b8f6c519b86f3264b381ef1f597edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225259 | `0x3b1367c028814a0369062c0d65367d75cc4848b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225260 | `0x49ca3678e200b590003b502f8d721d0fca076834` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225261 | `0x4a95407190db7b0aceb95ad16fac754810e87f02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225264 | `0x51b7665535d849da0499ecd017d41c4e44894e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225265 | `0x69f1a53dbf76022064cb83d7670f7b96c2020541` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225267 | `0x6c72f1e894d9a1fa9dea85bc2c272748da9f2cbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225269 | `0x7ad8e7b43b1bca5a06ad925582b30168f2fbbc4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225270 | `0x8321cc2dd0423258508e2ece27f346bc2881f8d8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225271 | `0x8c5ddcd3f601c91d1bf51c8ec26066010acaba7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225272 | `0x8e0b1b6c11e28eea4f427c35143f5a44e72cd9e8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225273 | `0xa34950a975cd7a8ae12fb9fe0aafc0b81819dd6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225275 | `0xbaced1dbc080a3bbd7f4a693bbe7db17079428ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225277 | `0xcedb69d781569eb3a46deca2617ccbd6c7b5d343` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-225278 | `0xd011ee229e7459ba1ddd22631ef7bf528d424a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225279 | `0xd18292bb5e96da1dbc6a6b6fe0f7d7b5cc8fb0cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225280 | `0xd53758a04f1d8fdb13722d9ccb26f2e1c04b462a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225281 | `0xd7c64aa32e0f58127d6f12a771ffa87b40ec8074` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225282 | `0xd8e6e59c4e27259748805e61d288c342cfde362b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225283 | `0xe2296b7e66b1f5400ea39e82eaf4e9c9f67cfc07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225284 | `0xe61eca1ffbfbf351a8f8d6211487473218d7dba9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225285 | `0xe9103eb99e1601aad0fa070e3cbea27f37667858` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225286 | `0xf06adb57e7b76d38a943b3e85da870067a7c9927` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225288 | `0xf0fc92fbabdbdf177fe26e9c4289401ab31e355a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225289 | `0xf38dc697b29640201c1068400ada5bb2a8a4147f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225290 | `0xf58eb81d14e520f2cbd11d0e47853e3359c04864` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225291 | `0xfbd0fd06462f3ee5a7065cdb49ebb8ec11792e18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225293 | `0xfed562562393ec44eab40a26880eea88238e99ce` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [| Cantina | Fee Review | May 27, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/Cantina_3F_Grunt_FeeReview_2026-05-27.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | medium |
| [| Cantina | Grunt | May 13, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/Cantina_3F_Grunt_Audit_2026-05.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 53 | high |
| [| ChainSecurity | Grunt | April 8, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/ChainSecurity_3F_Grunt_Audit_2026-04.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 52 | high |
| [| ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() |](https://github.com/3FLabs/grunt/blob/main/audits/ChainSecurity_3F_GruntFunds_Audit_2026-04.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19375] | Cantina | Fee Review | May 27, 2026 | [View ↗]() | — matched: No explicit scope section; contract names extracted from finding contexts. Audit date from cover page.
- [19376] | Cantina | Grunt | May 13, 2026 | [View ↗]() | — matched: Extracted all contracts from the scope section (Section 2.1) and file tree listing. Audit date from cover page: May 13, 2026.
- [19377] | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | — matched: Extracted all contracts from the scope table in section 2.1. The audit date is from the cover page: 'April 8, 2026'.
- [19378] | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | — matched: Extracted 8 contracts from scope table and version 2 additions. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | IPositionManagerAdmin | unmatched — not counted | — | Context in finding 3.1.1 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | PositionManagerBase | unmatched — not counted | — | Context in findings 3.1.1, 3.1.2, 3.1.3 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | LibStorage | unmatched — not counted | — | Context in findings 3.1.1, 3.1.4 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | PositionManagerAdmin | unmatched — not counted | — | Context in finding 3.1.1 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | LibView | unmatched — not counted | — | Context in findings 3.1.2, 3.1.3, 3.1.4 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | MorphoBorrowPosition | own contract | MorphoBorrowPosition (selected) `0x0382f1f72e5e4b5126e1eeec6474e45f002a3440` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | PositionManager | unmatched — not counted | — | Context in finding 3.1.4 | no |
| | Cantina | Fee Review | May 27, 2026 | [View ↗]() | | IPositionManager | unmatched — not counted | — | Context in finding 3.1.4 | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoBorrowPosition | own contract | MorphoBorrowPosition (selected) `0x0382f1f72e5e4b5126e1eeec6474e45f002a3440` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoBorrowPositionFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Facility | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | IntentDescriptor | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityFunds | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityIntents | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityLP | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityPositionManager | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityRequests | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilityRoles | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | FacilitySwap | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | USCCFund | own contract | USCCFund (selected) `0x0e828a993ac8b350b749404ce2966f396594a733` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | USCCFundFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | WrappedAsset | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | TransferGuard | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | TransferGuardFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Constants | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibBorrowErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoBalancesLib | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibChecks | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibCommonErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibPause | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibAddress | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibConstants | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibFacilityErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibIntent | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibStorage | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibTokenBalances | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibFundsErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Order | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibExecutor | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibManagerErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibOperations | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibView | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Lib128Fields | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibAllowance | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibMintAuth | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibRequestErrors | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | LibTokenController | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManager | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerAdmin | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerBase | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerLP | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | PositionManagerRebalancing | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | MorphoRebalancer | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Request | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | RequestFactory | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | OfferReceiver | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | ControlledToken | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | TokenController | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | ControlledVault | unmatched — not counted | — | listed in scope | no |
| | Cantina | Grunt | May 13, 2026 | [View ↗]() | | VaultController | unmatched — not counted | — | listed in scope | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | ControlledToken | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | TokenController | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | ControlledVault | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | VaultController | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | OfferReceiver | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | RequestFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Vault | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Request | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Facility | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | IntentDescriptor | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityFunds | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityIntents | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityLP | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityRequests | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityPositionManager | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilityRoles | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | FacilitySwap | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | USCCFund | own contract | USCCFund (selected) `0x0e828a993ac8b350b749404ce2966f396594a733` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | USCCFundFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | WrappedAsset | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | TransferGuard | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | TransferGuardFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | MorphoBorrowPosition | own contract | MorphoBorrowPosition (selected) `0x0382f1f72e5e4b5126e1eeec6474e45f002a3440` — deployed 2026-05-14 16:26:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | MorphoBorrowPositionFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerBase | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerAdmin | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerLP | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerRebalancing | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManager | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | PositionManagerFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | MorphoRebalancer | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | SharesMathLib | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibBorrowErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibChecks | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibCommonErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibPause | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibAddress | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibConstants | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibFacilityErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibIntent | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibStorage | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibTokenBalances | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibFundsErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Order | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibExecutor | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibManagerErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibOperations | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibView | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Lib128Fields | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibAllowance | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibMintAuth | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibRequestErrors | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | LibTokenController | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt | April 8, 2026 | [View ↗]() | | Constants | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | CentrifugeFund | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | CentrifugeFundFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | ParetoFund | own contract | ParetoFund (selected) `0x0ce1fdd75ab75b6d2788796021af5b0942d35e59` — deployed 2026-06-09 12:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | ParetoFundFactory | unmatched — not counted | — | listed in scope table | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | SyncDeposit | unmatched — not counted | — | listed in scope table (Version 2) | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | SyncWithdrawal | unmatched — not counted | — | listed in scope table (Version 2) | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | MorphoFlashLoanRequest | unmatched — not counted | — | listed in scope table (Version 2) | no |
| | ChainSecurity | Grunt Funds | April 3, 2026 | [View ↗]() | | MorphoFlashLoanRequestFactory | unmatched — not counted | — | listed in scope table (Version 2) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc26a6fa2c37b38e549a4a1807543801db684f99c` | IdleCDOTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 129 |
| upstream | 15 |
| standard_library | 33 |
| needs_review | 200 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 119 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
