# Agentic Audit Brief: Xpanse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Xpanse (`xpanse`)
- Website: [https://xpanse.trade/](https://xpanse.trade/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc
- Contract surface: 109 unique implementations (350 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $240,059.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Xpanse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base, bsc. Structural roles: 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa234f375d1733994720547bb12d92a84122648e1`, chain 8453)
- UnnamedContract (`0xde6446197cd1ae02e1c5b7191a626fb0c1757377`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 107 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 109 unique; 107 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/84
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 109
- Raw deployments: 350
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbafa1d6bfbb738ecd901b4e7b8935b714752112d`; bsc `0xf505bfdb669412ef8543cc76798f497d011f2300` | ⚠️ Unaudited |
| BEP20PHB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0409633a72d846fc5bbe2f98d88564d35987904d`; bsc `0x7f29be667c482e503a2d597b123a55d135c7222d` | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a9d3fd5ce77f0341995d46ddb924f8d33fe1842` | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeea21e22d51b527c685d3159f777a60806a1cfd4` | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5d9e8db0421a1fd1d27426cf17c48eac5207578` | ⚠️ Unaudited |
| CircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03ce4f4a8c65f30ba85f6b65aa9fbbda2fcf3627` | ⚠️ Unaudited |
| CollateralErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7e06f85bf587ed4b8f0de6f515d372b1901bd42a`; bsc `0xca24f3caddf1d0b3d5b6303d2fd53f5b599b4829` | ⚠️ Unaudited |
| CollateralEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xb72e65906b03d8505dd9174964f5abc19ae44120`; bsc `0xff1d16ae6b5c2573820d5b6d470d770e5f5b5d98` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6bf13f0244f4d6f35108d50aa92fca39add9d9c4`; bsc `0xa7833a8ef8c582aa788a8dbeef4318f877dc64b4` | ⚠️ Unaudited |
| CollateralManagerState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7938c1f716e2424915685920f4e8bc4ff7bafb8` | ⚠️ Unaudited |
| CollateralShort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8af9d787d9509eed83c37c8240e4170b409189c4`; bsc `0xb03346454f0f16144c881f5acbccd35dec937f7e` | ⚠️ Unaudited |
| CollateralState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1b04fcede3fbab162bfad0b6343a4d47d8af6aca`; bsc `0x3996ff6115eb503d1ab95c202fb9cf8eeaa86a14`; bsc `0xc424ff2a850ce3bf2ba76958469d2f0e5caecbd3` | ⚠️ Unaudited |
| CollateralUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade751b28a4b5b2d8342719521a2ed2bd621090f` | ⚠️ Unaudited |
| DappMaintenance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6376e713cc5ffcda68bcd28bbaa632201c6b68f4` | ⚠️ Unaudited |
| DebtCache | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x11558398fad21a08c93ded2bc71fbb3ac1b21b51`; bsc `0x730a8bcf69dd92e84e85ff21bbbf1ac5f3f5d822`; bsc `0xbef7ff26bab8e0c73353073b1f93fd7b5a03601c` | ⚠️ Unaudited |
| DelegateApprovals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9657a0fd98e88464e1159d98b517a4945dbfbfc8` | ⚠️ Unaudited |
| Depot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b957b4a90287ebb33faad9c15199ed9c17d114d` | ⚠️ Unaudited |
| DirectIntegrationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf813998b0518c675e405d1c0cad7fe1269589a0` | ⚠️ Unaudited |
| EscrowChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b17798c3685a26627c79add98099c0f94fb96a7` | ⚠️ Unaudited |
| EternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4edead1d133bbc60f5cd2ad303a1c45fd7cf3a62`; bsc `0xc6be331ec8753ede58c3ea6b499f8d81483b618a` | ⚠️ Unaudited |
| EtherCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x341e161ff71d916f9ae9a4320320b3b84a5d0c3b` | ⚠️ Unaudited |
| EtherCollateralsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6ef75c81cbaf041f71037071eb1e06bb4469cf` | ⚠️ Unaudited |
| EtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbebc70e5cffa63a54f12ef90d79de32791f912e5` | ⚠️ Unaudited |
| ExchangeCircuitBreaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbde3cee6732b1b35355d798c016a58fa848a9de` | ⚠️ Unaudited |
| ExchangeRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7f98a6ec78db7a1a85a9a99f324f7eed688e15ae`; bsc `0x95a49608f30e8e7ac4adc5565a206e2b874b9763`; bsc `0xaa739ae0d752b290f935b0807ca2bb89a3a276ea` | ⚠️ Unaudited |
| ExchangerWithVirtualSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0610be8e52a42840e128bb4bce01e2342981a839`; bsc `0x867e8a6f1238780fcc0a3d06e59bbf3d52f6b05b`; bsc `0x88bdc29d17f40ae43b1091fd8fc6a01857cc5b70` | ⚠️ Unaudited |
| ExchangeSettlementLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33231796dba7bc00b9e3880e06087a27e053eeee` | ⚠️ Unaudited |
| ExchangeState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1f5f738a11197ca8065435e0f19816e00ea5407` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8afa45d6fded6a6a8dbd65273a35a8a974350321`; bsc `0xb80f834ff243cb66a48f2fe9e37064db0cd9d6fd`; bsc `0xd7aba6333242bc5cd38b2a8a297cca08cc01a95e` | ⚠️ Unaudited |
| FeePoolEternalStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x691d8959adc7c9ba04c92d3211082d4a0579f54a` | ⚠️ Unaudited |
| FeePoolState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030f57733b7a2b48fc09725455602d0af2583c13` | ⚠️ Unaudited |
| FlexibleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde6446197cd1ae02e1c5b7191a626fb0c1757377` | ⚠️ Unaudited |
| FuturesMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9320bedf0f5d420d4596a903da440011feeb9e2d` | ⚠️ Unaudited |
| HorizonClaimOnBehalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa623f29ae4ced27dfbb39a94152f3184140f6c21` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x002a6ba1c314a94f6fbfed1d68b456e74ef54f2b`; bsc `0x2841052140b4eca63c8ef0bd52c4818eefd5146b`; bsc `0x9a89df0a1e3ce5ad02beb12ab077e591dc9b0fb9` | ⚠️ Unaudited |
| Liquidations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5bcdb40000347ad047008c9295fedbeda7487ad2`; bsc `0x7527d765835e655b11664565de5ae46cccabc1c0` | ⚠️ Unaudited |
| Liquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a7b78b705ea48d278d673e80c880d7eb479f44c` | ⚠️ Unaudited |
| LiquidatorRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05178294edd61ba3f6a78ef419165ad4d0124362` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1223371e7ef0deecc5489eddb87dcfc50dbc520e` | ⚠️ Unaudited |
| MultiCollateralSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 56 deployments: bsc `0x036ec5b1cc1856ca8169487c0b6cccb12d606cd5`; bsc `0x05f80d9e7e215fbcc6c8a46644f25444a0faf075`; bsc `0x0920e8adda04bc97a095c95d330ce4be8c83e966`; bsc `0x130fd014ea6f354f541cb3da5262de09b5cb124b`; bsc `0x1ad2b200e99f22f8dfeff2ba4d58a8e912ee575b`; bsc `0x1b02373b81eb11f0d4a4f808c70614db2452f140`; bsc `0x1c36f948ebca620f2dbe3a1fec47b703951654ae`; bsc `0x1fbc06ff2bb095e4c8e1be8b99139cffc790d97a`; bsc `0x206fcc868dd0036ed0d72adb065996dc8fd1e8e7`; bsc `0x269c24f90f0226b8cb57f48371422643b7767d00`; bsc `0x3063b56048a98ccbc8f8f99202a3b7d91e2e4665`; bsc `0x311d02022571c1e929535576763920deadea4639`; bsc `0x31572defb5362d10c42c38337751f50bc70d8d8b`; bsc `0x34af6833e865f97342a75fb26947433f681f5fca`; bsc `0x36c0f34a31b6d730a3b7b04cecead872fe46a2e5`; bsc `0x43d1cbc91cfa8d68319c91f40106654ebc524c76`; bsc `0x46bcfa01345764ed138683487e68a833e9b79d78`; bsc `0x4bb23f4e5c2ede1d24a996583292a03a01bf01fd`; bsc `0x56a1ce3d81fcf5c5f716f79396f1bc91eeead5ac`; bsc `0x58e33d379edec2007e04220c793a16cfe1f3cec8`; bsc `0x58e55122f6953e6ba5ac709a85cd1c5dda621786`; bsc `0x62e34aaa56e304f8f6febea49b869b2df9de9323`; bsc `0x64141f1f3cabc29f6c9f19b4da100cb095dd87fd`; bsc `0x70e9c9b1bc01db9a8656154cd75d702e800b97b9`; bsc `0x77866ef746a5e353ecb19867bb1cc5d91d4430f9`; bsc `0x7b595c1ca5387c4b7927b83b46d80150f99ecdbb`; bsc `0x7d4a8f851d5610c6ea5101eba377629a8fb49b11`; bsc `0x7f11125a2f22e1dcc19213475267d2dd2f838ff5`; bsc `0x7fc6e091e94af6f6bab776254ec592000743e872`; bsc `0x87f4e0ac230cb43ff5179a2e39e5a2cc77d1665c`; bsc `0x8a5616118925647c39725d2872e4c98922c82ace`; bsc `0x8ec3d9f6fded50d3bd97c0c21e4d9de71e39c9d7`; bsc `0x8ec653dfea19550467cc2fb49d306dff02ebb687`; bsc `0x9683cda6b00cf226d802c73bbfd69c11aadfe71f`; bsc `0x9b61394871ddf351daf94c3f30bcc3f8bbd82d4a`; bsc `0xa0427e5863f87e824b83870b7b52313c177aa38a`; bsc `0xa0b0b44e431d1aac4e589c1887c81c7c2c0f331a`; bsc `0xa7a9eed298572142105ee9da1a6eece4c8c38f10`; bsc `0xaa5fb191cf6e1d864838e3f727625278f736727e`; bsc `0xaef693a2975eade3190ae2c788374502b9d8ecd8`; bsc `0xaf44141ae9e100ee9efc116995b5399571c662fb`; bsc `0xb4eb061e628810788219d59879b3c88d3963e867`; bsc `0xb79fed4964800790f543c91f5e50be72e2afb048`; bsc `0xbe8de1d68f951094ddc06b502eed575e8310c0a2`; bsc `0xc1cf9afc63b22ba8f3fa25a77e1102a89d0cc5a1`; bsc `0xc3b022b7325fa1805c305bc89a55258a3a7da4e7`; bsc `0xcd5034aecf6af51edfcfef11c2ad94390578d6fc`; bsc `0xcfa388ca584a2ec5ba11a3ddfc475c719d8f0155`; bsc `0xdf04c1d408104f242ebc1a4255a224b1f071c78f`; bsc `0xe094b59d36ffa2a804fe252db29f711c2cd4c820`; bsc `0xe0aa8cf78308654fade18f69af7c0ee30db77582`; bsc `0xec662ac8184a43735425a3a067527f0c39c9386e`; bsc `0xf48664839baa3b5e68ba679fd817aa66049c6732`; bsc `0xf6f04e13d68b0e95e7d6e65a29efb483012e86a4`; bsc `0xf98ab4bc0fd6d313b8ebaf098cfdaab7a0b21cd0`; bsc `0xfd3afc0e1db65c3615153fff86052cdc5569203b` | ⚠️ Unaudited |
| NativeEtherWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ae33e50617adc0bc4b78b06a64c9ab4fb2aa46c` | ⚠️ Unaudited |
| OneNetAggregatorDebtRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f43dc10cdadb405f99d3bd5f94f7325338aa607` | ⚠️ Unaudited |
| OneNetAggregatorIssuedSynths | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2d6579a9630985e390cb2ca2f51b7519f2ca727` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xc3bf4e0ea6b76c8edd838e14be2116c862c88bdf`; bsc `0xdc9a574b9b341d4a98ce29005b614e1e27430e74` | ⚠️ Unaudited |
| PerpsV2ExchangeRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a740037688589b26d6008bc1b32786db6b41b40` | ⚠️ Unaudited |
| PerpsV2Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x17ac4c0953e408100e8ebb2c967407b4e992ecff`; bsc `0x17c4424492ec8eb75fb6695717aea5c5bd514063`; bsc `0x180cee23ae1f35f573d88d06414ab643aded3369`; bsc `0x20894f2b7bd2f75421259c23fe5ebd931541c4e2`; bsc `0x33e20aa5ca08014ba35e0386f6eadc633a091049`; bsc `0x380b7132aad3d17122c33e2f289831506fe1250d`; bsc `0x69eb282c434851ce9c443d4dbc1cf0251611d727`; bsc `0x8239150d4d5c56c8e7b0eb56578da6dbee22337b`; bsc `0x8b9335494ad3c890bd84d4c7ca8ca3c233f0b934`; bsc `0x8cf2526667a1051ef86cfc8455a7396f3c782afe`; bsc `0xa4d7a0e75beb384872754504067920c8d090b572`; bsc `0xa6b590d4edefc51fbacc73a4e85c1159e69152f7`; bsc `0xf049e2a617e2badc46e4b3655149f098a4183f74` | ⚠️ Unaudited |
| PerpsV2MarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad96eb245b3e7f7395da4509a764d1676de6e438` | ⚠️ Unaudited |
| PerpsV2MarketDelayedExecution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x069a4e970327b7afe2a01c00a10ec08427c83008`; bsc `0x1a27cf2dc84809d91f3711c8c1abc634f879ce68`; bsc `0x310f1c767ccf7c732a8f678f4309f3a4790fc4cf`; bsc `0x3d5bf1f0bdf84ab25eeec15639fb09c6e3a05648`; bsc `0x4622a04e41610ccf60bfba7ae7c87dc6ec08e434`; bsc `0x54239c903d6c827d26602d05eae3bc81e9c59332`; bsc `0x6a273f53d752d135a0dde33565d68ee59ac13674`; bsc `0x8f969b27368f77e11d6a0dcf395477ca2533b080`; bsc `0xa7a4d2e215cfcb5aaa12de79fabe140cc3ccab7d`; bsc `0xb748fb72896517d3eb445daaaac8bf45e34a8b50`; bsc `0xb7af1065606dff0c2aa15ad93772518bb0fe0907`; bsc `0xe43930b415eba41604fbb7de1fe6fe5142b0153e`; bsc `0xfc7e77c4f7da4f6109966c82c7b73ed8efbea035` | ⚠️ Unaudited |
| PerpsV2MarketDelayedIntent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x0618887f56f1cd3c3c73d86925e23730d4063105`; bsc `0x1bed8998271939c4fff32f3b3c9ec737fbef6ab0`; bsc `0x20ddc5856994b69a184150fbe742d962636caf89`; bsc `0x2ba6b59f1549533cfe64a47d286cb31d880897f5`; bsc `0x2da8a941d05f1c15d160731fe6f983158470a305`; bsc `0x5eb2a960db1ce278e26b2c34dd9107ff87a363fa`; bsc `0x66f3551668a9fda5c7751c657d0c99006f2e5607`; bsc `0x697e6119da3fce85351994748b23ebb27c1e2061`; bsc `0x8d128dd43430cb2fa494885ea26ca788c8e20e2c`; bsc `0x99ae4e73a2868630bd489fdeb5ebbd0c99a50d24`; bsc `0xd905b782212a920a61d50891a95db82c15139d2e`; bsc `0xdbe3c380453920134efe179269d7dfcd218e8dc5`; bsc `0xfb01a6395d77da0d66df69e6f16c1037eef17a88` | ⚠️ Unaudited |
| PerpsV2MarketLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x02a1612ba7d44d286a3fe063ee6dfbdf37bc344d`; bsc `0x0ef31a04cf151ca20ecf7ab7e83c852ff97c0b04`; bsc `0x20ddc78a8fff5dc8b7d4bb6c6d27231dd0d680cc`; bsc `0x5024ae274b65595faf6bd303f80c4b4044e69da3`; bsc `0x51ef2e3da87c04119c96580219ec02fb8b3a52d4`; bsc `0x8e4bb996b753aacacecea9003b72c59fc7794f9f`; bsc `0xa82ca60d741860eb6b2bc5557fe6033ac3a2a1da`; bsc `0xbb492246bd82333abe059a1cf95e1f2e1dc6d67e`; bsc `0xce7a36bce98484c887e6ede2c9d03a972ce684cc`; bsc `0xe709c7343227a16b5f7b901fd4b556a3424a61e9`; bsc `0xee7d56d6b099d39af99dd09933555724047c9e3f`; bsc `0xf7c77f71dc8a6aae1081c662ca0a93b0fe4beb76`; bsc `0xfe60d4e5cfbedd39b7f24a87fffab7ebba58dc36` | ⚠️ Unaudited |
| PerpsV2MarketSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcab82c204b5ccee7f61962d6925422d347f27f95` | ⚠️ Unaudited |
| PerpsV2MarketState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x06f146fdf64608530b949293924ab4e66ca1676d`; bsc `0x175b2a760ab95aa386d7d3e845bbbc75670860bb`; bsc `0x5d2fbbbe3f4db547ef8bdf2f8e6aca5c277ec506`; bsc `0x6f08c7c8f3fc53b879acf3f3106291a540cb8b4b`; bsc `0x7854469efc61bdc1c089f8d261e903d9d03c8da9`; bsc `0x8b0c00ec4a7bc872a236b540294b21e6fb07bbe0`; bsc `0x90f905c870b8807a83c1ae7dc44a49801012968a`; bsc `0xa1095d33bf3293aedee917fa5908b700a5236be0`; bsc `0xaa52488ead873851e0854e5b446a096e272dae3f`; bsc `0xc05e8288df6f2bb138c17a26283fec0d1af41a0a`; bsc `0xd647556e9449239ced0cb7cf4c4cd6259f937cb3`; bsc `0xeb01170a46810f5650ed1ec0df859cc91e3c5db7`; bsc `0xefc146abe2737e8f1f701f7498d9ec84a7ccbb1f` | ⚠️ Unaudited |
| PerpsV2MarketViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x0666f5b38c112c05f8eb31ce79bd5d8a1f99139f`; bsc `0x09432893c24334e4ceccb44358abe9c7ab274db0`; bsc `0x14063124dc879c06aac3d423bfc9ecd7fda379a3`; bsc `0x559fa3f002b917575876700553463ac291171729`; bsc `0x5fa9d2fbc08c040f93316c8899ad2579766e0b7d`; bsc `0x6bbf34a5ed770ed997a70b9ae2c0480b2f2099b5`; bsc `0x9daa7637c5bb2a23391a1c74bc4af8561ab3446f`; bsc `0xa51e4fb888b00f5dd8feed2e049d8d18677b1024`; bsc `0xaa41e5b217af2da7baf31fa7d93c9f6bcec56913`; bsc `0xac259723a4124624684f79700d46152b5aaa2022`; bsc `0xbfc28678738e0f2539051312bcec652d002de57f`; bsc `0xc2daedb54908a403c01beb1c5672ad9af1ccac3f`; bsc `0xfd3268e127b90810ce29976affa059c8a7e9eeee` | ⚠️ Unaudited |
| PhbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0b29cc2a4bbc9cb75519cdcd3995de9e7a914fb1`; bsc `0xada58cf32276ccd03a1c155688eff8b3bc282285` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2d4dfd6c9b8081dd54a8fd7f6de06fdd5af7589e`; bsc `0x3c969c4fe2123e3bcc445f10457f933f24810872`; bsc `0xfcf3afa6cda14b438aeeb8ffed433d196cd1367f` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 27 deployments: bsc `0x0bd9c670d7bb289d0b307e79e239382a22312591`; bsc `0x22879e82221938efe9e1c0ad10576c80099cce3e`; bsc `0x25b012a4a839849f06273fcbf1ab001387e1cdb6`; bsc `0x2e4466465d77e92a1ef987b817dfeaa1ffd3cf8b`; bsc `0x2fee19f7cf91c353a0b1b085c2e393a95ebff3ee`; bsc `0x3a42e7abdbcea4a4dbeeb7c80bf0e3d65a0229eb`; bsc `0x3d3c760d884019d5abe47a44ee3cc2fceb4ecb62`; bsc `0x49a7f0998b391b9cff91e2dabf9673d665a30e8c`; bsc `0x549d68153a76529e9580181f826bb717e9e8cb39`; bsc `0x57e2a4adc464c6b0ea72f0df92e840d54e4e77da`; bsc `0x5ad70de6c42268da862e0a060bfb364282d01e87`; bsc `0x6400d8aafb563b2d1891b4253728e3c7092b217c`; bsc `0x65678df3caf8c72835a200291f1d7f610951f34c`; bsc `0x6d4e17606c4c0fec9843f51601ad9c19e3295c70`; bsc `0x6dedceee04795061478031b1dfb3c1ddca80b204`; bsc `0x6e9266e1d5be59393c606750f55f96e4445f87fb`; bsc `0x82236cde8fe6c3e5fcd0d89cb78da12e86224f77`; bsc `0x870d11a723de716c3d860fb1ce5f7083732fcdf3`; bsc `0x8a72d406c70750b85bb432dcf6277f45a2459be9`; bsc `0x8e044e7d25fcc62d5a07fa0bb056fc5fc572f56b`; bsc `0x914510a831c02025e82537ec8a3a570ec54f4c30`; bsc `0x916fa4bb6bc60831b33565ad5c132befb84b0745`; bsc `0xab3f54d31467695bedd561f22a0e05ac3b18d615`; bsc `0xc0eff7749b125444953ef89682201fb8c6a917cd`; bsc `0xd476639385cab696ac4d6ad7f1ae1fe4a32957f5`; bsc `0xf0186490b18cb74619816cfc7feb51cdbe4ae7b9`; bsc `0xf6c31f0265747ab449367ea651d094efaecd9875` | ⚠️ Unaudited |
| ProxyPerpsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad`; bsc `0x743e691050a544fb515b1be89698f8dd39cea876`; bsc `0x7a35c87a78251b50142d7c3071b4387baad509ff`; bsc `0x7e37434bdcbaa9d1f32126fbf39e0eed0cfb7630`; bsc `0x863945b2e43e361447115bf563d66dd16c46fce2`; bsc `0x8d824c22a9e4548d15db06893aceca14ac750735`; bsc `0x92091f9dc0e8878544a7f4c65d215a8437815a92`; bsc `0xa02ef292fd3abefb852c5d4c9b8b7dc0b3203d53`; bsc `0xa1cf92888938b4614f260beb66d40abc5e68293b`; bsc `0xada278b02a965d91b0dbe2705298ff62396d69a2`; bsc `0xaeaf40aaa68c25c4433eed3e227e9d0d86e7024a`; bsc `0xb2dacfe6afb9b2061863d718cd760caa15a4b9e4`; bsc `0xd87a39c2555cf6ea1628d16a9075bac2ef9d5139` | ⚠️ Unaudited |
| PurgeableSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x510a2bbb4db9d85de6f2de60985b0fde09c1e3f6`; bsc `0xd8aa71d1523a282c9ea4b267e46325ce716292cc` | ⚠️ Unaudited |
| ReadProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x263a8220e9351c5d0cc13567db4d7bf58e7470c6` | ⚠️ Unaudited |
| RewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5db2579aab8c56d1e395082a1c870a7d28f3da` | ⚠️ Unaudited |
| RewardEscrowV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x41b9784e0541bf9d5324b3f265cfcd1170490474`; bsc `0xe21e39c383abdce3edf13b7233ad1ad5fee42099` | ⚠️ Unaudited |
| RewardEscrowV2Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cc1109faca698eaf36c6b08f5632c288260ab75` | ⚠️ Unaudited |
| RewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceb4976140994bfb83f29dfbb80bb2d9fc719dac` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x81126b4920f2430acd9b5a80e33735bff67a8c30`; bsc `0xbd782d595df5fb4baf6eb5fca4d1ff2adc9cf856` | ⚠️ Unaudited |
| SignedSafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e064410d384711930c5f3bf74ba34ba1d32d885` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x307326d24b5287b12f8079ba3854d9f7e7a139e1`; bsc `0x56075e576e59b323e84348877655c56de7cfd6d8`; bsc `0x5646aa2f9408c7c2ee1dc7db813c8b687a959a85`; bsc `0x67d5a94f444df4bba254645065a4137fc665bf98`; bsc `0x84838d0ab37857fad5979fcf6bddf8ddb1cc1da8`; bsc `0xa1771dcfb7822c8853d7e64b86e58f7f1eb5e33e`; bsc `0xb9c6c9f41d3da1c81c869e527f7b8f44d6e949b6`; bsc `0xcc5645e81d8be5f1e1b02dad0902a57b669d483a`; bsc `0xd4552f3e19b91bed5ef2c76a67abdbffed5caeec`; bsc `0xe53bd3cb2d49f930c1cd76e19fc26b16806340d2`; bsc `0xecbdc8d23840933ca1be9ed274529b6a9bf63972`; bsc `0xed0fcdcc7f1b23df2c1439681acb750f14f474f2` | ⚠️ Unaudited |
| SupplySchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3beb037ac645691cc8ba9a1a442804ac6a204ca8`; bsc `0x45151b3b1fff51d404e7fcdb2a4067ed50165a55`; bsc `0xcb4e2fcc0aa894067354cc6d11d78c7d4a5e25e0`; bsc `0xd5ac10780be4a4f757b3b8199e544bea9dee39b2` | ⚠️ Unaudited |
| Synthetix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0110bcbeb89a43ec47e62d1980e29e0683745ffc`; bsc `0x10de8e0d36f6ae523784b96d1d643e82135e58cd`; bsc `0x9ef25320ce7824f78387a07733b85c1fb6218d13` | ⚠️ Unaudited |
| SynthetixBridgeEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53f6de83746d04578de1755e5866819de66d664a` | ⚠️ Unaudited |
| SynthetixBridgeToOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ceb5c49d7e8ad212f19b8e5ea4a5f48c01630fb` | ⚠️ Unaudited |
| SynthetixDebtShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf76c37840330c6e2054b0c6c6b51237319b165fc` | ⚠️ Unaudited |
| SynthetixEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x073c0c427e677aab733dbd4bd2de02951fd329cc` | ⚠️ Unaudited |
| SynthetixState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf71eccf3821737ef005c662c235215f9d89a956b` | ⚠️ Unaudited |
| SynthRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05af42bfccd27b0db5697c4a34b8d1aa73f4f186` | ⚠️ Unaudited |
| SynthUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x02a73e55cc41b883348aeb67c4e37c3582354582`; bsc `0xed8bb54ca12dda56ccf662a84f50b6395cf1fbd9` | ⚠️ Unaudited |
| SystemSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x39989d410137c6eeac8f62369db666836e6cbdba`; bsc `0x42204319ecd263ba6e113859d0bb0af15277576a`; bsc `0x53ca7c78c9e881bd8c048ff5a68fe61c1899a027` | ⚠️ Unaudited |
| SystemSettingsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ff3edac87a2f9a94e9bdbead417c34d5ac8d56f` | ⚠️ Unaudited |
| SystemStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x344b085489f41fe9a60c6f4b3727b12447d64209`; bsc `0x49043e4eef1c7f5948f979ba06bd0c70f1397f51`; bsc `0xb695dde090a69249d43b7928e4062884f784290f` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x000c9811a580d21c91f47a6eb44ea6789d8cbeee`; bsc `0x10d6288cb19fcf3b545fc6fea9349697df270c91`; bsc `0x2bd6770f3ac5af80fa359fe844b0871306570c1a`; bsc `0x32c056a7da5aee21e86580f314d876cf905f5185`; bsc `0x35d637b38d8d2b47c418db99f9c8a71cc894155f`; bsc `0x3c0ac20cb15dca4aa714dcef5fc5d0d4139920f6`; bsc `0x474be0948a844a35806414842eea52096f533389`; bsc `0x53d1c53d933abb6dad1c5e5401feeea7bf75fbde`; bsc `0x546fa146acd2770feda6a9c76900eee731dff766`; bsc `0x5d1c2c6052f69da1281132a8b09f5b315bc01d0d`; bsc `0x6946bf6894bc48073ae878d0aa1a88217a57e4b0`; bsc `0x783d7281ea92f5d04fa8b5b39647a7ed151dd61e`; bsc `0x828c836f2cb2959de6718d94e6a257645a687b90`; bsc `0x8326bf29bd41dfbe8d9ef42caaf687a000615d18`; bsc `0x86235db8fc3a05745acb720c39dc379ce23d8980`; bsc `0x89f95073328af5bbda621f0e646125b7a9595232`; bsc `0x8c0f8a908a621585462242244b9faa3277492c32`; bsc `0x915218dab0acb3e720f7717b77262456e66f3173`; bsc `0x9abeb07bcab1e8b69a04ef087476febd9d3c44c2`; bsc `0xa2269490504c422d46185b7e5f6a5b23df150b2f`; bsc `0xa93208e1382730c1478ef42f9c26d3c5e70b29bc`; bsc `0xb41c897463efe079263262f3e3b3fe4a6831cb4a`; bsc `0xcacac39c7f8e51500e4eb70b9bf20839a9c28032`; bsc `0xe6066d3aab518622bf8643b4d31110e0e0845eea`; bsc `0xe6372528457ae19cd08100453573a2d872815f03`; bsc `0xea207aa737bca037f68746dd9abf5dc0d5d922df`; bsc `0xf8d6da65702cba2723aa17256c7313560f03078b`; bsc `0xfc668758c039902dc23ad8ab06784122d9074823` | ⚠️ Unaudited |
| TradingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x41cf27ea853dc17e33a31e923d03b761f9eb8577`; bsc `0x8863cbd64f1fb58df2153dd67e14d2a9888611e2` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | base | unit-397136 | `0xa234f375d1733994720547bb12d92a84122648e1` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | base | unit-397137 | `0xde6446197cd1ae02e1c5b7191a626fb0c1757377` | ⚠️ Unaudited |
| VirtualSynthMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb09c97a6c21b12e2f309f921626f252a31fcbed` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa038172d1e3b452f100a231884a0c3b08ac6ef99` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02615d2e6550c07ba1164d2580f39d93ba408b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09567b67e494b36f66c5d99a4e2b00b2e92e6d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aeedb4beccf8b40159843891ced31610f31de81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a61c1919d4272f106c8738144bd9ab5b276ff81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c3b0a34f6e1997778956c687f85309f461e7eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252b92b9c906670c8a5ba5ff46780720165c3334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5064b02c414b7c4bd3eb853bdb74ae864bd54154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5338b08c3cf82cac45c1807119e20f7368e7b9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60fccfa21e29f85eb5afd1aa4d8a2b095ff3b7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b0c95c3c747b51012bf2aa8d24833561b88e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x727075fe6380d054c15ef2536bfcdbbb7c3c72d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ada1b1a30c779419fc46e1cf7828dfb8f3642e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83b9a5954067833015a0d89c58100e7c2d0bc797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bdc32bc0e24e359fe355f915c5fb91f0b8d4f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93c97843bfc09c78bddf3c5b70a7fa560cb9abe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2ff32615fd60c957d208764aac38a5608e7cff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc09e3de9866ad774ba113710af23bb276a1b5bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8df3c22cdb1c8b2cb27e3e664199cf2eef00264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc937d517f664363f695404c15b4d75be39f1af0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4965bb977a93ca1923bf957e3b59e379a6603db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc0a786bcfc955baf42358285c612a09b00bd0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde1b3c63605c298d78e560bd4ccaf518761f7286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2d8163cc38d795e038fc2ac7e2d77432d839978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeca3356c199adcc8c43967755bc8758012cfede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc1b65353d11c9111273e72d26a40767e8ad6dbc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 317
- Live contracts: 0
- Unknown liveness contracts: 317
- Source-verified contracts: 292
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=26, contamination review=57, source verified unclassified=209, unverified unclassified=25

Showing first 200 of 317 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | Proxy<br>`0x2d4dfd6c9b8081dd54a8fd7f6de06fdd5af7589e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | Proxy<br>`0x3c969c4fe2123e3bcc445f10457f933f24810872` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x0bd9c670d7bb289d0b307e79e239382a22312591` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x22879e82221938efe9e1c0ad10576c80099cce3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x25b012a4a839849f06273fcbf1ab001387e1cdb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x2e4466465d77e92a1ef987b817dfeaa1ffd3cf8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x2fee19f7cf91c353a0b1b085c2e393a95ebff3ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x3a42e7abdbcea4a4dbeeb7c80bf0e3d65a0229eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x3d3c760d884019d5abe47a44ee3cc2fceb4ecb62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x49a7f0998b391b9cff91e2dabf9673d665a30e8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x549d68153a76529e9580181f826bb717e9e8cb39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x57e2a4adc464c6b0ea72f0df92e840d54e4e77da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x5ad70de6c42268da862e0a060bfb364282d01e87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x6400d8aafb563b2d1891b4253728e3c7092b217c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x65678df3caf8c72835a200291f1d7f610951f34c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x6d4e17606c4c0fec9843f51601ad9c19e3295c70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x6e9266e1d5be59393c606750f55f96e4445f87fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x82236cde8fe6c3e5fcd0d89cb78da12e86224f77` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x870d11a723de716c3d860fb1ce5f7083732fcdf3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x8a72d406c70750b85bb432dcf6277f45a2459be9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x8e044e7d25fcc62d5a07fa0bb056fc5fc572f56b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x914510a831c02025e82537ec8a3a570ec54f4c30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0x916fa4bb6bc60831b33565ad5c132befb84b0745` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0xab3f54d31467695bedd561f22a0e05ac3b18d615` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0xd476639385cab696ac4d6ad7f1ae1fe4a32957f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | candidate review | ProxyERC20<br>`0xf6c31f0265747ab449367ea651d094efaecd9875` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | AddressResolver<br>`0xbafa1d6bfbb738ecd901b4e7b8935b714752112d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | BinaryOptionMarketData<br>`0x4a9d3fd5ce77f0341995d46ddb924f8d33fe1842` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | BinaryOptionMarketFactory<br>`0xeea21e22d51b527c685d3159f777a60806a1cfd4` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | BinaryOptionMarketManager<br>`0xf5d9e8db0421a1fd1d27426cf17c48eac5207578` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CircuitBreaker<br>`0x03ce4f4a8c65f30ba85f6b65aa9fbbda2fcf3627` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralErc20<br>`0x7e06f85bf587ed4b8f0de6f515d372b1901bd42a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralEth<br>`0xb72e65906b03d8505dd9174964f5abc19ae44120` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralManager<br>`0x6bf13f0244f4d6f35108d50aa92fca39add9d9c4` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralManagerState<br>`0xc7938c1f716e2424915685920f4e8bc4ff7bafb8` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralShort<br>`0x8af9d787d9509eed83c37c8240e4170b409189c4` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralState<br>`0x1b04fcede3fbab162bfad0b6343a4d47d8af6aca` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | CollateralUtil<br>`0xade751b28a4b5b2d8342719521a2ed2bd621090f` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | DappMaintenance<br>`0x6376e713cc5ffcda68bcd28bbaa632201c6b68f4` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | DebtCache<br>`0x11558398fad21a08c93ded2bc71fbb3ac1b21b51` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | Depot<br>`0x9b957b4a90287ebb33faad9c15199ed9c17d114d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | DirectIntegrationManager<br>`0xbf813998b0518c675e405d1c0cad7fe1269589a0` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | EscrowChecker<br>`0x2b17798c3685a26627c79add98099c0f94fb96a7` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | EternalStorage<br>`0x4edead1d133bbc60f5cd2ad303a1c45fd7cf3a62` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | EtherCollateral<br>`0x341e161ff71d916f9ae9a4320320b3b84a5d0c3b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | EtherCollateralsUSD<br>`0x7c6ef75c81cbaf041f71037071eb1e06bb4469cf` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | EtherWrapper<br>`0xbebc70e5cffa63a54f12ef90d79de32791f912e5` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | ExchangeCircuitBreaker<br>`0xfbde3cee6732b1b35355d798c016a58fa848a9de` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | ExchangeRates<br>`0x7f98a6ec78db7a1a85a9a99f324f7eed688e15ae` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | ExchangerWithVirtualSynth<br>`0x0610be8e52a42840e128bb4bce01e2342981a839` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | ExchangeState<br>`0xf1f5f738a11197ca8065435e0f19816e00ea5407` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | FeePool<br>`0x8afa45d6fded6a6a8dbd65273a35a8a974350321` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | FeePoolEternalStorage<br>`0x691d8959adc7c9ba04c92d3211082d4a0579f54a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | FeePoolState<br>`0x030f57733b7a2b48fc09725455602d0af2583c13` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | FlexibleStorage<br>`0xde6446197cd1ae02e1c5b7191a626fb0c1757377` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | FuturesMarketManager<br>`0x9320bedf0f5d420d4596a903da440011feeb9e2d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | Issuer<br>`0x002a6ba1c314a94f6fbfed1d68b456e74ef54f2b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | NativeEtherWrapper<br>`0x5ae33e50617adc0bc4b78b06a64c9ab4fb2aa46c` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2ExchangeRate<br>`0x5a740037688589b26d6008bc1b32786db6b41b40` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2Market<br>`0x17ac4c0953e408100e8ebb2c967407b4e992ecff` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketData<br>`0xad96eb245b3e7f7395da4509a764d1676de6e438` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketDelayedExecution<br>`0x069a4e970327b7afe2a01c00a10ec08427c83008` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketDelayedIntent<br>`0x0618887f56f1cd3c3c73d86925e23730d4063105` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketLiquidate<br>`0x02a1612ba7d44d286a3fe063ee6dfbdf37bc344d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketSettings<br>`0xcab82c204b5ccee7f61962d6925422d347f27f95` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketState<br>`0x06f146fdf64608530b949293924ab4e66ca1676d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | PerpsV2MarketViews<br>`0x0666f5b38c112c05f8eb31ce79bd5d8a1f99139f` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | ReadProxy<br>`0x263a8220e9351c5d0cc13567db4d7bf58e7470c6` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | RewardEscrow<br>`0x0c5db2579aab8c56d1e395082a1c870a7d28f3da` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | RewardEscrowV2Storage<br>`0x3cc1109faca698eaf36c6b08f5632c288260ab75` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | RewardsDistribution<br>`0xceb4976140994bfb83f29dfbb80bb2d9fc719dac` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SupplySchedule<br>`0x3beb037ac645691cc8ba9a1a442804ac6a204ca8` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SynthetixBridgeEscrow<br>`0x53f6de83746d04578de1755e5866819de66d664a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SynthetixBridgeToOptimism<br>`0x4ceb5c49d7e8ad212f19b8e5ea4a5f48c01630fb` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SynthetixEscrow<br>`0x073c0c427e677aab733dbd4bd2de02951fd329cc` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SynthetixState<br>`0xf71eccf3821737ef005c662c235215f9d89a956b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SynthRedeemer<br>`0x05af42bfccd27b0db5697c4a34b8d1aa73f4f186` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SynthUtil<br>`0x02a73e55cc41b883348aeb67c4e37c3582354582` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | SystemSettings<br>`0x39989d410137c6eeac8f62369db666836e6cbdba` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | TokenState<br>`0x000c9811a580d21c91f47a6eb44ea6789d8cbeee` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | TradingRewards<br>`0x41cf27ea853dc17e33a31e923d03b761f9eb8577` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | contamination review | WrapperFactory<br>`0xa038172d1e3b452f100a231884a0c3b08ac6ef99` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | CollateralErc20<br>`0xca24f3caddf1d0b3d5b6303d2fd53f5b599b4829` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | CollateralEth<br>`0xff1d16ae6b5c2573820d5b6d470d770e5f5b5d98` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | CollateralManager<br>`0xa7833a8ef8c582aa788a8dbeef4318f877dc64b4` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | CollateralShort<br>`0xb03346454f0f16144c881f5acbccd35dec937f7e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | CollateralState<br>`0x3996ff6115eb503d1ab95c202fb9cf8eeaa86a14` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | CollateralState<br>`0xc424ff2a850ce3bf2ba76958469d2f0e5caecbd3` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | DebtCache<br>`0x730a8bcf69dd92e84e85ff21bbbf1ac5f3f5d822` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | DebtCache<br>`0xbef7ff26bab8e0c73353073b1f93fd7b5a03601c` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | EternalStorage<br>`0xc6be331ec8753ede58c3ea6b499f8d81483b618a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | ExchangeRates<br>`0x95a49608f30e8e7ac4adc5565a206e2b874b9763` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | ExchangeRates<br>`0xaa739ae0d752b290f935b0807ca2bb89a3a276ea` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | ExchangerWithVirtualSynth<br>`0x867e8a6f1238780fcc0a3d06e59bbf3d52f6b05b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | ExchangerWithVirtualSynth<br>`0x88bdc29d17f40ae43b1091fd8fc6a01857cc5b70` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | ExchangeSettlementLib<br>`0x33231796dba7bc00b9e3880e06087a27e053eeee` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | FeePool<br>`0xb80f834ff243cb66a48f2fe9e37064db0cd9d6fd` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | FeePool<br>`0xd7aba6333242bc5cd38b2a8a297cca08cc01a95e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | Issuer<br>`0x2841052140b4eca63c8ef0bd52c4818eefd5146b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | Issuer<br>`0x9a89df0a1e3ce5ad02beb12ab077e591dc9b0fb9` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | Liquidations<br>`0x5bcdb40000347ad047008c9295fedbeda7487ad2` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | Liquidations<br>`0x7527d765835e655b11664565de5ae46cccabc1c0` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | Math<br>`0x1223371e7ef0deecc5489eddb87dcfc50dbc520e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x036ec5b1cc1856ca8169487c0b6cccb12d606cd5` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x05f80d9e7e215fbcc6c8a46644f25444a0faf075` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x0920e8adda04bc97a095c95d330ce4be8c83e966` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x130fd014ea6f354f541cb3da5262de09b5cb124b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x1ad2b200e99f22f8dfeff2ba4d58a8e912ee575b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x1b02373b81eb11f0d4a4f808c70614db2452f140` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x1c36f948ebca620f2dbe3a1fec47b703951654ae` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x1fbc06ff2bb095e4c8e1be8b99139cffc790d97a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x206fcc868dd0036ed0d72adb065996dc8fd1e8e7` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x269c24f90f0226b8cb57f48371422643b7767d00` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x3063b56048a98ccbc8f8f99202a3b7d91e2e4665` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x311d02022571c1e929535576763920deadea4639` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x31572defb5362d10c42c38337751f50bc70d8d8b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x34af6833e865f97342a75fb26947433f681f5fca` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x36c0f34a31b6d730a3b7b04cecead872fe46a2e5` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x43d1cbc91cfa8d68319c91f40106654ebc524c76` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x46bcfa01345764ed138683487e68a833e9b79d78` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x4bb23f4e5c2ede1d24a996583292a03a01bf01fd` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x56a1ce3d81fcf5c5f716f79396f1bc91eeead5ac` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x58e33d379edec2007e04220c793a16cfe1f3cec8` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x58e55122f6953e6ba5ac709a85cd1c5dda621786` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x62e34aaa56e304f8f6febea49b869b2df9de9323` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x64141f1f3cabc29f6c9f19b4da100cb095dd87fd` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x70e9c9b1bc01db9a8656154cd75d702e800b97b9` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x77866ef746a5e353ecb19867bb1cc5d91d4430f9` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x7b595c1ca5387c4b7927b83b46d80150f99ecdbb` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x7d4a8f851d5610c6ea5101eba377629a8fb49b11` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x7f11125a2f22e1dcc19213475267d2dd2f838ff5` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x7fc6e091e94af6f6bab776254ec592000743e872` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x87f4e0ac230cb43ff5179a2e39e5a2cc77d1665c` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x8a5616118925647c39725d2872e4c98922c82ace` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x8ec3d9f6fded50d3bd97c0c21e4d9de71e39c9d7` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x8ec653dfea19550467cc2fb49d306dff02ebb687` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x9683cda6b00cf226d802c73bbfd69c11aadfe71f` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0x9b61394871ddf351daf94c3f30bcc3f8bbd82d4a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xa0427e5863f87e824b83870b7b52313c177aa38a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xa0b0b44e431d1aac4e589c1887c81c7c2c0f331a` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xa7a9eed298572142105ee9da1a6eece4c8c38f10` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xaa5fb191cf6e1d864838e3f727625278f736727e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xaef693a2975eade3190ae2c788374502b9d8ecd8` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xaf44141ae9e100ee9efc116995b5399571c662fb` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xb4eb061e628810788219d59879b3c88d3963e867` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xb79fed4964800790f543c91f5e50be72e2afb048` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xbe8de1d68f951094ddc06b502eed575e8310c0a2` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xc1cf9afc63b22ba8f3fa25a77e1102a89d0cc5a1` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xc3b022b7325fa1805c305bc89a55258a3a7da4e7` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xcd5034aecf6af51edfcfef11c2ad94390578d6fc` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xcfa388ca584a2ec5ba11a3ddfc475c719d8f0155` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xdf04c1d408104f242ebc1a4255a224b1f071c78f` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xe094b59d36ffa2a804fe252db29f711c2cd4c820` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xe0aa8cf78308654fade18f69af7c0ee30db77582` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xec662ac8184a43735425a3a067527f0c39c9386e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xf48664839baa3b5e68ba679fd817aa66049c6732` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xf6f04e13d68b0e95e7d6e65a29efb483012e86a4` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xf98ab4bc0fd6d313b8ebaf098cfdaab7a0b21cd0` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | MultiCollateralSynth<br>`0xfd3afc0e1db65c3615153fff86052cdc5569203b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | OneNetAggregatorDebtRatio<br>`0x2f43dc10cdadb405f99d3bd5f94f7325338aa607` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | OneNetAggregatorIssuedSynths<br>`0xe2d6579a9630985e390cb2ca2f51b7519f2ca727` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x17c4424492ec8eb75fb6695717aea5c5bd514063` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x180cee23ae1f35f573d88d06414ab643aded3369` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x20894f2b7bd2f75421259c23fe5ebd931541c4e2` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x33e20aa5ca08014ba35e0386f6eadc633a091049` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x380b7132aad3d17122c33e2f289831506fe1250d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x69eb282c434851ce9c443d4dbc1cf0251611d727` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x8239150d4d5c56c8e7b0eb56578da6dbee22337b` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x8b9335494ad3c890bd84d4c7ca8ca3c233f0b934` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0x8cf2526667a1051ef86cfc8455a7396f3c782afe` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0xa4d7a0e75beb384872754504067920c8d090b572` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0xa6b590d4edefc51fbacc73a4e85c1159e69152f7` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2Market<br>`0xf049e2a617e2badc46e4b3655149f098a4183f74` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x1a27cf2dc84809d91f3711c8c1abc634f879ce68` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x310f1c767ccf7c732a8f678f4309f3a4790fc4cf` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x3d5bf1f0bdf84ab25eeec15639fb09c6e3a05648` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x4622a04e41610ccf60bfba7ae7c87dc6ec08e434` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x54239c903d6c827d26602d05eae3bc81e9c59332` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x6a273f53d752d135a0dde33565d68ee59ac13674` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0x8f969b27368f77e11d6a0dcf395477ca2533b080` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0xa7a4d2e215cfcb5aaa12de79fabe140cc3ccab7d` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0xb748fb72896517d3eb445daaaac8bf45e34a8b50` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0xb7af1065606dff0c2aa15ad93772518bb0fe0907` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0xe43930b415eba41604fbb7de1fe6fe5142b0153e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedExecution<br>`0xfc7e77c4f7da4f6109966c82c7b73ed8efbea035` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x1bed8998271939c4fff32f3b3c9ec737fbef6ab0` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x20ddc5856994b69a184150fbe742d962636caf89` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x2ba6b59f1549533cfe64a47d286cb31d880897f5` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x2da8a941d05f1c15d160731fe6f983158470a305` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x5eb2a960db1ce278e26b2c34dd9107ff87a363fa` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x66f3551668a9fda5c7751c657d0c99006f2e5607` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x697e6119da3fce85351994748b23ebb27c1e2061` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x8d128dd43430cb2fa494885ea26ca788c8e20e2c` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0x99ae4e73a2868630bd489fdeb5ebbd0c99a50d24` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0xd905b782212a920a61d50891a95db82c15139d2e` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0xdbe3c380453920134efe179269d7dfcd218e8dc5` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketDelayedIntent<br>`0xfb01a6395d77da0d66df69e6f16c1037eef17a88` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketLiquidate<br>`0x0ef31a04cf151ca20ecf7ab7e83c852ff97c0b04` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketLiquidate<br>`0x20ddc78a8fff5dc8b7d4bb6c6d27231dd0d680cc` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |
| bsc | source verified unclassified | PerpsV2MarketLiquidate<br>`0x5024ae274b65595faf6bd303f80c4b4044e69da3` | non_address_book | unknown | unknown | verified | n/a | `0x3a10a18ca6d9378010d446068d2fd4de5d272915` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Horizon-Protocol-Smart-Contract-Audit-Report.pdf](https://static.horizonprotocol.com/Horizon-Protocol-Smart-Contract-Audit-Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 121 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14145] Horizon-Protocol-Smart-Contract-Audit-Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | AddressResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | AddressSetLib | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BaseSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOption | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketData | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketFactory | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | BinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ContractStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DappMaintenance | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | DelegateApprovals | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Depot | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EmptyEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EscrowChecker | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EternalStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | EtherCollateralsUSD | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangeRates | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangeState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Exchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExchangerWithVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ExternStateToken | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FakeTradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePool | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePoolEternalStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FeePoolState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FixedSupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | FlexibleStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | GenericMock | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IAddressResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOption | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IBinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDelegateApprovals | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IDepot | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IERC20 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IEtherCollateralsUSD | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchangeRates | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchangeState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IFlexibleStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IHasBalance | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IIssuer | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ILiquidations | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IRewardEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IRewardsDistribution | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IStakingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixBridgeToBase | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixBridgeToOptimism | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISynthetixState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ISystemStatus | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ITradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | IVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Issuer | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | LimitedSetup | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Liquidations | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Math | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MintableSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MixinResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MixinSystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockAggregatorV2V3 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockBinaryOptionMarketManager | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockContractStorage | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockEtherCollateral | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockFlagsInterface | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockMintableSynthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockMutator | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockRewardsRecipient | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MockSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | MultiCollateralSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | OneWeekSetup | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Owned | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Pausable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Proxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ProxyERC20 | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Proxyable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicEST | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PublicSafeDecimalMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | PurgeableSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | ReadProxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RealtimeDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardsDistribution | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | RewardsDistributionRecipient | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SafeDecimalMath | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | StakingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | State | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SupplySchedule | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SwapWithVirtualSynth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Synth | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthSummaryUtil | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthUtil | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | Synthetix | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixBridgeToBase | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixBridgeToOptimism | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixEscrow | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SynthetixState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | SystemStatus | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableAddressSet | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableBinaryOptionMarket | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableDebtCache | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableMixinResolver | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestablePausable | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TestableState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TokenExchanger | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TokenState | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | TradingRewards | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | UsingReadProxy | unmatched — not counted | — | — | no |
| Horizon-Protocol-Smart-Contract-Audit-Report.pdf | VirtualSynth | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 121 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14145] Horizon-Protocol-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
