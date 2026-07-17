# Agentic Audit Brief: Tender Finance

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

- Project: Tender Finance (`tender-finance`)
- Website: [https://www.tenderfi.org/](https://www.tenderfi.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, metis
- Contract surface: 122 unique implementations (277 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,113,583.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tender Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, metis. Structural roles: 12 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (12), core (3)
- Contract kinds: contract (15)
- Detected standards: erc20 (2)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x670f22666415a7ae45166151f9aa158bec7c1549`, chain 1088)
- UnnamedContract (`0x798752c2cd661b3ea4b7a5b45041fa95ace3fc02`, chain 1088)
- UnnamedContract (`0xb01f3d0f5dd254280ac64c89afb3363d05b91658`, chain 1088)
- UnnamedContract (`0xd186010231790cae3e2f87ba4982bf5827b8819d`, chain 1088)
- BonusDistributor (`0x9aaac9d93096fc958f3c484e5a7043bcf2deb182`, chain 42161)
- RewardDistributor (`0x221ad52491a268f28a55ae348ea9a80f5bffd10d`, chain 42161)
- RewardDistributor (`0x4230b906febf77f782519a3590c09e99a770eba3`, chain 42161)
- RewardRouterV2 (`0xe881dbda0b8d76d7ad4157805178cef7ec8c96ad`, chain 42161)
- RewardTracker (`0x0597c60bd1230a040953cb1c54d0e854cd522932`, chain 42161)
- RewardTracker (`0x6c6f25c37db5620389e02b78ef4664874b69539c`, chain 42161)
- RewardTracker (`0xe5538bfccba7456a66d4c5f9019988c1e5f09e91`, chain 42161)
- TND (`0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c`, chain 42161)
- TransparentUpgradeableProxy (`0xbc2ae6fecbdd56db76972b57572556436b4a42fb`, chain 42161)
- TransparentUpgradeableProxy (`0xc5888f8d3663a6c27e4a2767a20c0cf347b2bb0e`, chain 42161)
- VesterV2 (`0x432d512718806191b27c24466f88dafa2d1e1c6d`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 100 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 39
- Confirmed-live implementations: 17 of 122 unique; 105 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/63
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 122
- Raw deployments: 277
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x865ee8512625855f3876e8f6737a38b5cf522bf9` | ⚠️ Unaudited |
| BonusDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393871 | `0x9aaac9d93096fc958f3c484e5a7043bcf2deb182` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393868 | `0x3e0b30de227761d692260a01e04e364a622011f9` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9f5b3ed121ea5da3a337639015b6bc60b092eaa` | ⚠️ Unaudited |
| CErc20Compounded | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xff2073d3810754d6da4783235c8647e11e43c943` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: arbitrum `0x058945a09ccf84c9723a57caac72b580d42d61b3`; arbitrum `0x07155e63eea264e1e99ad13f423d1503680d2370`; arbitrum `0x1400d8cd69115eb312f9fec3b0191167138ae3f3`; arbitrum `0x2310eb5ce0ac9d64e2d0d593fb19407e1b67aa81`; arbitrum `0x29d096714818b96770216fdce54a8384d0ac9af9`; arbitrum `0x2d7226df4d5f62348d82e0496787be776fd90f98`; arbitrum `0x2d85f8d3471aefc0875056b08bc339a8dabca0c0`; arbitrum `0x335372f4998b1b9152e0117476d5d34690174643`; arbitrum `0x3ceb547ed3abc10cc6444299263dafab540b1fdd`; arbitrum `0x4da255e7f6498b75fd1f46be8abab627bf5f147c`; arbitrum `0x5a99dc4d0bca30c31d894a3c5b00dde1c277d5ca`; arbitrum `0x644b7b3e29cf8a2298322f1e1fdb2fe251379f77`; arbitrum `0x677fa22c44dc3be69e5ec51ff1e4edacd4184a5c`; arbitrum `0x6d692b9076affada37ad470a52979303f974c7e7`; arbitrum `0x73c6cc101569581d4e2d08ece7e90a037601953b`; arbitrum `0x7e89480c8408354048fb52815f4939996a1781d5`; arbitrum `0x8025d3b95de459c7020d655c7dbe82346a65596d`; arbitrum `0x963aed24f70dfe2c2fb419ae6c99b092c696f991`; arbitrum `0x9746b7d3d9f13db877cb362904b9691685f80203`; arbitrum `0xa3d21be38064e31a6e233fcf8f99f8223aa70bca`; arbitrum `0xacfa671d49057628d74fef690b5a9bc7ce0f5c93`; arbitrum `0xc60a105a6b71991ccb5a76a0a1e802d733bb33ce`; arbitrum `0xc6c105eef20fefd4ee96e0561605d4bf56d18932`; arbitrum `0xc996617f7bef30225b0e0831836674687d32dad6`; arbitrum `0xcd2b51d03eeb5e126102a30b30972b6e43d5d24f`; arbitrum `0xcffa8f7443d5889025aea1c80488e6f35e8aad4a`; arbitrum `0xd40872effb7681ac5a533177f5c3ee416294c843`; arbitrum `0xd470492aea39295c77a43587d734f7d67d8b3c2c`; arbitrum `0xe03e8575f397ff0ae6fc07133797203d73ce915d`; arbitrum `0xfd97e05c34275a2a30538c9344a01429048fe492` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0bdf3cb0d390ce8d8ccb6839b1cfe2953983b5f1`; arbitrum `0xfebfcc634036cd9a80cfde6adabb245a099cf024` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1446f9365361dbca6d7ff94852e9383bf3bcc7e9`; arbitrum `0x53f859bf32e71a8a9230661f4fdb900404363b00` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1cfa3f44dfcb38d2da0f5d707ed3309d264168d2`; arbitrum `0xb1087a450373bb26bcf1a18e788269bde9c8fc85` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x29d4cf28db3f978591f9868006bd3c5d2f36801f`; arbitrum `0x75095636cd74fdda8bc36a2bdc455489c86b30bf`; arbitrum `0x86356683eca061fa3dd795af3a22a1530a999b58`; arbitrum `0x8765b2266ebcd935c8c781d93f2e3bfa0da34c6e`; arbitrum `0xcaa772eacbcad50e0decc64ab4748dc1a11cf731`; arbitrum `0xe30a6c7cabfb3b509ec2e765a70ca399a4d9e2f1` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2aca711169eb34aea23d63a3e6f8a4a1087ee4f8`; arbitrum `0xe9d91a3e4a0a929e9a34510d44dfd335f39e17cb` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d449163bf1583ac5afe9fd914c50138417f3b6f`; arbitrum `0x3fd112f5c6648dd3832722099d034c9bdb0798bd` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x916b44509ccfc5238f8ce9a30beb1bf861b70779`; arbitrum `0x974c10b486ae02f38bc6005038dddfb2a5f1a488` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x93c029b473cf5c4a1bcedb1694f7bc0c09613da0`; arbitrum `0xa79f8ce76fb7cd466cfe13316cc146a328eb0a55` | ⚠️ Unaudited |
| CErc20DelegateGmx | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497`; arbitrum `0x628650b551525a90c3a335f65994cdd28d13ac5a` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 18 deployments: arbitrum `0x24cfb5162eb4f928abecd8dcc7f519311ed643b3`; arbitrum `0x2867fcaeb4924aa199ed6519ac51e04a3fcd0fb4`; arbitrum `0x2cb608ad33f5a2069184253c5fc8cedea64b75e6`; arbitrum `0x385b41e29ea5879f61d5a5c7bc756bc426e1f899`; arbitrum `0x42ecb14ac71ab2516c323314ffa6e88027710f27`; arbitrum `0x4c8b543ae03a03fdd27f1ee31abb8297763f352a`; arbitrum `0x746641873664cd7bdc334eb608eba3e56861417a`; arbitrum `0x8d700b7d335e4fd4a6a939faa37dc001efb2ca37`; arbitrum `0x8f944cf481b2624f2c96c6877f891001abe043b7`; arbitrum `0x91fbec79111fc2d45e0fc8e854bc483c9ac72f78`; arbitrum `0x97963658bd87e798f536eb20189400fd210525e1`; arbitrum `0x9bed1ec80b3024abae587952004612b7e53463e9`; arbitrum `0x9d7ec3a962f008935f63b211caf3616e14dfa557`; arbitrum `0x9e092be4b4f3cc57d38ac26c040bbc5d0c28b536`; arbitrum `0xbd14f1aff21b9f0f42df2175f17034bd7f856999`; arbitrum `0xcb078116ffc7c71b56b9e92ff8b4969571e64f16`; arbitrum `0xcfb0a6b2abd862b739b769ddbfc3ee16aded5c56`; arbitrum `0xdae3f5e913c577c5e02d49f68f0fd9eceba7cab8` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x323d21f18a74a91383e6074860c3d3a7f47c2f9f`; arbitrum `0x60d33268f92c3958dde6f6de9e9fde4bc8589d91` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3d05bebcb962f8e873de167b161f987e51dd1281`; arbitrum `0xb88a54c70bc3a984039e0afec65a27f05812a7fb` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x82c3354221f8212dd0695091ea801d839ff7b1df`; arbitrum `0xa476a99b247297884165728086d6fc7ad6bf30e5` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xdaa56a5849e3351d9ee5bf1ad7158530bf11b0b6`; arbitrum `0xe15b37bcb6310d5d80ab06228e3e24e864237531` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 18 deployments: arbitrum `0x038a8c9b8f25fdb6d306fe1f4d99ad9b3b3ab722`; arbitrum `0x0920becbc26a84444efad02137f8c14d22332d5d`; arbitrum `0x102517ea9340edd21afdfaa911560311feefc607`; arbitrum `0x1b55b52e2d069673716716833c3b32caee4c9bf8`; arbitrum `0x27ce5a4a632a0a835d7569e1c2ae7b5aa183d6b0`; arbitrum `0x29da692e5c3d4ea1b9fc0eb5a2cb9303cd8bab66`; arbitrum `0x439ff1cb0f4c8e62591b6fab39b9d19a0dd743c9`; arbitrum `0x4d7751d636f8f3492e26a80025ce7aafac0060c5`; arbitrum `0x5722ca3ef27bffea564d7deabb49aa626de9b7a3`; arbitrum `0x75f62231ce89918b1f463728d77a2b9e89956ae0`; arbitrum `0x7a18c48deb50b7c1f452701279c3a054280481ca`; arbitrum `0x85419e0787a564489b4f6df17e0a353942c989fe`; arbitrum `0x8abc4876bc288d0eeca9bdf74434a96f2ebb72dc`; arbitrum `0xa2f156bc04329f9d0c71804a5b56f130674f44c9`; arbitrum `0xbcd79c377d14c6585dde48d0dff8c1a1691f413b`; arbitrum `0xd0af14cee85b6612c02f75f35e90fe1f8e0fb2fd`; arbitrum `0xd86f7f0fad95a82fddbe78c97c13707f499d8e6e`; arbitrum `0xdbc82b074fd5f750549ff398d0e213c36dd1639b` | ⚠️ Unaudited |
| CErc20DelegatorGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2afeee955f88831815d6fbabf62df5cf2d2cb9fd` | ⚠️ Unaudited |
| CErc20DelegatorMlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8d66f7b99caee7b764cb66cf9931cab49d4ab2c` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0706905b2b21574defcf00b5fc48068995fcdcdf`; arbitrum `0x3effa48cb7c65399676d49f4b08696151f2446cc`; arbitrum `0x593b3ef799b219d80dd8f0556d1aa8bc362fe48c`; arbitrum `0xf8fda6f61f26f8de49f9742946be3ad6b7fcc909` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0e9109c678ba6e807dd53ecf7a5a1e658681ad70`; arbitrum `0x49ea2c991290ca13f57ae2b8ca98bc6140925db3` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ffddc9578521602c9aadb5dbc220a553a6b4d2e`; arbitrum `0xeed247ba513a8d6f78be9318399f5ed1a4808f8e` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4213135a86e01dfa62125b6ad17d96d302596e8e`; arbitrum `0xaeae92590cda2f5e61f6007a8e083a42dc578230` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4f2a26f1c4998a8c6ae9a1ee24d2b439abf749b5`; arbitrum `0x60437fee4ddbda6e47955b6255e312f1ed067033` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5d57328423bed206e0ee41c32bbce4252e303d54`; arbitrum `0xb7c1a9dca749fc7d626fe46d14be6e371deeb278` | ⚠️ Unaudited |
| EsTND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x4113805f8e2098cf4bc20321dbc210c0869159c9`; arbitrum `0x4c3d0bd0e8b2d94896450b05fcaa48a307ee2af7`; arbitrum `0x6893ef7a2cee673dc818ded62b1ed1e2b06c9719`; arbitrum `0xd49f6e2f3f4ca0378199603a1426e36d7ed736ed`; arbitrum `0xf518be0b2a4df39d9e4589cc551be827fb53100d` | ⚠️ Unaudited |
| EsTND | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393875 | `0xff9bd42211f12e2de6599725895f37b4ce654ab2` | ⚠️ Unaudited |
| GMXPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x614157925d4b6f7396cde6434998bfd04789272d`; arbitrum `0x626fee808a206df7529b5ab7e5a6e8fc98509cea`; arbitrum `0x67c6614396dd065d6fa325d92b6b7eb40c25e4b2`; arbitrum `0x6a7aa5db479651da89f20fc134256861f82912f2`; arbitrum `0x769d2cdb6e5d8c44c2ed10891c8c18aee4602245`; arbitrum `0x7aa74f173bf3ff1dc43858b8c109e9002f152fdc`; arbitrum `0xd0b469af5324d74c6ebcd03512742043aff49704`; arbitrum `0xd550a36dc56046afa908c52579f130e724d83eae`; arbitrum `0xda651685b5dc1b5d18ae7fabe7d43666ed12c696`; arbitrum `0xfc2e8e087ce399aa40c868402d8643f3f53b89ea` | ⚠️ Unaudited |
| HandledImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 14 | arbitrum | n/a | 15 deployments: arbitrum `0x068485a0f964b4c3d395059a19a05a8741c48b4e`; arbitrum `0x0a2f8b6223eb7de26c810932cca488a4936cf391`; arbitrum `0x242f91207184fcc220bea3c9e5f22b6d80f3fac5`; arbitrum `0x27846a0f11edc3d59ea227baebdfa1330a69b9ab`; arbitrum `0x4180f39294c94f046362c2dbc89f2df7786842c3`; arbitrum `0x4a5806a3c4fbb32f027240f80b18b26e40bf7e31`; arbitrum `0x80aefb7dade25542cc2f558ee605ac2fc974ceb9`; arbitrum `0x87d06b55e122a0d0217d9a4f85e983ac3d7a1c35`; arbitrum `0x8b44d3d286c64c8aaa5d445cfabf7a6f4e2b3a71`; arbitrum `0xb287180147ef1a97cbfb07e2f1788b75df2f6299`; arbitrum `0xb5dbdb01b08bff12e822eb28259ecceb6cc91529`; arbitrum `0xb60ef53ba18bd85ab642c2f78df13e7abccdcb9c`; arbitrum `0xc571c3ce36131dfb70a9d87a8ab8f80f40874a76`; arbitrum `0xc6121d58e01b3f5c88eb8a661770db0046523539`; arbitrum `0xe4843e44342617024f6b9d615dffbe8858f8ea16` | ⚠️ Unaudited |
| HandledImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x41dcf404f79d1c0eb1d1f28df60aa0b3964fde06`; arbitrum `0x948f566819448ac67db0bef54bde62490a44c96c`; arbitrum `0x96d4131dd81512b1ffce5afbcc970f0cac4d72c3` | ⚠️ Unaudited |
| InstantVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57437f98ce4fd4d3cc1827b0095d93184827c46f` | ⚠️ Unaudited |
| InstantVester | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393877 | 2 deployments: arbitrum `0xbc2ae6fecbdd56db76972b57572556436b4a42fb`; arbitrum `0xc2378a22aec953dc5179c8eb49bab695ab9d8df6` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x18cf7999c17e4f9440d8b80bb89e463c542be777`; arbitrum `0x49c67df0d856785739a2e454aa4921d63a51be13`; arbitrum `0x598efc32fd3db7e48738690562a2d977da7d3093`; arbitrum `0x8fa1b294bdaece0e283c2f0f09d39b867b79781d`; arbitrum `0x98a0bff3424c2642cb525516ce410104889d4385`; arbitrum `0x9deb4b6fd089ed03cefb64549eaeb06e60c0c6be`; arbitrum `0xa3223ed45c880f2bea8e8327d58c635dba462cc8`; arbitrum `0xa738b4910b0a93583a7e3e56d73467fe7c538158`; arbitrum `0xab75d924d5fb2191cbfd4d2f0d26c8e8e172b051`; arbitrum `0xc2933eff32188e4655887cdc9c707a77e1229595`; arbitrum `0xe05e6d85511591b279dd03814074d64b1a615259` | ⚠️ Unaudited |
| JumpRateModelV2Gmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5d9eafc9c852018d9dd8a20e71ff48628ac69794`; arbitrum `0x81216b51482b423f3f6afa3e8b675a864c1c5354`; arbitrum `0xc892ccbacdb8bc701861e7aa89e91a6c7e51e92c`; arbitrum `0xd10f2d86817d201b84c697824bdc84b567c0bf7c` | ⚠️ Unaudited |
| MintableBaseToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393866 | `0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x417d087cbeba9c0ee3725ff6dff281c65a8d2433`; arbitrum `0x68407fbd63d1694237357fe343bf0edd340a161c` | ⚠️ Unaudited |
| PriceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x01928d0855509fee96efed3d19d7d207f33eec1d`; arbitrum `0x5a649790ad0b9df28b8fbda8d658b25d96727116`; arbitrum `0xd8090c46f5a547132e40a278d96c8ffde165129f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b01ea6e1f75b96898a57790d066ebfadc67970b` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x45e4bbbae3ab6d815c09b8f7f060878cb31fe962`; arbitrum `0x4853c1566c4f5fde13498d12d3f5f5147c8668da` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393867 | `0x221ad52491a268f28a55ae348ea9a80f5bffd10d` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393869 | `0x4230b906febf77f782519a3590c09e99a770eba3` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x68129fad7db4efa7cce4a26a77baaa9251bec2f9`; arbitrum `0x882a7c85053df4355589ea40130b104aa5b6997c`; arbitrum `0x936af22c77b6fd2afb3f6f4e3dcefe30a04532cc` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x21dd3688a0bd9f4a548ebb42e7d563f50cec9662`; arbitrum `0x53fdd4f971443f4baf6479a402a944b6992016fd`; arbitrum `0x78d5a3fadbf8c59f360773d64dd5c86af22a9e2f`; arbitrum `0xd9105a45d680c5efb55f298fb95117a8c74e9938` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393874 | `0xe881dbda0b8d76d7ad4157805178cef7ec8c96ad` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393865 | `0x0597c60bd1230a040953cb1c54d0e854cd522932` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6bbbe5873731287a42f2dfc06a198de140837392`; arbitrum `0x6d295ce01a86434b2a718ac229e1ab92a4dc16b7`; arbitrum `0x7a644e78b41f6140d04a787d23f0e818b7aedf30`; arbitrum `0xe3e72173fc8c39d53b5ceb1d16d62e5a1f098bb2` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393870 | `0x6c6f25c37db5620389e02b78ef4664874b69539c` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393873 | `0xe5538bfccba7456a66d4c5f9019988c1e5f09e91` | ⚠️ Unaudited |
| TenderPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0c261270ed2e036c9525243e5dd0e95f824d77d2`; arbitrum `0x4e8105e29b94f86552fb0a0e9627f4116b4637ba`; arbitrum `0x89963548ec3e76e92b3b4217a34f3b42432171db`; arbitrum `0xa11bade71df9005f4cfb6ffecd266ed8046fd5c6`; arbitrum `0xc2dd40025e56faca2e8598011170d088ca150aec` | ⚠️ Unaudited |
| TND | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393872 | `0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c` | ⚠️ Unaudited |
| TndOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65785d20ea8b54046b033d80749ae207fe63b667` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xbc22f61260064fab74693284df2494175839c195`; arbitrum `0xe356ab88ba1a4f9d36928407fead0fba50eb139d` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc825a185036516087c5ea8d22da924520497b8bf` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0980be03452364ebd9f654ca409d2c630c5aafa3`; arbitrum `0x2da1594d3642b85cd83b9e13d70756337f4c5c7e`; arbitrum `0xaffcd2b5104ba2a0c634d09be60628e54f955547` | ⚠️ Unaudited |
| VesterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x342ecccb3f2b1947e3ebadd0b70001f494524105`; arbitrum `0x80a62b97f592c220d9c158d3836dc12e96555d64` | ⚠️ Unaudited |
| VesterV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393876 | 2 deployments: arbitrum `0x432d512718806191b27c24466f88dafa2d1e1c6d`; arbitrum `0xc5888f8d3663a6c27e4a2767a20c0cf347b2bb0e` | ⚠️ Unaudited |
| VesterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x438be5cbfafdc89abf15b9565842cdbe43382db0`; arbitrum `0x7f7186debd974d30250db4fd72117acfdef96027` | ⚠️ Unaudited |
| WithdrawLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4e24a6d12e482efe4bd46b4d428960d54b6dd929`; arbitrum `0x62e3a1ed82bdead344eee3b541017937f6a492f6`; arbitrum `0xd16c3a58e083fec73a271a6954dc3bc2e57f59a6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393856 | `0x08ee3541eeb3ba1d519ef4848d8b2a7d75bce688` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393857 | `0x0fb0d26ef8348c43d9eda482e180d54b0296db22` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393858 | `0x18320599ea58b19b3fe12d383f2969c61c1b43f4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393859 | `0x2a0dddb5783e5cd27821148ede1b4c90ea739025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393860 | `0x670f22666415a7ae45166151f9aa158bec7c1549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393861 | `0x798752c2cd661b3ea4b7a5b45041fa95ace3fc02` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393862 | `0xa1377dbb30bfdc548ee8c9d7fa3693e512dd6288` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393863 | `0xb01f3d0f5dd254280ac64c89afb3363d05b91658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393864 | `0xd186010231790cae3e2f87ba4982bf5827b8819d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02c4f945eeaf6a82e1ca4ad199f9199a2965ab64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x034be48ad9848ab6866c0740cbcbaf23d21848b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04ff5f2df3c5661af8bde40520ff1c3292fcab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f5bdba1744b268a61b7f3dd21ad5f5d6b652a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x107761186086146625135506b837a54e461fb2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11cc44a5c7e28d4438854f7704991f93fc3c89d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x142b1a974850e31d9d5b335e3828f7ed9ab67d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16993984bc49df3b6b78a3f1a8f45a5b67007e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16b04418d2fcbb662c504c706300ec466f22efc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b343666690dbe5866144f434aa9b16e21b51177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21495b7e0ce361266101cad07c4877b6f2416b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29cb0fd7637de23dbd9b50e382eafe99f51a26cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e43be367a0686505ff1ea632b26ab54040842b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f207b87d95a8cc72d6b0b3ec3d7c5ac1422a0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3713298275816c15710f71e3c11b6dd27c0be572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43eb42a939e598581c945aeec03b4387dbdb3477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x458f8bc9773bde08d9230d1db1cb002641cbeeb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45e6dcf7bb25f04b4f6c8576d9b6d91885b99935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46dae24398ad91b560d3eb9ea79a1f006b92148e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x484dfe8d76f83aa6438427416e826ed121a37ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca3b1a280cbd182fa6e6344c54b73c60885926b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4df9b2246bb592823fa60872e4f1a636f1be7473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f2385cc15c323331e8a953c6eab6de4c60c4ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52ec6cfcb9f6e4cf660d7680691d6caa2945738b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d281b17c70435a74bc9dc4049aa53d1a7dd1413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d39f442410704e763656155d844c141b4547c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e7b4db2ba0737003551b0b103c154d2ba7635fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62ab9b88c0020f8174f94cda933a0a06870935c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65e62aba248dbf74e5cf5139ed1f7117774d6597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6af1c111aba20d1be2251a11053e7c9ebd7a0f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d9bd6f0e71fde888d0b0641eee5a81389d8586f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f344659ab44d6753b4bde37527973345ffc2846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f55a92826c28352db49c7b6f16d92a6337118bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b690126067eb4a8751d84d8400f1bf932e6e43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x827d52d9a22692536e436ab4af4241771bf3c852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x846e46ca5c1ed7607c75b7a2fc060ec30477817b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89229bd31588b461a02de338ae28106b08e581c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x914f92179aecb3d5c9527555058bdaea4a5d0883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92c2aa585d089b9258d25874e57b40f839c349b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa11b9d48b295167c7e032195932811d3afb05a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe983eefe8b5ae6577d027db1bca815ee15f2e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfb06be609d033558f853c51dad4f74549d965ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4eb30f5b7a1fe84d980960d993e08733b40294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb3bbafcc163ada6d3ff824209d2af576e5a1275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd233a6562c7528d2de2d0d531ce4794828198bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde0f22738a7b04e778af25632f085e7ee894b8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde52bfabfdd91deae0516478dc475eeff80df05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe86fd99a431ca066c41ed77e1e2d07268cd4c1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7d4db51c9e53eae7b4dbe56a2939226fa51c312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfabadcdd9b27c88f075be73e8379aa687424b876` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [odex.vip](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3118] odex.vip — no match: The provided text contains only the word 'Armors' and dashes, which is insufficient to identify any contracts or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x9aaac9d93096fc958f3c484e5a7043bcf2deb182` | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3e0b30de227761d692260a01e04e364a622011f9` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff9bd42211f12e2de6599725895f37b4ce654ab2` | EsTND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc2ae6fecbdd56db76972b57572556436b4a42fb` | InstantVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d2ebf71afdfafe8e3fde3eaf9c502896f9e3718` | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x221ad52491a268f28a55ae348ea9a80f5bffd10d` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4230b906febf77f782519a3590c09e99a770eba3` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe881dbda0b8d76d7ad4157805178cef7ec8c96ad` | RewardRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0597c60bd1230a040953cb1c54d0e854cd522932` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c6f25c37db5620389e02b78ef4664874b69539c` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe5538bfccba7456a66d4c5f9019988c1e5f09e91` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c` | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x432d512718806191b27c24466f88dafa2d1e1c6d` | VesterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3118] odex.vip

Fork inheritance lineage and inherited audits are included when available.
