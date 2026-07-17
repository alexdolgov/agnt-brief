# Agentic Audit Brief: PlutusDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PlutusDAO (`plutusdao`)
- Website: [https://plutusdao.io](https://plutusdao.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, berachain, ethereum
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 2/17 confirmed own live verified implementations (11.8%); conservative 11.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $341,938.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PlutusDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across arbitrum, berachain, ethereum. Structural roles: 18 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (18), supporting (1)
- Contract kinds: contract (19)
- Detected standards: ownable (16), erc20 (7), pausable (5), erc20permit (2), ownable2step (2), erc4626 (1)
- Frameworks: openzeppelin (19)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 67 contracts are derived from known codebases. 67 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x162b89d938d0ed977e1527fa7fa1048f0e70469e`, chain 1)
- UnnamedContract (`0x595e1cfd74b513bcafc1f212a2e437692725a39e`, chain 1)
- UnnamedContract (`0x734dced3f83b10cf00b380381ffab8ffb0606d9d`, chain 1)
- UnnamedContract (`0x9f5a72636d5475c8cbdb7dff298bbd7412b76092`, chain 1)
- UnnamedContract (`0xa7ab9a31ce5af583942b557554b636a858f58f52`, chain 1)
- UnnamedContract (`0xf3fb046dd0b62eb0ef8b811280ccda8aa252b35e`, chain 1)
- UnnamedContract (`0x021599e04fe269752ae9c97d47615cf181bed992`, chain 42161)
- UnnamedContract (`0x1ceab12ec81389f642c163d7406cfa9e72046309`, chain 42161)
- UnnamedContract (`0x23b87748b615096d1a0f48870daee203a720723d`, chain 42161)
- UnnamedContract (`0x2e9ee89099ee816eacb7301bcdb57a6375a1c6e1`, chain 42161)
- UnnamedContract (`0x369722ab25b1c89e6a56208b37a5125d53c2d936`, chain 42161)
- UnnamedContract (`0x4a15404235f4a0bc2cbcf5ba7e92763cb8335660`, chain 42161)
- UnnamedContract (`0x4bc6148306abccad5d95c0cd916249d7d08711aa`, chain 42161)
- UnnamedContract (`0x4d56d5a417269a5bfa909cc0f67dffe992272606`, chain 42161)
- UnnamedContract (`0x54e340ffefc0cdcd06186b23805b3d8710431744`, chain 42161)
- UnnamedContract (`0x58bfc95a864e18e8f3041d2fcd3418f48393fe6a`, chain 42161)
- UnnamedContract (`0x5f05c6b6370ec22916e619dfc6bd60b98ce26b64`, chain 42161)
- UnnamedContract (`0x62c10f8f003093c942a9ab8b3e0f94ba612cc982`, chain 42161)
- UnnamedContract (`0x668bb973c3e35759269dac6d5bf118ea9729110e`, chain 42161)
- UnnamedContract (`0x68d6d2545f14751baf36c417c2cc7cdf8da8a15b`, chain 42161)
- UnnamedContract (`0x6cb81093f91c9cdb08d2b190830484d8180d5544`, chain 42161)
- UnnamedContract (`0x6cc0d643c7b8709f468f58f363d73af6e4971515`, chain 42161)
- UnnamedContract (`0x73e7c78e8a85c074733920f185d1c78163b555c8`, chain 42161)
- UnnamedContract (`0x76e89ddeb88b2ebf1902f2907afc2cc1bcbcbe60`, chain 42161)
- UnnamedContract (`0x7f89c81561c1a56d983cc5682348310cc330bca7`, chain 42161)
- UnnamedContract (`0x8c1ea32448e09a59f36595abec6207c9ebd590a2`, chain 42161)
- UnnamedContract (`0x9e6b748d25ed2600aa0ce7cbb42267adcf21fd9b`, chain 42161)
- UnnamedContract (`0xa5c1c5a67ba16430547fea9d608ef81119be1876`, chain 42161)
- UnnamedContract (`0xb27f216bad95492503a2158ca51e3af45ed2662c`, chain 42161)
- UnnamedContract (`0xbbe98d590d7eb99f4a236587f2441826396053d3`, chain 42161)
- UnnamedContract (`0xbeb981021ed9c85aa51d96c0c2eda10ee4404a2e`, chain 42161)
- UnnamedContract (`0xc046f44ed68014f048eca0010a642749ebe34b03`, chain 42161)
- UnnamedContract (`0xce8a501710ff0717601ad43b51f4b7cf832beff4`, chain 42161)
- UnnamedContract (`0xd6c9fe8dbc50c620222e8679cff0461994b532da`, chain 42161)
- UnnamedContract (`0xe59dadf5f7a9decb8337402ccdf06abe5c0b2b3e`, chain 42161)
- UnnamedContract (`0xebe52cb7c5f1868815b000a4da782871b4daed62`, chain 42161)
- UnnamedContract (`0xf4790fc873351c624d225269d4d21cf591e441b2`, chain 42161)
- UnnamedContract (`0xf84eaa0685626f84fe17bc6c3c9eb2ac8a90d3c1`, chain 42161)
- UnnamedContract (`0x244f42975de839e4b99ff6af095b83d8101c544c`, chain 80094)
- UnnamedContract (`0x28602b1ae8ca0ff5cd01b96a36f88f72febe727a`, chain 80094)
- UnnamedContract (`0x2ed0837d9f2fbb927011463fad0736f86ea6bf25`, chain 80094)
- UnnamedContract (`0x50ba44fdf4380054c1a1c01df7f5a098867e78ae`, chain 80094)
- UnnamedContract (`0x6698ede14709a9dd8379744cc2d28f276e3d2eac`, chain 80094)
- UnnamedContract (`0x915882ae9106a71acd7820e416c477a4b8b47524`, chain 80094)
- UnnamedContract (`0x9e6b748d25ed2600aa0ce7cbb42267adcf21fd9b`, chain 80094)
- UnnamedContract (`0xbc987555c268e3f0d2819a4b972cc99c9fbbc643`, chain 80094)
- UnnamedContract (`0xc66d1a2460de7b96631f4ac37ce906acfa6a3c30`, chain 80094)
- UnnamedContract (`0xe8beb147a93bb757db15e468fabd119ca087efae`, chain 80094)
- UnnamedContract (`0xee33beffcd57780d038b2e9041039bff9974da6a`, chain 80094)
- EpochStakingController (`0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba`, chain 42161)
- GlpDepositor (`0x13f0d29b5b83654a200e4540066713d50547606e`, chain 42161)
- JonesDepositor (`0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706`, chain 42161)
- MasterChef (`0x5593473e318f0314eb2518239c474e183c4cbed5`, chain 42161)
- PendingRewards (`0x6052213c67a539a91a1a88842dd81785601ddd13`, chain 42161)
- PlsArbToken (`0x7a5d193fe4ed9098f7eadc99797087c96b002907`, chain 42161)
- PlsDpxPlutusChef (`0x20df4953ba19c74b2a46b6873803f28bf640c1b5`, chain 42161)
- PlsDpxRewardsDistro (`0x38e517ab9edf86e8089633041ecb2e5db00715ad`, chain 42161)
- PlsDpxToken (`0xf236ea74b515ef96a9898f5a4ed4aa591f253ce1`, chain 42161)
- PlsJonesToken (`0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44`, chain 42161)
- PlsSpaToken (`0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6`, chain 42161)
- PlutusChef (`0x4e5cf54fde5e1237e80e87fcba555d829e1307ce`, chain 42161)
- PlutusEpochStaking (`0x27aaa9d562237bf8e024f9b21de177e20ae50c05`, chain 42161)
- PlutusToken (`0x51318b7d00db7acc4026c88c3952b66278b6a67f`, chain 42161)
- PlvGlpToken (`0x5326e71ff593ecc2cf7acae5fe57582d6e74cff1`, chain 42161)
- SpaDepositor (`0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129`, chain 42161)
- TeamVester (`0x00e314654ba860c7146e1a973590f16a67e19624`, chain 42161)
- TGEController (`0x195b6ea50150900a25fa0928b8b65b03c7666d10`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (18 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 67/70 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/17 (11.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 66 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 67 of 128 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/78
- Verified + Unaudited implementations: 76
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 128
- Raw deployments: 128
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 2 | 2.6% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GlpDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251461 | `0x13f0d29b5b83654a200e4540066713d50547606e` | ✅ Audited |
| PlvGlpToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251476 | `0x5326e71ff593ecc2cf7acae5fe57582d6e74cff1` | ✅ Audited |

### ⚠️ Verified + Unaudited (76)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13794d30d01c96d6595d1d956f3dd70aec2c238b` | ⚠️ Unaudited |
| ArbStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x180bb71666c4de074b4daa17ed579afcb8eb2c25` | ⚠️ Unaudited |
| BribeDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11731da3ebf671f5ab2e2a4a61a8cf1293862d9e` | ⚠️ Unaudited |
| Disperse2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x3aed259be916f6fb4f44adf05a3ce37dfa1ad3cf` | ⚠️ Unaudited |
| DpxDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0180365afb1118b054f4fada971103309d03d919` | ⚠️ Unaudited |
| DpxDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x548c30b0af3ce6d96f1a63afc05f0fb66495179f` | ⚠️ Unaudited |
| DpxStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02b48b0e5fb8dd3f893ae345088ee3333205c476` | ⚠️ Unaudited |
| DpxStakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a7d37fdf0f2f6241bfb62998f4443661d356585` | ⚠️ Unaudited |
| EpochStakingController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251501 | `0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba` | ⚠️ Unaudited |
| EpochStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e1954da37fad279114035a45da49ca30ea5a988` | ⚠️ Unaudited |
| EpochStakingRewardsRolling | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50b3091b4188edfa3589b341adfb078edb93addd` | ⚠️ Unaudited |
| EpochStakingRewardsRollingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x355e892176c39d3b384387985e4f6ab6671b3742` | ⚠️ Unaudited |
| EpochStakingRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29640422bb775917102079cf259cc8f5ca7dbce8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x2a2cafbb239af9159aeecc34ac25521dbd8b5197` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x75c143460f6e3e22f439dff947e25c9ccb72d2e8` | ⚠️ Unaudited |
| ExitHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8686a29760a71eb6b46b0a0b5ab1dcf42d415234` | ⚠️ Unaudited |
| FeeClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4ed6bb938ee0ca593669bfc5276091ff75d3d3f0` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f80e3b68039d4735352bd92cfd4a5185992f919` | ⚠️ Unaudited |
| FeeCollectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84d152e8cb68a94ebcf50ce6f17af7f2c1f891eb` | ⚠️ Unaudited |
| FeeCollectorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c140cd0f95d6675540f575b2e5da46bfffed31e` | ⚠️ Unaudited |
| GlpDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c94b28b5540170ea24085817bd81a9891f01bff` | ⚠️ Unaudited |
| GlpStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab857a1c592dde7038ced7f99bacf3900b6ea1e` | ⚠️ Unaudited |
| GlpStakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbec7635c7a475cbe081698ea110ef411e40f8dd9` | ⚠️ Unaudited |
| GxpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fcce5033f33f4aa3a55d9f6ad5d469254747679` | ⚠️ Unaudited |
| JonesDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251484 | `0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706` | ⚠️ Unaudited |
| JonesDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f6613e697cc2160f181f405d638d7ebf64961a5` | ⚠️ Unaudited |
| JonesLpStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d50f56e5a208580f66e24eb9d557800eec154e5` | ⚠️ Unaudited |
| JonesLpStakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x475e8a89ad4af634663f2632fff9e47e551f9600` | ⚠️ Unaudited |
| JonesStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20864169830bbb30bc25ed44a61008c0b22f07f8` | ⚠️ Unaudited |
| LockedStakedPlutusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x14ba1690552c4f41360fa2ea5feece3d6533f073` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251478 | `0x5593473e318f0314eb2518239c474e183c4cbed5` | ⚠️ Unaudited |
| PendingRewards | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251481 | `0x6052213c67a539a91a1a88842dd81785601ddd13` | ⚠️ Unaudited |
| PgSpaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc82775f45c724f9aa28d84f40c7c4757777e9a9a` | ⚠️ Unaudited |
| PlsArbPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dc1ead69ae444e07964cd753dcffdbbb7651c8f` | ⚠️ Unaudited |
| PlsArbStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaca851c46453878e78db041a529ecc76c8400093` | ⚠️ Unaudited |
| PlsArbToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251491 | `0x7a5d193fe4ed9098f7eadc99797087c96b002907` | ⚠️ Unaudited |
| PlsDpxPlutusChef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251465 | `0x20df4953ba19c74b2a46b6873803f28bf640c1b5` | ⚠️ Unaudited |
| PlsDpxPlutusChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a17e7c8c75e92d0193b1a9f8a452cfdd4eaf2ad` | ⚠️ Unaudited |
| PlsDpxRewardsDistro | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251470 | `0x38e517ab9edf86e8089633041ecb2e5db00715ad` | ⚠️ Unaudited |
| PlsDpxRewardsDistroV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65ec1225305a379811710e7cae9f62cd76e31e69` | ⚠️ Unaudited |
| PlsDpxToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251507 | `0xf236ea74b515ef96a9898f5a4ed4aa591f253ce1` | ⚠️ Unaudited |
| PlsGlpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530f1cbb2ebd71bec58d351dcd3768148986a467` | ⚠️ Unaudited |
| PlsJonesPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07569a659fdc3af53982db92871b84f50e7e684a` | ⚠️ Unaudited |
| PlsJonesRewardsDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4a2b62f29a9570a1fef56e6dd9c1901ef64a6860` | ⚠️ Unaudited |
| PlsJonesToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251505 | `0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44` | ⚠️ Unaudited |
| PlsRdntPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x191e96c5feb06c61327c90b6f74e45ae18af4214` | ⚠️ Unaudited |
| PlsRdntRewardsDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a8741282649eff8038300251252c3a963a61e33` | ⚠️ Unaudited |
| PlsRdntRewardsDistroV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18353aead4ab72bcc24c263ed75fb8a9ab74bb28` | ⚠️ Unaudited |
| PlsRdntToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251462 | `0x1605bbdab3b38d10fa23a7ed0d0e8f4fea5bff59` | ⚠️ Unaudited |
| PlsRdntUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f3fa65c5a9cf4f295fc34329aea552a528d7ac3` | ⚠️ Unaudited |
| PlsSpaPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54f9fa97cabe5d13956c9285a0850c85d0b6d271` | ⚠️ Unaudited |
| PlsSpaToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251460 | `0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6` | ⚠️ Unaudited |
| PlsSpaVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11e5aadcda598962b1d7f3ad00e9b2fc7fdeb2f2` | ⚠️ Unaudited |
| PlutusChef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251474 | `0x4e5cf54fde5e1237e80e87fcba555d829e1307ce` | ⚠️ Unaudited |
| PlutusChronosVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5effb81418dc8866a80a4321a490de3a116470ea` | ⚠️ Unaudited |
| PlutusEpochStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251467 | `0x27aaa9d562237bf8e024f9b21de177e20ae50c05` | ⚠️ Unaudited |
| PlutusEsGmxTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4f80b286e5c019d667bb168dd2796bd8305549f3` | ⚠️ Unaudited |
| PlutusGrailVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xb04eaf69e86a1df15bac9a2fa3a73a0f617fddcf` | ⚠️ Unaudited |
| PlutusPrivateTGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35cd01aaa22ccae7839dfabe8c6db2f8e5a7b2e0` | ⚠️ Unaudited |
| PlutusToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251475 | `0x51318b7d00db7acc4026c88c3952b66278b6a67f` | ⚠️ Unaudited |
| PrivateTgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec06e18b64b54470eb423a245640600155ad3427` | ⚠️ Unaudited |
| PrivateTgeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ccd4cfaf4bda43c09682b3e588b4bd18bffd603` | ⚠️ Unaudited |
| PrivateTgeVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b724389dd28ffc9a3a91ab4149a77530282f04` | ⚠️ Unaudited |
| RdntDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ee94f8e8f551dc7d21744db4b3dae59a68ebf48` | ⚠️ Unaudited |
| RdntLpStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d18eeadb19c62fad9f153a323ed844088426ead` | ⚠️ Unaudited |
| SimplePlvGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75e901c9ef67f46fb56f35a90f1eecc748c18dac` | ⚠️ Unaudited |
| SpaDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251493 | `0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129` | ⚠️ Unaudited |
| SpaFeeClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x070344792cc8930bd8d91a3b2ac65c79b92ef7a2` | ⚠️ Unaudited |
| SpaStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0325d080fe94341cb4882f9ebf9bf7b042a02f50` | ⚠️ Unaudited |
| SpaStakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e40f80a3577fe19725e3570723476e68904bd9e` | ⚠️ Unaudited |
| SpaStakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x084079880cbb72277ed207237cb74587e91b474a` | ⚠️ Unaudited |
| SpaStakerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x46ac70bf830896eeb2a2e4cbe29cd05628824928` | ⚠️ Unaudited |
| TeamVester | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251458 | `0x00e314654ba860c7146e1a973590f16a67e19624` | ⚠️ Unaudited |
| TGEController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251463 | `0x195b6ea50150900a25fa0928b8b65b03c7666d10` | ⚠️ Unaudited |
| TGEVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1d8f4109ec84db9b607e2705779142ec8f9534a` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16240ac2fbd41f4087421e1525f74338bc95cf64` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251451 | `0x162b89d938d0ed977e1527fa7fa1048f0e70469e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251452 | `0x595e1cfd74b513bcafc1f212a2e437692725a39e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251453 | `0x734dced3f83b10cf00b380381ffab8ffb0606d9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251454 | `0x9f5a72636d5475c8cbdb7dff298bbd7412b76092` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251455 | `0xa7ab9a31ce5af583942b557554b636a858f58f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251457 | `0xf3fb046dd0b62eb0ef8b811280ccda8aa252b35e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251459 | `0x021599e04fe269752ae9c97d47615cf181bed992` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251464 | `0x1ceab12ec81389f642c163d7406cfa9e72046309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251466 | `0x23b87748b615096d1a0f48870daee203a720723d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251468 | `0x2e9ee89099ee816eacb7301bcdb57a6375a1c6e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251469 | `0x369722ab25b1c89e6a56208b37a5125d53c2d936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251471 | `0x4a15404235f4a0bc2cbcf5ba7e92763cb8335660` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251472 | `0x4bc6148306abccad5d95c0cd916249d7d08711aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251473 | `0x4d56d5a417269a5bfa909cc0f67dffe992272606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251477 | `0x54e340ffefc0cdcd06186b23805b3d8710431744` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251479 | `0x58bfc95a864e18e8f3041d2fcd3418f48393fe6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251480 | `0x5f05c6b6370ec22916e619dfc6bd60b98ce26b64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251482 | `0x62c10f8f003093c942a9ab8b3e0f94ba612cc982` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251483 | `0x668bb973c3e35759269dac6d5bf118ea9729110e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251485 | `0x68d6d2545f14751baf36c417c2cc7cdf8da8a15b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251486 | `0x6cb81093f91c9cdb08d2b190830484d8180d5544` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251487 | `0x6cc0d643c7b8709f468f58f363d73af6e4971515` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251488 | `0x6dbf2155b0636cb3fd5359fccefb8a2c02b6cb51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251489 | `0x73e7c78e8a85c074733920f185d1c78163b555c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251490 | `0x76e89ddeb88b2ebf1902f2907afc2cc1bcbcbe60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251492 | `0x7f89c81561c1a56d983cc5682348310cc330bca7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251494 | `0x8c1ea32448e09a59f36595abec6207c9ebd590a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251495 | `0x9e6b748d25ed2600aa0ce7cbb42267adcf21fd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251496 | `0xa5c1c5a67ba16430547fea9d608ef81119be1876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251497 | `0xb27f216bad95492503a2158ca51e3af45ed2662c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251498 | `0xbbe98d590d7eb99f4a236587f2441826396053d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251499 | `0xbeb981021ed9c85aa51d96c0c2eda10ee4404a2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251500 | `0xc046f44ed68014f048eca0010a642749ebe34b03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251502 | `0xce8a501710ff0717601ad43b51f4b7cf832beff4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251503 | `0xd6c9fe8dbc50c620222e8679cff0461994b532da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251504 | `0xe59dadf5f7a9decb8337402ccdf06abe5c0b2b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251506 | `0xebe52cb7c5f1868815b000a4da782871b4daed62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251508 | `0xf4790fc873351c624d225269d4d21cf591e441b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251509 | `0xf84eaa0685626f84fe17bc6c3c9eb2ac8a90d3c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251510 | `0x244f42975de839e4b99ff6af095b83d8101c544c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251511 | `0x28602b1ae8ca0ff5cd01b96a36f88f72febe727a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251512 | `0x2ed0837d9f2fbb927011463fad0736f86ea6bf25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251513 | `0x50ba44fdf4380054c1a1c01df7f5a098867e78ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251514 | `0x6698ede14709a9dd8379744cc2d28f276e3d2eac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251515 | `0x915882ae9106a71acd7820e416c477a4b8b47524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251516 | `0x9e6b748d25ed2600aa0ce7cbb42267adcf21fd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251517 | `0xbc987555c268e3f0d2819a4b972cc99c9fbbc643` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251518 | `0xc66d1a2460de7b96631f4ac37ce906acfa6a3c30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251519 | `0xe8beb147a93bb757db15e468fabd119ca087efae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251520 | `0xee33beffcd57780d038b2e9041039bff9974da6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/PlvGLP](https://sourcehat.com/audits/PlvGLP) | SourceHat | Audit | 2022-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [skynet.certik.com/projects/plutusdao](https://skynet.certik.com/projects/plutusdao) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20942] sourcehat.com/audits/PlvGLP — matched: Audit report explicitly lists four contracts in scope: PlsGlpToken, PlvGlpToken, GlpDepositor, GlpStaker. Date found in the summary: 'Date: September 26th, 2022.'
- [20943] skynet.certik.com/projects/plutusdao — no match: Extracted from 'Audited Files/SHA256' section listing two files. Audit date from 'Last Audit was delivered on 8/25/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/PlvGLP | PlsGlpToken | unmatched — not counted | — | listed in scope | no |
| sourcehat.com/audits/PlvGLP | PlvGlpToken | own contract | PlvGlpToken (selected) `0x5326e71ff593ecc2cf7acae5fe57582d6e74cff1` — deployed 2022-08-26 14:26:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PlvGLP | GlpDepositor | own contract | GlpDepositor (selected) `0x13f0d29b5b83654a200e4540066713d50547606e` — deployed 2022-08-26 14:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PlvGLP | GlpStaker | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/plutusdao | PlsDpxRewardsDistroV2 | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/plutusdao | PlsDpxPlutusChefV2 | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba` | EpochStakingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706` | JonesDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5593473e318f0314eb2518239c474e183c4cbed5` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6052213c67a539a91a1a88842dd81785601ddd13` | PendingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a5d193fe4ed9098f7eadc99797087c96b002907` | PlsArbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x20df4953ba19c74b2a46b6873803f28bf640c1b5` | PlsDpxPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38e517ab9edf86e8089633041ecb2e5db00715ad` | PlsDpxRewardsDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44` | PlsJonesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6` | PlsSpaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4e5cf54fde5e1237e80e87fcba555d829e1307ce` | PlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x27aaa9d562237bf8e024f9b21de177e20ae50c05` | PlutusEpochStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x51318b7d00db7acc4026c88c3952b66278b6a67f` | PlutusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129` | SpaDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x00e314654ba860c7146e1a973590f16a67e19624` | TeamVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x195b6ea50150900a25fa0928b8b65b03c7666d10` | TGEController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Zero-match audit list:

- [20943] skynet.certik.com/projects/plutusdao

Fork inheritance lineage and inherited audits are included when available.
