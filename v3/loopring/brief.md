# Agentic Audit Brief: Loopring

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Loopring (`loopring`)
- Website: [https://loopring.org/#/](https://loopring.org/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 195 unique implementations (446 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,125,806.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Loopring. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 127 contract row(s) across base, ethereum. Structural roles: 124 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 127
- Structural roles: unclassified (124), core (3)
- Contract kinds: contract (127)
- Detected standards: eip1271 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 127; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 179 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 127
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/98
- Verified + Unaudited implementations: 98
- Verified by bytecode match: 0
- Unverified implementations: 97
- Unique implementations: 195
- Raw deployments: 446
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (98)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddOfficialGuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b05742d857314847f6a583a7ac2c9324b1d62d` | ⚠️ Unaudited |
| AgentRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245429 | `0x39b9bf169a7e225ba037c443a40460c77438ea14` | ⚠️ Unaudited |
| AgentRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x8e182116d32f693d00fa5b59af8f53a97a9a3240`; base `0x0d9b7f5bf6b81f0418233a1c2bffe6b4fd87786b`; base `0x1b5544b5ed6053772b849ef975f2f1ba94fd1e69`; base `0x46c362770947dbd4082474242bc579a0f026644c`; base `0x533379cb7b2ee9479a072c769ec59e28174f9f25`; base `0xd06824818cc35445cf1593729b892f80f2f04eff` | ⚠️ Unaudited |
| AmmExitRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02d1b34cea8a23d2ca0b6c35e66e515729e9e7b1`; ethereum `0x643caf6bb68986cd17f71e225c8e264378bfcce5`; ethereum `0xe5fd792cd688ea777f1fb6f6b8bb6dfd46df54a0` | ⚠️ Unaudited |
| AmmJoinRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2fad77345e55d3c5dd95ef7594c8c1b214273d3e`; ethereum `0xd86ecd9dc3c18e1d202c63941cacb85ec9fadf83`; ethereum `0xe34ded1e3cd87354ddd245926b38ecb8de466bfb` | ⚠️ Unaudited |
| AmmStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x67e66af72af4103a4d8ada54e967afd36e00df60`; ethereum `0xaae0a0515609723f66a38e6fe9e3455e7897143a`; ethereum `0xba64e6de39f6303f8e62b4d52386b76cab626ee6` | ⚠️ Unaudited |
| AmmWithdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x40d9fab377d368753b9814e788393092ae374639`; ethereum `0xb971902d99e1f94f02cc19e6bec73cf3d38c16b3`; ethereum `0xd2848b80bec963af8fe4fd51a22ad25e70398f7e` | ⚠️ Unaudited |
| BatchVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3edbc702aee93b470ca9e586b4eec0ff6a211b5f` | ⚠️ Unaudited |
| BlockVerifier | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245437 | `0x6150343e0f43a17519c0327c41edd9ebe88d01ef` | ⚠️ Unaudited |
| BlockVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x40598b41cc17a7e56dd72f415e8223aacca94cf7`; base `0x18d5879a890b135b36190f6df06f9046c32f15f9`; base `0x921c0ed3eda52d45e8572b45cc8438b2efc44f91`; base `0x95bd4d0fb3ca93d624e890f1b2b0ae9b22f396e3`; base `0xae8de524578dbbabc2ccf7dcdcd9b955ab0032ad`; base `0xc9a437be55ffbcd64aa6f0596d2906fac2591c94` | ⚠️ Unaudited |
| BlockVerifierOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3941215651f37b681526ea359642174f8e71b3f` | ⚠️ Unaudited |
| CancellableEmployeeTokenOwnershipPlan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8372cfb259ce98d299bc6fe1e1833a216625cf8f` | ⚠️ Unaudited |
| Cloneable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59d0e7ac20094d2c1813c23372b1a8ca4f4cc22a`; ethereum `0xb3782895fd2c407e5efee5d63f4731349f663438` | ⚠️ Unaudited |
| Collection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x163ceef0a33a9f284cef69d3629fc261cb94da84`; ethereum `0x45881f28b06a713dd67c56882317d9d41728e2ff`; ethereum `0x4900953a2e4cc7d78e7c7bb26df719bc4dd88d07`; ethereum `0x749a53e8026f5e2e44cd023063a9b9aece23fb73`; ethereum `0x7df389d06af9c7b4edd9a342ebeb0677318ac086`; ethereum `0x959f4c55a41a146860b263cacd9780a606976db8`; ethereum `0x9f17ee9e2a2ab570d390f21788e02c55e113b7f5`; ethereum `0xc451dd01b0bb748bf883cf9e574326cf641a243e`; ethereum `0xca4b6be473330f5dcea12fd71407f2244258c206`; ethereum `0xd716079345f2b20ba5270e351845cdc352991a3d`; ethereum `0xe06c7dcbb0c11f0dc2c9fbf7423925a59543a4a2`; ethereum `0xf7cff3fcccf75b6d901fa79b12d4e0b82b44445c` | ⚠️ Unaudited |
| ControllerImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243614cd87ec957c144a9f52098e63256c13ee91` | ⚠️ Unaudited |
| CounterfactualNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb25f6d711aebf954fb0265a3b29f7b9beba7e55d`; ethereum `0xc852ac7aae4b0f0a0deb9e8a391eba2047d80026` | ⚠️ Unaudited |
| CounterfactualNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b58140f90d66f73acbe873a81e5ae06a6d6119` | ⚠️ Unaudited |
| CounterfactualNftExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0da5b13c788736e3033210814955b5de4ee64f63`; ethereum `0xaf4c6c97c620425b9d05c6a12f886d14a04eff06` | ⚠️ Unaudited |
| DefaultDepositContract | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245439 | `0x674bdf20a0f284d710bc40872100128e2d66bd3f` | ⚠️ Unaudited |
| DefaultDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4ee77ca36a8df5ff9c4bc9edc1b3a5ced22bec55`; base `0x65b0c79f5793f6579d68c58f99d24df469442010`; base `0x732771f202ed19ca8e1844d334e1df5641dc99fe` | ⚠️ Unaudited |
| DepositAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x4def0e766c848a069c4df48a3c946f3872e99926`; base `0x1b561b2d785eb5344d489901fe4b724e5d764d9f`; base `0xfb8c97dc31e629841090cffbed0e70c1ee85459a` | ⚠️ Unaudited |
| DestroyableWalletAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245433 | `0x4cd8d47048b03294820a32ebf58cbc6a76f7f529` | ⚠️ Unaudited |
| DestroyableWalletAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf75b89d214512c42c474bb0ee5d865e953c28109` | ⚠️ Unaudited |
| DowntimeCostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x873685f032c6aa1572766401f3198a1f09a5c221`; ethereum `0xee38e95d0d6dfeab38baab9c70ed32b1b0fd686d` | ⚠️ Unaudited |
| EmployeeTokenOwnershipPlan2020 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1161ef73d7254a778f9f6f83ec24fbfec40870a4` | ⚠️ Unaudited |
| ERC1271Lib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd08e75cbe0080ff28903cf27622284c4da4a3c5a`; ethereum `0xdc6a946525c4075a0bff457ac2c282cde3b897b3` | ⚠️ Unaudited |
| ERC20Lib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7c436db65ad7a02bb03ca727d027bd34789958` | ⚠️ Unaudited |
| ExchangeAccounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0805f5834b37eeea8108ae27755cc4ef27a80fb0`; ethereum `0xc9a437be55ffbcd64aa6f0596d2906fac2591c94` | ⚠️ Unaudited |
| ExchangeAdmins | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x410ac9f2d2f07dc75a4117705b3a27720551b942`; ethereum `0x6b797b4680edb6fd8c9d3b5a3a6eb1c1da07905b`; ethereum `0x919551e7c778539f6238e3483358a2afbdaa83c9`; ethereum `0xa0564fa9fdd5490ad359dddf62279d6a7d1713ea`; ethereum `0xb9c5d84f8fc65aa921d306e37f2dba9b19ec3891`; ethereum `0xd06824818cc35445cf1593729b892f80f2f04eff`; base `0x0e77d9716e3f6a6ee4763fcc59ed164cf74a691c` | ⚠️ Unaudited |
| ExchangeBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x0845ab3d624b2c6ca94b859df564df6def2347ee`; ethereum `0x3a9c3e54231689dffaf9e05c265c10d7716fe38d`; ethereum `0x4e4ea223f186af4ada0df05cb1fffd0fb46501c2`; ethereum `0x6ce48c5e1c6391f6877da7502a0d8621727ea441`; ethereum `0x735720a7aa4df3fffb24c3f1d9bf5206189dd8bb`; ethereum `0x90e222b9bc88072ddf9f0ab668dcc58282f05c3c`; base `0x013aa50dc4a1b11c6a1b37c2961895c9dc826069` | ⚠️ Unaudited |
| ExchangeBlocks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03fec3d0b8690e3ebbe7f5949a3cce8221e6538d`; ethereum `0x17d3efeef8e9d254a9e68b27386bd9beb9addf3b`; ethereum `0x5316ca721801079b93b77c4524822d1c79b4d8b7`; ethereum `0x571d92144d96bcf1a76ec47ee1464a552673b67d`; ethereum `0x8c5b8ecea78b802b59faa08b9400fc2f6b7b4d3c`; ethereum `0x94cdf6621c190f5950ed9e16debb19e6a8d2e84e`; ethereum `0xb01e1b1ee285c16429e750aca67546d5bcc797f3`; ethereum `0xb1fe32a3d762337a2fe8f0ea1b968f7cf3067988`; base `0x8745074248634f37327ee748137c8b31238002c7` | ⚠️ Unaudited |
| ExchangeConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3353ab2b32db682e98a2ab4ba90a58e63f5f4ac8`; ethereum `0xe704a9e855f7d0cadde0dbd7bedc00ac7ede1b08` | ⚠️ Unaudited |
| ExchangeDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07f50b5a6a3f1f069c27ea11ffa62b53a20872cc`; ethereum `0x7e185c0233d4f5473e540fb2c72ff0e994d4359c`; ethereum `0xe9d63969d80da69ecb2ae1fecde31aab0a6f2975`; base `0x7e185c0233d4f5473e540fb2c72ff0e994d4359c` | ⚠️ Unaudited |
| ExchangeGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x013aa50dc4a1b11c6a1b37c2961895c9dc826069`; ethereum `0x0e3229004b55ed8edcc29473c790f33c2b693d38`; ethereum `0x77fad75e6eae5a80b7053ce61c8f01f969c325b9`; ethereum `0x86aa01dbc98ce6697b1b4ad7ea1b8c3525b55c4d`; ethereum `0x8e0110b29c9d4229c8fdb3f2bd56735b8e4a8681`; ethereum `0xa2f3346c484ac1f55ef468fd2fe427b9730afb9f`; base `0x0d75ce2c4534d273d42c29371c9749aa133c1764` | ⚠️ Unaudited |
| ExchangeTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x24f51fadc255dfcbc436615167c325cac7010b29`; ethereum `0x432bcd4fade6e54f8b0773546af44bf7c90fa7f6`; ethereum `0x52c0dfd4901171f5eb21ec5c21008af6b0e448bb`; ethereum `0x6be34aef9bbfa8171889dbf72fc2516407cd1b03`; ethereum `0x846d938611896188ba18ec69014a5f3801ba5037`; ethereum `0xa3ac9be46eb0f39b772908b5a5b16eae188fc765`; base `0x99ce8b04a1b4f20d8491446fc9280e9d1b8a96e9` | ⚠️ Unaudited |
| ExchangeV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245445 | 2 deployments: ethereum `0x0baba1ad5be3a5c0a66e7ac838a129bf948f1ea4`; ethereum `0x26d8ba776a067c5928841985bce342f75bae7e82` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2fefbef4d1445f523941c56349c2414cd5e9675d`; ethereum `0x3c294fcf74129d649325f8995afc2f9cfafab9da`; ethereum `0x4fb117dcd6d09abf1a99b502d488a99f5a17e7ec`; ethereum `0x730ea81c982939931d7514cc3fbc22eaf7d372ec`; ethereum `0x8c63d8e608ff702a92d5908730c91457b0447ad7`; ethereum `0xa01d4d1fe18a34902ac2e4045a5e8f553dde9685`; ethereum `0xc2d1e8fb0c10810bb888231e7b85118042846105`; ethereum `0xcfba78aecfbcc0b4b748fa58c530d4675bb5d32f` | ⚠️ Unaudited |
| ExchangeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8799388f62121dd7b71d34440b80a3846c4b4773`; base `0xb58d105d6ceba3b63766f06784f1e0aea164b121` | ⚠️ Unaudited |
| ExchangeWithdrawals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0e77d9716e3f6a6ee4763fcc59ed164cf74a691c`; ethereum `0x110a4ff43c08ff04b6b0e1bc37c932cfbef0ce4a`; ethereum `0x2058db04bc793d3b0a306db80aba143a6c0df826`; ethereum `0x46a71e786c34714928390782e9e50ee1c2fa9989`; ethereum `0x4d6924ac10b840a17ac841b2e3d446c9e0d88d68`; ethereum `0x5045b1c83ce8f7f6db5fe9b4a778f3e4d42d0809`; ethereum `0xb1d6e665c60d7c11759d2a593d35705f35c0a692`; base `0xc2d1e8fb0c10810bb888231e7b85118042846105` | ⚠️ Unaudited |
| FastWithdrawalAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245443 | `0xec3cc6cf0252565b56fc7ac396017df5b9b78a31` | ⚠️ Unaudited |
| FastWithdrawalAgent | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2023c4c0ef8fe9a1883ec8a08b456e0c9b20d99f`; base `0x41a2e4bef9effbb377806588358e0da63baae769` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee94cf48924b720af939e732e98f30f9594f87c5` | ⚠️ Unaudited |
| FinalCoreModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7c9f9fb318ebc08424406aed752455ade1ee55` | ⚠️ Unaudited |
| FinalSecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ff3fcc5955d9c2caa609eba66d34607fd69482` | ⚠️ Unaudited |
| FinalTransferModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xac70c6389b541ed4a36b86f957947208e864f9b5`; ethereum `0xc25275687ab454791ebd170cd7a68fe46a75e216`; ethereum `0xc9ad26eba42259fedbbf069d14371a41626cea8d` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245435 | `0x52ea1971c05b0169c02a0bbec05fe8b5e3a24470` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0x6ef5c26514c95b4e0185de4784091202760cd61b`; base `0x058b93012eedef1795b1028f41080ed5387efcac`; base `0xceefaeaec94be194daafb94b467c495039d86415` | ⚠️ Unaudited |
| GuardianLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d9686e4b4706c425e91e4cf762c09d7686cde7` | ⚠️ Unaudited |
| HashStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ea970917451fe149537779c20f721eb5e71e76` | ⚠️ Unaudited |
| ImplementationManagerOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab867f1648ac89d7339c595a22378ed9d3d3f8a` | ⚠️ Unaudited |
| InheritanceLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc026940dbf2559c6fceb609915b00937178bf9` | ⚠️ Unaudited |
| LockLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf4e84150748ff8eafb3d8008c1272ac6c08f300` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 113 | ethereum | unit-245447 (113 proxies) | 114 deployments: ethereum `0x0089081950b4ebbf362689519c1d54827e99d727`; ethereum `0x06ac0efb3e358528ecd1e7336342c822678dae4d`; ethereum `0x0818e9a3a42eede47cd1482461b594f32ccbe2d5`; ethereum `0x093137cfd844b64febeb5371d85cf83ff4f92bbf`; ethereum `0x0aa4d2dd35418d63af13ea906ce3a088dec8d786`; ethereum `0x0bcd579513410c4169d13b674ab58d009a329683`; ethereum `0x1230f7e06c3fa96f4259f7bad79e6aff321b8133`; ethereum `0x145f20a0c129d592da261e42947a70be3b22db07`; ethereum `0x17baa21bec595da6a9d88a4b4ffdd1d336186c48`; ethereum `0x18920d6e6fb7ebe057a4dd9260d6d95845c95036`; ethereum `0x18a1a6f47fd92185b91edc322d1954349ad0b652`; ethereum `0x194db39e4c99f6c8dd81b4647465f7599f3c215a`; ethereum `0x1ad74cf7caf443f77bd89860ef39f4ca16fbe810`; ethereum `0x1b04a25a0a7f93cfb0c4278ca4f7ca2483a1e94e`; ethereum `0x1cb97a1fdcbc60f112b5a58896906bdb870bc438`; ethereum `0x1d28b287b5e19b12ac2b3618405c57ad882a4d74`; ethereum `0x1f78cd24ccf73fdd5095d0339dd6ef72e30669ac`; ethereum `0x1f94eaaa413c11bea645ee65108b5673304753bd`; ethereum `0x22844c482b0626ac09b5689b4d8e81fe6710f5f4`; ethereum `0x24e4cf9b1723e5a5401841d931a301aedecd96ef`; ethereum `0x2eab3234ea1e4c9571c2e011f435c7316ececdb9`; ethereum `0x2ed5d3fff0eb1451c381ddece244e9b796db7b8a`; ethereum `0x2fac662748f876ca1d3a1b59ef5be45c128ecfe5`; ethereum `0x33df027650cd2729e0b132fc0bff4788725cc0fa`; ethereum `0x34841262432975e36755ab797cb523dd7248861a`; ethereum `0x37b6aad464e8916dc8231ae5f8aee15dd244c1b1`; ethereum `0x3ec139b45558d1db73b889f887624ef117d28e3b`; ethereum `0x41e3b439a4798f2f466d28be7bedc0743847dbe4`; ethereum `0x43eca2f58d8c371c5073fc382784a3a483005d6b`; ethereum `0x447356b190c7dafbe0452c8d041725abf1e1d41f`; ethereum `0x4a7e38476b05f40b16e5ae1c761302b1a7d5afc5`; ethereum `0x4e585bad734f0c6af04a3afb359fdb69435fe74b`; ethereum `0x4f23ca1cc6253dc1ba69a07a892d68f3b777c407`; ethereum `0x4facf65a157678e62f84389dd248d99f828403d6`; ethereum `0x502b5525e1508c51af46719d13e5238b83a404e5`; ethereum `0x5359f0fd5ef2a6f0205436cc19eec1d6fc521b5c`; ethereum `0x554be7b23fde679049e52f195448db28b624534e`; ethereum `0x567c1ad6d736755abcb3df8ef794b09bb7701e66`; ethereum `0x583208883277896435b9821a64806d708de17df2`; ethereum `0x5c159d164b8fd7f0599c625988dc2db68df14842`; ethereum `0x5f24c3a2c9841c023d6646402fd449665b64626b`; ethereum `0x5f6a9960318903d4205dda6ba45796bc969461b8`; ethereum `0x636a3141d48402d06a907aa14f023e8f5b5d634f`; ethereum `0x66fad4ab701ee8c6f9ebef93b634a3e7401aa276`; ethereum `0x69a8bdee1af2138c58b1261373b37071850689c0`; ethereum `0x6bf0060fbcf271a2ed828e77076543076d5edba1`; ethereum `0x6ff8a397f7a04b41c58c00ab8e70aca7cbc0adba`; ethereum `0x70c8e0aedb5933da09c9392a17389e4d6d79d638`; ethereum `0x73b7bc4463263194eb9b570948fda12244a5ffa8`; ethereum `0x746eeb6bdd9139a4d605c2c410911f37bea9093b`; ethereum `0x759c0d0ce4191db16ef5bce6ed0a05de9e99a9f5`; ethereum `0x76d8ea32c511a87ee4bff5f00e758dd362adf3d0`; ethereum `0x78a58558ca76cf66b6c4d72231cf6529ed5bef29`; ethereum `0x7ab580e6af77bd13f090619ee1f7e7c2a645afb1`; ethereum `0x7af6e5dd61c93277b406ffcadad6e6089b27075b`; ethereum `0x7b854d37e502771b1647f5917efcf065ce1c0677`; ethereum `0x7cd7871181d91af440dd4552bae70b8ebe9fba73`; ethereum `0x8195be4e48d3a2f80692fe1dba9b23b8050fb1f9`; ethereum `0x8303f865a2a221c920e9fcbf2e84703991f16251`; ethereum `0x83c11cbfbed2971032d3a1ed2f34d4fb43fe181f`; ethereum `0x83df13e357c731ec92d13cbf8f5bf4765a8e1205`; ethereum `0x8572b8a876f47d70128c73bfca049ce00eb77563`; ethereum `0x85f2e9474d208a11ac18ed2a4e434c4bfc6ddbde`; ethereum `0x8a6ba9d448ad54579bed1f42f587d134bf7f8582`; ethereum `0x8a986607603d606b1ac5fdcca089764671c725e1`; ethereum `0x8cf6c5e7ec123583e1529d8afaeaa3d25da2fd3d`; ethereum `0x8e89790635dbffdcc0642055cb21abe63edc484c`; ethereum `0x8efad07720d331a49f5db2cc83946f7dc8fc6b42`; ethereum `0x8f5a6e6d18f8e3fdffc27fe7fe5804c2378f8310`; ethereum `0x8f871ac37fa7f575e9b8c285b38f0bf99d3c087f`; ethereum `0x9387e06961988726dd0732b6930be1c0a5343901`; ethereum `0x93bb5b402f04d3053f2c3800f6a4af54788c16d0`; ethereum `0x9775449efdf24b7eb5391e7d3758e184595e4c69`; ethereum `0x97db7f2758ec94757ba163e3052236b73dbf6c9a`; ethereum `0x994f94c853d691f5c775e5131fc4a110abeed4a8`; ethereum `0x9a94a815f56d00f52bbad46edc6d12d879df2635`; ethereum `0x9b7a20ae12a3f2a3d4cf9ea2d4a8518c104cc5f2`; ethereum `0x9c601377fd95410be46cfc1a786686874c6e7702`; ethereum `0xa0059ad8e06c57458116abc5e5c0bdb86c4fb4b2`; ethereum `0xa2acf6b0304a808147ee3b10601e452c3f1bfde7`; ethereum `0xa2f4a88553ba746a468c21d3990fe9c503e0b19a`; ethereum `0xa41e49fdcd0555484f70899d95593d2e1a0fcbbb`; ethereum `0xa738de0f4b1f52cc8410d6e49ab6ed1ca3fe1420`; ethereum `0xa762d8422237bd26b4f882c5d0744726eb2a86b0`; ethereum `0xa9d46dedeff7dfe8ff3628f4d276a0e1c5007b81`; ethereum `0xaced28432cd60d7d34799de0d745871e5f10f961`; ethereum `0xb27b1fd0d4a7d91d07c19f9a33d3a4711a453d7c`; ethereum `0xba64cdf65aea36ff4a58dcf288f1a62923555795`; ethereum `0xbbb360538b07b59ba2ca1c9f847c8bc760b8f0d7`; ethereum `0xbbca4790398c4ce916937db3c6b7e9a9da6502e8`; ethereum `0xbdc384db410e56f4877a086f5b68debd673a7c48`; ethereum `0xbec0c576ef02cb6341725607ab5d941e32b44437`; ethereum `0xc3630669cb660f9405df0d0037f52b78c49772ab`; ethereum `0xc418a3af58d7a1bad0b709fe58d0afddf64e178d`; ethereum `0xc50138e6b5c85622e4b8ab9003eb0bd35dcf6f78`; ethereum `0xc6bc133562b470a61394f9a2ff7fe8082da698a4`; ethereum `0xc8f242b2ac6069ebdc876ba0ef42efbf03c5ba4b`; ethereum `0xcac49516e6e1c79a62bd67e4d87f7e0d80858258`; ethereum `0xd0406913f2f58d1696eb9c3677e6713dd528f8cd`; ethereum `0xd4df78bbd50c564702f0c96c8c7de536154db07d`; ethereum `0xd85f594481d3dee61fd38464dd54cf3cce6906b6`; ethereum `0xd9d681c1ddd462ca222e90bbe14a35273c318a09`; ethereum `0xe6cc0d45c4e4f81be340f4d176e6ce0d63ad5743`; ethereum `0xe6f1c20d06b2f541e4308d752d0d58c6df07191d`; ethereum `0xe7e807631f3e807ae20d0e23919db8789680104b`; ethereum `0xee6a9d6cb11a9796f767540f435f90f11a9b1414`; ethereum `0xf11702d591303d790c7b372e53fde348b82037de`; ethereum `0xf85f030865359d1843701f4f1b08c38913c3d57f`; ethereum `0xf88de0ccd1e84898b4ea62c421009996bfb6156e`; ethereum `0xf8e4abf498235fa8fde2f6a04c21db7877957c47`; ethereum `0xfa6680779dc9168600bcdcaff28b41c8fa568d98`; ethereum `0xfb64c2d72e1caa0286899be8e4f88266c4d8ab9f`; ethereum `0xfd997e572f03f3ff4f117aaccaab9b45bfb6e01c`; ethereum `0xfe88c469e27861907d05a0e97f81d84c789a1cda` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47ce50ff181baef9139187273f66c54796d7bc2d`; ethereum `0xa573c5d473702286f0ac84592eda49ad799ebaa1` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6d537764355bc23d4eadba7829048dac8215a73c`; ethereum `0xee017df188362f8620058e6cef56d0e65b872164` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x9795f527d0fad45f41de27bef71f0eed47f5256c`; ethereum `0xa186e201225e468218d53f3f9b42012022d425f3`; ethereum `0xb8108988406db7c4035bcfef2bd924a9810ae7e6` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc2e3d2dc1fd6ce145e1124868fda5b2a0592cc5` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245469 | 2 deployments: ethereum `0xe6abfcabe24f06197a7a20dc9c81c251f2862430`; ethereum `0xe8ea36f850db564408e4165a92bccb4e6e5f5e20` | ⚠️ Unaudited |
| LoopringAmmSharedConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x19b28198d993d3b0b1807c7bd46b4f0a4afd473d`; ethereum `0xcff0e58d0d24563f0c7f945b92b0d46ebcb906e1` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245427 | `0x153cddd727e407cb951f728f24beb9a5faaa8512` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x42bc1ab51b7af89cfaa88a7291ce55971d8cb83a`; ethereum `0x5c367c1b2603ed166c62cec0e4d47e9d5dc1c073`; base `0x43d05b33a4f07c97c052478ddd104b81bb501afe`; base `0x68499bad935a9f35747ea89311216092983737a4`; base `0xadcd9763dc3bf157504c47a2eb341e96655bcc59` | ⚠️ Unaudited |
| LoopringV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x18dd1dda037b009f7c1024dddd58e4fe9f960ac7`; ethereum `0x8745074248634f37327ee748137c8b31238002c7`; base `0x1a75c2a6ccedfe038c12574aaaa93f5118894718`; base `0x267b9bd5f931d9de17b6bc7a883d6f4ac9836c94`; base `0x3edbc702aee93b470ca9e586b4eec0ff6a211b5f`; base `0x571d92144d96bcf1a76ec47ee1464a552673b67d` | ⚠️ Unaudited |
| LoopringV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245441 | `0xe56d6ccab6551932c0356e4e8d5daf0630920c71` | ⚠️ Unaudited |
| LoopringV3Owner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc4ae885815c5b469ce6ac17f945a6da38992f17` | ⚠️ Unaudited |
| LVVaultNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae6987b1510f9ec7f5419a1f7b31574d1901ecb0` | ⚠️ Unaudited |
| MetaTxLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e978eaec76291fcda3c727d022c3589d74be43` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d9b7f5bf6b81f0418233a1c2bffe6b4fd87786b`; ethereum `0x277c2c086f7435496e7d892ac370e5bede2ba8e4`; ethereum `0x95bd4d0fb3ca93d624e890f1b2b0ae9b22f396e3` | ⚠️ Unaudited |
| MigrationToLoopringExchangeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x665f6416c194ad7ca9c88d542677375bece9ddd6`; ethereum `0xf561cefb964c4fabfb519afe4a9ad028b4b3191e` | ⚠️ Unaudited |
| ModuleRegistryImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8af9c2389af5710dba268050ebf9350cd0acab3` | ⚠️ Unaudited |
| MoodyBrainsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cacc96e5f01e2849e6036f25531a9a064d2fb5f` | ⚠️ Unaudited |
| MovingAveragePriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388110217e4d194d501bb52c3ab28dc709eb450d` | ⚠️ Unaudited |
| NFTFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97be94250aef1df307749afaed27f9bc8ab911db`; ethereum `0xdb42e6f6cb2a2efcf4c638cb7a61ade5bed82609` | ⚠️ Unaudited |
| OfficialGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9cf38f4db6ce5c4b0f6abd419d38429625f7a5a2`; ethereum `0xa4803058963e1314a938dbb4d9027d156e034f6f` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00ce6c2312b725baec331f6047c2fd20b7a0d151`; ethereum `0x3ea4a2c423353b32869df5fd9bdefa69f0979712`; base `0xe2f62365279ef91646da51f0952d8a391a1fd927` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x399d89611e01cb94c7d0b30731013e1e431421fc` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x40598b41cc17a7e56dd72f415e8223aacca94cf7`; base `0xee38e95d0d6dfeab38baab9c70ed32b1b0fd686d` | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x873685f032c6aa1572766401f3198a1f09a5c221`; base `0xb3c408960f281c4fb212aedf5609adacd19356fc` | ⚠️ Unaudited |
| PriceOracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb124190942976431d8181fbe183e44584253da68`; ethereum `0xfbf2310fefbe2f8969c58675406db2257ee66733` | ⚠️ Unaudited |
| ProtocolFeeVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245431 | `0x4b89f8996892d137c3de1312d1dd4e4f4ffca171` | ⚠️ Unaudited |
| ProtocolFeeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x5bb8ef8efd18c6034ec9277daca9a5e29b1f1cb1`; base `0x277c2c086f7435496e7d892ac370e5bede2ba8e4`; base `0x69ef9d101dc64a251381426fa27f0aef87b5e965`; base `0x883f31cc3b4e1754fd68a6f30b3a8804599fc7ac`; base `0xa3ac9be46eb0f39b772908b5a5b16eae188fc765`; base `0xe3a12f566cad7bdadeaa57e57a8879b76c978c09` | ⚠️ Unaudited |
| QuotaLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55542a24968e4933fd56eeb96634c9dbe17b0efa` | ⚠️ Unaudited |
| QuotaStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15f50bb48ca4be1ad4a6ad5804b18fb7d198618f` | ⚠️ Unaudited |
| RabbitWithdrawalAgent | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xab78c3cc3d04e8b8c5ed21a1e5bdd7cbbd9d3264`; base `0x3b740fee3ed82fa676286938e124a8bb74553f93`; base `0xd06d38fa70c4a36995128da0c2feebe68c6fae3c` | ⚠️ Unaudited |
| RecoverLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed0788a7bac3c8a551da44e1a747c4415c9842d` | ⚠️ Unaudited |
| SecurityStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f84f6f613280fd4df11ab2480e777ba8bb6282a` | ⚠️ Unaudited |
| SignedRequest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35825b18e8948442abc361b361b007e31130f314` | ⚠️ Unaudited |
| SimpleL2MintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7316e969e845837d82829cf9aac334a0547d381` | ⚠️ Unaudited |
| SmartWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ceed96d7f3e327aabc0d282231a406a19c52098`; ethereum `0x5fc8a17dded0a4da0f9a1e44e6c26f80aa514145` | ⚠️ Unaudited |
| StakingBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x199ca6e284f344210f9a3090d1eaf7d3b88ca079`; ethereum `0x3d3e1e06017014e8ff41b895307f41397d381ab3` | ⚠️ Unaudited |
| UniversalRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36f568ef555df25be4b6e15d16994f3a8374214e`; ethereum `0x4c2103152a1a402af283fa52903569f05477611f` | ⚠️ Unaudited |
| UpgradeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747240559d31f56bb6b92f7817785a65d24163e6` | ⚠️ Unaudited |
| UpgraderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x57d5abd74d813a9838d4d8ba7246e983ca1b5b6b`; ethereum `0x5d6be6009f97f4cc8d859b83b354dbc8b2d44d6b`; ethereum `0x9bd708ba2e187ed4540310e01bfb8e347528b434`; ethereum `0x9db0fee5bbaa7576addc2867f4f26750bf86545d` | ⚠️ Unaudited |
| UserStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4662bb1c4831fd411a95b8050b3a5998d8a4a5b` | ⚠️ Unaudited |
| VaultToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1bf6a4ef2103cae1a0ad338d2d9f33a1450488cd`; ethereum `0xbf8b972d52098ef3e179714572000ba6a70d3cae`; ethereum `0xe38308c0412d21bd9a76568c90fa0c9b8edf9961` | ⚠️ Unaudited |
| WalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x262f27480ccb98fa0b91d7a9f11bb82e3547ada1`; ethereum `0x57e037f4d2c8bea011ad8a9a5af4aaeed508650f`; ethereum `0x73d969cedfdf97767427bd58809757235c532fd5` | ⚠️ Unaudited |
| WalletImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5857440bbff64c98ceb70d650805e1e96adde7a` | ⚠️ Unaudited |
| WhitelistLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb6c344138c785d426435bfc733e7f9b76f28cf` | ⚠️ Unaudited |
| WhitelistStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1663647389993181d13cb45e2113c5d92fa89e70` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (97)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0182c5fe5de543be6812b38385366bd51120bd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b707778b909f530b95509587da0303337cca45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08afa2375eae0398fb420dfc696fbcc35ac9e361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4c71b732bd98b50c077db1041c837833d85634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158fe719338e9486ddc0bd80b05ce7ff9c3abd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200d5e99e918a13780233d678fd9ce0bcb50accf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2133fb4d3cefbff0163da78c03c1b5f05ba44b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdac2257e07bf7c4ead15e3216dfccda9910b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31830e312116ed34fd4d5e88ec56ae501d9e3ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35133bb109e5f14f1a8071f7e85396cc8e011acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35d957f150953a056aaf6465fd26379278324848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361dbc10f830cf2e7042fe0468a5d923d3f4893c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b141eeadd1ed10c7046105828e6e1f1e758c6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bfc654b85da972825e2f22d000fc5e32f910c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8edbe5d90e50eb3f7da5a784c191d2640bf79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bdcebe64ff39f380c1c0350aad4dba7c0fbd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4acae0c24ec0db2d234100402f7a43d1af9d3ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53a08ad3094d3c5135cea30b98df7037047895aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d96a920848ea3e7a45bed6d9a21acd706ead697` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x605872a5a459e778959b8a49dc3a56a8c9197983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6065f519247e93e45ebe27bc52c9104518561823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626c6179edc624e1ae8b1cc974f6cf1cea3b2b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650fbb7dccb280e4d389dcd33fb360253c754dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x682870b33db1203743cea34e0cf328d2ec8aa133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68499bad935a9f35747ea89311216092983737a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7794c44d7737e46fbf195f66a0ba188448e66c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852f6b3725dcd135c4f6f307ee96da781ac7e9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866c99b25afdc279b509398e22b9aa7f4952461e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9b0be1d77a101b32d26e1a890354b5feba082a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9230c464d14871997cc3e2bb0bafab80d01c369e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cb9c3702467d42baa73486979d6426786c045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e37cf237d9620365cf2ee47f829b173346ccebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8171965a9ab19e74aa995af234ba6af26cb57d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac23c02aefeba2a6404f67527c9e70e04438809e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6987b1510f9ec7f5419a1f7b31574d1901ecb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb42bbcd12c14f4b2efc1c84bb971f62a943db7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb1dd3b33a12ea3bfcc96f5303831c9b3e4c2087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb63993003c7e5f60dd0519096e21a36baabc62e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbca6a901c926f240b89eacb641d8aec7aeafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0273128cfadae26e13c224c1c414bd1eba5d5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc522644dea9eaef97b9350d7f54d0f0064e11021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca78718307d24d0c731fbc78019ca92c7a251378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80bd6471ac1229402af9ab74c6885ae9dd2d2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda046b30dfc119b8f360aeb4102352ae084986c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd369f551a8d1ca60832ac2ad72dc6d48785c16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376f748532ecab42e20091e0e36ba7409874fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5e8e63f32c88d1193d6bcfa3aad44543eb2d5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6c4ebccbddf8069d4ba3efeee7b0dba426c2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedeafabbb213eddb0ce39013c9ba9cfe466b7286` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf6cd964e6345e8f01e548063de13d0de7d8c59de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02427f4f5fe6468259b44471152f05dcc59c008b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0383635df2f40e1300096dbe41cbb4ae8dfadd53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04f6dee1785a15cca9127dee6e6318b816805466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b6c465d29c5cec431e147d82575dd7a8621402c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17ca155a0a1d7c77cf1e40cd82f6bd101e0e08a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18dd1dda037b009f7c1024dddd58e4fe9f960ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a716e7512d4cd99a9ca9290b573da3ef3d9545e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d5a5240750db090ac82e95107b04e613f3aae45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x318485e99f3a7d1705a964c84ca1bce0374c192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x330e347d957eb109b5f8f939423c4f74506e994f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3354e9e2830a4b6d3a0560f66889f71008cf62f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c9d36bbd2f9899c8a253c5695fbef79fd80e599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x415403ef8db6f7f652cdb609cded97fe3b2251f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48b65ea216515c2274ef691a929489d8f01c37dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2103152a1a402af283fa52903569f05477611f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5507e48103af859bd904cf2eb691907930ffe31c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55911beae0419036f4c11a8b1725dc1c4b68763c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59d0e7ac20094d2c1813c23372b1a8ca4f4cc22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bb8ef8efd18c6034ec9277daca9a5e29b1f1cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6175bf7be175a6d9baed8460d49d4c975c4e2c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ae781bfac3037cff624c5b40e93abb590184034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d6505089659e495372467cb5c9d1c37527b13b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e7bd684e93c9d8fb80784dfc6d12a8c02446570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82f58f62a17d762951081e4ba555f5a07ed75158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x849432ed6f447cc7a1b27124994c3f06d82734ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x891f07069dfcefd6f2597202b71938585622d503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e7e543a937d3c7dbfb34d45b1815883cb0303da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x925af9c624fbf26c244ba53ac856223411877cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a45ea3e53bf7e2f315b517541e20433855b5930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aefb2b3549259ccc9a42b1859ca2e24a7a90a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa458029e0dc9b4de61cdb30ad2d143faaa4d8b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9c1230dca9b0c8fd4f5a805a705456f0d457b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeb43958dea958d073bcd67f3a33286c9c817bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf92b83231a78978a236ca9d682cebbae97e62cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3263df502dbe6097887d7e0f72bc1f836cba317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5ca743ed56fd693688d39ebb5fc644e27be2cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe18e34edf239b6fcc683d35bdd539e7fadac9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe639c1cb8682d5fa5669cb50305bfba03b8db46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7ee2caa174c04697af957d02fea41e93861be59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc39ac216a211b377deb444663310f68c9f12154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd14b3ccf78d579905197df83082f9954cb43f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd894837434c97f978886ef9fad1590cba1fa4aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdef4f42374504591e16910803b72b017aa1c6253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe876541f15341ba4e9989e9599a7bcf125ea98ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed8decb3cc0a08db0e3f575a5373c0f9eacd4e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3392d8bdaf2950f015b249f87feedf54121ac08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4662bb1c4831fd411a95b8050b3a5998d8a4a5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [LoopringV3_1_Report_EN.pdf](https://github.com/Loopring/protocols/blob/master/packages/loopring_v3/security_audit/LoopringV3_1_Report_EN.pdf) | unknown | Audit | 2019-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11607] LoopringV3_1_Report_EN.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LoopringV3_1_Report_EN.pdf | BlockVerifier | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | CheckFillRateGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | CheckValidGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | DepositCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | DowntimeCostCalculator | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ExchangeProxy | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ExchangeV3 | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | FeeCalculatorGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | LoopringV3 | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | LzDecompressor | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | MatchingGadgets | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | MaxFillAmountsGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OffchainWithdrawalCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OnchainWithdrawalCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OrderCancellationCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OrderMatchingGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ProtocolFeeVault | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ProtocolRegistry | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | RingSettlementCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | RingSettlementGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | SignatureBasedAddressWhitelist | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | SignatureVerifier | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | TakerMakerMatchingGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | TransformRingSettlementDataGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | UserStakingPool | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 98 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11607] LoopringV3_1_Report_EN.pdf

Fork inheritance lineage and inherited audits are included when available.
