# Agentic Audit Brief: Harmonix Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Harmonix Finance (`harmonix-finance`)
- Website: [https://app.harmonix.fi](https://app.harmonix.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 300 unique implementations (522 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,180,091.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Harmonix Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, ethereum, hyperliquid. Structural roles: 2 supporting, 1 infra, 1 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (2), infra (1), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe4ba90d2a4136f9270036b6f76b5d27fef9268ea`, chain 999)
- UnnamedContract (`0x8899910a8c47e177c574454e8249f5e9dcfdf773`, chain 42161)
- ERC1967Proxy (`0x1368ee9d1212ae5b26ff166049220051a9eebc42`, chain 999)
- ERC1967Proxy (`0xfde5b0626fc80e36885e2fa9cd5ad9d7768d725c`, chain 999)
- TransparentUpgradeableProxy (`0xf12f8753c25f8005311a24bbba1f7209249b00e3`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 297 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 209
- Confirmed-live implementations: 3 of 300 unique; 297 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/172
- Verified + Unaudited implementations: 171
- Verified by bytecode match: 0
- Unverified implementations: 128
- Unique implementations: 300
- Raw deployments: 522
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hyperliquid | Tier 2 | 1 | 0.6% | 2025-05 |
| Zenith | Tier 2 | 1 | 0.6% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FundContract | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387221 | 2 deployments: hyperliquid `0x1108fe54384c5c4ade2d25e420303e08c047be55`; hyperliquid `0xfde5b0626fc80e36885e2fa9cd5ad9d7768d725c` | ✅ Audited |

### ⚠️ Verified + Unaudited (171)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x05a626914c582bff59f0a1aac3a4540def5e72f7`; hyperliquid `0x41e14623112196ca248f42d97ad2133c2222419c` | ⚠️ Unaudited |
| AccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x28257cd6b21519a281a90637462bf7956c7d3808`; hyperliquid `0x408e485a20442ff2a6f96a0733b4d36e869bf97c` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | hyperliquid | n/a | 5 deployments: hyperliquid `0x25b4dc5f96312c7083a58d80d8ecad6ecddbbdfb`; hyperliquid `0x31aaa50a6096547b300a5f5af6ecc00d2f3d77e1`; hyperliquid `0x77a1b997cf8c8867e4174460b421e535158e81f5`; hyperliquid `0x7db7bcd6746f4dcfa2fdcdd80c1c313cc371f166`; hyperliquid `0xee09a7b39502813ed182144522d81df017bd7cbe` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe65a60da002b1797eba0414f461c27697e850f55` | ⚠️ Unaudited |
| AsyncRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x59e4e1b6ea7ebb9292d72b9e0830dced77154331`; hyperliquid `0xd6c452dff4fe1a0fd5c86743eb2f17d163b93d46` | ⚠️ Unaudited |
| ClaimReward | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x04b7b5cb8c3b7f35fb604fcf92e0d3925c945e97`; hyperliquid `0xbef024e73c8844cb02ffacc63b98c451cf98fbc0`; hyperliquid `0xc3d0ed3d23c4169bf20b45aa9479e820c1b38889`; hyperliquid `0xe0a8d99c0b36c91b65746e304af72fdd37864045` | ⚠️ Unaudited |
| ClaimReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xaeeaa176103f7967e9a028008ded0885e93882d4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x057f4eb91dfd050a59cb1ecba9cc759a1aa310f8`; hyperliquid `0x3d91485d7eaec6dd4e5ec0cb1122c8d80cdc1eaa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1357a71eab7bc50cd579dfa68935a920e203552a`; hyperliquid `0x69051ed19947924ad75183ee398a1c85efc58518` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-387222 | 2 deployments: hyperliquid `0x1368ee9d1212ae5b26ff166049220051a9eebc42`; hyperliquid `0xe4ba90d2a4136f9270036b6f76b5d27fef9268ea` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x24e1cd4081aff985cbd58ef639aea56cdb188043`; hyperliquid `0xf463c90ef794a57cee4fa5e4773bc05d07ddd986` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2767870670a65913c3d877699bd72b0cec31b844`; hyperliquid `0xfaefcdefcf50d763d608aa6fcf1032be32698722` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x2ca5cf8ef7b35c2c7df4d7c204a58c6f16d77291`; hyperliquid `0x33a82183347327bc1667d93c458ca17c04e2537f`; hyperliquid `0x4d9cb88071b94040650739ee3fbee1c398994032` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2fef70f905a0fd21fe2493acc1be5eef870c565c`; hyperliquid `0x8e40b43a388cc8df584b397b05899349c1a88fa8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | hyperliquid | n/a | `0x30782559957f0853419c7021e91c83338a6f0a50` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3104845028ab1a9670ae025874c12aaefe4c7f42`; hyperliquid `0xd040c6482c34f123271466ff40056f6d66de73b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x31b626e0554da4fcaff9987dedc3ea3f3288cb5c`; hyperliquid `0x5533b73573633dc75bc315ca5fd357917f19b87c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x380c522064688b4c9b2375b0acdce4f7cfbde06e`; hyperliquid `0x586c8074ec1fc0b5219983f0858e952e3b4b2f0c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x388238bb8805a9a1412aee7abf5c23ac1e462d7f`; hyperliquid `0xdb00367b226f65359713b8eb523d9cd2bcad3bca` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x47b100d7f444405759e9b226f6cb1cdb8cce4a9f`; hyperliquid `0xde3524e8b0ed859cfe6f386dc5cf0137d5ed215e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x59fddf86d74b4c0c38033931a44814d9ff4e9736`; hyperliquid `0x5da664ffb33af59ec54dcc2b94841422f9a33268`; hyperliquid `0xeeb9c3aa0dcda7d55442d44861627af6fc06e2c1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5bb6b9fcef8fb3d5db5dcf04bf53730069c5ced0`; hyperliquid `0x98870db3d3c8577ddb58835c59420646b1634205` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6c17d3b2dcd25dd779be50bd27f5dad2a1039f17`; hyperliquid `0x6d5ebaba9bcef692d0e52b8fbdf15865dba33280` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6e850b15d6f6ac830b5791c0c7452901c1fc824e`; hyperliquid `0xe9552e3d244a831c727d871774a25fc4ff1a2366` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x72dd37c3cda4537df0c77a23526a341d20290f29`; hyperliquid `0x9ff5cb0494d4b4ee0a357b94c98c4f05fffa7ee6`; hyperliquid `0xf8c85324a4d993f7dcd443dc1c3c2ae3ebb166a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x79325d3c5567624903b2a49542a9ed3a21fb7093`; hyperliquid `0x81e31ea453b2a48a278cc6730887773bc63e0ec8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7cee0144f324b85bc0d6d19028dc030d161bb021`; hyperliquid `0x941e59dd3360e492b4c47d48a00dad40889a1b9e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d0a4237e52875e7e3a8f029332b054c143d6337`; hyperliquid `0xf6808d6c664c088a1696e3e2a0d9b992e7610051` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x83ff304e86df2bb44847067b074f8218494e328e`; hyperliquid `0x99e38e8f3162cc2b483889027d97faf705e18398` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x84a08190995ff4c2f839defd5272b2813f468537`; hyperliquid `0xb7bf0f932d3bb626b75e7f0bd1633d518e578c36` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8ad875d4fbb2365b7c67c397c574e32b297f2623`; hyperliquid `0x9a2b46016763af7a8cc034381de172ff24317a42` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa191407f1bc1a4454e9dd5a1ae277aac8d0326f0`; hyperliquid `0xeebbf3ae4b2aa91810cf16d98b6aa225fe9745ee` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xabf874c491569b3a6c2dec5b69dc5c5a121d62ac`; hyperliquid `0xaf74f36dedac71d506059ed2ef6fb51333e7e1b1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xacf32fd95bd16e7a77f353583542eff40e261588`; hyperliquid `0xb2cda4bd5b15f78974afd33f9aea94420b57d6cf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb0820fd4c7517a2690a267941551bc3ded9fbc40`; hyperliquid `0xdc2338411acf688b665cb91e556f5e2082ee8cf8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb8f44096442c1f1d9540accc0f3f6814524d650d`; hyperliquid `0xf5704a866e34e37b7a6c2a0bd9252d77179cab46` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 6 deployments: hyperliquid `0x02513f514c38b685fbd05b87750d3f05c3c2db7f`; hyperliquid `0x74bd05b661ba04936fc2e70adcf23219ade6f286`; hyperliquid `0x7a428b081d1fafe83c189bf0b871cc06c86e6341`; hyperliquid `0x8c03fcefaf24e8fecfbde393a35b7167d0e01dce`; hyperliquid `0xe7ac6c80d1697d5decf2e652ed69af97c1e9227c`; hyperliquid `0xed76bde533e8f5f1fdd6447525127e841099ba97` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x2aaa1ee7d6a457d67a95ace8d5d05b33a73c62c3`; hyperliquid `0xb8e91f280bc3840d6373d0e2d1fa516ad6843064`; hyperliquid `0xe82152ed3ea72ede0f1e40d00aa9dece6e8413c1` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x3e79f3b6d5c9d8299c54ebbe2814bb563bf8cc41`; hyperliquid `0x5b85ac3b24d17c22b361d963d2fe08e98e0d3b0a`; hyperliquid `0xb3f282f0e28c9907b534043a6e85a9745b12cab7`; hyperliquid `0xba05571ed93864b6fd23884027405530cdb8863b` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x55a4639f748ecef62bc43afcf9e51729e8cadcdd`; hyperliquid `0xd54faeb83805be322f834909d076a2b973f5e7b4` | ⚠️ Unaudited |
| FundNavFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x26493d5d3121a7938f8835436d777b6d10d67077`; hyperliquid `0x3bed7e767dd405502526f5bc6fb38f35abc13643`; hyperliquid `0x9f39f575698a02f7c17d995080871a849a8c289c` | ⚠️ Unaudited |
| FundNavFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2bdcb3b4d0cb37710602d30e91e68ef9ba8ffa80` | ⚠️ Unaudited |
| FundVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x17f615b6d2fd46c6c0c54512e3ffbf71862df097`; hyperliquid `0x181cde2b69796308b3f6f45490a4ad65aea1c1b0` | ⚠️ Unaudited |
| FundVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x55b71eea81b3043b65e718d8b6e31a59090e0cfe`; hyperliquid `0xabe515517bbd2bd220cfdc2741ee6df095333535`; hyperliquid `0xb6335c458d0859228d87ee01cf17956c8047ddb6` | ⚠️ Unaudited |
| GoldLinkVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd1ac3b6f37f9c111c896240284597b910d28cb9` | ⚠️ Unaudited |
| HaForDefiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1f808f9f518a31a7737026056f3c2f2bccc5d173`; hyperliquid `0x7f6fddd70a2c2db079c6ae9e6d19e39a5b81a93a` | ⚠️ Unaudited |
| HaForDefiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4c57541f4fcbd234a5ecf31cc38572cae943dc0c`; hyperliquid `0xe6d1685480678d69bcceaef44d6af4e3b2452f80` | ⚠️ Unaudited |
| HaForwardDestinationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x23be7156c97e0d7413b35fca81ca236e8137c072`; hyperliquid `0x8ea4ff0dba85df2285df279c94172275383dd712`; hyperliquid `0xacde7aeb401f1ba7a13e7270ba28686b8a38e0c1` | ⚠️ Unaudited |
| HAR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x391121d817da42ed3434d281aedbbcc416a2af18`; hyperliquid `0xdceabc60ed00e13c9d09cebcd14b0bf479f92744` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02a1d5fba537c7156f5374d2c740fab4bdf00520`; hyperliquid `0x9938db907de8483b3b08676a9a0768e94432be1c` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x06adeaaa77a319a639bca0f36f54a6b4bf031def`; hyperliquid `0xa5b21fb82b4a145fdad8ea683f53458fcd32a3d0` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0d403355c2fc8bd4d0dca2e677d1f388882cc429`; hyperliquid `0xf25d52cd18cfd94b272fdc46a603e0b98deb4e80` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1e1ca9ea99a0c37e4e512dc96c4a770877e4e602`; hyperliquid `0x6f58cb1176319d0556bbebcecdddf27c69cb8571` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x28e0f14839cf8dbfae8a561b31d0518c35111dfa`; hyperliquid `0x9ff6ed3d67728314d346fb742f71efd75e578a21` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x48898ca06d346b1cf6d3148e83840d7c43f35c94`; hyperliquid `0x884c9609d2145e0b17fec9b9500c561992372b15` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4a06e9f5c819263c0f803a8a35f44280a15227a1`; hyperliquid `0xbbb6b52737fa12f47f1cc7845ba93175c10f16a6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x56d782d4400fa82e14bfba9bd9e836b4d91579e2`; hyperliquid `0xcbf856a8656845cedf83ca954ee08fa30264bbe9` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5979aa38e5bcaa2e0b4ba3795c530022103f49e2`; hyperliquid `0xc34a4722dfcd6446a617be012b131989e95935c8` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5bd4ddaf9ad88a4881e4f364ba2e8c8123cd9b09`; hyperliquid `0xf414b6a5b2749890d5809f6abbce5924e3b1ea15` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6056469445b71867f8d6a6b483bd3b7be4bc8fef`; hyperliquid `0xfe05fa9cea9166ac7e16b0e9a94c07b7fa6095d6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x65b0a63fac21d15cc8c4b7a93972e1b1c6ae035f`; hyperliquid `0x99ced10321a61251a1d3a887c29c0f4176f10505` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6fab94fb032dad8e53eb368116d6b72c0bbdf59b`; hyperliquid `0xf4e681038eee126bc1ba1c6aa4e9ee508bbd9d4d` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d852a046b7f47d9164d726a896c67249ad4b40d`; hyperliquid `0xaffbc8db0a1bc837025ac79e18c7ad6f5977e8ce` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x95f2836501530886afa793f08fefd193fc6c6f97`; hyperliquid `0xef84f76ee2646ba541aef8d9201e3ad58bc256f6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xae24f8222832c40edb6bbcdd20030aa79790b136`; hyperliquid `0xc8bdf4f9cb2e031b7bdfb209ca619d91222f8016` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbdf77abf7c360600b6607fcba1562ec6ea80b5d5`; hyperliquid `0xc60719ed76e36e62250c1c5db9668a98d9364fa1` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xf1c57eea645d51d03dd02f025d6dc084690c6a65`; hyperliquid `0xfeda3710bacb39e2579c25c4eb1c38e6c59b4d55` | ⚠️ Unaudited |
| HarmonixStakingWithHooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5b4441fa41f0526b6129b8cb1f2f3b34d0679b34`; hyperliquid `0xe5f96fe8dfe8c0b5a0829a16f6b01fffbb46a6c4` | ⚠️ Unaudited |
| HaTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 8 deployments: hyperliquid `0x066aa0d243754af0ce886210cd20e10e146b847e`; hyperliquid `0x08f5e6ef6412f066b2f5fb64f74dea3ce3eba2ed`; hyperliquid `0x10b32009aecc34e9dd35bb2a6bc7f4512612660c`; hyperliquid `0x3673aac49fc3dfdb85762a4816bf761bf67febc2`; hyperliquid `0x64c4a71a7b0649ac3d15d839fb458a164196f40f`; hyperliquid `0x64e0b9869d9f29fe2ec910534901bc8d426ae90a`; hyperliquid `0x66ffd546b9213871f1917a7444e86863e9736b9a`; hyperliquid `0x975bc790dfbb5115bef447d8f92dc068ca88564e` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 4 deployments: hyperliquid `0x232c52ef3c4691d3bfbbcbc6298a6ba4832c950c`; hyperliquid `0x52b0f43e019efc4e23c488884280299a81288b23`; hyperliquid `0xaf41878c0cc7e0abc780e91ff7caa4fd5f2fcbb9`; hyperliquid `0xce416bfc22daf8302d90d38b2a9f17e368d5b27b` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3a0b0e25becefcda10ac367f4f3dc33060436f52`; hyperliquid `0x8210b8658a2f60097126869f89f1ec27881bc4ec` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x66341e783529c0837ab16791e031e109d9046fe9`; hyperliquid `0x8bb3a6fc9cf81f0ea62ba2953acd226af7e78473` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x76994facc865399b08a850e8c1d8a172a2988bdc`; hyperliquid `0xb95803017145539601504fbedd582066fbb35ddd` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb80235f6f82031f2b9a5bf91c9de46e6b06ba14c`; hyperliquid `0xf37741c82e143dad643196e70cc2ed0458c4ee92` | ⚠️ Unaudited |
| HyperCorePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6997045d980098206e435d388e81719adfc45dbb`; hyperliquid `0xe19085cdbacafbdda0ab9df755486d49d3110eef` | ⚠️ Unaudited |
| HyperCorePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0xc73e3326479f76b61c2042962b7ea750015a44f4`; hyperliquid `0xfa4721dd4bcb97649a09aa747e9300f27d53e93c` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09f2b45a6677858f016ebef1e8f141d6944429df` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3c610cde6d4c2a379f0f461d7ed05ed709779058` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x554ef8e21832ffc5779f212512d9ab96a7815d95`; arbitrum `0x9e2d3710c5ef166cf9f48e577ff84a608c2ea13a` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa50169bdfd3b7aa14bd411891c1aba40dc116b20` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbbff0affba8426608d2b319f6a2cc58bbf07f855` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xfadf54397db24571499895f37a37b967e7d2ac61` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x699a2bcf3257b1cad3c5a80851b1e0bdcb7333db`; hyperliquid `0xe36f84d9de97534ca3d883d9df92b7e32dad9ada` | ⚠️ Unaudited |
| MultiVestingDistributorMock | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x30c9fc26028c3065e0bfd9b7ba1c7c9984a2111f` | ⚠️ Unaudited |
| MultiVestingDistributorMock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x45de263bea4587c22c9b21aa392f8e5c5ca27f0f`; hyperliquid `0x8d8c70b1bd27f30193d1a606d32439faf1d4b24a` | ⚠️ Unaudited |
| MultiVestingDistributorMock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7bc78ca95d1755db67d7dda3108f161c0ead335f`; hyperliquid `0x7ee84a5d93870e33da9b74486c9d76e75ee912b6` | ⚠️ Unaudited |
| NavAggregateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8e9e8705a50ec4720b14d84e34af73421e301d30`; hyperliquid `0xa3f4f7cee086a3ee29e06f8c5d76132734387514` | ⚠️ Unaudited |
| PendleHedgeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x0110bb8d3e530eb9a53f92fe848a06f2c5bfabe0`; arbitrum `0x561b080120f67ef6de911421bfffa2cc909979fc`; arbitrum `0xc0fa1d8b8651fd8ed8a3dd33cc0b090614cb50ee` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc7c8cdd1e9817fc98ad1b05cd3633c6471a9473b`; ethereum `0xe1856734933b1fe219ae2f13e8cbef8fbbc4a9c3` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7274463bf93e0058481042cbd6e0cc73042e6285`; arbitrum `0x81302b5e8ac3a99901712b8d6bc4e81da91b70c1` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde80f464156186dbf5991aebb1643ae7e9ba5d98` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x389c289413c195918647a1c827476848c1991df8`; hyperliquid `0xcd66bc6b4a215504e7920b00cce3bc93af91ea65` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7c95d4c96c410a6e7dedf4bc78eb93b916706ada` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x581f839f495625aea422b0103e6a7727e34e79fc`; hyperliquid `0xfa2f2f8460ab3f23bd995e2571cfdaa6529e0f5d` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7c8516bfaa7c3390aff61fe511e2ccc3cf288aee`; hyperliquid `0xc708827040c4b64d818729b93a6a8962d58e98c4` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd057aefeb9c333c3e26ad2783029429d3aa98168` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcf8be38f161db8241bbbdbab4231f9df62dbc820`; ethereum `0xe1a201e7c47de85f563ea0f1f9de2284439db69b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 11 | hyperliquid | n/a | 12 deployments: hyperliquid `0x053a18d869a3d5927594cbc270107caab6f70faa`; hyperliquid `0x069b24e4cb0836416822f916ee1d8919d16dd472`; hyperliquid `0x2cbce1fc02fb04fdee926e3d3c5aecc016b38dba`; hyperliquid `0x56edc8950dbc6cc6b9f7c3f613d398efb3e41898`; hyperliquid `0x6c802389d9a752594c70714632b75a3c8ec3497b`; hyperliquid `0x807c47757adb4038895b73f4cfb654ed37b22c5b`; hyperliquid `0x8276e112fe33474b0dfb469c38afd5e950b386c9`; hyperliquid `0x933e97ca3f892411a4083d91fa29d056fd65d270`; hyperliquid `0xa6ccd0f99d9dad45a5ae55a6677b4228ac6cfe2c`; hyperliquid `0xc13a77f7a6d5a2cf20694909cedb300cb018b799`; hyperliquid `0xd031ad9f62c195c7798f4bf14e9e2e52ef888cd4`; hyperliquid `0xd8e0aa3da29a803e626210ffea4726f750720da7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x05e3b82444edecdc64b556c938f4ae623a828f04`; hyperliquid `0xa56c9b746355b8df031ccb9e20812bf8e719687d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0aa13b638c60212ce3947ead9c38498c01e53180`; hyperliquid `0x15d21b1c017fc5101907f430e9bd925acdb176b2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x0c7612d7b3c6f5775966ae291ffe0d4537c089c4`; hyperliquid `0xa4ceed2ea1baf5cbf0b4d6ff66c88002e11f67a7`; hyperliquid `0xe0446f14c40f5e3d1f335e80fcd1e11ba3405613` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x10f4a52b66ead12fec74d97293ff491dbb8fbe0d`; hyperliquid `0xef447e471521a4a77efe80b825d84d4c8ababb3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x16ab14c6deb158b3d8f3846c702d65309599d754`; hyperliquid `0xf58fbd796a2f69c934053e1a07c7191a13bdb0d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x16cde735538e935e68b2ddc7c0d657acfe39ad82`; hyperliquid `0xd4e0bb0892623654e2c49d16ecd462d189b0ef28` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x17645878a354eed54ee238dccdf72cce224aab17`; hyperliquid `0xbbb27658a1051a48ce6ced858c4caee4b35a8fb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x179348034c7fa35d2d5a0149c17cede52fbb22c6`; hyperliquid `0xa4554189a6828aa8311cfb2295198e928cdfb899`; hyperliquid `0xcca4cf59414d0393f71b0a1e80aac73f6630f8f5`; hyperliquid `0xebf18148deff9c235e67035c2f351611462249d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x19de72a5f174c92703d92f1fbd1afc6df1e3d344`; hyperliquid `0x6f62bbd8001c4d00bc9e57d82a208985230b5d8d`; hyperliquid `0x74a055a034dc0b0f5b16ac640ad2d59954a3ca90`; hyperliquid `0x998103fa018aebdd1eb7b84d8f3fc814fbf48867` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | hyperliquid | n/a | 5 deployments: hyperliquid `0x206e193fafdf881e709cca50308552a7f615da40`; hyperliquid `0x3ed61ef818949278adfc526df82f0764a0edf014`; hyperliquid `0x58574007f97fe65048dd669191e28b58cddfa1dd`; hyperliquid `0x6bc7a374749a2bea041a90eca80488179888525b`; hyperliquid `0xcc33ab73c7006f835201374fe7e14349a1b58223` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2dd5f122bde4313d9e44b434589d46326141607f`; hyperliquid `0xfec8f5561fd97935ac98211614b5922a33a17da8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x39a7d3dff6d2e31b4a11ca8c8969b619fe6e99da`; hyperliquid `0x82d8a073b4c8faec5495697ce9d6b172db4a799d`; hyperliquid `0x8bf477eaab88e083c1c7b1a6791fc73edec2d4eb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | hyperliquid | n/a | 5 deployments: hyperliquid `0x3c298b0d324fe16db73fe5e74023335bbd6eba5d`; hyperliquid `0x4b4532a5a995b27caf7f722db63b21545a1a9630`; hyperliquid `0x76b00916713d0016b6c62244dcfbed900c4c69d6`; hyperliquid `0xe67fd0705f7b347c0118ec0752b5e90afcfa9c5a`; hyperliquid `0xef16af2722c4a483cdf5af14e2e2d78950320d1f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | hyperliquid | n/a | 9 deployments: hyperliquid `0x3c5374a8efceb94c3e1176afc0bf89b4f14493fd`; hyperliquid `0x48e94d68fe260c13acbe2356721d0884d9ea9b82`; hyperliquid `0x95b08e3542da624929128431d0a5579df33f9dd1`; hyperliquid `0x9e780bf57bed1c7e7add2e0a618fb4aee3490dba`; hyperliquid `0xa855f95acb9e5c0be97503273b7edcbe7743fa58`; hyperliquid `0xb618a0e6722a485870e3b1315a0e9d1bc17fe3e7`; hyperliquid `0xcbd7d9f19f483aed7ffe4a031a2ce31501045bc4`; hyperliquid `0xd844fb4228b87a0d21db830277bdafaafbb3fbe8`; hyperliquid `0xe695af78bf21adf23f85720c666fca6552a9445f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3d5556eadd436630b1ad6f52ca0259431ee90b11`; hyperliquid `0x9f255e4e99bb4e11da37ce71af49b79bdeb6a17e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x49005d40b44de5f886b57f1c3f307b62a76f5816`; hyperliquid `0x9128a2ce49a2217619cd714df186279a11c6a3d6`; hyperliquid `0xa5b7881ee5e518e166a8e80c0bb327aa42ec5583`; hyperliquid `0xa950a8fc8cd0b89fdbeb8310c4778137ee2aa037` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x496d50ac1b149e0af4116ab021153c2a646f2f40`; hyperliquid `0x49be2933c50155b9d929c8ca84f187bbcf4eb8d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4c81e8a35ad2b76c142016cfab8356a4672792ca`; hyperliquid `0xcbb9e45aae4a42ff9bf0ed72c06e51c740b43656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4dc4ad1cde51c4a1e4a5b30a87c9c302e9ce3b3b`; hyperliquid `0x74aa6a9bdeaf972e7dcc861afbb3b160172bab4a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x509110583cd97c7900cdf1e98f0b42fe53270ca4`; hyperliquid `0xbb9655bcaabcd6ef066e954049c9b23fe5462325` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x543303266113b64d03ec17b7ec3829f8cddadac4`; hyperliquid `0x8a59dfc1f0380d3bf1e70d8c369e1fc888845a4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x5736fd4c0bc99307391272c0a2aa31686b4bf3a5`; hyperliquid `0xde38ede7d792bb805971cc46d1a8f684e9d218ff`; hyperliquid `0xeec3efa754cf7e41b2952068ab4ace37bc30799e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5df93330c2a799cb77d62f61842271c28e73b451`; hyperliquid `0x8085c67f122b7c7c7ab06864ac359536640f5e28` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x61d077a516dcbebf56121b6c0a9851254677b0b5`; hyperliquid `0xee6286ad0c0fca50ccc89fe0e51532ad2d63d9f6`; hyperliquid `0xf768d02f06b242ad58b1b3202b7c3c4bcbf0f2d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x65d389daea19fc9a704b17a81f953d70ceaa5d34`; hyperliquid `0xe4d49e89e00730c423caed4a7b29e0230ed7ccb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x70725df576badb27dcb8e5235be6376b6b857f1a`; hyperliquid `0xcafd6e660ecc08390d0d0ec85a387bc7679990fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x74487ea81aa60c772b9d7dbe151dfd8d1f6fa10f`; hyperliquid `0xf377f259d663b530954201dd40b4a9761552e6c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d66591a4eb57d25ad68f303d3c223744250ecca`; hyperliquid `0xf05a946e22b0de12c403e6e4a958b40ddb1b58c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8576c0b29dc0105fcb97a3b40dab6514da53d233`; hyperliquid `0xeff35299ddf8cec0ecd7eb77a09986b4067d8aad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x94c000e8164a28e5a80d53c0bc2b266fca2a1d4a`; hyperliquid `0xdc7ad62e487f076495e81f7f25b2457fe260d135` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x9fdb47d4d3c2d64d8cb39ad5d23325755dc92d8d`; hyperliquid `0xbeb9039904fc653276f831fc010c7fbf06e891df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xcda71089bdc5c7d6eafafe304902629ed75c1642`; hyperliquid `0xd8fb7ec1759c7fa6280f20d58fcf1c065297b3bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x05427aa001303115b14634673dd3ff53e94db7c5`; arbitrum `0x9efd0be06ff3c935efbc5ddeb4a9b9bde880253c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x067610dde86ab8aea2edb887b77ad928f3f44aa2`; arbitrum `0x1ef01c585395923e9455016d96117b603edc31a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0866af9ff18072ee16d059082c7ea6170a11334e`; arbitrum `0x8005bf6b6a8cc321f491bcf93cc1e061a9191e37` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09873caead90d60cd84c9543e0d5cd772c44cdf1`; arbitrum `0x2cbb40a908837ded3b61432d453c8b9d8f268177` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x13f093db3dc780a45994a4ac46182aa0978f3a4c`; arbitrum `0xefaebf3e331cb4600003c578904457a44682aafb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1453b9642875b4df6e4867ee2782d92859cca767`; arbitrum `0x1d47ca37872f4c19cf6931f801e99a0d618e3688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x14d9edb7b3bf083cfda4e3c40352346df4a5e1df`; arbitrum `0x4ff8d67bdb2c141075bd21d39ccbaac53aabbba7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ea6bfa5d0a350d3b9e2e22b213df5b79d07ae7f`; arbitrum `0x236a881a9f092ad04c447ee1d84e588871cdf331` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x27c6cf5e57b331ad8ffca727984639672e384499`; arbitrum `0x917d630c7baa6fae147254f8d7d9fca7e0d3a538` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x299ebcd583507d5d5ddd61fd5cc51d831da200f1`; arbitrum `0x8f1cb3bcf1a58d84b3ebdf136c51bce1e5de2b87`; arbitrum `0xee1607459e81c8a6450fc43b8b4faf8c0151702a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3363a85c31cf13a96802e2935724232767420135`; arbitrum `0xc5b14494dfa0c7c8d1b162bac7614e42cc3eb261` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3447c595061dd3c7a3a42f99917cefd44d023ab4`; arbitrum `0xc0e2b9ecabca12d5024b2c11788b1cfaf972e5aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x346c29a4d72356f9737c30be275e36215a22e322`; arbitrum `0x3c983bbf6a85504c34660be45c4acba26a6fc407` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x3b584a4119969984355a5ec05070b3c72948affd`; arbitrum `0x59f3f6b136853fd135d9858f8c45fd15c23679af`; arbitrum `0xc2b64da281b4aa676e473c648b31d99fcaefe6dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3cfd185151d2ccacbaf72191de142ac300d2bcf4`; arbitrum `0x72b054968e386095364f5c33c5b94b0ec7179b9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x488440b63558d2fc85b3283062af289ea97efce1`; arbitrum `0xbd8c0594cee94a3d550145925c29eca33f7e8d34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4d5d7db8028ac0a430f0194e023cd67350b1ec86`; arbitrum `0xc03226b54d4dbc2443a72a9a00b99ffd76e6f6ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x50e2d315a26e2fc8f0ebb79425e5ed4b1df06482`; arbitrum `0x74cf10caa15e9abcc08ae8bbdc60587015f7f4a2`; arbitrum `0xe46c3be33d0c682fca5f965d244398e924000705` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x55e5ce11fb4fd79f934a892e11b8ea1e85bad344`; arbitrum `0xc60d4cb9e8f0d1e5eab3d40a81cb3eb9c6b0604d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x58ec4389edc6a94df2f8ff43a72b4eba63f553e8`; arbitrum `0x843329b2a241757325cf1cf569e3fc30b749090b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x61354503329c56c9207fe5d9f46cc37cb1155c23`; arbitrum `0xabc7ec9248fe1d4a453a28b8441c7ef07f1e2316` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x63cbb431b8a2ac2c149cb577befde98fc6ba953f`; arbitrum `0xb39a0499c7263c5b55338387f4f8eb0d7b356e13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x66299c8538cf6ebb8e10bd5aed954b2dfe50e436`; arbitrum `0xc61c90f03e9e3a37174da2fada6f3c55c3e4ac73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x69753e7372a4a6bd6f509261f1d0467fab7b8944`; arbitrum `0xc75deec22696ca1123a21d6f149038d3a2dc3b74` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6a075515711b668296be6e8455df23b871f04a13`; arbitrum `0xc5463badb4d706c1c295c4a3ef3ecfcd0d9f3080` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x75fa7c51f02ed5ba327f0820cb3908f9d362c2c6`; arbitrum `0xdabb353cb65f0e565df7d302e0ac9b738f75171c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7a74a00425c17ade906b34b38f5e8705c2396a64`; arbitrum `0xc5d824572e20bb73de991dc31b9802fcb0a64d1b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7d79c838cf3cda1bd3734be6b3c1a160234a09a3`; arbitrum `0xda6b3c2a19c3c590d168e450144406bd2199a2d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x862102ce12c72129b70460eb6cbdbded6396c200`; arbitrum `0xc00e166cf7b6684d2063d6c7f55e43f140aea7b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-387220 | 2 deployments: arbitrum `0x8899910a8c47e177c574454e8249f5e9dcfdf773`; arbitrum `0xf12f8753c25f8005311a24bbba1f7209249b00e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x89c45b79c03ce6284ca948d0223e102810c81cd4`; arbitrum `0xd85cea423221ec2dea8562d214485e764ad0cb71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9882975617e8ef77520262cb0add36c2598cd9ce`; arbitrum `0xa2855752767212f6cb7d500776e21a1124d1dc98` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9e578563d7e47adf00492b7e392e50b77c42898c`; arbitrum `0xc966480bd26a9df5152c646b4873912b9e66d2c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc2f10ff8fd1deb771d46aa892a7d58e3e99f87ea`; arbitrum `0xca5bff6443c3df3df854fadbbe2f9a50cfc9cce5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xc71ba0e3c1fb9cbcb15fbc677e78c99ac1bc590b` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x30454c49b1d5b4366afca609bb7fe13cb39ef4a5`; hyperliquid `0xa6a24edb9514d70a93e387c25b01a5349f8d96d2`; hyperliquid `0xe17545d526d4142799570cda05c0a81802b34edf` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x379877975b4f1d84b57ce89cc91a55e6b93a856b`; hyperliquid `0x3b5e193a178271d9d25715d07ffea7dd070e3c60` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x48dc377fc48823f4e1eeb47039944900cd525a60`; hyperliquid `0xd1c8dc811d6254e6565b2a6024d57cc08123ebcb` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x115e7794d92b105d75b0b54feb0953ebd569582c`; hyperliquid `0x43e123202b0a844941866890f4ebe904b95ad877`; hyperliquid `0x54439b8d61be3b955805929b6932e1b2b948dd72` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2e2b6b658dc472188a1f8d39997bc5b1930d9db5`; hyperliquid `0x437c94ff5b7c3c73a3c3366dff03294df366e4ba` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6bf8b2d571333685fb9c1b5d997e126aa040b9dc`; hyperliquid `0x6dca767e7384d862036622c65710474b133380a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (128)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083050ae76044034a2771e9d5e4fc782e159ab73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bcf1fb3ab9e9e0c4a94842be3cc2a4ebeffbc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3893b2b912319d74fdc10e1656b1a2149a1455fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4577f61d75520eb7e3c8e131e1f2c59e6a5fd0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62cc4873890f7fde990b8ff9027b605c74d58265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3c1a64c40e76ce4fdfcd378d089974dd714d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7250045f244970d25a432c86cedc3bdf8fa246a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed44e3e46808a504ba93de6567e2d7d00bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ae0141ba0ddefa947c7a7bae1ed6061c0a71ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36c7df05c01c6a92f5380f38b6a0af9a85c46b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfce1db41097bd827ef776b3e5dc42fc4201e197b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0687594d4a4bfe749faa566977c4b8ce8f1d33ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x143a2d7040216115b23381924f1c9cf5322d7c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x18f79ce8cb305f6ba9f896bcf04a67abc0880f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x256a50d9d20ae86e9fc252608b3258d6f1d1195d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2b2f1b4e23589f290f7f66917db22906388c6f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2f5d9396ea2783ab312844c84180a9584cc80820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x310ed30f609b68c05100a9978bab966e401321fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x358ac2af72d27baffec5a5b4731b93842f0f0fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3b76ba3a6414d42f83db1ba879b12b22f93a0621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x406f26cb3c430dc4053f0b0b3745fe3334385054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4d312e48fd840700b3a0e30367caec1c47a06df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x523bd600daf3dc96fbadeed2be90d1630bcf979c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x594d7b2c9ac0f93064a9a311417685f5a669850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5b0e7ffd3d8970cf15c6afc87f9c323691b2c995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x650ea9b60cbe74ce6d3354768bc6c3fa7dc98cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68aa542f054410662a8f3148d0e8ea13c48cc4eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68ad5a19b50f9d70a462e6e992fca0b0a73afd88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6b2b46fb768e552de86c13d02e61c480675bebc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6bd6a005161edb22ae73e3bbbe41623ac3baf0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6e2f4f088da88d88045eff6beac811137890608e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ea74dc8478909e1d473183e7dfe0be54134a4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75c80aca604c74fc8cc2cdd3d612ac80ed1efe4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75d13bae666c7728d36f9e4923626941d6ab997c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7b5e2d0d3cf3fe290e436bdab23e01d912ff2f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7d05a178ca6b5111cc6d4bd18ecbf53c5297df74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7d507d9fd298daf216c72645a1e3f99749b6d273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8290ef21817924c2b7790886d81c766515a8bc82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x868ddbd925280356e6bb13581bc9e332d5512b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x884a7e38f82b00ff62205e81f49c533edfac7338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8ae11b48103c0caa90f56c5b9a60337216c08b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8ce286681f2015a4d705ae32cbf1ced8dfa0a400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8e153fc18904f5ed870671275b6f90f19387ceb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x92ae8198e6905c8b55dcb9f3d6e72483ee9f62e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa3af272d55cba5180081eb4ae3fbbca9e1c22086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb003ff9baf0e0e8046f5982a1b054a57b436fa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb16fd85c4be16347ce6230c1946f0016eb205b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb869dea120483b7cd57e235474cb91a3db8573b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc6fbb0811467e76585ea30d312d629fec0d5468e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd734ef927bd75cf8383bdf75cd8dc6eebdf3b0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde1f979a8bdf614a3a14ae2f76cdc6d6588dc75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde320124292f52e920670d16272a1736b757d228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde3e201b2e4f440e7611c9ec55ffccafe1c963e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe6d860a33b7911600c2ee058be0f4e78f6d0eb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xea2c3fae516c83c166f4cebde87bafa9803f0b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeb4a4be224530cf74d56cae862096ba442b00fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf2a7e33957cf150f14985b58bc0bea3fec00206b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf3e5e2fcde9ccf9bb9b952f76ca5e12f191dafc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0530f99e0100a6580af605491a319b8e67f0805d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x092ece7a3513219c10a466cf40da0c38941b40a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f812e40372e387fb7269439eefc08e676aeeb07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14352d332aae3da20797ae49a3c493b50bd0e164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17ee336e204e0e993e469b04237b553298fe87fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dff18a0a931b3695048cfb6e610cfe2905506da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1eaf47465276d431aa96f2393d746cfcb1ce057d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2614dd18f16d3aeaefc1cf8d91f389f300567fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26c45f9eb3214b329c11e9cfea559a9c7361055b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a1745da549c99867b00252b75ee21bfc4104ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d074191f47b1cd1ee7ac57fefbbde24165b54bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3056d68580bc72e5005f79fdd4b88af1d50d78a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x347eae6164a7aa869c785a973552b25d2d0ade91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36dd11f98adc6aefa47e422641ac902be3464f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37ff350890ea0c0ada5a9f88bb2f3f6c4601704b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d502fbc64121894a8a1fbadc71423eaabcfd685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4325d177630395e22b6a40949c6693499715962f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43aeef81836212be12e16a015fddc3ff7b640695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b23651d797af6f6a2283a9b5597d5a8306fea36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d2000d31dbf6637e3caaab1195f424267340e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4eadd7055adff2984ac86821a26f2a14d85b93ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5dc9e7b27c501b821d8f2f20fba93b1de8f24312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5dcd797b4c21cb3217e81af3564823b50db607b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x616e10a412d4401a6ead50b9aa701496a2afd5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68387f85c796ca138c0b74c6c42efe33e7af7a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f7a38ff25651571b46b276e40e7f8e9963da3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7309225318a8c5bdc6be37eeca36e4353e3b54f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x730be4311fbcd6608bec4007ac6c795f8d62f6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7689ba0a5dc764bc7c6bc8a9b15e373fa4ab133a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76c43c915dcf70ba6924c0cb0f1927f37ad2b327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86c3f3910824be34ff46c1d5c70c6a59e88894d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88c66bb7096c288426eafef052e3a861e6e994c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88d4b21bd6f20f4abd92943ff9e7878de8f939a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ad3e1bb775ab5881bfc272acb23ee8975dda865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c488f69620114f9e09bbce358b3a59b006833b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d7c63b7564cd14a350502b6c34ecd160ed8c9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9032c16e9f349c69ad6c9b7ccf0018b22345c9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95c40ec7eeab132685c01a6b70896852393fddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97d5016ecc7cb0bb522c13e8f2011a72084c5086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b30af0133c10455c395f5a5a3b94a9d0d3b1181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9be0ecf2d0e04796efa1cedecb0bf5beb6e86993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f907ce3972bb3d0e1fe8b42ea8109eb2c06eb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa48391c9b82a16c325c55856a53c48d4ef114dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6dc787fc322dda0f6b18a3f6c9aa9b4af74d19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaae0ab6c5f7488b3627130004732eef34ef058c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab0776df112c98242d9ed1b6f44d5a04a189bfdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabdd30ded4d2456226332b965057ba2a8a291e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaed44e3e46808a504ba93de6567e2d7d00bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf89e889c4a79497c91a77d689d7c232714062fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2db8e788071d81996f2039640540b4e180ad762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb30693c8beac531439e6cae01886eb43c48e8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb916a2f24d94f07665e4259082a1ba031683bf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba5f28e91f1331f957b12d4712ff1cbca78a0293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca7c55043a8df8dec5cadd251dacd5dbbd4b7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf2ff92f012603ce8d472ae9ce20886ae68d4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1169a9174e084ce58967dfb605ab21b309dcf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc17f76c0c22539a9c683437ff5d44a2a481ce559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc25987638864dc846061774adf17da31f6d32d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5b91964bbdd3b9d4edf905abac9d777a355c514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc927fe2cdf95ba9de38016350e9f83c2d01e14c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0f26db859745f76ebb4967a5859061fa044e2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd46cf5e49133621928c93710f70cf5a380372699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1568aab673f35e0cd72927586babe864a0781b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1a201e7c47de85f563ea0f1f9de2284439db69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebd56cc73bd973b1f3b9fac54a51ebc41c4fe5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf37b1ad73109fdf0a2936c27548eb2d2c51ea557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40859f9e6ab8b81da9ddfde573bef3080d4c83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7c693cc5814456669bb9b068697bf55070566aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc1dccfcbfe0c26022cc6323d60f9abd6fe3e010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe0dcb33cd64d87f8cbb12b693f41d719c18eb25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Harmonix Finance - Zenith Audit Report.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Harmonix%20Finance%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [HarmonixFinance-Hyperliquid-Security-Review.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/HarmonixFinance-Hyperliquid-Security-Review.pdf) | Hyperliquid | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [Verichains Public Report - HarmonixFinance.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20HarmonixFinance.pdf) | Verichains | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Verichains Public Report - Kelp Delta.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20Kelp%20Delta.pdf) | Verichains | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14729] Harmonix Finance - Zenith Audit Report.pdf — matched: Scope section explicitly lists three files: balanceContract.sol, fundContract.sol, fundStorage.sol. Audit dates: September 19 to September 24, 2025.
- [14730] HarmonixFinance-Hyperliquid-Security-Review.pdf — matched: Scope section explicitly lists three contracts: BalanceContract, FundContract, FundStorage. Audit date is 9 May 2025 from the cover page.
- [14731] Verichains Public Report - HarmonixFinance.pdf — no match: All contracts listed in the scope table (Section 1.2) are extracted. The audit date is from the cover page and executive summary.
- [14732] Verichains Public Report - Kelp Delta.pdf — no match: Extracted 9 contracts from scope table and findings. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Harmonix Finance - Zenith Audit Report.pdf | balanceContract | unmatched — not counted | — | listed in scope table | no |
| Harmonix Finance - Zenith Audit Report.pdf | fundContract | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xfde5b0626fc80e36885e2fa9cd5ad9d7768d725c` — deployed 2025-06-25 17:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Harmonix Finance - Zenith Audit Report.pdf | fundStorage | unmatched — not counted | — | listed in scope table | no |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | BalanceContract | unmatched — not counted | — | listed in scope table | no |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | FundContract | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xfde5b0626fc80e36885e2fa9cd5ad9d7768d725c` — deployed 2025-06-25 17:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | FundStorage | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | Aevo | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | CamelotLiquidity | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | CamelotSwap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | Uniswap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | PriceConsumer | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxAccessControl | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | BaseSwap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | FullMath | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | ShareMath | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxEthLiquidityStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxOptionsStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOynxUsdLiquidityStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | BaseRockOnyxOptionWheelVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxUSDTVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | BaseDeltaNeutralVault | unmatched — not counted | — | listed in scope table and mentioned in findings | no |
| Verichains Public Report - Kelp Delta.pdf | BaseSwapVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | BaseRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | PerpDexStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | KelpRestakingDeltaNeutralVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | KelpZircuitRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | Uniswap | unmatched — not counted | — | mentioned in finding 2.2.5 | no |
| Verichains Public Report - Kelp Delta.pdf | BaseSwapAggregator | unmatched — not counted | — | mentioned in finding 2.2.8 | no |
| Verichains Public Report - Kelp Delta.pdf | RockOnyxAccessControl | unmatched — not counted | — | mentioned in finding 2.2.14 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 7 |
| standard_library | 53 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 29 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [14731] Verichains Public Report - HarmonixFinance.pdf
- [14732] Verichains Public Report - Kelp Delta.pdf

Fork inheritance lineage and inherited audits are included when available.
