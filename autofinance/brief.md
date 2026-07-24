# Agentic Audit Brief: AUTOfinance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 47.5% over 90 days

## Project Overview

- Project: AUTOfinance (`autofinance`)
- Website: [https://www.auto.finance](https://www.auto.finance)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, linea, plasma, sepolia, sonic
- Contract surface: 1102 unique implementations (1898 raw deployments)
- Coverage basis: 2/225 confirmed own live verified implementations (0.9%); conservative 0.9% with 1 needs-review implementation(s)
- DeFi Llama TVL: $31,903,043.62
- On-chain TVL (included contracts): $110,603,707.78
- TVL by chain: Ethereum $102,815,751.84 | Base $6,206,560.28 | Arbitrum $1,581,272.34 | Linea $123.22 | Plasma $0.10

## Project Description

This brief describes the observed EVM deployment and audit surface for AUTOfinance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 344 contract row(s) across arbitrum, base, ethereum, linea, plasma, sepolia, sonic. Structural roles: 167 core, 115 supporting, 62 unclassified. 136 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 344
- Structural roles: core (167), supporting (115), unclassified (62)
- Contract kinds: contract (344)
- Detected standards: erc20 (62), eip1271 (27), pausable (11), erc20permit (8), erc4626 (8), ownable (8), multicall (5), accesscontrol (3), erc165 (3), ownable2step (2), chainlinkaggregator (1)
- Frameworks: openzeppelin (274), openzeppelin-upgradeable (136), solady (120), chainlink (7), permit2 (6), foundry (2)
- Upgradeable-pattern rows: 136

## Fork Analysis

0 of 301 contracts are derived from known codebases. 301 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x084e65a576949a431f7e8e4c9154d1ddd7f25a0c`, chain 1)
- UnnamedContract (`0x1abd0403591be494771115d74ed9e120530f356e`, chain 1)
- UnnamedContract (`0x1ea622fa030e4a78f4cc2f305dd3c08da3f08573`, chain 1)
- UnnamedContract (`0x40219bbda953ca811d2d0168dc806a96b84791d9`, chain 1)
- UnnamedContract (`0x408b6a3e2daf288864968454aae786a2a042df36`, chain 1)
- UnnamedContract (`0x4a3688fa864d42fabaea9e364266e81b50730e91`, chain 1)
- UnnamedContract (`0x60339056ec88996e41757e05a798310e46972cca`, chain 1)
- UnnamedContract (`0x620ffca1ef197f1cd9374bd31992b65a18e89bc0`, chain 1)
- UnnamedContract (`0x780d5bc2b1ffefa1f5bbe1ab0c056c81774ba5f1`, chain 1)
- UnnamedContract (`0x79eb84b5e30ef2481c8f00fd0aa7aad6ac0aa54d`, chain 1)
- UnnamedContract (`0x9abe58bc98ae95296434ab8f57915c1068354404`, chain 1)
- UnnamedContract (`0xa7569a44f348d3d70d8ad5889e50f78e33d80d35`, chain 1)
- UnnamedContract (`0xba1462f43c6f60ebd1c62735c94e428ad073e01a`, chain 1)
- UnnamedContract (`0xc4eb861e7b66f593482a3d7e8adc314f6eeda30b`, chain 1)
- UnnamedContract (`0xc7c77b3a2c2641c6ee6c52bbd72ecfc86b53ba38`, chain 1)
- UnnamedContract (`0xcb29d488efcc308c07c3168c63d5e7aede4bc3ae`, chain 1)
- UnnamedContract (`0xd1e668ea38c68740eec6ebad453a082211c98709`, chain 1)
- UnnamedContract (`0xd3bf4ac5d54f262f977be28c761470ea0e612081`, chain 1)
- UnnamedContract (`0xd48a39a087fc4dd152867c5059c2667ec5fa0e4d`, chain 1)
- UnnamedContract (`0xd8ef136051014e89e9ea6ae32c3cd224778125e4`, chain 1)
- UnnamedContract (`0xdfe3fa7027e84f59b266459c567278c79fe86f0c`, chain 1)
- UnnamedContract (`0xe4433d00cf48bfe0c672d9949f2cd2c008bffc04`, chain 1)
- UnnamedContract (`0xf4b143f94eef97fcb44eea54c7927ce15f96e23c`, chain 1)
- UnnamedContract (`0xf5c49c69ec7735b7bab85c591ca93c8124825ab4`, chain 1)
- UnnamedContract (`0xf9779aef9f77e78c857cb4a068c65ccbee25baac`, chain 1)
- UnnamedContract (`0x08b0617747ad7a839396a909876104e392713e4d`, chain 8453)
- UnnamedContract (`0x2a7a163168682f58a5294089b7eb87a65d92b1ed`, chain 8453)
- UnnamedContract (`0x4efcc03e33470cfef7b2666eff67667f4173918b`, chain 8453)
- UnnamedContract (`0x9c6864105aec23388c89600046213a44c384c831`, chain 8453)
- UnnamedContract (`0xb592c1539ac22edd9784ea4d6a22199c16314498`, chain 8453)
- UnnamedContract (`0xbd0fe980455e52e4d60c4eacbd6bc19a5cf29f6a`, chain 8453)
- UnnamedContract (`0xeb042dee6f7ff3b45ef0a71686653d168fb02477`, chain 8453)
- UnnamedContract (`0xee5e7575df9db1446f9d601769f448bb4a10f3f7`, chain 8453)
- UnnamedContract (`0x0da0e8f8df8b6541affb071c6e0ff6835154e1dc`, chain 9745)
- UnnamedContract (`0x45938694d6c66cdf67baa5ab0e312ce2be067ccd`, chain 9745)
- UnnamedContract (`0x4dd0328ac9e4537fab086ed8b52c9dd50a77e097`, chain 9745)
- UnnamedContract (`0x4ec8f8b0f144ce1fa280b84f01df9e353e83ec80`, chain 9745)
- UnnamedContract (`0x7bc60435aaaddf3d82fb45704d11066530560397`, chain 9745)
- UnnamedContract (`0x7bea14e8b5b8693d74a451babecbcd34c6ebe83d`, chain 9745)
- UnnamedContract (`0x7de076006de8842b55fa13e1bf8b177bdcffc1f4`, chain 9745)
- UnnamedContract (`0x8ccd47869e0eea55ba4af520571a9c6ce300347d`, chain 9745)
- UnnamedContract (`0x8dbad46d468d57fdd1fcba0452c8cd4d7fae72e8`, chain 9745)
- UnnamedContract (`0x9065c0e33bc8fb31a21874f399985e39bc187d48`, chain 9745)
- UnnamedContract (`0x127563761083d2ac7794c17d04e17393d8ad9013`, chain 42161)
- UnnamedContract (`0x1bb9231f96a5420858d273c3e311f0affc23cdc0`, chain 42161)
- UnnamedContract (`0xa9900b2d550c406d1cf58da27228feeef21d447b`, chain 42161)
- UnnamedContract (`0xf63b7f49b4f5dc5d0e7e583cfd79dc64e646320c`, chain 42161)
- UnnamedContract (`0xd1a6524fccd465eca7af2340b3d7fd2e3bbd792a`, chain 59144)
- AaveV3StataDestinationVault (`0x00e52ae3cfc140fdf3dff8932500d4ad919c5f4a`, chain 42161)
- AaveV3StataDestinationVault (`0xa087e1032dbef8f980c4512f3eb76748c4e7d7bb`, chain 42161)
- AaveV3StataDestinationVault (`0xebcff8cacb781125c35b3742ef328d8639864991`, chain 42161)
- AaveV3StataDestinationVault (`0x68e93d2f0781864cf6f370ecc3b7240738de15f7`, chain 59144)
- AaveV3StataDestinationVault (`0xbd353da0ddbe5aed419f941ec95b746bcb45e7e2`, chain 59144)
- AaveV3StataDestinationVault (`0xd96d54e54186116fbc5c76727dd694e92f57f3fd`, chain 59144)
- AccessController (`0x7ec41019b6fb853511df54982ae17cbf3b4fd6b2`, chain 42161)
- AccessController (`0xf4425cb2bb4275afe3d0232a6a00a4fbfdb76a04`, chain 59144)
- AerodromeDestinationVault (`0x58c2233399b85b53c5506f78eaaae9b0dba1ed3e`, chain 8453)
- AerodromeDestinationVault (`0x945a4f719018edba445ca67bda43663c815835ad`, chain 8453)
- AerodromeDestinationVault (`0xa94031ed4b316b043464fdd5482877f42a39845a`, chain 8453)
- AerodromeDestinationVault (`0xd18db4dd6af6a7536ad7f863c136463681e0cdad`, chain 8453)
- AerodromeDestinationVault (`0xdbd14969b9313e5bfdfed2c7a29e813e6f02c627`, chain 8453)
- AerodromeStakingDexCalculator (`0xb02cb15597e214b9a843ccff9eefe628c057184e`, chain 8453)
- AerodromeStakingDexCalculator (`0xc7b711a5d1fcc19195e82e8c0d827e2e0bd2bd10`, chain 8453)
- AerodromeStakingDexCalculator (`0xd9b54d16a2cd15abe6e8a9b8b596239a7f8042e3`, chain 8453)
- AerodromeStakingDexCalculator (`0xe40523f7bd5799b3c62921357b104f58c4a7c240`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0x9813e3091278f41cd6b2686ff83255f97889f3e3`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0xd675d868c751a5b1f331bcf5dcd1fe7d45c2e76b`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0xe923f84cbbdce6d12c7987511c0b2c122f425318`, chain 8453)
- AerodromeStakingIncentiveCalculator (`0xeaa026495601c47bfeb4bb6501c11ba41a1ac028`, chain 8453)
- AerodromeSwap (`0x2bb11c6407bb9dcbb5b776f789371de5aaca44a5`, chain 8453)
- ArraysConverter (`0xb6ab7ae9eb120a8c3d2b7649082e55907ae5940f`, chain 42161)
- AsyncSwapperRegistry (`0x73526d80ac5db9ccd2aa46436744c542ef9c0b75`, chain 1)
- AsyncSwapperRegistry (`0xb45bd07b916cc3544ab9cd54f812ed8d88bfabba`, chain 42161)
- AsyncSwapperRegistry (`0x46e9c8207a5bd45d05dc4cb6cff791c01c7468ca`, chain 59144)
- AuraCalculator (`0x041679acb4088288178589c059543b56ce74ea07`, chain 1)
- AuraCalculator (`0x0f5d9c23d365c114d3febae6cb2edbb06b65acad`, chain 1)
- AuraCalculator (`0x4e4eb584ccea7ece23da46245daf07457bc48348`, chain 1)
- AuraCalculator (`0x4ead64090fe1d07b8a2306b2e4897386d5eb43ea`, chain 1)
- AuraCalculator (`0x5968662ccfb6792bb4a0e4f45cf303b85fb2cc43`, chain 1)
- AuraCalculator (`0x5ac9dc1cef6cbd9d5b8a604e2d3b7d93f59d7f40`, chain 1)
- AuraCalculator (`0x662e3fcfd4348ef74ff88c88a6e9f4e4119b018b`, chain 1)
- AuraCalculator (`0xa4349b50d2e64b24b4c35b2c24ad06177508f3a0`, chain 1)
- AuraCalculator (`0xacdc4a1cd67e7e9fe85f00ec29d5f07b1305829d`, chain 1)
- AuraCalculator (`0xb57e41106fc06a5c0b6accc8cf8f72dd25fb6621`, chain 1)
- AuraCalculator (`0xd09bde15c0bdd222edcd79912c0636e451e59c71`, chain 1)
- AuraCalculator (`0xddfd0a9a979182fa45e0024fdb101dd8079d84b2`, chain 1)
- AuraL2Calculator (`0x7c4b58eaa93005162bc80285af2003517213c539`, chain 8453)
- AuraL2Calculator (`0xb9e9818e551f676d6be547ed07e5875dc702b6e8`, chain 8453)
- AuraL2Calculator (`0xc5a9170d151cfea07489bd9db5ecf20b5b7654d4`, chain 8453)
- AutopilotRouter (`0x39ff6d21204b919441d17bef61d19181870835a2`, chain 1)
- AutopilotRouter (`0xa18b89225491230fdb1883cfbda65e7931606931`, chain 8453)
- AutopilotRouter (`0xc848832a31eb5558f14f13d361bb3a95ec91f27a`, chain 9745)
- AutopilotRouter (`0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad`, chain 42161)
- AutopilotRouter (`0xf61e75fbe9147f230400a1e7737c6f6934990544`, chain 59144)
- AutopoolETH (`0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56`, chain 1)
- AutopoolETH (`0x35911af1b570e26f668905595ded133d01cd3e5a`, chain 1)
- AutopoolETH (`0xf90bb2baa90b457a35c37c5a96de2720ce367281`, chain 1)
- AutopoolETH (`0x2ab4a3a8224726cbaa91d6b04d212979f06efdf9`, chain 8453)
- AutopoolETH (`0xaadf01dd90ae0a6bb9eb908294658037096e0404`, chain 8453)
- AutopoolETH (`0xd0cf0c4594ed8d2a0d845d493693fde822cc5821`, chain 9745)
- AutopoolETH (`0x12db19359159e8ab0822506adf15d4d8dbff66c3`, chain 42161)
- AutopoolETH (`0xc9db15bf0361a5ae0aca0e3bc8d0ec7fab195e7b`, chain 59144)
- AutopoolMainRewarder (`0x60882d6f70857606cdd37729ccce882015d1755e`, chain 1)
- AutopoolMainRewarder (`0x726104cfbd7ece2d1f5b3654a19109a9e2b6c27b`, chain 1)
- AutopoolMainRewarder (`0xe041b3b14e76e4b4605876875e1860c6005456f2`, chain 1)
- AutopoolMainRewarder (`0xf590865e624d14ed4659f1fca736634b9926e716`, chain 1)
- AutopoolMainRewarder (`0x4103a467166bbbda3694ab739b391db6c6630595`, chain 8453)
- AutopoolMainRewarder (`0x69a63ddb162a0251248f6c7d22902083ca3e0522`, chain 8453)
- AutopoolMainRewarder (`0xf6cc563b93f8e678f696fac632e41b550cb09540`, chain 42161)
- AutopoolMainRewarder (`0x03825c8c817ff49a208c9c20365c002418c5bf0d`, chain 59144)
- AutopoolRegistry (`0xc3b8f578c25be230a2c0f56cb466e7b8c6c9d268`, chain 42161)
- AutopoolRegistry (`0xf25f616ccc086dda1129323381efa1edc8d5f42c`, chain 59144)
- BalancerAdapter (`0xb0c974d40b0ffd26f50bbb6b04b72a9a6757702f`, chain 42161)
- BalancerAuraDestinationVault (`0x2f2cc1bf461413014741dd68481db4a3686dac3d`, chain 1)
- BalancerAuraDestinationVault (`0x5a4b544b9734930ddc587c9a2f093dc5058a4f4d`, chain 1)
- BalancerAuraDestinationVault (`0x867991c7737ccbb152ae5a7e6edb05ca0670717e`, chain 1)
- BalancerAuraDestinationVault (`0xc9b5d82652a1c8214b0971a004983d0eeedd751c`, chain 1)
- BalancerAuraDestinationVault (`0xfda49984eb4ea4075b8b451032849347c633e94b`, chain 1)
- BalancerAuraDestinationVault (`0xa6efb95b7393cb419b48a933273f49b6bb48dd5d`, chain 8453)
- BalancerAuraDestinationVault (`0xb3723e69d6e4553239d7daf514bf8ff7998500e0`, chain 8453)
- BalancerComposableStablePoolCalculator (`0x0e2b7536ecb785df0fa43c6622dd6b670ce39be4`, chain 1)
- BalancerComposableStablePoolCalculator (`0x2df5d9ef6d48a456ba5edc444dd5de7ad7ab0981`, chain 1)
- BalancerComposableStablePoolCalculator (`0x4c4d65167b6c6b112480d2295a35300beb3a1970`, chain 1)
- BalancerComposableStablePoolCalculator (`0x4e79861b9026109a9c5769631c182b3211bd70e0`, chain 1)
- BalancerComposableStablePoolCalculator (`0x63b0ac87bda3ee6d13802a93fc13918df5832ae9`, chain 1)
- BalancerComposableStablePoolCalculator (`0xa639d9c66dfa096d5a5a8bf0bbb482a0c295193c`, chain 1)
- BalancerComposableStablePoolCalculator (`0xab0b5440e1bbdd3b6309ea82364b2a49db27f9a5`, chain 1)
- BalancerComposableStablePoolCalculator (`0xadf54e42990f5b7d9f423d66d8652b53812dd5a6`, chain 1)
- BalancerComposableStablePoolCalculator (`0xb5652e10eb7e93eec7dff8909a99fc3e6aea6866`, chain 1)
- BalancerComposableStablePoolCalculator (`0x4fc45f7c2feb07d5698cc12717f5b8d4f30002a9`, chain 8453)
- BalancerComposableStablePoolCalculator (`0x800f535ce3f430b1f5475575d7d2ff3a164820b3`, chain 8453)
- BalancerGyroPoolCalculator (`0x943673e7996a5d2ac2e945d0eabf1aa39913e9d2`, chain 1)
- BalancerGyroPoolCalculator (`0xa9b8e439d140e8f2644e1b4d98f3aabdb85702ab`, chain 1)
- BalancerGyroPoolCalculator (`0x9d95e1fecd950110ab1126cc6ed3c87c61e39e33`, chain 8453)
- BalancerGyroscopeDestinationVault (`0x92294a62d6d9f0fbe30ba3b543edb1806561bad7`, chain 1)
- BalancerGyroscopeDestinationVault (`0xa1b9297525388ba3985413d982863f31e2a29d05`, chain 1)
- BalancerGyroscopeDestinationVault (`0xbd137c56f3116e5c36753037a784ff844f84f59c`, chain 8453)
- BalancerMetaStablePoolCalculator (`0x66664bd801ff4edf8778bae66acf1de9c29a59a4`, chain 1)
- BalancerV2Swap (`0x6def5e2bb8545e1cd9f4f52ff42e2732fc13f311`, chain 42161)
- BalancerV3Adapter (`0x19fa89cdadfe49ac70531c9ad714a27bc2c1a620`, chain 42161)
- BalancerV3AuraDestinationVault (`0xc77161af2701f2fb880d4a7144ddc5f4e7d536c0`, chain 42161)
- BalancerV3AuraDestinationVault (`0xce1c8244410a4f97308ffc5ec926c9ef8faec809`, chain 42161)
- BalancerV3BatchSwap (`0xbd6beb16d6ccf62142588fb0ce26e589254c741b`, chain 42161)
- BankSwapper (`0x1cde65265061d84753086fe39084694f934647be`, chain 42161)
- BaseAsyncSwapper (`0x18f9f37631a866aeac018e8399df23da37c00df8`, chain 42161)
- BaseAsyncSwapper (`0x4423cb967ef8f3a21fb360d8528234271b450ceb`, chain 42161)
- BaseAsyncSwapper (`0x45bce6054c4612dca905a4d7801f60e6273949fb`, chain 42161)
- BaseAsyncSwapper (`0x4660a170e2e36daaab8aa4dcdd0001433e34f58d`, chain 42161)
- BaseAsyncSwapper (`0x621091dceaea90571590ee6bf04aecbf8845deba`, chain 42161)
- BaseAsyncSwapper (`0x9f42f514f4a1e7e0a86a186b804769fc6d4f4ed5`, chain 42161)
- BaseAsyncSwapper (`0xa2217dc019d2946e3c6ded1e829edaf0b969b478`, chain 42161)
- BaseAsyncSwapper (`0xadb96b38c8b99e2b8d52fe7b6060a1ed4a49f858`, chain 42161)
- BaseAsyncSwapper (`0xc54e002845c1dff4ec13db93200cd108c94717ad`, chain 42161)
- BaseAsyncSwapper (`0xcaf5b3e34c7d556c9d8dc4873451324b7241bcad`, chain 42161)
- BaseAsyncSwapper (`0x25be909fc91f219a08e06b3b60664d98ea498fd1`, chain 59144)
- BaseAsyncSwapper (`0x2844a087f60efe110ffa06e28d9b3c1a586a26d8`, chain 59144)
- BaseAsyncSwapper (`0x42207161e6a9e366255274ac895efbf87673cd1a`, chain 59144)
- BaseAsyncSwapper (`0xd00c62b168652dd23060c1f337e31fcdf51424bb`, chain 59144)
- BlockchainInfo (`0x86abaa236f76c1406404c9e78b142c72ca3308b3`, chain 42161)
- BridgedLSTCalculator (`0x58897ec6b7d7102bb24a29e99a14a6d9e517943e`, chain 8453)
- BridgedLSTCalculator (`0xa80b38da84e7c7a094e6d0093de374a00e892934`, chain 8453)
- BridgedLSTCalculator (`0xb081af21468deb33aab9e37eae6f5004cc1cbdb0`, chain 8453)
- BridgedLSTCalculator (`0xb5182945caa19e3a9fa35e70502fc3269d1fa9ea`, chain 8453)
- BridgedLSTCalculator (`0xbaf2ee1c91cc8a00b386b14d65bdb4918604e1a7`, chain 8453)
- Bytes32 (`0x5f317e865c7b69ec1a079c04c46be063408f520e`, chain 42161)
- CbethLSTCalculator (`0xab78a570252dd06fdbc1c5c566e842e571d01e08`, chain 1)
- ChainlinkStatsUpkeepV4 (`0x30f285c7cb4304e82302ce06f24e285bd527c637`, chain 8453)
- ConvexCalculator (`0x355f39596a4bc907a84dbf8f627c7ca2ba13de91`, chain 1)
- ConvexCalculator (`0x4bbfa11223315a21b51f37cf9dd3bd6200332276`, chain 1)
- ConvexCalculator (`0x74c3b0547bbcac9584d072c6fbac543267269ab7`, chain 1)
- ConvexCalculator (`0x83b6945e843a22bbda6beaa06e88bc1312301d7a`, chain 1)
- ConvexCalculator (`0xbfdf3a66a97ae5e168fce478be0be9804c163841`, chain 1)
- ConvexCalculator (`0xf25b36c77e869b01477860a0eabc4f4ff745eac3`, chain 1)
- ConvexCalculator (`0xf7370f9bf50985209efe114096cd0177ba4ba9d7`, chain 1)
- CurveAdapter (`0xcb9597bb803d7baa4b6a14c2afd6d4dc9230af70`, chain 42161)
- CurveConvexDestinationVault (`0x356c79ab2b2cefab685004ce827146058a6c3e77`, chain 1)
- CurveConvexDestinationVaultV2 (`0x0091fec1b75013d1b83f4bb82f0bec4e256758cb`, chain 1)
- CurveConvexDestinationVaultV2 (`0x23032a1ef0c082e619e3e64725e9d3b39c4e9d8c`, chain 1)
- CurveConvexDestinationVaultV2 (`0x2fa4c8a4acda7746778dbd2f3b2fc5ca41d9b171`, chain 1)
- CurveConvexDestinationVaultV2 (`0x737f2e3a0958ef0fa77aec405db60f13cb7f004b`, chain 1)
- CurveConvexDestinationVaultV2 (`0x88d0e045d91847a81e60f65073e4bc4fdef90ab0`, chain 1)
- CurveConvexDestinationVaultV2 (`0x9828b1a3742457d70ce428ddd3aa51f84ffb37f2`, chain 1)
- CurveConvexDestinationVaultV2 (`0xafd498862d5d0b816d7ce150959ba18f5c706a90`, chain 1)
- CurveConvexDestinationVaultV2 (`0xf4ceddf4e2aec1aa6b4ef2c64739ecac5c948fa2`, chain 1)
- CurveGaugeDestinationVault (`0x04f7cee4169276e9245d09b2cf074b193f94f051`, chain 42161)
- CurveGaugeDestinationVault (`0x9b19857171aad69896f8cd6912c91608435c4410`, chain 42161)
- CurveGaugeDestinationVault (`0xdd78eaf244da68429ada4f3a8767f3a9f307b0fd`, chain 42161)
- CurveNGConvexDestinationVault (`0x2b08137beabd2454ad3631deb754f97c5c93eb78`, chain 1)
- CurveNGConvexDestinationVault (`0x3f55eedde51504e6ed0ec30e8289b4da11edb7f9`, chain 1)
- CurveNGConvexDestinationVault (`0x5c6aeb9ef0d5bba4e6691f381003503fd0d45126`, chain 1)
- CurveResolverXchain (`0xe0ebd6bdeee70af91d14e49d869e3746cb05a5f8`, chain 42161)
- CurveResolverXchain (`0xbb1dfbbf3cfa0ae92119db2d35a53b59fa852e5e`, chain 59144)
- CurveV1PoolNoRebasingStatsCalculator (`0x145e12608c133c2b9062d10e33305d153ac41879`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0x542a6b32e08980a8e9f4cd778805cfcb7a99f0fa`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0x94b58e201eae7434b9fdcea12e6b0b4fb26c7a69`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0xb8e7a5f5f5324abd46f3bd92c814c9b9719b8c2a`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0xd545ee3ba242e89fa45caa68665898baf4201004`, chain 1)
- CurveV1PoolNoRebasingStatsCalculator (`0xd6884a251e3d116344100e76917df3c535ee6154`, chain 1)
- CurveV1PoolRebasingLockedStatsCalculator (`0x54939860e3d185cd983421ace105ace79156e3c8`, chain 1)
- CurveV1StableSwap (`0x1bdc539dedd630d9bc66fd88a53305b07db8cf69`, chain 42161)
- DestinationRegistry (`0xa698a94c0dce389b862f58b08f618a981ea99402`, chain 1)
- DestinationRegistry (`0xa1afc8aaf80df8ceb179e99bb1a8fb4d26095ba1`, chain 8453)
- DestinationRegistry (`0x95b5f1abce00b345990d1ec0152b416cd143c58e`, chain 42161)
- DestinationRegistry (`0x66b9eba2cef184dfaf3b9e11b104be0a1c6e258c`, chain 59144)
- DestinationVaultFactory (`0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124`, chain 1)
- DestinationVaultFactory (`0xf34f7975df6cb3dd95849a6c3b9343196ae9abb6`, chain 8453)
- DestinationVaultFactory (`0xc895bbd0fcb39bdcb66151fa6316b5b13f5c288a`, chain 9745)
- DestinationVaultFactory (`0xd6683672269b6a109a51825e71a015678559225a`, chain 42161)
- DestinationVaultFactory (`0x618273975be7c43601e500dbc59a28cc2367520f`, chain 59144)
- DestinationVaultRegistry (`0x8d75a2b774277370d9dc8c034f23003b29032b4b`, chain 42161)
- DestinationVaultRegistry (`0xc7b0617573a65cdac06fafd106cf9f8503d65da2`, chain 59144)
- EethLSTCalculator (`0x4353e181c13f7e970f24016a0762c1af271350ba`, chain 1)
- ERC20DestinationVault (`0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e`, chain 1)
- ERC4626BackingOracle (`0x47cabfe7c68dc09b1e26ac62655664295481ed2f`, chain 42161)
- ERC4626RateProvider (`0xd4580a56e715f14ed9d340ff30147d66230d44ba`, chain 1)
- ERC4626RedeemSwapper (`0x5c47f4fa6978a7551488cae568df4ffbab905667`, chain 42161)
- ERC4626RedeemSwapper (`0x6978f25d2e7feec1a515524fec4ed721c4b3f5c3`, chain 59144)
- ERC4626Swapper (`0x98a216c534b7eaada6d5642a9ca69393360e339a`, chain 42161)
- ERC4626Swapper (`0xe1a08bf9ef02a869eabf2585cbca50e898799213`, chain 42161)
- ERC4626Swapper (`0x268cbbc41d74618505982e83885baaae02161a03`, chain 59144)
- ERC4626Swapper (`0x3f962ecd4edb29422aa07e456ec2bc7067acc328`, chain 59144)
- ETHxLSTCalculator (`0x6d3c5f6670abe46901de4bd39036cf21d178334c`, chain 1)
- EulerDestinationVault (`0x39841737112ec884406b66a487f3efcdbfd80085`, chain 42161)
- EulerDestinationVault (`0xc32572fcc9990977b79a6d744f60d78ac6ea15a8`, chain 42161)
- EulerDestinationVault (`0xe6a2b1ade3f61fe4d957bb0c792ea85ece08fc71`, chain 42161)
- EulerDestinationVault (`0x9d2868bafeaa293daa7b5d1e6d1dd6b1a2239e3a`, chain 59144)
- EulerDestinationVault (`0xbe22c1f54cd2b1bd59bb20c7c2a97e688b3ae95f`, chain 59144)
- EulerDestinationVault (`0xd2f243a4e0311950c11122851179edb04c5d4471`, chain 59144)
- ExtraRewarder (`0x17c50b9fba151f5f88618dae6c394bd731022975`, chain 1)
- ExtraRewarder (`0x23e9bbd1c4528f904526be2761250e94177fec38`, chain 1)
- EzethLRTCalculator (`0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9`, chain 1)
- FlashBorrowerSolver (`0x371b3cc4cad4bffc25729c9db4d8c97ecab29488`, chain 42161)
- FluidDestinationVault (`0x2b8c9765b5983bd3c94849705050daabde414127`, chain 42161)
- FluidDestinationVault (`0x40454f1e95ee73d78f3876c892e9a32007aa2f74`, chain 42161)
- FluidDestinationVault (`0xd70f872e4fd8a55076082ff73ed7f54524d6c74b`, chain 42161)
- FluidDestinationVault (`0xdedb0092ec78625a7b69a8d90063ab5b51d2fb40`, chain 42161)
- FrxEthLSTCalculator (`0x449a957490e24e4d915fd5dcf25dd5446e787590`, chain 1)
- IncentiveHarvester (`0x1bfcdfa2722c17959acd1306df1f0406a7d5be5e`, chain 8453)
- Integer (`0x4c0868931b0c6e72aa835d657fa56179ce092028`, chain 42161)
- Lens (`0x590a31453390a1bb266672156a87efb1302fc754`, chain 42161)
- Lens (`0x92537a95b45ab695ab3ebabfc1a3c3e27af7973c`, chain 59144)
- LiquidationExecutor (`0x0294d71b2c9b88d10f6d3286f5b25026147b2c8c`, chain 8453)
- LiquidationExecutor (`0x34d929d9e3287f51932a2095a48203bbb1f7ad94`, chain 42161)
- LiquidationExecutor (`0x4008dd4a6f8df7427e560b56df1b66e197ceba03`, chain 42161)
- LiquidationExecutor (`0x9f8e50cc9cf2627f9d0d11841c5f842663db4bfa`, chain 59144)
- LiquidationRow (`0x610ffeb00b8312b0540ded300c683227cb3e3ab5`, chain 42161)
- LiquidationRow (`0xc332386610bd4d555c762d7f88c17acf96f05b3c`, chain 59144)
- LstPriceHook (`0xc91f3b941df65f58371c9c04221629c2b6a4ebc5`, chain 9745)
- LstPriceHook (`0x67ae7b7d81de471802fbacdc83a4a6f16fcafbc0`, chain 42161)
- LstPriceHook (`0xf63daffb0b8eb975856d7935d13e4645e66f2f47`, chain 59144)
- MaxValueSlippageHook (`0x881bb334aa682ef61f6ad03ac8cd220e5b3d63d4`, chain 9745)
- MaxValueSlippageHook (`0x6404da4cd966afa35fbf2b1664278060e144a402`, chain 42161)
- MaxValueSlippageHook (`0xaaee6a22f738db8d50a492e42edef9bb52869707`, chain 59144)
- MessageProxy (`0x20ea2f2ecf36bcb6df086d923a120496dc616f76`, chain 1)
- MinTimeGapHook (`0x71689a8e924ba6611fac7bd40c55796e8b1679d9`, chain 9745)
- MinTimeGapHook (`0x09d0d6a48545e959b230600966d93600fab50322`, chain 42161)
- MinTimeGapHook (`0xb617bcc10ea25669dd99071be6a962d4b9532e67`, chain 59144)
- MorphoDestinationVault (`0x52b31f7d8397a7a3851ddb548acac64abfd48be3`, chain 42161)
- MorphoDestinationVault (`0x65f4fe4026e5a9d47118f9cfce32c75de3a62eef`, chain 42161)
- MorphoDestinationVault (`0xab3da8995d5fea17913c3d12a5b199f1ccc9bf0b`, chain 42161)
- MorphoDestinationVault (`0xd7b1f55e0ccffa849b35aa1c39b94eb415db00ce`, chain 42161)
- MorphoDestinationVault (`0xff004ba7df7f0d4fd0d1856f009184bd77a24192`, chain 42161)
- NavLookbackHook (`0x4c0be1062dcdaed7be09f73a4f00a0313a6b427b`, chain 9745)
- NavLookbackHook (`0x9717e1b7c338aded95fd4bda0fc5fc1fcd756f8b`, chain 42161)
- NavLookbackHook (`0xa31fe55d43e0577155d71bf2231818a6bd59fa42`, chain 59144)
- OneToOneBaseAssetBackingOracle (`0x4e8ce63cce31f667d03955dd98133d504d8e9b32`, chain 42161)
- OsethLSTCalculator (`0xb5aa595c4fe3c297d65bdcdcc6fa48ef8725aebb`, chain 1)
- ProxyAdmin (`0xbfd6378545d118e8fb26f633d8f3b32bda047e9f`, chain 42161)
- ProxyLSTCalculator (`0x24864cc03efd84f9df0e5f1d23ab69128325931e`, chain 1)
- ProxyLSTCalculator (`0xdbfb637873d16dc5efa43db75ff846934caaa43f`, chain 1)
- PxEthLSTCalculator (`0x9cb562083d29e027f21fac4d8b66573dea972153`, chain 1)
- RethLSTCalculator (`0x9801098ee481ed6806c61a4de259fbddd5bb84a8`, chain 1)
- RootPriceOracle (`0xf25bdd81822ab430f6637ea31d8b5add0b6d124f`, chain 9745)
- RootPriceOracle (`0xe84cea5553cc9d65166a7850dab2e7712072d97f`, chain 42161)
- RsethLRTCalculator (`0x840a49a4b83e57718cf67c03d820c938a04fc210`, chain 1)
- RswethLRTCalculator (`0xeedb3dd86f690a8c76006d606db7951322b6741a`, chain 1)
- SequencerChecker (`0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4`, chain 42161)
- SequencerChecker (`0x537f6e12fbc2ebf630d6d8db7bbf8612a0d97dcc`, chain 42161)
- SlippageBudgetHook (`0xf68f04384054e47f3fa08c48fb58f20de080b335`, chain 9745)
- SlippageBudgetHook (`0x8e9ac280876826f687e509ce4a0f55ff352d402d`, chain 42161)
- SlippageBudgetHook (`0x798b8a1dd081ac4cec410e40f8dd0616b4824645`, chain 59144)
- StatsCalculatorFactory (`0x8198069f1709addc6a162c9433665776e5bc917c`, chain 1)
- StatsCalculatorFactory (`0xd82664a9b7a766b2c311b76c9e4384e8838b0a1c`, chain 8453)
- StethLSTCalculator (`0x66a466b838f981b39cf3b3e13e19af5643dbad0c`, chain 1)
- SwapperAdapter (`0xac2e82aa6270c6c8af9398b3522d574441cad295`, chain 42161)
- SwapRouter (`0xf0e746d59032c573b91d39666eb32137917956d1`, chain 59144)
- SwapRouterV2 (`0xb4da8d0deb675dd6619ce64d265dfec369fbcbe6`, chain 9745)
- SwapRouterV2 (`0x096f44f9fbbe6116de5db5954de776fb8733e59a`, chain 42161)
- SwethLSTCalculator (`0x60e98e2dac20faab84781076164290cc31ce3c9e`, chain 1)
- SystemRegistry (`0x2218f90a98b0c070676f249ef44834686daa4285`, chain 1)
- SystemRegistryL2 (`0x18dc926095a7a007c01ef836683fdef4c4371b4e`, chain 8453)
- SystemRegistryL2 (`0xbfd8e6c9bf2cd5466f5651746f8e946a6c7b4220`, chain 42161)
- SystemRegistryL2 (`0x25f26ec2e764c63f8d191dfe7f88c6646ca9f980`, chain 59144)
- SystemSecurityL1 (`0xf8cda9d896e06db0a682838ca8ac5fff1e699834`, chain 9745)
- SystemSecurityL1 (`0x795abe7190eb06dde22c5ff1c99fa96f1987f494`, chain 59144)
- SystemSecurityL2 (`0xe7eeb14de91887a4524d8416203e8aee0796cf99`, chain 42161)
- UniV3Swap (`0x0ca3d0f3bf808b4720d8ad0e9c1e9fb13534bb42`, chain 42161)
- UniV3Swap (`0x0093fff32ee2d0469cb00badb9f8d47efbb144c6`, chain 59144)
- UpgradeableAutopoolFactory (`0xc08f3906e1291f4a470528aae9f89c14dfa917a7`, chain 42161)
- UpgradeableAutopoolFactory (`0x01890ea9326d6c2d5941a51473d12f8179744be4`, chain 59144)
- ZeroExSwapper (`0x69c6fbba613dcf20cfa42aec902572d3fcc0440e`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 344; live-surface rows included: 344 (301 live, 43 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 348/465 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/225 (0.9%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 272 own, 49 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 780 discovered implementations shown in the inventory but excluded from coverage (45 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 70
- Confirmed-live implementations: 273 of 1102 unique; 829 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/565
- Verified + Unaudited implementations: 561
- Verified by bytecode match: 2
- Unverified implementations: 537
- Unique implementations: 1102
- Raw deployments: 1898
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $33,555,386.07
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $33,555,386.07 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 0.2% | 2023-09 |
| Hexens | Tier 2 | 1 | 0.2% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MessageProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227856 | `0x20ea2f2ecf36bcb6df086d923a120496dc616f76` | ✅ Audited |
| SystemRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227857 | `0x2218f90a98b0c070676f249ef44834686daa4285` | ✅ Audited |

### ⚠️ Verified + Unaudited (561)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x02e2151d4f351881017abdf2dd2b51150841d5b3`; ethereum `0x0a760466e1b4621579a82a39cb56dda2f4e70f03`; ethereum `0x7e2b9b5244bcfa5108a76d5e7b507cfd5581ad4a`; ethereum `0x7e880867363a7e321f5d260cade2b0bb2f717b02`; ethereum `0xb900ef131301b307db5efcbed9dbb50a3e209b2e`; ethereum `0xf27afad0142393e4b3e5510abc5fe3743ad669cb` | ⚠️ Unaudited |
| OlympusERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383518188c0c6d7730d91b2c03a03c837814a899` | ⚠️ Unaudited |
| AlToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0fe9ad5f3b0d58160288917aa56653660e9` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227845 | 2 deployments: ethereum `0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56`; ethereum `0x35911af1b570e26f668905595ded133d01cd3e5a` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227900 | `0x60882d6f70857606cdd37729ccce882015d1755e` | ⚠️ Unaudited |
| AlchemixToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227863 | 3 deployments: ethereum `0x2b08137beabd2454ad3631deb754f97c5c93eb78`; ethereum `0x3f55eedde51504e6ed0ec30e8289b4da11edb7f9`; ethereum `0x5c6aeb9ef0d5bba4e6691f381003503fd0d45126` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | base | unit-228213 | `0x4103a467166bbbda3694ab739b391db6c6630595` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227912 | `0x726104cfbd7ece2d1f5b3654a19109a9e2b6c27b` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228034 | 3 deployments: arbitrum `0x40454f1e95ee73d78f3876c892e9a32007aa2f74`; arbitrum `0xd70f872e4fd8a55076082ff73ed7f54524d6c74b`; arbitrum `0xdedb0092ec78625a7b69a8d90063ab5b51d2fb40` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228140 | `0xf6cc563b93f8e678f696fac632e41b550cb09540` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa693b19d2931d498c5b318df961919bb4aee87a5` | ⚠️ Unaudited |
| EthPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb104a7fa1041168556218ddb40fe2516f88246d5`; ethereum `0xd3d13a578a53685b4ac36a1bab31912d2b2a2f36` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 21 | ethereum | n/a | 22 deployments: ethereum `0x03dcccd17cc36ee61f9004bcfd7a85f58b2d360d`; ethereum `0x04bda0cf6ad025948af830e75228ed420b0e860d`; ethereum `0x061aee9ab655e73719577ea1df116d7139b2a7e7`; ethereum `0x0ce34f4c26ba69158bc2eb8bf513221e44fdfb75`; ethereum `0x15a629f0665a3eb97d7ae9a7ce7abf73aeb79415`; ethereum `0x1b429e75369ea5cd84421c1cc182cee5f3192fd3`; ethereum `0x2e9f9becf5229379825d0d3c1299759943bd4fed`; ethereum `0x2fc6e9c1b2c07e18632efe51879415a580ad22e1`; ethereum `0x41f6a95bacf9bc43704c4a4902ba5473a8b00263`; ethereum `0x482258099de8de2d0bda84215864800ea7e6b03d`; ethereum `0x7211508d283353e77b9a7ed2f22334c219ad4b4c`; ethereum `0x808d3e6b23516967ceae4f17a5f9038383ed5311`; ethereum `0x8858a739ea1dd3d80fe577ef4e0d03e88561faa3`; ethereum `0x8d2254f3ae37201efe9dfd9131924fe0bdd97832`; ethereum `0x94671a3cee8c7a12ea72602978d1bb84e920efb2`; ethereum `0x9eee9ee0cbd35014e12e1283d9388a40f69797a3`; ethereum `0xadf15ec41689fc5b6dca0db7c53c9bfe7981e655`; ethereum `0xd3b5d9a561c293fb42b446fe7e237daa9bf9aa84`; ethereum `0xd899ac9283a44533c36bc8373f5c898b0d5fc03e`; ethereum `0xdc0b02849bb8e0f126a216a2840275da829709b0`; ethereum `0xeff721eae19885e17f5b80187d6527aad3ffc8de`; ethereum `0xf49764c9c5d644ece6ae2d18ffd9f1e902629777` | ⚠️ Unaudited |
| DepositToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x117a0bab81f25e60900787d98061ccfae023560c`; ethereum `0xcb6d873f7bbe57584a9b08380901dc200be7ce74` | ⚠️ Unaudited |
| SiloVaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0e80f6db7fc8e5966828eae36874b62dc8a47dc6`; ethereum `0x1e308f7706be71b1fb0bbce44bc97482d358e4d1`; ethereum `0x78910c27761ab783bfc7d63383e736ce4c3d55cc`; ethereum `0x851c31e75961bde3237652582a001f8245779f8e`; ethereum `0xb07168fa4fb794ef4b7d131f53d0da51ac114f3f`; ethereum `0xb0bb32fabe88a86889b2ede2425857f0083a6af0`; ethereum `0xd065e68189d9bbfeb31d87bfaeaaaf8fd276fe68` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | base | unit-228242 | `0xaadf01dd90ae0a6bb9eb908294658037096e0404` | ⚠️ Unaudited |
| TracerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050` | ⚠️ Unaudited |
| APWToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x134c0591183e9c8a39250a9a04e6f8585bc8157f`; ethereum `0x4104b135dbc9609fc1a9490e61369036497660c8` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | base | unit-228222 | `0x69a63ddb162a0251248f6c7d22902083ca3e0522` | ⚠️ Unaudited |
| ERC20DestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227850 | `0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e` | ⚠️ Unaudited |
| MYCToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b13006980acb09645131b91d259eaa111eaf5ba` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb9200c2aa4053102b984806c63d67e21b8f2070d`; ethereum `0xf938424f7210f31df2aee3011291b658f872e91e` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 22 deployments: ethereum `0x067cb94576abbdb3527055f3c8caaac9668364ad`; ethereum `0x20d76238f3a972a6950cf51620883682025885b9`; ethereum `0x2795b6a09df08891ef21f7153f4799cfbe3ae6b6`; ethereum `0x76187c3b976101a4b886b76068ad6b91eec18d9d`; ethereum `0x7a6119d37083353a602e9aa6d7b5d5e10d05e819`; ethereum `0x9491a1f3fdb42df62a598c0c76cf01c4bb6f3690`; ethereum `0x952d7a7eb2e0804d37d9244be8e47341356d2f5d`; ethereum `0x9cf7e7d9f02caedce2286199c0c20dd92580433d`; ethereum `0xace0eb6dee9f9e1df3204f7a11992d92c8b36704`; ethereum `0xcc97cc6b9defb70838151711c47f3834b8c97919`; ethereum `0xd02b50cfc6c2903bf13638b28d081ad11515b6f9`; ethereum `0xfbfad8907885d2b5ced80b7deffda6f0588349dd`; sonic `0xaf6f21f1a0c6d47b61388b982954666dd030e10c`; sonic `0xf5a10654bc75e09fb5f341d687305e9cc4b09ec0`; base `0x044e1609efb154150436cec9d03e95847f81b776`; base `0x5ae89e5fbc313a29a99b9b380b69503c4dda9e20`; base `0xfbe1cefb85716c0e43ecfd399372996646b992c1`; base `0xfff19270583bb6a37e023a3fd499caa5cea3a304`; plasma `0x673f9b14f2608b9afc7b7d402d50bb9d29759fbb`; arbitrum `0x3dbbb74e6b232bce52a0dc6afc67faf32d56fce9`; linea `0x796115b3851247e54cf271001350fe39afe6a9dd`; linea `0xe085d420cdf152ab504ff05e9dce440e45d62a03` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | linea | unit-228150 | `0x03825c8c817ff49a208c9c20365c002418c5bf0d` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227978 | `0xe041b3b14e76e4b4605876875e1860c6005456f2` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x588354024ecf620337f6d6cd5f0684e9d6940406`; plasma `0x5dffae9a249db6fc61906bae2c1e640045602ee7`; plasma `0x714ffc3c8418739f052c87ed7dea45d68f8ab8e9`; plasma `0xde4d6c5416ff7584373020fa24f160d193f84855`; plasma `0xfc962a39c763f183e02458f6cf9343c0682e5069` | ⚠️ Unaudited |
| AaveV2Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5067e4ebac0f0984d39b02808d2ad84625faace2` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-227997 | `0x00e52ae3cfc140fdf3dff8932500d4ad919c5f4a` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228086 | 2 deployments: arbitrum `0xa087e1032dbef8f980c4512f3eb76748c4e7d7bb`; arbitrum `0xebcff8cacb781125c35b3742ef328d8639864991` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228163 | 2 deployments: linea `0x68e93d2f0781864cf6f370ecc3b7240738de15f7`; linea `0xd96d54e54186116fbc5c76727dd694e92f57f3fd` | ⚠️ Unaudited |
| AaveV3StataDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228180 | `0xbd353da0ddbe5aed419f941ec95b746bcb45e7e2` | ⚠️ Unaudited |
| AaveV3Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x91c008853fdfadc8266d55ec11843dd3d58c95d6`; ethereum `0x9d661619493a506e057330572ed43fc0f41f0b44` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | ethereum | unit-227871 | `0x37767cbff88cb623e9404e959560984f7d742df6` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | base | unit-228204 | `0x20dfa88e77d4eeb644f68c5752e7d1a3c21f27e8` | ⚠️ Unaudited |
| AccessController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: sonic `0x7ae9ffd6dcf4fb6af5d6c672d1eaffa6590e67f5`; sonic `0xb4b6b1e14c0d520fe322f30b0ca9b747fe7b4dbc`; sonic `0xb99357afcc888cc995f2fecbdeb5d02f68a5d006`; arbitrum `0x09006e65787c8389b230758f23f66b2ca3ca9312`; arbitrum `0xdd5b72d860b112b662655d67f8ab7314b72e00ca` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-228066 | `0x7ec41019b6fb853511df54982ae17cbf3b4fd6b2` | ⚠️ Unaudited |
| AccessController | governance | project_anchor | own_supporting | 0 | linea | unit-228194 | `0xf4425cb2bb4275afe3d0232a6a00a4fbfdb76a04` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 26 deployments: linea `0x00cc296010664ff909aa90795a919046d1423b67`; linea `0x09aaa525f9c4e5c5e0ac05a6b994d77e21fbea2a`; linea `0x09d128e0a38afc9846a9e7ede7d4b76601fc72a3`; linea `0x0cc5a720004de614ff515d073f362509dd2d666c`; linea `0x0d8ff344dd3fef004813ff7865e528c63de66422`; linea `0x3fd55d05fed2fb9c463b598bc52ab4b5f5d6d071`; linea `0x44f5512a453177c686bfcdef62b94ebfbf22f508`; linea `0x51a2690132cde2b66a3346932465b89ec3e80006`; linea `0x55cab4d2cd21e4fd5abde5667c490b87144b40b1`; linea `0x582f3f017ba12f142edf56310bdcbf95cc031c7a`; linea `0x5aae85c146bca912f1f7fb43ba3aaa54fbda036b`; linea `0x5e2f4d1b9ed30cdad1cff169562b5356f5e4b4e7`; linea `0x6a0673814258a7739241f77540744235321c99c1`; linea `0x7026f9a84b0727ccf310298065010ab3d18dd004`; linea `0x7ac7935df815efe423df95c8a52c35da558c9026`; linea `0x8af8a09161c4d0ee7e25f778a059dd7bbe71b734`; linea `0x8e394fb7e802a780958af4215498efd4875b49e1`; linea `0x93948c03a47b2a812dab7b36c40f982c6b4351ed`; linea `0x967a7a875a7ac07eb30fd9f6e9353dd4c537854c`; linea `0x9ce2fbc74e04c8b294435308838893ff95709346`; linea `0xb6139621e96f000e7a6e44d6d6196eb46d31a7b6`; linea `0xb66d0cd955345c270d5e9162e583bc33849fd40b`; linea `0xbb100bf42997e0d61e89b4a51ef68d93fd008e31`; linea `0xd434fe96a2aa23b0fabb07c1f837ff85c006805e`; linea `0xe345ada88f71c1f8215530c862fc6277b5ddc6bc`; linea `0xe6d0d3b6c26c568983ee0f0b6745c33bfacb5298` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x683035188e3670fda1def2a7aa5742dea28ed5f3` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa374a62ddbd21e3d5716cb04821cb710897c0972` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0cb44f5ec4f3b85e40f160c6db7b85bf0e5f907b`; sonic `0x82224883b90bcc0320ab45b572afe0ce3d99f928` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x65e1f22b8b17371e6ea93bcc3d20d5532203506e`; base `0x2af04ac8a89e800b69e6764d5434b60525eed518`; base `0x8a0e614af57772f1cf72063676621f99c0e6e718`; base `0x9995450bff590c128a7da19c7aa6afb38e8bed8f` | ⚠️ Unaudited |
| AccToke | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x24127aad4fb9e7d52803fa6860b9964537127e00`; arbitrum `0x7e5828a3a6ae75426d739e798140513a2e2964e4` | ⚠️ Unaudited |
| AddressRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2445e2f04d6bd2995003c1cb115292942d91e63c`; ethereum `0x28cb0de9c70ba1b5116df57d0c421770b5f44d45` | ⚠️ Unaudited |
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bbbd96048bbbe2bc011a3efe42e7c93700409d9` | ⚠️ Unaudited |
| AerodromeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd35d77f7e0444d8669962724b02fb163e938ea9a` | ⚠️ Unaudited |
| AerodromeDestinationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20bace8353c3512ebf13b86d9c99b6da278a8107` | ⚠️ Unaudited |
| AerodromeDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228221 | 4 deployments: base `0x58c2233399b85b53c5506f78eaaae9b0dba1ed3e`; base `0x945a4f719018edba445ca67bda43663c815835ad`; base `0xa94031ed4b316b043464fdd5482877f42a39845a`; base `0xd18db4dd6af6a7536ad7f863c136463681e0cdad` | ⚠️ Unaudited |
| AerodromeDestinationVault | unknown | project_anchor | own_supporting | 0 | base | unit-228273 | `0xdbd14969b9313e5bfdfed2c7a29e813e6f02c627` | ⚠️ Unaudited |
| AerodromeOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228201 | `0x099a7e3ff39024c3d1e87568b4eda59a938900f4` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228244 | 4 deployments: base `0xb02cb15597e214b9a843ccff9eefe628c057184e`; base `0xc7b711a5d1fcc19195e82e8c0d827e2e0bd2bd10`; base `0xd9b54d16a2cd15abe6e8a9b8b596239a7f8042e3`; base `0xe40523f7bd5799b3c62921357b104f58c4a7c240` | ⚠️ Unaudited |
| AerodromeStakingDexCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228263 | `0xcef50bf75ed027b8bae5c49562b3f27b4f253985` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228233 | 4 deployments: base `0x9813e3091278f41cd6b2686ff83255f97889f3e3`; base `0xd675d868c751a5b1f331bcf5dcd1fe7d45c2e76b`; base `0xe923f84cbbdce6d12c7987511c0b2c122f425318`; base `0xeaa026495601c47bfeb4bb6501c11ba41a1ac028` | ⚠️ Unaudited |
| AerodromeStakingIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228261 | `0xc8756b85c5e7c2ab0aa675fd606aa91e14e6ef01` | ⚠️ Unaudited |
| AerodromeSwap | unknown | project_anchor | own_supporting | 0 | base | unit-228209 | `0x2bb11c6407bb9dcbb5b776f789371de5aaca44a5` | ⚠️ Unaudited |
| AerodromeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7785f077aa9f3f0e6ad15ab2d1005cdf1f13d003` | ⚠️ Unaudited |
| aOHMMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x906d7af3412e8f3cd9320629ebbd865c05ad8fd2`; ethereum `0xb1b46206b0e5d0fe9e5255d5a632dde2b7d6ce87`; ethereum `0xc7f56ec779cb9e60afa116d73f3708761197db3d`; ethereum `0xf31b987e4be1b1e55bdb244db3bbcff9397dd23c` | ⚠️ Unaudited |
| APWRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0db1516dc4aa963fd8aa4de41e49502d06fc336` | ⚠️ Unaudited |
| ArraysConverter | unknown | project_anchor | own_core | 0 | plasma | n/a | 4 deployments: sonic `0xb93c1927c12499106c4b14e86924a41a75dae2f2`; plasma `0x09708019cf2527ad3263885ff712fc79cec5d0c2`; arbitrum `0xb6ab7ae9eb120a8c3d2b7649082e55907ae5940f`; linea `0x34142120f9726502891cbcdee7604644115480a8` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227913 | `0x73526d80ac5db9ccd2aa46436744c542ef9c0b75` | ⚠️ Unaudited |
| AsyncSwapperRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228212 | `0x3750d3315466a132ee7d10ebee67f28e19577472` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: sonic `0x330f3c9bbffadcaac9d6ec0330dabc085ecdaa93`; sonic `0xacffb60e0c668ea3cca4ca5d5b2495739656a814`; sonic `0xd527f2363014c16109661c2d7ccbf2378b3fd120`; arbitrum `0x29d826a1bc5e87773571e5444da31f82131c9f2b`; arbitrum `0xea7ea3d1a644d3a689c22b5fdfa535d31534f538` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228096 | `0xb45bd07b916cc3544ab9cd54f812ed8d88bfabba` | ⚠️ Unaudited |
| AsyncSwapperRegistry | adapter | project_anchor | own_supporting | 0 | linea | unit-228160 | `0x46e9c8207a5bd45d05dc4cb6cff791c01c7468ca` | ⚠️ Unaudited |
| AuraCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227843 | 12 deployments: ethereum `0x041679acb4088288178589c059543b56ce74ea07`; ethereum `0x0f5d9c23d365c114d3febae6cb2edbb06b65acad`; ethereum `0x4e4eb584ccea7ece23da46245daf07457bc48348`; ethereum `0x4ead64090fe1d07b8a2306b2e4897386d5eb43ea`; ethereum `0x5968662ccfb6792bb4a0e4f45cf303b85fb2cc43`; ethereum `0x5ac9dc1cef6cbd9d5b8a604e2d3b7d93f59d7f40`; ethereum `0x662e3fcfd4348ef74ff88c88a6e9f4e4119b018b`; ethereum `0xa4349b50d2e64b24b4c35b2c24ad06177508f3a0`; ethereum `0xacdc4a1cd67e7e9fe85f00ec29d5f07b1305829d`; ethereum `0xb57e41106fc06a5c0b6accc8cf8f72dd25fb6621`; ethereum `0xd09bde15c0bdd222edcd79912c0636e451e59c71`; ethereum `0xddfd0a9a979182fa45e0024fdb101dd8079d84b2` | ⚠️ Unaudited |
| AuraCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227894 | `0x594baa7ad9230084261e40adfce95f2ed612898a` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | project_anchor | own_supporting | 0 | base | unit-228224 | 3 deployments: base `0x7c4b58eaa93005162bc80285af2003517213c539`; base `0xb9e9818e551f676d6be547ed07e5875dc702b6e8`; base `0xc5a9170d151cfea07489bd9db5ecf20b5b7654d4` | ⚠️ Unaudited |
| AuraL2Calculator | unknown | project_anchor | own_supporting | 0 | base | unit-228230 | `0x9254926b61c205e8b64ed00681fe0b2de94b62f3` | ⚠️ Unaudited |
| AuraMintRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe35a6f5de14ed7dfb90fbfc75dc96779e277c20d` | ⚠️ Unaudited |
| AuraRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: plasma `0x87b7404b1005c03d8537d2d0e3ee6d141f5b7b7a`; arbitrum `0xa9219c4f68d09aa45a84570365401db997440e8b`; linea `0x786dce6c2490e715583d3840ee854ffd769aeba7` | ⚠️ Unaudited |
| AuraStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: plasma `0x3a0f16fa9ce0079722428c85543859c9f11df466`; arbitrum `0x17dd206f9eea4bf2553152a9a197e8c175440344`; arbitrum `0x887060856c3f9571db97c10a38ebd66dc9ac0408`; linea `0x7270849fea0131ea487a231c5ddca24801433188` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df`; linea `0x4bc655bce615312fb703fdc3314e39570e6cb1f3`; linea `0x4dd0c28941e9edcca2ed559d4f15768e55ea2a4c`; linea `0x5ad9ec38ba13e493746a48a2bb7680818db0e48c`; linea `0xb0b55dbc4449fb5bcc127e81e3dece0035af5939`; linea `0xbf074374ec7307596963384f36fd2e514f780d36`; linea `0xd7cb73ffdea0da4d2b3551a30cf75f531a81ac2c`; linea `0xfd29fadd2c1edd0eb222a31d579c7367d7cf80e7` | ⚠️ Unaudited |
| AutopilotRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x37dd409f5e98ab4f151f4259ea0cc13e97e8ae21` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-227874 | `0x39ff6d21204b919441d17bef61d19181870835a2` | ⚠️ Unaudited |
| AutopilotRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc45e939ca8c43822a2a233404ecf420712084c30` | ⚠️ Unaudited |
| AutopilotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: ethereum `0xc23a37adf8f104d442b438f94c0534514cea893e`; sonic `0x298c607dd18cdd5fc488f45cca1e3c7462cb7def`; sonic `0x396daffce4760e05a4b4436a65fc857115e2dcce`; sonic `0xeb419f321ce4f086743963f4e8568c4d67fddd64`; sonic `0xf25c7405d82d2386033df576bacfee62c40ea85a`; base `0x71761bf6512bc76fb7169d3fa25e83ef5c85f816`; base `0x93e7c567111ba56f81d84a5fec922b267b5adcbd`; arbitrum `0x6431863c858214f22b282c446f61502968036487`; arbitrum `0xf86761ff28d78c5c911cc65b4511bc1f4570b140` | ⚠️ Unaudited |
| AutopilotRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4d2b87339b1f9e480aa84c770fa3604d7d40f8df` | ⚠️ Unaudited |
| AutopilotRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228237 | `0xa18b89225491230fdb1883cfbda65e7931606931` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | plasma | unit-228302 | `0xc848832a31eb5558f14f13d361bb3a95ec91f27a` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228024 | `0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad` | ⚠️ Unaudited |
| AutopilotRouter | adapter | project_anchor | own_supporting | 1 | linea | unit-228311 | `0xf61e75fbe9147f230400a1e7737c6f6934990544` | ⚠️ Unaudited |
| Autopool4626 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0fe85151d909f5571ac698ae756c5ff924a81159`; base `0x6d9be4f758bfb67403e4138321cf5a06c4a2213f`; plasma `0x4480bc3de6c1c23882f341fc9bd428b609a9109b`; arbitrum `0xc80e125126576dba8b822b50a8cd25952e159416`; linea `0x299c6408f29512448e8f0118e41ea04cce642108` | ⚠️ Unaudited |
| AutopoolDebt | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: ethereum `0xf792a34c526f8a69dbb16e3fecda670bcb715b8b`; base `0xfaac119af7faff74b1f69f5473d7262b2557c194`; plasma `0x153993b20c5e5be956cec763ed936a44d3c780a9`; arbitrum `0x7520049a9a7b4a91dd80c7694647ab1e58c638ce`; linea `0xcd1e36c3dc5210e725970844b1395dee8851b6c7` | ⚠️ Unaudited |
| AutopoolDestinations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: ethereum `0x4d08d4fe96d4d53e7a925dc59dfc6747b0ae53f1`; base `0xd931d7bdd17b13cb6943fa0ff5a39ca3f6acdf09`; plasma `0x12d0dfa581162f43877e2e26b46da15e3049651a`; arbitrum `0xbf35ccc426894d775794430f4a5f35b714b9c4ef`; linea `0x48dfb29b071aa2aeff624043bdf9cd78e1e8ba01` | ⚠️ Unaudited |
| AutopoolETH | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227991 | `0xf90bb2baa90b457a35c37c5a96de2720ce367281` | ⚠️ Unaudited |
| AutopoolETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 21 deployments: ethereum `0x1c2aa622de8519c4184650ec1e7df709a37c821a`; ethereum `0x1da0b38df1a446d4ef315c7e06d79f801c691e61`; ethereum `0x558d670f96f18e3cf3cd2de0a7da90dd6f61ef7a`; ethereum `0x824b39d1804e7074d4afd68c5ca659a6fe439c66`; ethereum `0xa1f3511ad04fd3608951b6043f47d8a02fb50dc1`; ethereum `0xb0a44f62bafb6ae524c463dd225712c42c3f428a`; ethereum `0xcc1af24004b0cc41d9d9074f0927a44c0d49c1ea`; ethereum `0xd4ba036446889766e02dcfa0c92fcb4b31870568`; ethereum `0xfb2ebdedc38a7d19080e44ab1d621bc9afad0695`; sonic `0x0591c1f3e0d587f88261509c0f8295ce8474eb4d`; sonic `0x67da05fa6f53b6481c9f02fd8ae894035a31fe06`; sonic `0x84c8c1f3bb6b9db6837f90ed903e7b62fe2fd55e`; sonic `0x9075ecc69d1a75cc753df2bdcae9f16e4b187c2f`; sonic `0xfe0663433549ad250bd64bfb794e5f1f067aa92e`; base `0x375c795a916091fcfd5b312a817067ff79f87235`; base `0x40ed41591cfe85c5da2b9aef73854156ba45d381`; base `0x6e2cb0a3f445c158c6c212283479d9530bcaf85c`; base `0xc6bc1488a6c8026b9eed0432d280941670985ef1`; arbitrum `0xa1ecbbeb863245c83755d74f5028de284c768510`; arbitrum `0xdeb9a2c2dc1ee16abbb7adedcbe5f0c2ecd4e0ee`; linea `0x60a9b4905110430c8defa0d05384ccaf8e9ec01c` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | base | unit-228208 | `0x2ab4a3a8224726cbaa91d6b04d212979f06efdf9` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | plasma | unit-228305 | `0xd0cf0c4594ed8d2a0d845d493693fde822cc5821` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228011 | `0x12db19359159e8ab0822506adf15d4d8dbff66c3` | ⚠️ Unaudited |
| AutopoolETH | unknown | project_anchor | own_supporting | 0 | linea | unit-228184 | `0xc9db15bf0361a5ae0aca0e3bc8d0ec7fab195e7b` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1e03ac3b98f1c4361fb1a90b6824eff8e9275` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227904 | `0x63139fe3848ac53e5b668e19df1dd4e6f31428c8` | ⚠️ Unaudited |
| AutopoolETHStrategy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227983 | `0xea7daf04144bbffb8ab4f79f5115130d8aae2bd9` | ⚠️ Unaudited |
| AutopoolETHStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-228246 | `0xb111c5f02a04e1bba747b6ff622f73cf2ec2d9b0` | ⚠️ Unaudited |
| AutopoolFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227920 | `0x7fed74094b7010c6fb3010ed5efc00772fd2ed1f` | ⚠️ Unaudited |
| AutopoolFactory | unknown | project_anchor | own_supporting | 0 | base | unit-228223 | `0x78a7c45e3cc7b9567b4803aeaf9b33bc8c898451` | ⚠️ Unaudited |
| AutopoolFees | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x06958df2389591f4818658d02d03f2e3ed32cfc2`; base `0x05e14bc4e4eb7db75354256ae239b8567f372c45`; plasma `0x852212777486685b4a0965c2f52e95422cdbafff`; arbitrum `0x8350c5246808d1def878e41e8668b76df709b11e`; linea `0x4edb7c820526a247d640d5bdccbbd2b6c35e2c64` | ⚠️ Unaudited |
| AutopoolMainRewarder | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227988 | `0xf590865e624d14ed4659f1fca736634b9926e716` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227919 | `0x7e5828a3a6ae75426d739e798140513a2e2964e4` | ⚠️ Unaudited |
| AutopoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x3a3f3b2a05bdde90e4e950a1ba04234a09fed0af`; sonic `0x43c35d1394f97906290d488c1f9cb07441354658`; sonic `0x63e8e5aebcc8c77bd4411aba375fcbdd9ce8c253`; arbitrum `0xef4e7dfeb72f15de7957939780dd593ae92ccc48`; arbitrum `0xfbf87c01e7cb13d45112324620dc40b8c7e352ca` | ⚠️ Unaudited |
| AutopoolRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228217 | `0x4fe7916a10b15dadefc59d06ac81757112b1fece` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228107 | `0xc3b8f578c25be230a2c0f56cb466e7b8c6c9d268` | ⚠️ Unaudited |
| AutopoolRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228193 | `0xf25f616ccc086dda1129323381efa1edc8d5f42c` | ⚠️ Unaudited |
| AutopoolStrategyHooks | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x2b0b9b7e907ba5dd188bd45b0f5ae3e1afbe77fc`; base `0x1d39bfee43a17bab3d35ce3503194309fe89f876`; plasma `0x337dd21212067a785f6f3ab6c7c337b7404dbccd`; arbitrum `0x33ff765c3b1c6a4cb03b69247bcc2e43cc04e1b1`; linea `0x70b429e842149d4c74f567719ab422489bd63fc0` | ⚠️ Unaudited |
| AutopoolToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: ethereum `0x3161b8ac6fc85f8d217801136ac6db2ee679c9e4`; base `0xff0d0b1a0b38b7c93726fee49b1af06855b1739f`; plasma `0x2afc63a4339a0ad89a00f46258d239b3a64f4da5`; arbitrum `0x73c064f92c9d2779dadabe345b6f2e4b4df10104`; linea `0x3f37bcf857cc98f32ece2423d372bfb7336ba37b` | ⚠️ Unaudited |
| BackingRootOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xb122066468b1ce42fabac49d698acc537c87cfbf`; sonic `0x05a7de7c838c7f92bd2c3a04233303cfd175a1d6`; base `0x391fa5f323e1b5637e808629b90bae1e84f6b439`; plasma `0x0fda0487d92b7a187d4795e2ecaeca6bbaaf0532`; arbitrum `0x3aac1ce01127593ca0c7f87b1aedb1e153e152ae` | ⚠️ Unaudited |
| BalancerAdapter | adapter | project_anchor | own_integration_wrapper | 0 | plasma | n/a | 2 deployments: plasma `0x35cbe9f5cad6ed153fd269eba82fc6257e331866`; arbitrum `0xb0c974d40b0ffd26f50bbb6b04b72a9a6757702f` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227865 | 5 deployments: ethereum `0x2f2cc1bf461413014741dd68481db4a3686dac3d`; ethereum `0x5a4b544b9734930ddc587c9a2f093dc5058a4f4d`; ethereum `0x867991c7737ccbb152ae5a7e6edb05ca0670717e`; ethereum `0xc9b5d82652a1c8214b0971a004983d0eeedd751c`; ethereum `0xfda49984eb4ea4075b8b451032849347c633e94b` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x400aa23eb08c51b93c18f3a8fdd215e4066180f7`; ethereum `0x5f134958eb6e3d13b48b17a364573b8b8055a4d8`; ethereum `0xc066dddb8f9c27f1f452d8ff9b5cdd7fea3efaf5` | ⚠️ Unaudited |
| BalancerAuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228239 | 2 deployments: base `0xa6efb95b7393cb419b48a933273f49b6bb48dd5d`; base `0xb3723e69d6e4553239d7daf514bf8ff7998500e0` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227846 | 9 deployments: ethereum `0x0e2b7536ecb785df0fa43c6622dd6b670ce39be4`; ethereum `0x2df5d9ef6d48a456ba5edc444dd5de7ad7ab0981`; ethereum `0x4c4d65167b6c6b112480d2295a35300beb3a1970`; ethereum `0x4e79861b9026109a9c5769631c182b3211bd70e0`; ethereum `0x63b0ac87bda3ee6d13802a93fc13918df5832ae9`; ethereum `0xa639d9c66dfa096d5a5a8bf0bbb482a0c295193c`; ethereum `0xab0b5440e1bbdd3b6309ea82364b2a49db27f9a5`; ethereum `0xadf54e42990f5b7d9f423d66d8652b53812dd5a6`; ethereum `0xb5652e10eb7e93eec7dff8909a99fc3e6aea6866` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd7fa821d57ff7a864002727b3936edb966186b` | ⚠️ Unaudited |
| BalancerComposableStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | base | unit-228216 | 2 deployments: base `0x4fc45f7c2feb07d5698cc12717f5b8d4f30002a9`; base `0x800f535ce3f430b1f5475575d7d2ff3a164820b3` | ⚠️ Unaudited |
| BalancerDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc09271e3020110f7bb420c34eaddb7b6cd9fb6c` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227929 | 2 deployments: ethereum `0x943673e7996a5d2ac2e945d0eabf1aa39913e9d2`; ethereum `0xa9b8e439d140e8f2644e1b4d98f3aabdb85702ab` | ⚠️ Unaudited |
| BalancerGyroPoolCalculator | core_logic | project_anchor | own_supporting | 0 | base | unit-228236 | `0x9d95e1fecd950110ab1126cc6ed3c87c61e39e33` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa9eaabb466b2f869ba6e1b07b1c414980decc6` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227928 | 2 deployments: ethereum `0x92294a62d6d9f0fbe30ba3b543edb1806561bad7`; ethereum `0xa1b9297525388ba3985413d982863f31e2a29d05` | ⚠️ Unaudited |
| BalancerGyroscopeDestinationVault | core_logic | project_anchor | own_supporting | 0 | base | unit-228256 | `0xbd137c56f3116e5c36753037a784ff844f84f59c` | ⚠️ Unaudited |
| BalancerMetaStablePoolCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227908 | `0x66664bd801ff4edf8778bae66acf1de9c29a59a4` | ⚠️ Unaudited |
| BalancerV2ComposableStableMathOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228122 | `0xddc9e47b60c89bf39d14f3739e63763ebd7ab47c` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228309 | 2 deployments: ethereum `0x6201523176dc66ccd249248b9c422aac725ea3f2`; ethereum `0x780d5bc2b1ffefa1f5bbe1ab0c056c81774ba5f1` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e329e3128b0d223ecafbcec55e50a3b0099b2d` | ⚠️ Unaudited |
| BalancerV2Swap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228062 | `0x6def5e2bb8545e1cd9f4f52ff42e2732fc13f311` | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2b91e3de9f86a3a36fd9e4c4672a92b041eca587`; ethereum `0x39de7c84c7b2d773a7054a551df93a63c940ab27`; ethereum `0x9c8d18739f2d4ca2c35b060cafb172e8f782ec0a` | ⚠️ Unaudited |
| BalancerV3Adapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228017 | `0x19fa89cdadfe49ac70531c9ad714a27bc2c1a620` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d81fc5582fc7d38f26fc322f92955154d3dc7d` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228110 | `0xc77161af2701f2fb880d4a7144ddc5f4e7d536c0` | ⚠️ Unaudited |
| BalancerV3AuraDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228114 | `0xce1c8244410a4f97308ffc5ec926c9ef8faec809` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x62e8bb74691b6ced475cc525cc48e5862dc5814e`; plasma `0x6de328ea43d143e3993e8dbc8dd2499ab6729033` | ⚠️ Unaudited |
| BalancerV3BatchSwap | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228102 | `0xbd6beb16d6ccf62142588fb0ce26e589254c741b` | ⚠️ Unaudited |
| BalancerV3DestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb42c35deba9491ad971dd8f8b04bde449f0aae84` | ⚠️ Unaudited |
| BalancerV3GaugeDestinationVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4b021f2edd87a601e3010885a9b2a3924b2f212a`; ethereum `0x68442442cb830fa7cb89ef513553fc80de6727eb`; ethereum `0x77a5413bda645906a0af550711ab7955967d3350`; ethereum `0x947bedb53d8c02a8f252ca87652508c19b83135e`; ethereum `0xb222429887f2589659adc71ac4929d96f6e6aaab` | ⚠️ Unaudited |
| BalancerV3MerklDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: plasma `0x28c3b82d6d540fa57c9468a231b458cd6d354ad3`; plasma `0x28ed6640144ce3ab7d30f5737ce376418d26badb`; plasma `0xc253ef426519c700914da4b2325dd0f4b7e8ffdc`; plasma `0xd94ec259eaec7d73585215d1f098f3e82c2649f9` | ⚠️ Unaudited |
| BalancerV3SingleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf59adc3592653b91cae14a834ede8a0387919d3f` | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1140cd28e7b8e6b6509761f0bbbfa88abbe8421b`; ethereum `0x792587b191eb0169da6beefa592859b47f0651fe`; plasma `0xff9059a9b7eafd27d12c5f164144ca8ecc6ca748` | ⚠️ Unaudited |
| BalancerV3StableMathOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228083 | `0x9909571399f38fc9eea4eac30cf19ac4ce2e54d2` | ⚠️ Unaudited |
| BalancerV3StablePoolCalculator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18c81055aabb1f23c79db29c7eac9f7889e4184` | ⚠️ Unaudited |
| BankSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xf3b137219325466004aeb91caa0a0bdd2a8afc8e`; sonic `0xfbaa0eb1c5bdc1d9afa13fbf15bbff8617d8b4ba` | ⚠️ Unaudited |
| BankSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x822b135db025a1108abcb44122fe5769034d9077`; base `0xa196b8d3b30d8ba929920ca379b8802b1ff6dfad`; plasma `0xce618f99fb9323888f942bb99bd9611481afbc90` | ⚠️ Unaudited |
| BankSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228021 | `0x1cde65265061d84753086fe39084694f934647be` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 1 | ethereum | unit-228310 | 2 deployments: ethereum `0x8821a5c4f808d970de5bb2c31379c67cd67cf6b8`; ethereum `0xbf58810bb1946429830c1f12205331608c470ff5` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228016 | `0x18f9f37631a866aeac018e8399df23da37c00df8` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228036 | `0x4423cb967ef8f3a21fb360d8528234271b450ceb` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228037 | `0x45bce6054c4612dca905a4d7801f60e6273949fb` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228038 | `0x4660a170e2e36daaab8aa4dcdd0001433e34f58d` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228055 | `0x621091dceaea90571590ee6bf04aecbf8845deba` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228085 | `0x9f42f514f4a1e7e0a86a186b804769fc6d4f4ed5` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228087 | `0xa2217dc019d2946e3c6ded1e829edaf0b969b478` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228093 | `0xadb96b38c8b99e2b8d52fe7b6060a1ed4a49f858` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228109 | `0xc54e002845c1dff4ec13db93200cd108c94717ad` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228112 | `0xcaf5b3e34c7d556c9d8dc4873451324b7241bcad` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | n/a | 55 deployments: ethereum `0x0ab82316ad6e206cab38ef9d36bd8caea86bc18b`; ethereum `0x1d549b0835d7d9ee9de4f5c716bde804323b4a7f`; ethereum `0x2164005a8885cb60824f69c96c0f97a54d4ab9c5`; ethereum `0x2eab6729e2108dc3345ac5fa45df6ec7108bd678`; ethereum `0x38a3e81357b17ba62c0a05141a96dbcdfea3b303`; ethereum `0x5a35121eed3fa09e813768e77f3a58d377696216`; ethereum `0x8652859e41fd0616afb28634665a0c9d17fae79b`; ethereum `0x8bf1a0ffd135dcfdc1d5110216c874c3de593ef2`; ethereum `0x8ea340aa42cd1f6e2471a5c4574ea62c9416b859`; ethereum `0x957243d1cb359a685d90332363a51ba6588f5192`; ethereum `0x9e29197ad2b9676fadacfdaf86cbd2a7e247a94a`; ethereum `0xa5947752c5465790f6b5fda8397876c2dc2d6aba`; ethereum `0xbd9e1c43638590ba64605483c761498eb7dd6db9`; ethereum `0xc15bd07f650e18dcf2e41f10f525f86232b2cbae`; ethereum `0xcaab99287cc7bb8459344a948fc9781e787c08e1`; ethereum `0xd24d8abd41f4f980e41b4793c31faa4ddcf565e9`; sonic `0x394d4824548b66d75513aef3994a2800e6d1ef25`; sonic `0x4d81455b4f1d152874aa421141a7a81829dc503e`; sonic `0x618e0055441c2f35ce751b39e6e2a60940ec164b`; sonic `0x6d13db293b4b6b9aa1760f7e093fb26c24f345b2`; sonic `0x971e935e436f3621fe8976cdf2e2a511757456da`; sonic `0x98b55e07156895814d2503036dc635316f9c9502`; base `0x10fad2d8a6be593df5389a174ada79198cac5c6d`; base `0x115f7d16977ead26ded71b5305788ac1dd15d6d6`; base `0x3f8113ef0616d95db3688288737449c6302761c5`; base `0x5e753e8705f345a9c80250d7f7c60cc2841f350f`; base `0x82e986041dda64e0090a0364afc0b40f93bb67f0`; base `0x891dcd2de53241717b0d0f690618663d6045c05c`; base `0xdd6b1577c0dbf48024fced5f64da8d753493cb76`; base `0xe9498cc9bd581b606355b67ac8c3ce69f08dfb69`; plasma `0x09c6ac2b2355152599c71ce13dc067618b3e527f`; plasma `0x23eed26420e4902d1d86c35c02508c5e618c0731`; plasma `0x2fc77f22e40e2459d4794bd108c779c9dd6cd469`; plasma `0x835beed42d856eaf76477982b9a8875d8c52f40e`; arbitrum `0x0f23b8a998b31c27a83809affb40d0d20005efe3`; arbitrum `0x2d534d43d497b579f5c6dacbbafefa0a2e56b01c`; arbitrum `0x44ec4716ffa1aa523d0be7db1cdbefa2d91fcb1d`; arbitrum `0x4ca6e6cffe712789a08187eb213425c3374a3b4b`; arbitrum `0x7d65090230a9b8d6ffca630da447dcfe83eb5482`; arbitrum `0x835f03b062142796a6517c14f462141076991299`; arbitrum `0xb8167e7d4536212bc217e103d42ff6e0b710de65`; arbitrum `0xbbb98962e16448c0629efe4060f0ddb94c41c3dc`; linea `0x0288ef3f2b32fbd03df27b27ca615080b2246b19`; linea `0x1b1b707cfb51a73fd4f2bca4fa5209ec7f7b3a0e`; linea `0x1b97252d86d3dc13f9c4dfe082481747d8b9b3c9`; linea `0x27ff73527fae4239ac5fe669aa8684d4e3ee0a9e`; linea `0x42207161e6a9e366255274ac895efbf87673cd1a`; linea `0x603b27a45aee2da24a273b355f584b76326251e6`; linea `0x843674ee1265119e2de8aadedf8171d3291032ec`; linea `0x997aa8882a12028a44ddc9fbc7d6344d56ac5d8b`; linea `0xc6f521b479d013066776b1782ef1efc6d238dd8c`; linea `0xce131aa2bb6ad1c882be6d8d55fb4c6f8d5f0ff2`; linea `0xdeabedf2a527c02a6066dfe1eeec61938ae0fb4a`; linea `0xe16d83979fa3d88d9a02b106f28d5283166ae856`; linea `0xf8c4eb5c15f73dcdc855816dac94d35cd07913e6` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228152 | `0x25be909fc91f219a08e06b3b60664d98ea498fd1` | ⚠️ Unaudited |
| BaseAsyncSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228155 | 2 deployments: linea `0x2844a087f60efe110ffa06e28d9b3c1a586a26d8`; linea `0xd00c62b168652dd23060c1f337e31fcdf51424bb` | ⚠️ Unaudited |
| BebopSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x117c6504382434076ccf7121d747413ac2a210fd`; ethereum `0x39dd8eff184b860ee7ffe3676eb5102e29a57329`; ethereum `0x69543c91cf980f756fc6305a96fe218ba396e142`; ethereum `0xcd478d51ae459d47f6280c85dc6baf688ea75ff3`; base `0x3f18d07633d5bf2a486447d7f759400d518c5785` | ⚠️ Unaudited |
| BlockchainInfo | periphery | project_anchor | own_core | 0 | linea | n/a | 5 deployments: sonic `0xf1e608c160d6ffb48b7e9b9ffdd8f2f3a687aeba`; base `0xa628e88155ff063d92f6fb39b58a2f39c0740e1e`; plasma `0x88ccc293b3708b781a3fc843b2133b037a48d171`; arbitrum `0x86abaa236f76c1406404c9e78b142c72ca3308b3`; linea `0x2189751274d792b6693e70468fb43ec4af7a76f2` | ⚠️ Unaudited |
| BridgedLSTCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-228214 | `0x4cb4b14128c868f35afe9cac7c23cf821aa64f99` | ⚠️ Unaudited |
| BridgedLSTCalculator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-228220 | 5 deployments: base `0x58897ec6b7d7102bb24a29e99a14a6d9e517943e`; base `0xa80b38da84e7c7a094e6d0093de374a00e892934`; base `0xb081af21468deb33aab9e37eae6f5004cc1cbdb0`; base `0xb5182945caa19e3a9fa35e70502fc3269d1fa9ea`; base `0xbaf2ee1c91cc8a00b386b14d65bdb4918604e1a7` | ⚠️ Unaudited |
| BridgedStats | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x01dd808d87cc18639d9992c27f222a499d0d9231`; base `0x054322cee9cd90754d263ca0c5e779662a02b2c2` | ⚠️ Unaudited |
| Bytes32 | unknown | project_anchor | own_supporting | 0 | plasma | n/a | 4 deployments: sonic `0x8737f97b4c4d521a838f5c292309aa6c108dcef2`; plasma `0x12d5aad28da62a2d7ec2255af6202a458b48b970`; arbitrum `0x5f317e865c7b69ec1a079c04c46be063408f520e`; linea `0xe8905bf5f6b0621755c72d193a35e2ae7a6f0459` | ⚠️ Unaudited |
| CbethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227861 | `0x24d783e5ed8e4a507583e0c79abf489051069abb` | ⚠️ Unaudited |
| CbethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227946 | `0xab78a570252dd06fdbc1c5c566e842e571d01e08` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0xa37811563a85634cb7d43db8f427d40b2f1541dc`; ethereum `0xb21ebf79bbb522f3f61d1ba0dc12a2e6c7129ae8`; ethereum `0xdb55e51d33157d3213ce57f20c36fa052f25d4ba`; ethereum `0xeac275b19d55cc2b79783c894fbac218c0f6d8d5` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714e6c8361e13c4c7db5373b85de3835ec92f09f` | ⚠️ Unaudited |
| ChainlinkEthPerTokenSenderUpkeep | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d0b1e9f82f381936f9025ba0552e25bc5364ec6`; ethereum `0x235c4765a8316a47721468e161327751e5407499` | ⚠️ Unaudited |
| ChainlinkIncentivePricesUpkeepV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8d4e70034b8f06a389b4e15d5c0b14d12b2a39e` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227911 | `0x701f115a4d58a44d9e4e437d136dd9fa7b1b6c3f` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228259 | `0xc7939c8337d01f32b669c6a16f20ed4a8e11641c` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0d0314555d0c6bf2194d7efee62476724539c689` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228100 | `0xbbcc2df27ef4f087a404a8dd849d21984a628433` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228169 | `0x969954e636e108315d289da3a8408cd7d5189950` | ⚠️ Unaudited |
| ChainlinkStatsUpkeepV4 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 4 deployments: ethereum `0x1a63df7f0addd9cfaf36f4a1b535d4a4afecdf4f`; ethereum `0x691350d1ffcdece03ce0b889fd0dd4cb68679262`; ethereum `0x7d658243ad3bc64bd768d52ecf8ae6405cb8c497`; base `0x30f285c7cb4304e82302ce06f24e285bd527c637` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ⚠️ Unaudited |
| ConvexCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227868 | 7 deployments: ethereum `0x355f39596a4bc907a84dbf8f627c7ca2ba13de91`; ethereum `0x4bbfa11223315a21b51f37cf9dd3bd6200332276`; ethereum `0x74c3b0547bbcac9584d072c6fbac543267269ab7`; ethereum `0x83b6945e843a22bbda6beaa06e88bc1312301d7a`; ethereum `0xbfdf3a66a97ae5e168fce478be0be9804c163841`; ethereum `0xf25b36c77e869b01477860a0eabc4f4ff745eac3`; ethereum `0xf7370f9bf50985209efe114096cd0177ba4ba9d7` | ⚠️ Unaudited |
| ConvexController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ce0773e09fdfe87d2e41aa39eb603f988d7446` | ⚠️ Unaudited |
| ConvexMintRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf422c47b7cdd3506e5043e6f2e9a8f8d581c25a5` | ⚠️ Unaudited |
| Curve3PoolSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a46e33c44864d4171035b1c2ec550720ccfeb78` | ⚠️ Unaudited |
| CurveAdapter | adapter | project_anchor | own_integration_wrapper | 0 | arbitrum | unit-228113 | 2 deployments: plasma `0xf70c47a05c445e39a69b6c43f3a6e9c1a8e86e3a`; arbitrum `0xcb9597bb803d7baa4b6a14c2afd6d4dc9230af70` | ⚠️ Unaudited |
| CurveController2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x941f1098faf955f88adb6c1a18697cf60444ca1d`; ethereum `0xe301a3fc14a9a236a5fb66b03e255c49ab95849d` | ⚠️ Unaudited |
| CurveController3 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x800df6754ec48f56572b406ea3fcdfd9e2d9f5e6`; ethereum `0xdf9c664d28e216eaeff94b7d5361f2a86eaa30b8` | ⚠️ Unaudited |
| CurveController4 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a9be1aaea3567ea0d69c17838c3ebb8cb08649` | ⚠️ Unaudited |
| CurveControllerETH | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe6086c5e0648b101dacf73b6c7d26e39a569d2` | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227869 | `0x356c79ab2b2cefab685004ce827146058a6c3e77` | ⚠️ Unaudited |
| CurveConvexDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd78860acc0621d87aeea94f7d36eb7bb7cbe3631` | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227840 | 8 deployments: ethereum `0x0091fec1b75013d1b83f4bb82f0bec4e256758cb`; ethereum `0x23032a1ef0c082e619e3e64725e9d3b39c4e9d8c`; ethereum `0x2fa4c8a4acda7746778dbd2f3b2fc5ca41d9b171`; ethereum `0x737f2e3a0958ef0fa77aec405db60f13cb7f004b`; ethereum `0x88d0e045d91847a81e60f65073e4bc4fdef90ab0`; ethereum `0x9828b1a3742457d70ce428ddd3aa51f84ffb37f2`; ethereum `0xafd498862d5d0b816d7ce150959ba18f5c706a90`; ethereum `0xf4ceddf4e2aec1aa6b4ef2c64739ecac5c948fa2` | ⚠️ Unaudited |
| CurveConvexDestinationVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x10b45936a0af0a2cee162af415f10195a7967b2d`; ethereum `0x73047a73d0be0768c1132769aa6d2efd1cbf5ec6`; ethereum `0xa7d64212b2aeeb7a969be36677ada2025ffe3b29` | ⚠️ Unaudited |
| CurveDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa265cec7a8ec92b9b4124023324534faa9ed3e9f` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3c5be46edc025c6187b74b8f3043f0cd5921f64e`; ethereum `0x6652b0ef73bc4f11cb4dc01cf15ec4ba139bcbe2`; ethereum `0x946d9b8bedf7ea968e75477f08f7c465e411391b`; ethereum `0xa07f6c83557fa8c61bffa2b3de747b7887141a38` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-227999 | 2 deployments: arbitrum `0x04f7cee4169276e9245d09b2cf074b193f94f051`; arbitrum `0x9b19857171aad69896f8cd6912c91608435c4410` | ⚠️ Unaudited |
| CurveGaugeDestinationVault | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228121 | `0xdd78eaf244da68429ada4f3a8767f3a9f307b0fd` | ⚠️ Unaudited |
| CurveNGConvexDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fb4a77dae553aea1e5ab1cfaca0ff1adddff483` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228126 | `0xe0ebd6bdeee70af91d14e49d869e3746cb05a5f8` | ⚠️ Unaudited |
| CurveResolverXchain | unknown | project_anchor | own_supporting | 0 | linea | unit-228178 | `0xbb1dfbbf3cfa0ae92119db2d35a53b59fa852e5e` | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227851 | 6 deployments: ethereum `0x145e12608c133c2b9062d10e33305d153ac41879`; ethereum `0x542a6b32e08980a8e9f4cd778805cfcb7a99f0fa`; ethereum `0x94b58e201eae7434b9fdcea12e6b0b4fb26c7a69`; ethereum `0xb8e7a5f5f5324abd46f3bd92c814c9b9719b8c2a`; ethereum `0xd545ee3ba242e89fa45caa68665898baf4201004`; ethereum `0xd6884a251e3d116344100e76917df3c535ee6154` | ⚠️ Unaudited |
| CurveV1PoolNoRebasingStatsCalculator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e14c2d2d14c16513f82ebb00f7875db56d4edc` | ⚠️ Unaudited |
| CurveV1PoolRebasingLockedStatsCalculator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227893 | `0x54939860e3d185cd983421ace105ace79156e3c8` | ⚠️ Unaudited |
| CurveV1StableEthLockedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde695e7f9958725ba78a18fa2191bfd980e4bf31` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227952 | `0xaed535d737e80597452d1f04d1b64b4f2ab8a92b` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb757c8b070676171e70e43b5797083d46a431d24` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228039 | `0x47b835dcffcbfcc17a0ab2e5fb94cedb67b49b5f` | ⚠️ Unaudited |
| CurveV1StableEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228179 | `0xbb1feb0e61329a0017e2029447ba7070728d2635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbeba12c12908b4b1e0aab1c1c70bbc0be592608f`; plasma `0xc927975ffaebf41f53e16b107a905b4eeb82a635` | ⚠️ Unaudited |
| CurveV1StableSwap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228020 | `0x1bdc539dedd630d9bc66fd88a53305b07db8cf69` | ⚠️ Unaudited |
| CurveV2Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5dc2303ca0527d5462c0dc5f4c286702db12646` | ⚠️ Unaudited |
| CustomRedStoneOracleAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x67c15923248baf96fb3944a2a326a237b4c21030`; ethereum `0xbb353fd79b7a52438e0c004fa4c2c9dc71e63b03` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227891 | `0x53ff9d648a8a1cf70c6b60ae26b93047cc24066f` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228231 | `0x92c726da82389e0e9e81575960411bd6e8eae3ef` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0xe67d778d2d5eed4e4c410a79d9037e411c958c03`; sonic `0x9dd5e7abb57713607ee36092acb29979e4b87254`; sonic `0xaad907929abf5a11673b0822ab6e561ca5deb19d`; base `0xb840cd692bcc9734df1c99a38be2f523313b1ff7`; plasma `0x9783c04ae41e904a0b601a0732d2cffb71d55b72`; arbitrum `0x5e76c34f7f3885b0060046164a31f0e0fd791551` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228067 | `0x80c503743aace4f6048654ab833d411eafcdc4ca` | ⚠️ Unaudited |
| CustomSetOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228172 | `0x9faefa5185917ad10b7759d2ce8211a49ecc23e2` | ⚠️ Unaudited |
| DaiUsdsSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c309ee751a71bdd2544cb568470b01899994fbd`; ethereum `0xe65a46da0146b391bb697b15a402ab0a8ac257f9` | ⚠️ Unaudited |
| DaiUsdsSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6404f61b3d12b5f87d6f76c2c8b58a420581cfdc`; ethereum `0xbf7335ba1895ffb0d91f850b7f2875e1c8b759f0` | ⚠️ Unaudited |
| DefiRound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc803737d3e12cc4034dde0b2457684322100ac38` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8599f04821421d8f9a5e0a5f06eb1630cdae7e7f`; base `0x9af8aa27780c80ddc8ea82d0707e32a4ad813577`; base `0xe10142549a8b911bece9edc8567e07a98afef87b`; base `0xed048989e97f3d910b4063f96ca21323f9fa4a05` | ⚠️ Unaudited |
| DepositProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031464af67c612a54676dd5dd71ea86605ee2abf` | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ac921bb16321e8c9b2e6b83c56397f2e054232b`; ethereum `0x50619941a410d872c5b3b089705b6bed0a91e295`; ethereum `0x9e60e47a86d12a1360c1373cc310114a1745b28c` | ⚠️ Unaudited |
| DestinationIncentiveChecker | unknown | project_anchor | own_supporting | 0 | base | unit-228257 | `0xc3ff90869ecb5ce2a4153eef6a5dee08f6598323` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227939 | `0xa698a94c0dce389b862f58b08f618a981ea99402` | ⚠️ Unaudited |
| DestinationRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x0283a267eb0b7479831fc049487d9e13ec3afb61`; sonic `0x62794e3f17bc2dc30f282058aa1ed8512e96886e`; sonic `0xa5e45be960665583e8ecc0d3209eb7fd6d6a17b8`; arbitrum `0xdf177c8c0cb75423ab4d9e18d40e1ceaeed8d82c`; arbitrum `0xfea07884d8918e99a8678dbe25ada77d852c618b` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | base | unit-228238 | `0xa1afc8aaf80df8ceb179e99bb1a8fb4d26095ba1` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228079 | `0x95b5f1abce00b345990d1ec0152b416cd143c58e` | ⚠️ Unaudited |
| DestinationRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228162 | `0x66b9eba2cef184dfaf3b9e11b104be0a1c6e258c` | ⚠️ Unaudited |
| DestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0xb64dd58b6efb377c81ff7227fe9074f6b3093d68`; plasma `0x94ab3cd49854f22d2567a33051b77702da7a09f1`; arbitrum `0x4ca8f3e9a5adc4893c93643b2cd90dc9eb443fc1`; linea `0xef8d12d66f9b5b282fbb67e3dfda3fee8d8707b6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227873 | `0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124` | ⚠️ Unaudited |
| DestinationVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xc6c32cd2197dd6badd828051e50664e3cb199678`; sonic `0x4b3575b003bb9026a3340bf123a4d0b8c9d5b0f0`; sonic `0x71ce713e1c26656685deecddc69bd64a10f89837`; sonic `0xd707a2083f36e03206982ee2809097913149928c`; arbitrum `0x53303d04611f87246c60394619f984f1006c198d`; arbitrum `0x705688c792f987a08137315404e8c303dd49dbfb` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | base | unit-228286 | `0xf34f7975df6cb3dd95849a6c3b9343196ae9abb6` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | plasma | unit-228303 | `0xc895bbd0fcb39bdcb66151fa6316b5b13f5c288a` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228117 | `0xd6683672269b6a109a51825e71a015678559225a` | ⚠️ Unaudited |
| DestinationVaultFactory | registry | project_anchor | own_supporting | 0 | linea | unit-228161 | `0x618273975be7c43601e500dbc59a28cc2367520f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-227875 | `0x3aac1ce01127593ca0c7f87b1aedb1e153e152ae` | ⚠️ Unaudited |
| DestinationVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x005b5dd2182f4adf9fca299e762029337ff79fa8`; sonic `0x0b7f22fd9e52dd6ddd3e46194e04ed8d9f520f57`; sonic `0x9e45307894cc2478fe14b09bb11a35ac5e62cca8`; arbitrum `0x39327cbec7e3190fc721108b4d5a0cb096264ba1`; arbitrum `0x852664d3879278bd07cffaf0cebc34ef7aed4f44` | ⚠️ Unaudited |
| DestinationVaultRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-228253 | `0xbbbb6e844eed5952b44c2063670093e27e21735f` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228074 | `0x8d75a2b774277370d9dc8c034f23003b29032b4b` | ⚠️ Unaudited |
| DestinationVaultRegistry | registry | project_anchor | own_supporting | 0 | linea | unit-228183 | `0xc7b0617573a65cdac06fafd106cf9f8503d65da2` | ⚠️ Unaudited |
| DexIncentiveSetCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269dbe2c9a5756e2fc48c173c869679df3908be7` | ⚠️ Unaudited |
| DynamicVestingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d96ba86512b4f8d10bd74b1061d9f576d9c55d` | ⚠️ Unaudited |
| EethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227881 | `0x4353e181c13f7e970f24016a0762c1af271350ba` | ⚠️ Unaudited |
| EethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227942 | `0xa87930c4e51ce635065c9f5356a8578e94d4a71e` | ⚠️ Unaudited |
| EethOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227944 | `0xaa573a9bf7560870a925ea1704c061546486df81` | ⚠️ Unaudited |
| ERC20DestinationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0x8b025dd2f994885b03173380c5452996551ad095`; ethereum `0xaeb5492b001aee78c34cf3b46b21f47301fb97c1`; ethereum `0xb6b90d60192ba7cf78f6da06a8e73be5cdd1362e`; sonic `0x3058da3c19b0b5035613c04d298615fc7b261b2d`; base `0xbc61286428c3d3a89375e81f4c93617977c6c35c` | ⚠️ Unaudited |
| ERC4626BackingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xfc3213faf5b8d96e1ccf27e77bd13247cf014721`; sonic `0x881fd7bf674882468adf7193f7fdbb949f34fb26`; base `0x16cd14a7fc3a6749a777fd3e9639a861e49e516a`; plasma `0x5ab9f9cd8cca2e8b694de0e59fa18429a05031a9` | ⚠️ Unaudited |
| ERC4626BackingOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228040 | `0x47cabfe7c68dc09b1e26ac62655664295481ed2f` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0004042f1cfaef8bd011e73d99f85a44b0aadf01`; ethereum `0x13da01bae2ceba771033e68cd2e782da56fc380f`; ethereum `0xc840bd95cff6a76c2ecae1f49501e481b8a86cf3`; ethereum `0xd50e56c119fecffb43002e524ad10cf8036b0898`; sonic `0x375e794ebcf4119bccb83905aa3ba61207dab4f1`; sonic `0x475707528f91ee8cc1d9493392e8527d2efd1623`; base `0x33608082c7cd20ac7a6fc06c6de7b8ed9e9c1678`; plasma `0x8a99bb16cdb5d38f2ccb57e70fd3755e3ff682ad` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228120 | `0xdd03945351f10728ba4322f5877e3a700ff9a8f2` | ⚠️ Unaudited |
| ERC4626NonLPSpotEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228159 | `0x46c004324a5edeb9fc00dac6eb7dee4db864686b` | ⚠️ Unaudited |
| ERC4626NonLPSpotRangeOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: sonic `0x82de00ea3af7163ff14a4c2b81bd7b2c38f5d356`; base `0x136639b786c74bab4c6d17b76d46e7b83035a596`; plasma `0xdd597e2287406d447991984581087cba173822de`; linea `0x1068bb81ac98aa7c1996ee0ea1189cc7cd595061` | ⚠️ Unaudited |
| ERC4626OneToOneCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xf31bd1feb1848711b5ac0bcd08420cb3f791cdd9`; base `0xcd749af731078ec7657a30458d3bc6558b138a61` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227967 | `0xd4580a56e715f14ed9d340ff30147d66230d44ba` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01f8d089dee86e2e22164394bcc8118688f16e96`; sonic `0xe2239b1277fd0a90b9c21aa3075e9efb32e55824`; base `0xa600421acee5c0a3dd6aa2051c55f2d6246be405`; plasma `0xba08e193a1917fcd5fed59fbf4a432789873e32f`; arbitrum `0x1cbd79d2d77faa8980c4f7fda0f6591aec0ba22b` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228050 | `0x5c47f4fa6978a7551488cae568df4ffbab905667` | ⚠️ Unaudited |
| ERC4626RedeemSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228164 | `0x6978f25d2e7feec1a515524fec4ed721c4b3f5c3` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1dfb5041c3f594caef41bcec02f3a9af47ae8c88`; ethereum `0x2386c9e85f141104c16a4b765edf73752474105f`; ethereum `0xfbc60c7134f0a4efe9a5b3b675552eb89a39b895`; ethereum `0xffebb3fba5b04253dfc34af690d045646b4d959f`; sonic `0xab9f53c36b9c82abbe397742d4a0ad75df33241c`; sonic `0xc3c4583f14d6c0499ddde96de774ff66bcaf1790`; base `0x383421f5c2f7684a6eed21de5ad4b0cd26205baf`; base `0xb1b8d75876e4cb21a164743ba215e5b8930c0193`; plasma `0x9186ea24b87deee4e93a6260d3be31819d82617d`; plasma `0xed5dc10000c06ceaa7f0a5a3ea3ce06ad6272d93`; arbitrum `0x84c1ce81e54084863b274d4278c2e8f2bbe5d152`; arbitrum `0xb22f75f1d57751ec585d1ed331ddf0ac6fe22f34` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228082 | `0x98a216c534b7eaada6d5642a9ca69393360e339a` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228127 | `0xe1a08bf9ef02a869eabf2585cbca50e898799213` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228154 | `0x268cbbc41d74618505982e83885baaae02161a03` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228157 | `0x3f962ecd4edb29422aa07e456ec2bc7067acc328` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0d1e06578f4ae09e81d33bf5587a0616f4821fa8`; sonic `0x2bae3984810b979f50cbd8f12071a7015fbe5f19`; base `0x8692557f833ec4e109839181d76ec5e650f1714a`; plasma `0x8b504e5cf4708c334384f36674c79978f85df923`; arbitrum `0x2210d0ccc3a374326df1ee7a68406e9ce2252237` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228141 | `0xf701b4c8583cb34ba55f22436091c9ea0d2b7087` | ⚠️ Unaudited |
| ERC4626VaultShareEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228190 | `0xdb28f4219582febd52acddc75b37efccb4aeae68` | ⚠️ Unaudited |
| Etherex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d`; linea `0xefd81eec32b9a8222d1842ec3d99c7532c31e348`; linea `0xf0c89c8104707d2698288da2724b05881e0bd9eb` | ⚠️ Unaudited |
| EtherFiClaimingDestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b65dc9db1d0935ca412c0a685a2c77581339639` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227976 | `0xdeb361babf4c8277f0b2ee30914fb155b1a67de3` | ⚠️ Unaudited |
| EthPeggedOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228278 | `0xe33703c5c1e1a5415b260f8c8eb8a2f49e746aa9` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: sonic `0xac9ae263d64ba05d6d58681d660c5025c9b83ea9`; sonic `0xb074ee8443466e40ff1d8b234a833057746df27f`; plasma `0x73806677ae5b06d7a04451350bdc5a48b88b759f`; plasma `0xac2087a70d132e07e7cec947c166a3733d754a5e` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228014 | `0x16adb8209618e0cbd4c19f0487f8916b0cf5a0a8` | ⚠️ Unaudited |
| EthPeggedOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228174 | `0xa6e5ace475b117c66ffe5a0baf5e09867dacf562` | ⚠️ Unaudited |
| EthPerTokenSender | token | project_anchor | own_supporting | 0 | ethereum | unit-227974 | `0xdd92511f1fbe5de911e22a0247ba8c212d625a3d` | ⚠️ Unaudited |
| EthPerTokenStore | unknown | project_anchor | own_supporting | 0 | base | unit-228219 | `0x57831780565ae1526ed1cc2296c1143b3ad68dfe` | ⚠️ Unaudited |
| EthPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77f18a6968a38f9aef1af676420c4799e8b864ee`; ethereum `0xca77a278a03f3e4648f9dc073729427862d5da31` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227862 | `0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55` | ⚠️ Unaudited |
| ETHxLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227910 | `0x6d3c5f6670abe46901de4bd39036cf21d178334c` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 12 deployments: sonic `0x59e6e9d53db8feaf8185c79a6c5116c7ebe12afb`; base `0xc8ba1a0a703bd11a78ac04b20aefcfc94dcc3c76`; plasma `0x07ed7ef81d7dd79fb6043d0a37c11d78f3b8f95b`; plasma `0x15b4dc0cf0e917e138acb777c7d9eda5a57178f9`; plasma `0x868c33a2515ce3011796107d63ca825be804b672`; plasma `0x9199786e066256b3f2ec424dae7d5d0b4bcf0377`; plasma `0xf3de68350bf01d90fe9ed09a20b20e984e78d217`; plasma `0xf5a4fa89f88a9dc6b7fbf22d71d748da810f684c`; arbitrum `0xc82aec28cbc4a4a73fe81cb0b2d7d0bddf28537f`; arbitrum `0xdc7b9681782e92c3aadc9332b754b8f8c4ec7101`; arbitrum `0xfda745fe8b8bfcbb5c4f014ff09647f348010bd5`; linea `0xd27f7bdcd1611751b864a63681b8b1708b56fbf0` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228032 | 2 deployments: arbitrum `0x39841737112ec884406b66a487f3efcdbfd80085`; arbitrum `0xe6a2b1ade3f61fe4d957bb0c792ea85ece08fc71` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228106 | `0xc32572fcc9990977b79a6d744f60d78ac6ea15a8` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228170 | 2 deployments: linea `0x9d2868bafeaa293daa7b5d1e6d1dd6b1a2239e3a`; linea `0xd2f243a4e0311950c11122851179edb04c5d4471` | ⚠️ Unaudited |
| EulerDestinationVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-228181 | `0xbe22c1f54cd2b1bd59bb20c7c2a97e688b3ae95f` | ⚠️ Unaudited |
| EulerRewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: plasma `0x46ba857480b2a87a2e94eeac678e7514b280e409`; arbitrum `0x6f1c2847ec3a537ae070e416d4ef439d85f65cdd`; linea `0x349e418073d660dbd419ffc407d4ba077b6d59dd`; linea `0xc6383b2eafb95808618299bfc627c01b0fda5393` | ⚠️ Unaudited |
| ExtraRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227853 | `0x17c50b9fba151f5f88618dae6c394bd731022975` | ⚠️ Unaudited |
| ExtraRewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227859 | `0x23e9bbd1c4528f904526be2761250e94177fec38` | ⚠️ Unaudited |
| ExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a73fac64541bc67302ba98840c33da6eee05924`; plasma `0xae6b250841fa7520af843c776aa58e23060e2124` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227941 | `0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9` | ⚠️ Unaudited |
| EzethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227980 | `0xe3e73139d6b1a2ce22c34897423ab56ee925b459` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x51a2a0b162d27254e30473b7072d95f4b37f21a1`; linea `0x532c15d1803f565ad37b77f5b20d9e3a4254e0f3` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f`; linea `0xfde48794f3ea7f26cd2b00f078366455b1e6b7bf` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7` | ⚠️ Unaudited |
| FeeRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1057b6c6736bf4f5b4a850cff02054f1f38e581` | ⚠️ Unaudited |
| Fei | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956f47f50a910163d8bf957cf5846d573e7f87ca` | ⚠️ Unaudited |
| FlashBorrowerSolver | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228031 | `0x371b3cc4cad4bffc25729c9db4d8c97ecab29488` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x8f84c9d237a1f0cd00b1cd2e4d248abfd23a0f8f`; ethereum `0xf6c131ae53ba6cfc93c3d6f6bb95df83de6b32d7`; base `0x99ff2b62a82ca18ce817e61d39807654f0a9da64`; base `0xcb52d8197e0f9ad19ef740dc1ccc40d08909d136`; base `0xfaa81882c66d88d142a52353282de112eb2a652d`; plasma `0x5b2cd1b8fd200bd80a6facf9b3f60102caffd68c`; plasma `0x5dd8e6c497d350ae7a32d6e2dfc07f42b27f905b`; plasma `0xf07c1db1d9c0a191cc91115bbb47566e1549a1d1`; arbitrum `0x1975b2d4c525587a50d431b68634067de29b20bb`; arbitrum `0x5a4a238c9e2998d896a0e1a2fb08be343a565331`; arbitrum `0xc3350fc30ef37b36e696be42583a881494a9fb69` | ⚠️ Unaudited |
| FluidDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228026 | `0x2b8c9765b5983bd3c94849705050daabde414127` | ⚠️ Unaudited |
| FOX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc770eefad204b5180df6a14ee197d99d808ee52d` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Convex_stkcvxFRAXBP | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963f487796d54d2f27ba6f3fbe91154ca103b199` | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227882 | `0x449a957490e24e4d915fd5dcf25dd5446e787590` | ⚠️ Unaudited |
| FrxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227948 | `0xad6d0ecee007145d76c7a9b9551af560a718a223` | ⚠️ Unaudited |
| Gamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6bea7cfef803d1e3d5f7c0103f7ded065644e197`; ethereum `0x8a539cb67785974daa8e423750ffd7d28fed793a` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x18068c050d237d46310f59f40559bd0c6b3b0b25`; linea `0x84b4654d0451b697b4764eacfbd4a9fdfa04201b`; linea `0x9270d3ccd5af75dfefcd4a4f79aa2ca8dbf81a74`; linea `0x9d5c0eea4de82aae5b3f71080c65b40806dc9cb4`; linea `0xeba9eba1be848fbcdcb073dd788e8453d1eacb40` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x499aed38bdafd972e1cd2926d2b9088547dd8fcb` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x127563761083d2ac7794c17d04e17393d8ad9013` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8b4334d4812c530574bd4f2763fcd22de94a969b` | ⚠️ Unaudited |
| gOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab87046fbb341d058f17cbc4c1133f25a20a52f` | ⚠️ Unaudited |
| GT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25dc58c25ba97529f5504dca81d2eaf4abaa20c` | ⚠️ Unaudited |
| HoldTokenCalculator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x076f94efae4621bab537ce72b9eb48bb0ca65f50`; ethereum `0x78c4af35094c1cfe23f5b9344ad31771e6f57c0e`; base `0x8043363b9a807d3028a5a410dca41177fcfac3a4` | ⚠️ Unaudited |
| HypeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa21b3085e9a97bb8f23c997e80fe6d91321e24ab`; ethereum `0xede66eb7a576beaa87626a38fdd0d32b57dc7dff` | ⚠️ Unaudited |
| Hypervisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x33412fef1af035d6dba8b2f9b33b022e4c31dbb4`; ethereum `0x336d7e0a0f87e2729c0080f86801e6f4becf146f`; ethereum `0x388a3938fb6c9c6cb0415946dd5d026f7d98e22c`; ethereum `0x39b96fe8fc813e0c34cd79ba858492521616013c`; ethereum `0x4d7f0f7395dd58da2e6680453a0d0b4b19d0c832`; ethereum `0x51bbf75e7d6ee33da934ea0926b7eac73f808865`; ethereum `0x586880065937a0b1b9541723619b75739df8ef13`; ethereum `0x5e6c481de496554b66657dd1ca1f70c61cf11660`; ethereum `0xac571cbd56c83362875bf881819b653ec9b1d02f`; ethereum `0xf402ced61500147c19d6944ef85f27f213adbd9b`; ethereum `0xf6eeca73646ea6a5c878814e6508e87facc7927c` | ⚠️ Unaudited |
| HypervisorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae6c8c7005c7317963487bee834047eb497ceae` | ⚠️ Unaudited |
| IncentiveCalculatorUpdateDestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee117a999594cf8e7d5845e4a76cd6f8121ab674` | ⚠️ Unaudited |
| IncentiveHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x453bf45e5a9a476c6d6c74d1c8e529c9c27f51e7`; ethereum `0x4a566dbb39d5b75da98e1e1fd98f785896178791` | ⚠️ Unaudited |
| IncentiveHarvester | unknown | project_anchor | own_supporting | 0 | base | unit-228203 | `0x1bfcdfa2722c17959acd1306df1f0406a7d5be5e` | ⚠️ Unaudited |
| IncentivePricingStats | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227924 | `0x8607ba6540af378cba64f4e3497fbb2d1385f862` | ⚠️ Unaudited |
| IncentivePricingStats | unknown | project_anchor | own_supporting | 0 | base | unit-228285 | `0xf28213d5cbc9f4cfb371599d25e232978848090d` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5b757523ca6f7f049ac02151808e6a52111` | ⚠️ Unaudited |
| InitialClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11` | ⚠️ Unaudited |
| Integer | unknown | project_anchor | needs_review (excluded) | 0 | arbitrum | unit-228041 | 5 deployments: ethereum `0x8a397abc023dc1b5b4d3bb9559915cc57594a71c`; sonic `0xad333193bc8fb30fc546221f63e3e6267795f3f5`; plasma `0x5206eb7d388e4b0a35f5718be379068c18e4ec6e`; arbitrum `0x4c0868931b0c6e72aa835d657fa56179ce092028`; linea `0xe9dedf925040d593d805eae566b93dc1f19958c6` | ⚠️ Unaudited |
| KelpDaoClaimingDestinationVaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa305791458d9a53bac60e8273e8208ab00ddd067` | ⚠️ Unaudited |
| LBPController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e0561e87bb1c29d7e6259e163b03b7ab93e2987` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | ethereum | unit-227852 | `0x146b5564dd061d648275e4bd3569b8c285783882` | ⚠️ Unaudited |
| Lens | unknown | project_anchor | own_supporting | 0 | base | unit-228243 | `0xaf05c205444c5884f53492500bed22a8f617aa9c` | ⚠️ Unaudited |
| Lens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x0ab577ba4717b2d4cf097ab902b88ea18fe6c89b`; ethereum `0x6972eea1c99c8884b8569ff8b447a5ea71cde442`; ethereum `0x75455ae8c9b2ff7ae9f21ae06730d614c31d2300`; sonic `0x8b5871ba6128d374aa0b82046b1432b5a2b42182`; sonic `0x93f91ac256d7e403e59f15fca28d3ca08f3d9584`; sonic `0xcb7e450c32d21eb0168466c8022ae32ef785a163`; sonic `0xf4201e884b94c941e362c5b7b7012ecaf83cf18b`; base `0x1c00599444dd916ead61487bc0c8112446db89f0`; arbitrum `0x03200d703c63d3b5a00de9896b7f82c240f749c1`; arbitrum `0x99f8f66a33f8d102029acf37978eca3e3d08279e` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228047 | `0x590a31453390a1bb266672156a87efb1302fc754` | ⚠️ Unaudited |
| Lens | periphery | project_anchor | own_supporting | 0 | linea | unit-228168 | `0x92537a95b45ab695ab3ebabfc1a3c3e27af7973c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-228198 | `0x0294d71b2c9b88d10f6d3286f5b25026147b2c8c` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 6 deployments: ethereum `0xa61ab544cbe6298903c1ec2cd5c04d55c6daaf53`; ethereum `0xd03f63fac29a29c3177330fc6e93445f83747738`; sonic `0x5a7110ff883bf3b314621a33e9f5dc9e0a5d0ab3`; base `0xc48496728f2ce7eeb27b3017d96a4c0d95005e9a`; plasma `0x2ddb79fdeb9f4708604acecec28e4adc247980be`; arbitrum `0x400662c225ecac3ef4907ebb6826419d765ca197` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228029 | `0x34d929d9e3287f51932a2095a48203bbb1f7ad94` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228033 | `0x4008dd4a6f8df7427e560b56df1b66e197ceba03` | ⚠️ Unaudited |
| LiquidationExecutor | unknown | project_anchor | own_supporting | 0 | linea | unit-228171 | `0x9f8e50cc9cf2627f9d0d11841c5f842663db4bfa` | ⚠️ Unaudited |
| LiquidationRow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xf570ea70106b8e109222297f9a90da477658d481`; base `0x7571de594a92379c0a053e2a5004514057c10b5d`; plasma `0xd3132ce50e7471cc6130ac5aa553149dc3b2a018`; arbitrum `0xb47d36199264f155fba4c5853775ee3081d913ed` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | base | unit-228277 | `0xe2f00bbc3e5ddecfbd95e618ce36b49f38881d4f` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228054 | `0x610ffeb00b8312b0540ded300c683227cb3e3ab5` | ⚠️ Unaudited |
| LiquidationRow | unknown | project_anchor | own_supporting | 0 | linea | unit-228182 | `0xc332386610bd4d555c762d7f88c17acf96f05b3c` | ⚠️ Unaudited |
| LstPriceHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xc7c3086bbd548abfa411d01585057e7928bf4523`; sonic `0x3fab79e63b2140cacd9dff96fe59b0a5661c0626`; base `0x1617c74f1e2616a6883249e490aa5e085cd5f827`; arbitrum `0x329e4cf6d328da5bcf46339900126c147ddd525c`; arbitrum `0xd57e25e04f89e8a7ad4f020213e14ffb48aad943` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-228304 | `0xc91f3b941df65f58371c9c04221629c2b6a4ebc5` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228059 | `0x67ae7b7d81de471802fbacdc83a4a6f16fcafbc0` | ⚠️ Unaudited |
| LstPriceHook | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-228195 | `0xf63daffb0b8eb975856d7935d13e4645e66f2f47` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x59170d9d1d3db8ac3539c6705fb38c735af9f4c9`; ethereum `0xa86e412109f77c45a3bc1c5870b880492fb86a14` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0fee3b431eb86edddcb297c4921a2577a8237f64`; sonic `0x38b5566e92d1d6aed063352d3a7ba75254399227` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x0ad818271471f2430be55aba528efb58713bb7f7`; ethereum `0x1d7858a79ca0bdedf9f16af2b3e352b9231b4d43`; ethereum `0x47fa8651ba35be1bc5b975e1c54a7424e3f705df`; ethereum `0xf31d02071c70b9a54748358b03999719676f2651`; ethereum `0xf663f4b30dd18546cb71a607b7a89a36e92a244c`; base `0x0208491b10f9fc61ac8047d1f0e11698bdb67262`; base `0x85f9826f7f08c868ebfb0749652a12d944a4d14e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x304c29f8f89691dc3d5f9564c64bad19cdeb1520`; base `0x76e6a3c941e086a7ab6d00b7fd78f83b39aee47e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x027a3359b803885261b140415873845f72238833`; arbitrum `0x37767cbff88cb623e9404e959560984f7d742df6` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228297 | `0x881bb334aa682ef61f6ad03ac8cd220e5b3d63d4` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x3b16c8e0a1059e5551bb56a3592a61cd8743cfc3`; sonic `0x720b31f8f46a4dca2e71dbec3aaae6ed83ddee52`; base `0x80af9506848fc60c06c4c3e400b4ebe0713e228b`; arbitrum `0x0d1212d67d676101bc9ed856b8574a95c7695426`; arbitrum `0x50306d87f9a1afc15e64f2cf63ac1bbad800ccf0` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228056 | `0x6404da4cd966afa35fbf2b1664278060e144a402` | ⚠️ Unaudited |
| MaxValueSlippageHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228175 | `0xaaee6a22f738db8d50a492e42edef9bb52869707` | ⚠️ Unaudited |
| MerklApiOperatorSetExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54f35db38f7613a3993e41d56ee9c4c5ee6cdc8d` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x614f116c0e64190512d4764b4c2122f9e2703abd`; linea `0xdf278799d1b15c6cecc5543c17f4821869088d5b` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x90fc1f74cde75122a17db99c11597bf593b4940d` | ⚠️ Unaudited |
| MigrationNFT | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72baaa523a4662856f413b0fc0a9e3068f39fe76` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x0b6d3b42861ee8abfcaac818033694e758ecc3eb`; linea `0x462e26ddf2de188bc75afe74e6a31b2c56d2a966`; linea `0x76da798f9813be02d3635eca40ebd3db04da9f8f`; linea `0xf8396260bdb72b6708b293db3842cdced90b6255` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2e9894482fb8fe525ebaed0860eeede918dc3466`; sonic `0x7a0c45fa836dca6a4856d94289613a27b5a9c7bc`; base `0xec1b423029770a3ce2a6c8141ccb59f8e11e5745`; arbitrum `0x5483a297ab5ba84cdda05ccb9bdb027b27a7ece8`; arbitrum `0xcb409a14b706fe5326f2fc3c0f437791722dffe0` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228293 | `0x71689a8e924ba6611fac7bd40c55796e8b1679d9` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228004 | `0x09d0d6a48545e959b230600966d93600fab50322` | ⚠️ Unaudited |
| MinTimeGapHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228177 | `0xb617bcc10ea25669dd99071be6a962d4b9532e67` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59037f2c0337a5150c0cd08cb2df684e043712a6` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x616e7ec1d3e3fba728f821371480c6e3e20ecdcc`; ethereum `0x9bc1526e9d210e04e32e7c481f09f512a69dad01`; plasma `0xde852a993a9468db1f223160a657ec881ef90db4` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228044 | `0x52b31f7d8397a7a3851ddb548acac64abfd48be3` | ⚠️ Unaudited |
| MorphoDestinationVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-228057 | 4 deployments: arbitrum `0x65f4fe4026e5a9d47118f9cfce32c75de3a62eef`; arbitrum `0xab3da8995d5fea17913c3d12a5b199f1ccc9bf0b`; arbitrum `0xd7b1f55e0ccffa849b35aa1c39b94eb415db00ce`; arbitrum `0xff004ba7df7f0d4fd0d1856f009184bd77a24192` | ⚠️ Unaudited |
| mSpellStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6669292fa56123f71949b52d883ae57e225` | ⚠️ Unaudited |
| NavLookbackHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x33db101517112a9b7b9f5b39eac185a0629c3624`; sonic `0xa6c3201b813fcc7468d2c067ee50a178ece29268`; base `0x5ee04a3ba1b99c653c65812916b6b6d0c6b5df51`; arbitrum `0x6170052a076df54069671a39e9fdc730b319ea57`; arbitrum `0xd184c57f31ff139d92dcd482a5922eb3b5bd2b16` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228290 | `0x4c0be1062dcdaed7be09f73a4f00a0313a6b427b` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228080 | `0x9717e1b7c338aded95fd4bda0fc5fc1fcd756f8b` | ⚠️ Unaudited |
| NavLookbackHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228173 | `0xa31fe55d43e0577155d71bf2231818a6bd59fa42` | ⚠️ Unaudited |
| NavTracking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9d91184326b1b43cca0039523ed20a4bc08b2046` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfc65c6308765ebbb0d87df8b6502674b868453c4` | ⚠️ Unaudited |
| OethLSTCalculator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21fededbe1cc5aa22a17f171513c105300143826`; ethereum `0x90a7e92ca4cf3da787be39ccd84071a50f2cbd59` | ⚠️ Unaudited |
| OHMPrincipleDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee5c2865d6dff605e527b13c336f0b8774815b9` | ⚠️ Unaudited |
| OlympusAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21f8ea7e39e2ba00bc12d2968d63f4acb38b7a` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a617fe9163c1499b9d2773fb2d0105a2368bedc` | ⚠️ Unaudited |
| OlympusLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf11f0f078bfaf05a28eac345bb84fcb2a3722223` | ⚠️ Unaudited |
| OlympusRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce62b196ea521c88d6cf884283cb0372f4a6cd1` | ⚠️ Unaudited |
| OlympusStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0822f3c03dcc24d200aff33493dc08d0e1f274a2`; ethereum `0x4a049d23ffaf21e7477e04caf22335b7a8cf7d7e`; ethereum `0x9f93c9fca9037eb606af706af0b61635b8e5abf4` | ⚠️ Unaudited |
| OlympusStakingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe731507810c8747c3e01e62c676b1ca6f93242f` | ⚠️ Unaudited |
| OlympusTokenMigrator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184f3fad8618a6f458c16bae63f70c426fe784b3` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16031783d3d27ce25ebcfb341f4eec8f7ba915be`; ethereum `0x43094ed6d6d214e43c31c38da91231d2296ca511` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x803ec0b526c226cd73ec5633701f4baa59bc22bc`; ethereum `0xa1a7ece4d54f1403187f81880346962f667721dd` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xabcf56d1a0f721a690d70da06c72380dc1fa195c`; ethereum `0xc6807bb6f498337e0dc388d6507666af7566e0bb` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x44670e424c88a1a887e413c49b4a82755e7f6c2d`; sonic `0x57ade982cad81a5bf39e6c3b8b01717ecfff038e`; base `0xe4baacee5fc0623c6ec8ce54fe792f4bab4d7704`; plasma `0x951891cd7c089bf2cfde68342cbc94a5260fbb80` | ⚠️ Unaudited |
| OneToOneBaseAssetBackingOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228042 | `0x4e8ce63cce31f667d03955dd98133d504d8e9b32` | ⚠️ Unaudited |
| OneToOneUSDBackingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xaeb29cecd5ddec1d259b25f731fb3709e2fd1016`; sonic `0xa28ffdaad6506681aea69d951eb0032206599822`; base `0xe8b43dd04d8107940ea544abdeffb24e6283472a`; plasma `0xea292b5132aba11af6226dacbad556a0b26b9818`; arbitrum `0xa698a94c0dce389b862f58b08f618a981ea99402` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x389df9430143880ddb13bdd5fd30daf2d57e7d55` | ⚠️ Unaudited |
| OsethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227876 | `0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b` | ⚠️ Unaudited |
| OsethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227956 | `0xb5aa595c4fe3c297d65bdcdcc6fa48ef8725aebb` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc0b920f6f1d6122b8187c031554dc8194f644592` | ⚠️ Unaudited |
| PointsHook | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227936 | `0xa386067eb5f7dc9b731fe1130745b0fb00c615c3` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0139b34012a6639e896b883901b7dc1bb6e6f15a`; ethereum `0x2d3eade781c4e203c6028dac11abb5711c022029`; ethereum `0x7a75ec20249570c935ec93403a2b840fbdac63fd`; ethereum `0xe7a7d17e2177f66d035d9d50a7f48d8d8e31532d` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbbfc7d1d53116830326478f77f489530cec7ba8a`; ethereum `0xca5e07804beef19b6e71b9db18327d215cd58d4e` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2832e19221631e7082926e2bb354497613bf9d6f` | ⚠️ Unaudited |
| PricePerShareEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b0f86a09eb9912152750212372f732c5c248cea` | ⚠️ Unaudited |
| ProtocolActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34413f3cddafef7db46f92296a7cea444b3140fd` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x01b4314072fe86a497e97bd6ad48b635fbe7e1ee`; ethereum `0xc89f742452f534ece603c7b62df76102aacf00df`; ethereum `0xd813b2a8a0c206dc2e5ff7a44e11fd0396c51a21`; plasma `0xea6b816abd45d1361fda29b56b89864180bcc98a` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | arbitrum | unit-228103 | `0xbfd6378545d118e8fb26f633d8f3b32bda047e9f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227860 | 2 deployments: ethereum `0x24864cc03efd84f9df0e5f1d23ab69128325931e`; ethereum `0xdbfb637873d16dc5efa43db75ff846934caaa43f` | ⚠️ Unaudited |
| ProxyLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227927 | `0x8a26c73f5c4597e086254cb815403b98dc494e53` | ⚠️ Unaudited |
| PufEthLRTCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x878958416059f3ea3cd4ac0dc0a5439b49a17e73`; ethereum `0x9d49209bb8d7859ad26b655e6c6b83fb978b34ac` | ⚠️ Unaudited |
| PxETHEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227877 | `0x3cc52170fdea5c485db6d412b78ea40f27ffc629` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227872 | `0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a` | ⚠️ Unaudited |
| PxEthLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227934 | `0x9cb562083d29e027f21fac4d8b66573dea972153` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb593fa9d853ad89bfcf77c9a22d24936774fe335` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe660c95e17884b6c81b01445efc24556f8aba037` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x020079c6cb277ec22306a45e7d4eaefd24d3200e`; linea `0x0efaaec1b2e11ee89c0a29ebdcde846c8631693b` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x15325a2ec4bf164d47cf48d5d6a9edda385636a5` | ⚠️ Unaudited |
| RamsesV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e710feb1b2e784233893af659442e4739272bfb` | ⚠️ Unaudited |
| ReceivingRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228211 | `0x32796698388fbc64281dea9fc4070df80a12267e` | ⚠️ Unaudited |
| ReceivingRouterGen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2c543dd8e305b354ee1d713734acf7adead19dc` | ⚠️ Unaudited |
| RedstoneOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227979 | `0xe1adb6967e1dbd5332d499dfa2f42377d1da5913` | ⚠️ Unaudited |
| RedstoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x7b1e13fd6cb47cbe274e20a7ec542e75f4f5b3f2`; sonic `0xa1ce2373e69a0318f4ca3a2b382c25bac2874718`; plasma `0x80d8315de571bfa4ff0b884a03f95837f8bb308d` | ⚠️ Unaudited |
| RedstoneOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228234 | `0x9ab4b68c3a3dda0cdf4ec5c0ab9da2661bdad1ee` | ⚠️ Unaudited |
| RedStonePullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0x470139efeee7c481d08eb0898af87ee9a8b0a0ea`; ethereum `0x9a65e1853381199ca04593ee5c396291e489b811`; sonic `0x0324a2d690bc974512fabd22615755b47f33abec`; sonic `0xc557b7afb4000d7f3ea2520c572dc4370b929d63`; base `0x1e4d6a828a7597808d16e3d096f230b01f679306`; base `0xb470a190d75e323a94861f6f7e44c3d8a1855cc4`; arbitrum `0x995a3997cf96947bced10c85e661d95159759d1f` | ⚠️ Unaudited |
| RedStonePullOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228135 | `0xed2acb88442c415b8666fad041962bf1085e081b` | ⚠️ Unaudited |
| RethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227842 | `0x038516cb9bbc0572c2d55896ce75f31fab90fac1` | ⚠️ Unaudited |
| RethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227931 | `0x9801098ee481ed6806c61a4de259fbddd5bb84a8` | ⚠️ Unaudited |
| RewarderAutoLoader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: arbitrum `0xa117337d7b8797db2b31d4ee393c15f50630bf38`; linea `0x2abfad400361d49b40b24a894e0e417c4a8ceec7` | ⚠️ Unaudited |
| RewardHash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2c8f3c8aca4413a9bccb0a4f6e5a18b537572705`; ethereum `0x3cce05568008916d739479958f7a1af5f67661dd`; ethereum `0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x086b9734d33783bbe4fbc8249df4c686aae27054`; ethereum `0x79dd22579112d8a5f7347c5ed7e609e60da713c5`; ethereum `0xba7c0fbc8fde123565094252ca7f2990f8c4a54e`; ethereum `0xd69e57336377460707d579cb24f9ba0aedf88003`; ethereum `0xf81d69f11e5103ce199ff745295a1e3d7a4cef69`; ethereum `0xffd22cee98c24c12b20987d4106148d88269ede3` | ⚠️ Unaudited |
| RewardsHash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70f0f41b354ce2f1378952c50c635633e0373c24`; base `0xe43ca8083b409f57167e8c0eb594afac663ed9f7` | ⚠️ Unaudited |
| RewardsManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1b05128b262ca335de162c8ad5e9281d5f7d4404`; ethereum `0x7cdbbd9d6eb284f7f2a45236b50eee9c94e96d06` | ⚠️ Unaudited |
| RewardValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc`; linea `0xe576004e25750d9ec8eb493d0a3684948fc0a97c` | ⚠️ Unaudited |
| REX33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x312b67a8de4291ce2c3628d24fa62eb04f433ec0`; linea `0xbf42f61a1f176c43cb6fca7ea5afb55d59639dff`; linea `0xc4b578ffc2403b3911e233dc939157147f31509c`; linea `0xccfc11f393a3c7f79ad09c5be2f408215ef15749`; linea `0xe4eeb461ad1e4ef8b8ef71a33694ccd84af051c4` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227902 | `0x61f8be7fd721e80c0249829eae6f0daf21bc2cac` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228254 | `0xbcf67d1d643c53e9c2f84acbd830a5edc2661795` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-228306 | `0xf25bdd81822ab430f6637ea31d8b5add0b6d124f` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-228130 | `0xe84cea5553cc9d65166a7850dab2e7712072d97f` | ⚠️ Unaudited |
| RootPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: sonic `0x356d6e38efd2f33b162ec63534b449b96846751f`; sonic `0x471100c2ac35d6c13bfa95701198a6f1c7cb8c9e`; sonic `0x7844dbe5e350b5a841282af76861127e2d5a3e97`; arbitrum `0x99ebce650e32cb7c72ce00b753f968e3108bed0e`; arbitrum `0xd24125b4c13a7acc43ea1587bad55147d2ab5b3d`; linea `0x03dc051eb7fe444cebcc2e870eba4464d8175618` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x81cfdcc01bddd0edc90f453a75f01979fbfb2dec`; ethereum `0x86ac986da7823869d083fd884e5e2d585ba1635c`; ethereum `0x92d8533289dca2d7755069c613e1b0c507975b16`; ethereum `0x994303a55e4bea32ad3b89a34db1e7ca130f38e8`; ethereum `0xca17f575edbf6440b3c13aa53274648d7cb78536`; ethereum `0xf5ad919c8e6eec8fb6396de4c08b042f3dcef3e0` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-228156 | `0x32db39c56c171b4c96e974ddede8e42498929c54` | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227849 | `0x114ca0dc51abd118125f84d15f87e01e7dcefa86` | ⚠️ Unaudited |
| RsethLRTCalculator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227923 | `0x840a49a4b83e57718cf67c03d820c938a04fc210` | ⚠️ Unaudited |
| RswethLRTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227982 | `0xe861c6eb5376ada41bcc238080439724fe15b90f` | ⚠️ Unaudited |
| RswethLRTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227984 | `0xeedb3dd86f690a8c76006d606db7951322b6741a` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa9900b2d550c406d1cf58da27228feeef21d447b` | ⚠️ Unaudited |
| SafeIsSpotEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70659f78ac20a8eddc309d6df6458ceacc12e764` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1bb9231f96a5420858d273c3e311f0affc23cdc0` | ⚠️ Unaudited |
| SelfSpotEthOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9a06f85a3d188f2a851d1b4fb582680727a5d7` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | base | unit-228218 | `0x564c39c2c5d120724da31d1428773c1aead23535` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228000 | `0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4` | ⚠️ Unaudited |
| SequencerChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228045 | `0x537f6e12fbc2ebf630d6d8db7bbf8612a0d97dcc` | ⚠️ Unaudited |
| SequencerChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf37535db6b062450e59a027f7f07caedfdf129ef` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadc55207b2f7b9642c4c94a0725a29abb833e2cc` | ⚠️ Unaudited |
| ShadowDexSwap | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-228196 | `0xfb918e1d100707e732129407065c9b8dbbeae19d` | ⚠️ Unaudited |
| SiloMainnetDestinationVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x43ac6018d520280fdbb98159acc4970b2b97ab82`; ethereum `0x679d6fa208d4c91ccce6e3ca109cbb654be3aca9`; ethereum `0x87a840fd61828b8ececbc3a6df3f368f06e4a262` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0xab64ce10efa2559e6838e64852ffacece8294569`; ethereum `0xd7ca2cfbb9beaa85827f41e51ababd610351270a`; ethereum `0xebdfe0638d9de4c3e34a6104ab2b53fc31e4f7c3`; sonic `0x1a1c7e06fe24d822fbfbe93d6e2f4c70a77439c2`; base `0x27579eeb605f93a6931645e8fb0dde8f9a056589`; arbitrum `0x5984cf820caaf1dcb3ed863c2f5f386c1b11c192`; arbitrum `0x5db0e6da4df6df6b9a377b4bc3d8f82f52fd6b14` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | plasma | unit-228307 | `0xf68f04384054e47f3fa08c48fb58f20de080b335` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228075 | `0x8e9ac280876826f687e509ce4a0f55ff352d402d` | ⚠️ Unaudited |
| SlippageBudgetHook | unknown | project_anchor | own_supporting | 0 | linea | unit-228167 | `0x798b8a1dd081ac4cec410e40f8dd0616b4824645` | ⚠️ Unaudited |
| SnapshotToke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572a7de03d4d2bded8c3e6faa99fb835b226aaa2` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: ethereum `0xdb8747a396d75d576dc7a10bb6c8f02f4a3c20f1`; sonic `0x4137b35266a4f42ad8b4ae21f14d0289861cc970`; base `0x67d29b2d1b422922406d6d5fb7846ae99c282de1`; plasma `0x03fad8445b30bf639c5f54e9502e43ba5f4d6cad` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228052 | `0x5ee5d04942dc4c78ce27c249fdacb24aa39cbd14` | ⚠️ Unaudited |
| SolverRootOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228151 | `0x24127aad4fb9e7d52803fa6860b9964537127e00` | ⚠️ Unaudited |
| sOlympus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31932e6e45012476ba3a3a4953cba62aee77fbbe` | ⚠️ Unaudited |
| sSpellV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa29367a3f057f3191b62bd4055845a33411892b6`; ethereum `0xd875628b942f8970de3cceaf6417005f68540d4f`; ethereum `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0fc45523d4c63a70f263dceaec9d08c947954b4f`; ethereum `0x1dddf8ef2a9c181e7c7fd7c8175da30a221d0122`; ethereum `0x5967234b0fa896f308b6b0087717a206e111ebee`; ethereum `0xe5943d8dc61282fbb4eeabf0e30166bf7f6ba92f`; ethereum `0xef8670da2d381a523953e157cf52b704b94a955b`; ethereum `0xf82337cf52979411b769176c156daa88e2b54f63` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x96f98ed74639689c3a11daf38ef86e59f43417d3` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74017a8cc7c15ffccd726603790d26d7deca` | ⚠️ Unaudited |
| StakingProxyConvex | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9ef8f1cfa952a4a383e10a447dd23c5ea20eb8` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ⚠️ Unaudited |
| StandardNonLPSpotEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: ethereum `0x84ec46ad95c5fc56a729c831a86b6b4df70c15c1`; ethereum `0xd069068db826f3e7f2727b2fe3c963f4b9a6bfba`; sonic `0x62949fc757b22862dde2da40fcc8297c06b628d2` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-227921 | `0x8198069f1709addc6a162c9433665776e5bc917c` | ⚠️ Unaudited |
| StatsCalculatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9f6ed306ff5a217ce54e8fd9a69abb0ca715dace` | ⚠️ Unaudited |
| StatsCalculatorFactory | registry | project_anchor | own_supporting | 0 | base | unit-228269 | `0xd82664a9b7a766b2c311b76c9e4384e8838b0a1c` | ⚠️ Unaudited |
| StatsCalculatorRegistry | registry | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227950 | `0xae6b250841fa7520af843c776aa58e23060e2124` | ⚠️ Unaudited |
| StatsCalculatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x734ad274d8fc325d40b33ed2b89aae3e9adbb67e` | ⚠️ Unaudited |
| StatsCalculatorRegistry | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228205 | `0x22dd2189728b40409476f4f80ca8f2f6bdb217d2` | ⚠️ Unaudited |
| StatsTransientCacheStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34712f37aee81b3a0d2fe03fea9f4cb25961bb88` | ⚠️ Unaudited |
| StethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227909 | `0x66a466b838f981b39cf3b3e13e19af5643dbad0c` | ⚠️ Unaudited |
| StethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227951 | `0xaea78e6d52a55daa7eebeb25068637659e02cee7` | ⚠️ Unaudited |
| sTokeExtend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1f006c98b7389001eb427b1f593936b5c50673` | ⚠️ Unaudited |
| StructuredLinkedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: ethereum `0xe40299a42857e38bf4ce9b09e0e84616ebb6eb7e`; base `0xdd3aba8e6debe6da45719b773e77c376e7fc0865`; plasma `0x22adaad6ba6927789f9bbb34fd23aa577e820812`; arbitrum `0x5c72bdd017578db64333347c1d0c1e53c3c4845c`; linea `0x0736339bfcd152be60b504b19298a5d33b57401a` | ⚠️ Unaudited |
| SubSaturateMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe51fc5f8e61bab7559208969db34eaece8a08456` | ⚠️ Unaudited |
| SushiswapControllerV1 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2647952208c1f22d8045e1b55d361abcec3bf5` | ⚠️ Unaudited |
| SushiswapControllerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e2d2de799c8e58efa7f42086197b0bae87b747` | ⚠️ Unaudited |
| SwapperAdapter | adapter | project_anchor | own_integration_wrapper | 0 | plasma | n/a | 4 deployments: sonic `0x833adb5f597ef5f257914ff9f7f227812bd3d4e3`; plasma `0x22babd3e0db07b69bb265e58c52d6a131234c56f`; arbitrum `0xac2e82aa6270c6c8af9398b3522d574441cad295`; linea `0xdf0797c98a704f9c98ae83797d3ad2024da075ff` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | base | unit-228206 | `0x23783e62282ca68fd5c3fb45fc7ad01f21b85666` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: sonic `0x9b7d6e44213774d3f47c64843438be3bc94a3b10`; linea `0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-228192 | `0xf0e746d59032c573b91d39666eb32137917956d1` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | project_anchor | own_supporting | 0 | plasma | unit-228301 | `0xb4da8d0deb675dd6619ce64d265dfec369fbcbe6` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-228001 | `0x096f44f9fbbe6116de5db5954de776fb8733e59a` | ⚠️ Unaudited |
| SwapRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x955b5adcdbba6870feca78338137191f774679ca`; sonic `0x7850cfa1e1679ef6ae5d4747f524589c52d3f1b9`; sonic `0xce96e271acc11e95fbcde8dfd012aaeec066fc71`; base `0x77e11db9a8df4e8e3d9ebb1d4987397cf86e48dc`; arbitrum `0x0ed955673c18d7bffa4f1e5c84b66577dbcde632`; arbitrum `0x11d14dde67de0fbb8ea6695450e773758c6f55e7`; arbitrum `0x4dd4920d0ceeaa2671467bca5d546dadb7f6cd37`; arbitrum `0x5e4cb1857afa5c6da92dadd9ad7f88e900599da6` | ⚠️ Unaudited |
| SwapXClassicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09cf827dd2a80281d5e1bbd210df526f4338eeb9` | ⚠️ Unaudited |
| SwapXConcentratedSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb4ed0b7fea9a1a03b4a9ef0c6b4b1738205d3960` | ⚠️ Unaudited |
| SwethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227901 | `0x60e98e2dac20faab84781076164290cc31ce3c9e` | ⚠️ Unaudited |
| SwethLSTCalculator | token | project_anchor | own_supporting | 0 | ethereum | unit-227918 | `0x7cbbb3db2ff81b1221d50c8f9b9072348dac7408` | ⚠️ Unaudited |
| SystemRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1e4cb0bd70860ac5b58acbe950878419483acb29`; sonic `0x734f854c33a149ff7efe120a921c9b39b397d5b1` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1a912eb51d3cf8364ebaee5a982ca37f25ad8848`; arbitrum `0x7009150359eae17bc2610aeb22bc14db22c86a2f`; arbitrum `0x7af0c2bc08d7c1cfd8c9d829f2b752d088639b7c` | ⚠️ Unaudited |
| SystemRegistryL2 | unknown | project_anchor | own_supporting | 0 | base | unit-228202 | `0x18dc926095a7a007c01ef836683fdef4c4371b4e` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228104 | `0xbfd8e6c9bf2cd5466f5651746f8e946a6c7b4220` | ⚠️ Unaudited |
| SystemRegistryL2 | registry | project_anchor | own_supporting | 0 | linea | unit-228153 | `0x25f26ec2e764c63f8d191dfe7f88c6646ca9f980` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227841 | `0x027a3359b803885261b140415873845f72238833` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xe57a2ec5ef4cc7f6576bb1ed5ec3759878f39b20`; sonic `0x4024de7ea2d902d758fbdc016f02067648a2f1a2`; sonic `0x479b7047c564b0dd7f75995da2b46e68fa0072af`; sonic `0xb960ebc3338e34aec6ed09139eb484240aace4d2`; linea `0xa287f05761ca1af57df6ae3142eefb04b8493e46` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | plasma | unit-228308 | `0xf8cda9d896e06db0a682838ca8ac5fff1e699834` | ⚠️ Unaudited |
| SystemSecurityL1 | unknown | project_anchor | own_supporting | 0 | linea | unit-228166 | `0x795abe7190eb06dde22c5ff1c99fa96f1987f494` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | project_anchor | own_supporting | 0 | base | unit-228227 | `0x8c58aff94d7fcb0e8dac43fc3713fcddac8b4006` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: base `0xb246f6a6f8f3a700503d65430bf133b02e6192de`; arbitrum `0x062a72ebb3f4a6c14fa18b2dcf34a8ee90948127`; arbitrum `0x63051c599ea89b0acd445ae7895f160eea05e6a1`; arbitrum `0x9b17efc3c3fb2fb1252974e122b36873b0e08a96`; arbitrum `0xa19d96767accddc119f3a9dbf5384a24e144a44c` | ⚠️ Unaudited |
| SystemSecurityL2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228129 | `0xe7eeb14de91887a4524d8416203e8aee0796cf99` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8` | ⚠️ Unaudited |
| TimeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b8610c038a6c4f37bd757135d4c29ae8917` | ⚠️ Unaudited |
| Toke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e9d63788249371f1dfc918a52f8d799f4a38c94` | ⚠️ Unaudited |
| TokeMigrationPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa760e26aa76747020171fcf8bda108dfde8eb930`; ethereum `0xdb707406aefd74c739311e013f7ee0a0f0d1e86e` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d520c82cfa8146afe500e6ddd8b39c1d7bd8326`; ethereum `0xffec41c97e070ab5ebeb6e24258b38f69eed5020` | ⚠️ Unaudited |
| TokenMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279c803e118609591e13e780269cd7f77dea0a72` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b79e11984514ece5b2db561f49c0466cc7659ea` | ⚠️ Unaudited |
| TokeVotePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc727defdb67974a63832d47ed08dd65cea6559e1` | ⚠️ Unaudited |
| TopWithdrawMonitor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7273138186426119a809ede5d6e00169c997def9` | ⚠️ Unaudited |
| TracerDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x515f2815c950c8385c1c3c30b63adf3207aa259a` | ⚠️ Unaudited |
| TracerMultisigDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa84918f3280d488eb3369cb713ec53ce386b6cba` | ⚠️ Unaudited |
| TransferController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d98a2792e78e8975eae54abd7e845f3646d145e` | ⚠️ Unaudited |
| TransientStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: plasma `0x596bec113eb0a63660a662519fc2f715bc821254`; arbitrum `0xc54851ba7a5e47ec092a798a75093a0677a30833`; arbitrum `0xedcce73a8d002dba0a57ae4bd87a3aca84de9d51` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38c279761864a2329b8298b730ba5e31bf4736c1`; ethereum `0x66ded32d3cb6bab81bdcf0d82158fce8dbd80176` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3bc59a43d82c1acf3a597652eadd3a02082d3671`; ethereum `0xc8e257930d4f0a455a09bf8d189ed588d344da8a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x50b82e9b1811125b4c4fc463616580d60b80feea`; ethereum `0x93b34b6a6f1ddbccb60244e3efdce6b8a83d25f8`; ethereum `0xd54d2bc6ffd2981a05daf99eef2db0f6f7695bd1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x378ba0c8b4b04b4409103711846e46e63b3fbaf8`; ethereum `0x7d4a5e0fe8f19b07f2ebae3b59d4e6133441fc96`; base `0x0f748573adfb38c8649f15b82de634e733ec6053`; base `0x2770784de40b9588fe16e4c514820f6bf8901ebf`; base `0x53515852e33cf5c4492f5c87c79bab298fe46ff0`; base `0x9ecdc052ea06e6cd760e0bc89f631957c6fff6c4`; base `0xad68bdc4ec0f18f41ecbcedb9db4069a26d3db34`; arbitrum `0x01890ea9326d6c2d5941a51473d12f8179744be4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458` | ⚠️ Unaudited |
| UniProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1dceb477e6216ae03252c359d48580822600c161`; ethereum `0x2ac79bf38a4018b926b6f77942e0e73bd16706db`; ethereum `0x2c51146cde78374f782287f1e81954937901a111`; ethereum `0x785454c474286fd9f6d76c0cfdc94c52557448b3`; ethereum `0x7ab903ff66d89a703f82a4aab98a6cac110ce316`; ethereum `0xe25811efb4aca787e42203cfe7bb7d9b46ce869f` | ⚠️ Unaudited |
| UniswapController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e8eaee5d722bbda3d3c4ca85e110f6835cce57` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5fa464cefe8901d66c09b85d5fcdc55b3738c688`; ethereum `0xd4e7a6e2d03e4e48dfc27dd3f46df1c176647e38` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227848 | `0x106a60958c8637c9dc850757d1ed2ac11c73963d` | ⚠️ Unaudited |
| UniV3Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x31576c0d5292187038cd59ea4f1775fd44ee4cf9`; sonic `0x5520f61ffa62e45f44370b118927399a6ac4acf8`; base `0xec306b2e936fd2afd60b6186f24b178ba230ced9`; plasma `0x90535fe3113a3f6e07ea0f523a64feeb0655dcd1`; arbitrum `0xfe10f2d645cb2b1100de6d1b872b67af1d1dbffb` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | base | unit-228200 | `0x0915f530ef9a52aabae9ac22dc2ecf5265da6e71` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228005 | `0x0ca3d0f3bf808b4720d8ad0e9c1e9fb13534bb42` | ⚠️ Unaudited |
| UniV3Swap | unknown | project_anchor | third_party_dependency | 0 | linea | unit-228148 | 2 deployments: linea `0x0093fff32ee2d0469cb00badb9f8d47efbb144c6`; linea `0xae315b4397e2e8fe932a933e4e3c2b97ca66bcc9` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad1ccb0409424a02d7673aa1e568f695cbd4eb7a` | ⚠️ Unaudited |
| UniV3SwapBase | unknown | project_anchor | own_supporting | 0 | base | unit-228280 | `0xe4fef293650442991c695a055f54d2a54868ca11` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x85974429677c2a701af470b82f3118e74307826e` | ⚠️ Unaudited |
| UpgradeableAutopoolFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-228105 | `0xc08f3906e1291f4a470528aae9f89c14dfa917a7` | ⚠️ Unaudited |
| UpgradeableAutopoolFactory | registry | project_anchor | own_supporting | 0 | linea | unit-228149 | `0x01890ea9326d6c2d5941a51473d12f8179744be4` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x886ce997aa9ee4f8c2282e182ab72a705762399d`; ethereum `0x8f5930936e8e7457108768f1754840bda795da47` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ⚠️ Unaudited |
| Visor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x00ae28c731e1fb152907a2e79d033bd638e17b0d`; ethereum `0x08fb62c84909da3aa5f59e01763e5fdc62de76e9`; ethereum `0x17cc4e5267e1482df05e23888f5b02d05acd2f79`; ethereum `0x8398a38c00f168af0575ce4aaa3d52be920e38f2`; ethereum `0x8daed2da38f4a4eb0c46f2e0e6811f63b7c7752c`; ethereum `0xe2696f3dda0c4bb8b53da3951d6acb005094502d`; ethereum `0xf62dff6d13b8ac6f7707335b4d936a2ca5e16d04` | ⚠️ Unaudited |
| VisorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae03233307865623aaef76da9ade669b86e6f20a` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x388cff4079e382fd7c11d699eb183882868d0fb9` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1`; linea `0xf70dc8cf16ee9a68249f35c36cd1c1ba9c631ee4` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 7 deployments: linea `0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046`; linea `0x4961f781f6b9c3e795be0e3e550917291afc7679`; linea `0x5f26a63548f583f2c01669388aeeef5f9506fc19`; linea `0x706e4a3ebe40b017ec568d1fecbf20271df157e1`; linea `0xa0b937aa848877b98a2c2d799ec3fc10fed4f116`; linea `0xade917f16f0aaef80f1ff5939635b18b629d56d1`; linea `0xe8e8e833f59d8e1fbd7caabe0e766f16a22f8468` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x56ebcffb07b86b87d1d344e5c483b18d07dd256f`; linea `0x982c01a16dd46670c1be8cead75699815fcaa125` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x942117ec0458a8aa08669e94b52001bd43f889c1` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 86 deployments: ethereum `0x02d341ccb60faaf662bc0554d13778015d1b285c`; ethereum `0x055be5ddb7a925bfef3417fc157f53ca77ca7222`; ethereum `0x06325440d014e39736583c165c2963ba99faf14e`; ethereum `0x08380a4999be1a958e2abba07968d703c7a3027c`; ethereum `0x094d12e5b541784701fd8d65f11fc0598fbc6332`; ethereum `0x0ce6a5ff5217e38315f87032cf90686c96627caa`; ethereum `0x0f9cb53ebe405d49a0bbdbd291a65ff571bc83e1`; ethereum `0x11137b10c210b579405c21a07489e28f3c040ab1`; ethereum `0x11f419adabbff8d595e7d5b223eee3863bb3902c`; ethereum `0x182b723a58739a9c974cfdb385ceadb237453c28`; ethereum `0x194ebd173f6cdace046c53eacce9b953f28411d1`; ethereum `0x1aef73d49dedc4b1778d0706583995958dc862e6`; ethereum `0x1cebdb0856dd985fae9b8fea2262469360b8a3a6`; ethereum `0x1de7f0866e2c4adac7b457c58cc25c8688cda1f2`; ethereum `0x2dded6da1bf5dbdf597c45fcfaa3194e53ecfeaf`; ethereum `0x2fe94ea3d5d4a175184081439753de15aef9d614`; ethereum `0x3669c421b77340b2979d1a00a792cc2ee0fce737`; ethereum `0x3a664ab939fd8482048609f652f9a0b0677337b9`; ethereum `0x3b7020743bc2a4ca9eaf9d0722d42e20d6935855`; ethereum `0x3c0ffff15ea30c35d7a85b85c0782d6c94e1d238`; ethereum `0x3c8caee4e09296800f8d29a68fa3837e2dae4940`; ethereum `0x3e01dd8a5e1fb3481f0f589056b428fc308af0fb`; ethereum `0x410e3e86ef427e30b9235497143881f717d93c2a`; ethereum `0x42d7025938bec20b69cbae5a77421082407f053a`; ethereum `0x462253b8f74b72304c145db0e4eebd326b22ca39`; ethereum `0x4bfb2fa13097e5312b19585042fdbf3562dc8676`; ethereum `0x4f3e8f405cf5afc05d68142f3783bdfe13811522`; ethereum `0x4fd86ce7ecea88f7e0aa78dc12625996fb3a04bc`; ethereum `0x5282a4ef67d9c33135340fb3289cc1711c13638c`; ethereum `0x53a901d48795c58f485cbb38df08fa96a24669d5`; ethereum `0x571ff5b7b346f706aa48d696a9a4a288e9bb4091`; ethereum `0x58a3c68e2d3aaf316239c003779f71acb870ee47`; ethereum `0x5b5cfe992adac0c9d48e05854b2d91c73a003858`; ethereum `0x6070fbd4e608ee5391189e7205d70cc4a274c017`; ethereum `0x61e10659fe3aa93d036d099405224e4ac24996d0`; ethereum `0x64448b78561690b70e17cbe8029a3e5c1bb7136e`; ethereum `0x6955a55416a06839309018a8b0cb72c4ddc11f15`; ethereum `0x6d10ed2cf043e6fcf51a0e7b4c2af3fa06695707`; ethereum `0x6d65b498cb23deaba52db31c93da9bffb340fb8f`; ethereum `0x7e1444ba99dcdffe8fbdb42c02f0005d14f13be1`; ethereum `0x7eb40e450b9655f4b3cc4259bcc731c63ff55ae6`; ethereum `0x8038c01a0390a8c547446a0b2c18fc9aefecc10c`; ethereum `0x803a2b40c5a9bb2b86dd630b274fa2a9202874c2`; ethereum `0x824f13f1a2f29cfeea81154b46c0fc820677a637`; ethereum `0x8474ddbe98f5aa3179b3b3f5942d724afcdec9f6`; ethereum `0x890f4e345b1daed0367a877a1612f86a1f86985f`; ethereum `0x8925d9d9b4569d737a48499def3f67baa5a144b9`; ethereum `0x90e00ace148ca3b23ac1bc8c240c2a7dd9c2d7f5`; ethereum `0x94e131324b6054c0d789b190b2dac504e4361b53`; ethereum `0x9582c4adacb3bce56fea3e590f05c3ca2fb9c477`; ethereum `0x97e2768e8e73511ca874545dc5ff8067eb19b787`; ethereum `0xa3d87fffce63b53e0d54faa1cc983b7eb0b74a9c`; ethereum `0xa464e6dcda8ac41e03616f95f4bc98a13b8922dc`; ethereum `0xa96a65c051bf88b4095ee1f2451c2a9d43f53ae2`; ethereum `0xaa17a236f2badc98ddc0cf999abb47d47fc0a6cf`; ethereum `0xaa82ca713d94bba7a89ceab55314f9effeddc78c`; ethereum `0xb0a0716841f2fc03fba72a891b8bb13584f52f2d`; ethereum `0xb9fc157394af804a3578134a6585c0dc9cc990d4`; ethereum `0xbe175115bf33e12348ff77ccfee4726866a0fbd5`; ethereum `0xc2b1df84112619d190193e48148000e3990bf627`; ethereum `0xc45b2eee6e09ca176ca3bb5f7eee7c47bf93c756`; ethereum `0xc5424b857f758e906013f3555dad202e4bdb4567`; ethereum `0xc5cfada84e902ad92dd40194f0883ad49639b023`; ethereum `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0`; ethereum `0xcee60cfa923170e4f8204ae08b4fa6a3f5656f3a`; ethereum `0xd30dd0b919cb4012b3add78f6dcb6eb7ef225ac8`; ethereum `0xd5bcf53e2c81e1991570f33fa881c49eea570c8d`; ethereum `0xd662908ada2ea1916b3318327a97eb18ad588b5d`; ethereum `0xd7d147c6bb90a718c3de8c0568f9b560c79fa416`; ethereum `0xd81da8d904b52208541bade1bd6595d8a251f8dd`; ethereum `0xd8b712d29381748db89c36bca0138d7c75866ddf`; ethereum `0xdc24316b9ae028f1497c275eb9192a3ea0f67022`; ethereum `0xde5331ac4b3630f94853ff322b66407e0d6331e8`; ethereum `0xdebf20617708857ebe4f679508e7b7863a8a8eee`; ethereum `0xdefd8fdd20e0f34115c7018ccfb655796f6b2168`; ethereum `0xe7a24ef0c5e95ffb0f6684b813a78f2a3ad7d171`; ethereum `0xeb16ae0052ed37f479f7fe63849198df1765a733`; ethereum `0xecb456ea5365865ebab8a2661b0c503410e9b347`; ethereum `0xf178c0b5bb7e7abf4e12a4838c7b7c5ba2c623c0`; ethereum `0xf1f85a74ad6c64315f85af52d3d46bf715236adc`; ethereum `0xf5194c3325202f456c95c1cf0ca36f8475c1949f`; ethereum `0xf9440930043eb3997fc70e1339dbb11f341de7a8`; ethereum `0xf98450b5602fa59cc66e1379dffb6fddc724cfc4`; ethereum `0xfa9a30350048b2bf66865ee20363067c66f67e58`; ethereum `0xfd2a8fa60abd58efe3eee34dd494cd491dc14900`; ethereum `0xfd4d8a17df4c27c1dd245d153ccf4499e806c87d` | ⚠️ Unaudited |
| WethController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb1b58dbe245b89c8494b8cff42b8ddbadc0a23` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: ethereum `0x865a21dc91ed1ce7152e5fa6dc90356b82a5bb15`; base `0x7bce7f72fc2d43177d1eda74377d7f231a1d9d4d`; plasma `0x6da532491fc48d32c68b70adc083381cf575acda`; arbitrum `0xc5827cc1cdac2360ffcc4c7a5ec1f56930c678a9`; linea `0x02a50caf707ed8e99545f60b82e0c1ce1ee9352c` | ⚠️ Unaudited |
| WrapZeroCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x148cc2553c7f3d7db1825ff893f8f433a871b298`; ethereum `0x35d3058129eeca151c0b58ac82b74bfbb0ad4578`; ethereum `0x6daa9dc5fb3cbcf44c7cb2967a5761a29a57e19d`; ethereum `0x7a48180fcc3aaf0ca1465e45ba6160e628944d87`; ethereum `0x9cd46778ba63a87fd28b10e3e07a38333f430dfe`; ethereum `0xbc2d91bbb242fdba4e5b2f6221ff0364870c2899`; ethereum `0xda5bdd86dc9163830954cdcb1331429ea88095d3`; ethereum `0xf5bb0a50936f871a43f4fbe3769f586835323157`; ethereum `0xfd4026da446abb783290d880656a517f711a4f2b` | ⚠️ Unaudited |
| WstETHEthOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227867 | `0x31fec5a6c6bbf907144e6f81f60292ba7a5af883` | ⚠️ Unaudited |
| xGamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26805021988f1a45dc708b5fb75fc75f21747d8c` | ⚠️ Unaudited |
| XRex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x58d034c3c22851e9dc8fc2f07055659cf9146997`; linea `0xc93b315971a4f260875103f5da84cb1e30f366cc` | ⚠️ Unaudited |
| ZeroCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x3818d36918df45373200400e4c219478f3736d28`; ethereum `0x88761cc849461d013d4d137518d7ddd2246e6b4e`; sonic `0xf0be36db2545a5c64dc7574ac08abd774a07ed33`; base `0x293f4077491db2405a5f9785a5129bdba2059144`; base `0x52282f239427940e79d1e32acb9dd0624d2738e2`; base `0x74b6ccf5b847cdd6bfd36fe18d0bbf2bc5c76902`; plasma `0x2be9f310591fe4ca2c4e0b95c615063a89beec61`; plasma `0xf58d7bbd94e3b8bee96b735bafd8a4a92c3da687`; arbitrum `0x254d871685cac3b4a3b50f20e256fb4a9ae6c563`; arbitrum `0xaabc170d94bc4a6476cbd712c3f3c1bc7e6197f5`; linea `0x94f20c854dd218ec89a0c5c922959d0e57af56fe` | ⚠️ Unaudited |
| ZeroExSwapper | adapter | project_anchor | own_supporting | 0 | linea | unit-228165 | `0x69c6fbba613dcf20cfa42aec902572d3fcc0440e` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227906 | `0x655fa98ea9bbcc6a2eb3f3c01f26929fb3b8aa28` | ⚠️ Unaudited |
| ZeroOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228197 | `0x01554657fa8c37161cad0fdc090e6a26aea1d14d` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 5 deployments: sonic `0x7f61fdb7d753265d92986b4cdc667f1282f5bc63`; sonic `0xaf4c7648443fdd8f7b2ad5f190a6dac51bd5dc40`; sonic `0xd2926f42da8fad44ca060b383aca35c5c6d0c69e`; plasma `0x6b7610d5f0fe4fda13c2fc85d523f122e93d5d48`; arbitrum `0xc14caf5329b98bc961108df404da092c666133d3` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-228035 | `0x42eccabc940a81bf504b574b84f80a6df5d23713` | ⚠️ Unaudited |
| ZeroOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-228188 | `0xd7c964fe7dae257a777b97223ed3fb263bb24841` | ⚠️ Unaudited |
| ZkAddressRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37076f886de8054d12a12db6253e871f6d3d9eb2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3`; linea `0xd766d9da469c4a7d325b66ffcf33139650c4a200` | ⚠️ Unaudited (bytecode match) |
| UpgradeableAutopoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: ethereum `0x2567c995ac854b0275d8e33e8178dea96405e59f`; ethereum `0x2b2ca9b783a04eba9c220898a6aeed4df81ceb72`; ethereum `0x866cf49bb8c266ce9a22be48688b71792311c4ce`; ethereum `0x90f74abbe36d28935690e10e7bdfa8514495cd35`; sonic `0x00d9cad65287d22c60d9c1957e844b06c4f489af`; sonic `0x8657744c1dd56ca1c8e1e2d92525302466c55b70`; sonic `0x98bbb7196dcf828289ce5ca9e529a46c196b38e8`; sonic `0xe762664d7653bf85020e0d4888e78a3113e5c9e8`; base `0x02fe0816e322e0bf0baa2bbbe28794d82ae44d89`; base `0xc1e7013b7588a1789deda943d348561a13a34f79`; base `0xd0446aba126e23572e9520082609e38ab51bd4e4`; base `0xdbb0939807bcab3b3c3e717eee02200ab7c2dc21`; base `0xdd08e47ce3ace572283a37e2165127442cb32b9e`; base `0xdf6dc6158121c4b4d7f44b64670ea468c0699cd8`; arbitrum `0x9f76d5f0f68f0e9fa16ce6c8098d606e1508d7fb` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (537)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24600c2a03147d4e1d9b04d193151676f577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227844 | `0x084e65a576949a431f7e8e4c9154d1ddd7f25a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882ab38c4ff4a5a9fe175bc5147018b8ee7da64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093edae2f47da37db7a1cc443d5552d1408d5337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2290c3e97db5823eb11e60de64a0a98fdd2451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d07e5d0c6657a59153359d6552c4664b6634f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea2207e31dc03701b12e4b322df1bbb404b8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f75c5f723681a6897dc2fb6ffa672a4929028a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085fa0770a88a132e3b8aae21c84755d70081ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f193d5328d967076c5ed80be9ed5a79224ddab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440ecdfc61386a64116e58326bc7d6074e80815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14458f77c6ebdc5b59663fcc8defa076a9c138a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a2a96608b48ebfd80c31da8a9be340a354cd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16495612e7b35bbc8c672cd76de83bcc81774552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fff75a55edc9686f2a3763ed1addf10cf054c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170d177f083e377d9a3fe222deef7bd5486853f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e8704f80875240bd1877f69a3ccc33014ff07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18dc926095a7a007c01ef836683fdef4c4371b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a912eb51d3cf8364ebaee5a982ca37f25ad8848` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227854 | `0x1abd0403591be494771115d74ed9e120530f356e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5868847e7594d9fd1491dafc4fba4866ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d837a45bb5cc1e170c690aefee4121323a889b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dde3505fa0dd8ef2253dbbc1aea0b4355c38d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df188958a8674b5177f77667b8d173c3cdd9e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227855 | `0x1ea622fa030e4a78f4cc2f305dd3c08da3f08573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f18188cf19cc28172e54dc6f580229b2e255015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc83f75499b7620d53757f0b01e2ae626aae530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20915f71474c127e5c3cdc41c75cb21d4e0605f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20cb52832f35c61ccdbe5c336e405fe979de9430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217c089db99274f142bbdb48e409180b045e24ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240eba32583bb925b2cb3acfee189f559219bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244bafbae9c47c795d3ab76ee77c5ba62e92285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a76073ab9131b25693f3b75dd1ce996fd3116c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2650d4e7cb4402c6b999eed1aa920a939072e28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294c8cebce8c6b065d23b97133ce10fded601aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb8d5a94efec5cc2f53cfbce7e0e88754217f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d363dcc2c19944698e5203bfb76c22cccd55111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e61da9d555625200c9eae7f2de9a269ca93f9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307f4344b1e425f6210620bf15ab242e88c6639f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c271e2758fa59671106cc523708ddeaa188841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d7261e6924600abb668ff82da86f6532304c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369d81cf263abc7ee567d8836a39234141d4da07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d9386ad4b8636459c365295ddc7e70e33889bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3860358a3a8eead5e1e47c8407fdaa571972a673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a67c0f839e5f8939b12f9181a1924e4e4375ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abc0483046d7ad4957c8ada6e0787824a7c21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab7207d4e27b5de4a15d540b7297281b45ed2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c2982ca260e870eee70c423818010dfef212659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d94b714382f61107a71690463b921e1db6b6735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb00cb5c927a71feddec48db1a231901568a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f16dfcfd23c1aa4472c80b2d2688e5c8222d71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f37712726c9e509c5479f13e17cb1033411d864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227879 | `0x40219bbda953ca811d2d0168dc806a96b84791d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227880 | `0x408b6a3e2daf288864968454aae786a2a042df36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40cf1c8fd53c7b6473e53a3c71c543d0713394f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a37655a7afb85787bd60a9fa750225567da186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d65ce96342a3d9c3d878856e283e839d29df42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445918e531aff4ef2ed31ec497d40ec7eb125582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b95da0a7e912cbf63d2eea6285ce1b14dc84aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469561357211a6ce4707dc48174d6c617ccb0402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480a0af04186080bac985e595d66ea3bf351eb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227883 | `0x4a3688fa864d42fabaea9e364266e81b50730e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bdc9b55bdc73b717d83dd436bf9ee3f2b89ac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c56dbcc056655b8813539af9c819ae128c07e17` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227886 | `0x4c70ef1deffc14e8c0a3d5135ec8ebafefcc1c58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227887 | `0x4d37d799a44515c25e43ca6ec9e4ff7a0a2a34d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9a788bc0801112fb8ad8faac5c4a00d02b2ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7cf3569529660bf23926060efb25866d67314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f51264b07db8b2910e892eeef22460de23268a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dc3537617cfa20f1b401de98d0efeb412cf9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154e7698b235e6003bfa025839d192230e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5425724e4ce3b469c61876b59be43a210a572997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5488fb4a4bdad44a2e35614e8918fd22c2f4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a8c6c4b3256d24652dae3fc1511c871593de9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c80f1c4718e3e6df71b83bb9cb389ec41f07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5624b48ec2848bd642230b46405e1f65938c5fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57823e61f1f6d0af24e80e5232901cf9d69eef4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58edd11d2e7d07427043888c34a7c077dbdaa754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599ea9f2c71971fda372d54dee338e535f49623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b3d5ddf93a3782f7b7a4be1214722fc6fecd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e132164ec2e48b0714eb6abdb10225df44da0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c99be03da8779a45e06daa46a748e21080aeb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f7acb8ec0231c00220d11c74dc2b23187103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f13ab635293193c73903e96abba3a0de79bc520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc6b5187fa4756a060f719ee518262e5562478f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025040aa316692fbf80909d0fc9cf7b997a2795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227899 | `0x60339056ec88996e41757e05a798310e46972cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227903 | `0x620ffca1ef197f1cd9374bd31992b65a18e89bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6527a927bdb147d15fde4326381843f55fbfe986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f0a098ef408ee7c3a87cdec970b970d7227711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663ef4455a07243d9029ba0fc48297ae181aeb38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66436c64da9d9a61bcc3f652490d20d7cf19765d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e323284c10dcec5a4810beba7eb3b992476320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f79536d304a556603ff55d4dac017ddf50af50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5b5e025f2febf11646050e28240279215c0da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b44d94ecdfaf0cb00def55212e226603bb68793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6a54a124e7b9859014425b8c0142ee0b19febf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c86adb5696d2632973109a337a50ef7bdc48ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbe1468414633777ccff98998a00f87e03f11f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8093ebb80cd9f7395681ad8de90ca93b08d9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1ceae0fe7205d96151f995e65a6c30f028649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720310d711455f032fcbb3feadf858534fb257c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7228d63ff5fb0e66cee650b113c2187212776c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x750e9887425f9f325504fe69b7173a4cacd55351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767789b6cbb04c91fa5e241c2b00bf640d04b9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c8cef5b18994a85bc2be1991e5b9c716626767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78a538cf4c73dba3794c0385d28758fed517cccf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227916 | `0x79eb84b5e30ef2481c8f00fd0aa7aad6ac0aa54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227917 | `0x7c19e64904aba791dd653ecf7f355d65d7665a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa0320180b0d6e12b3ab47aa0fbb3da9e3e926c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8545d32ac1d423016197866e884aa0e8d953eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878f2059435a19c79c20318ee57657bf4543b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fab8ce5461175342b9453a4de4a8be90380f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e9cb153df9b8c46bd0c99081fc5e6c67149863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cccdb904b79f22e1d7f2bfa0638fb6f8b3e6a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7405d5738468863a516b3cb6c8984845983d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8273f271b134f514b8a33f87b4de803e44d723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900909c07c2761d84c5d863ff5905102916df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90218033ce26b3d41c45795e903c7989817f0dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9065c0e33bc8fb31a21874f399985e39bc187d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908fcbf4cc0cb550cdaf668c94bf75321da54536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e7efdca79de10f1713c59bc3ae9b076e753490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914cb62c14777068956090adb494ab4279424499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92872ba7775aa1d7bcf48ef4486468abf4367057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94635b2034ccec3293b81d411cd77c36c353f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d97dee8fa8b97576375c68d856239ff7681086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f13ce54e7b1e230a82bc8659b595f866276df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96665d63c1b53f8335e3c9287ee255f306c93c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966aa4de332da1fece5a90e025b08a43919d9705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96bac90bee7f416d33601d1dc45efb19aca8ca62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9732d3ee0f185d7c2d610e30dc5de28ef68ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983ca3b5d2a07700354a2127a874f37ea1962037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98801bca96c0a65f6c95cb2010dcb8bd97b33082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ddbb76544c8a46dd143bb538beb649d94130cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227933 | `0x9abe58bc98ae95296434ab8f57915c1068354404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6c44168f7a29a44949429ca55f411acd8391d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be0193abd3f9c1b70d496b48f1f9cd01f558103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a52c1619c5134c223f780237c12fd9001b75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1c425ae40908a071f003ae604d7e421a289c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f33628e6389b3a918dbd1aa5e9fe0f4a0c62ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13d7886abc466da907e0c9345d5d271b8852647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2fcda2dd82b7ab6b0c6cf116b6546e57499fad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3cce9ae6571c9075c980afa2749451793b947bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6623dd479c95010f05bad523609edf1928d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e97d76d21ae347b13c343508826496b07202e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227940 | `0xa7569a44f348d3d70d8ad5889e50f78e33d80d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869b9171c8f912c592abc58005922718d0d49b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8fa2460927332ed475364c602d916fbc095b1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b386dcd598acf3ce53460631feefbba730cbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad66110a1ff96d8be8c00c85ad024bbda6f60c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabadfefba2315dc4da249ccbe6b71692721e1907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb326cd92b0e48fa6dfc54d69cd1750a1007a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6714612e0ceffcba83e6e00c8360494493b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacab7f05a612690b9e05ca3bfc1ff2e99169a39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaedc80cd7134f5dbf3b587590fdb19524fb5cc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf02be5968d8fe9536e24e4c7e888c59a58bc077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebf227188e44ac268565c73e0fcd82d4bfb1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d07e2f94155467cb6fb177318e23e94919b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4277e256f9c22e22acd8fb1c65e190daa331eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb45443d525149410ee69400c0956a7e89b82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb524622901b3f7b5dea6501e9830700c847c7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70a04ddf77610c4dad1cacc908eff91fa764a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b885694d46897a50ab83911849604eafd69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cb99cc08a83ab6823c9dd0bf4830a7e01e6375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80dde125af28f3b124d6fa1ff11fad5967940ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81179875cb152f50184979a0de999026fe556e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8315af919729c823b2d996b1a6dde381e7444f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b55db94eb5581d7716235f5f55156f73878211` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227958 | `0xba1462f43c6f60ebd1c62735c94e428ad073e01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9997a195a031e4d7d29c14ea3fc53cf94f4b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb57c9d35e8d41babcbca67416ee6622274caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9b99d4dc860ac6fb97e56102815a8f973967c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd8e6c9bf2cd5466f5651746f8e946a6c7b4220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dbac8eb17f3684bf87847cd9525dfbcd9a4033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df2d82361f3cd885bc9e29de3427cea86b37e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eb88b3ee65b7bc8c0aa6bf399e4bd89a4d0331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ffc76af1b0e60a4b79f7c30ad8cdeb0cabf0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc423aefe189394aed22f954eba943f303b42d1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4afee724025a33c041b39f374014dcbb8c52459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e343b89fb261f42432d9078dde9798e67c33ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227960 | `0xc4eb861e7b66f593482a3d7e8adc314f6eeda30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc619ff91e2f00279f9046dbe10806de1cd4ba99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc63b7780733e68ea76fb4ef42f7beba19e01bd87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687e65456ff664b95753e3ee02a5e5d4fdbe886` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227961 | `0xc7c77b3a2c2641c6ee6c52bbd72ecfc86b53ba38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc805d4126c3ac9d0ad7bb94c3d5cd72e3cbcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dcc12f457eecb38d070815731c63639ae87aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91bb4b0696e3b48c0c501b4ce8e7244fc363a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9853117981374667e0eb3434ad22008133c6c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9facfa2fc50c9a30c77a2ad14e2db107d591918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa487d113ad1c34ce128c4f3a2a437614c6a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1f6f6bf3bcc01cdb6ba3ab22f5849333efe6ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227963 | `0xcb29d488efcc308c07c3168c63d5e7aede4bc3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75a1655c84589652d0f3a4605e5dda8431f0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd7fd48c7a2a095ce053d5998db12ca0ea65264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc519ffb126de2c7f941851afda78a73f121a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd7167b3a16f6177e34e2b9ae0d7c3eeee4a4b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb71cbf4f6b8db8d13d1be655988cbc523bc8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde9a4e885b87a893b8817d136fd2f404b54294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1e6926b2167f83ec3300bed04a672abd93e646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd123c42cfebe2fadaa4557dd06bcadb823785967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13c9a29ef6c5adc7b43bbd5854b07bb9b099862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227965 | `0xd1e668ea38c68740eec6ebad453a082211c98709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223f6a87c931baa5896e47e0d018c55b535bd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b62aef2102c09f475b23dda6b61072e848cf28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227966 | `0xd3bf4ac5d54f262f977be28c761470ea0e612081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd404bef05e9e256765440a1b9a6b56750c4cedec` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-227968 | `0xd460a37880c35aacf4f01ea6748f1195899ad160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227969 | `0xd48a39a087fc4dd152867c5059c2667ec5fa0e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd710df47b264f6e08325412d929f7354b8221f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74034c6109a23b6c7657144cacbbbb82bdcb00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7477321a84f3d39b8d742580f3740016658135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd794f13b9a494118cc83ec8880d22a44f1a843cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85bd15f77f56b99f7610e8605a4a8ebcc345413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e4bbb06cec6365b1c70e646032a5622085e6b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227972 | `0xd8ef136051014e89e9ea6ae32c3cd224778125e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90d7cda2546419f25803919376692a8d4b483c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f2b927eb692f88689e08e53d729109c84cc5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc65f3514725206dd83a8843aae2ac3d99771c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd8778e4cbf210e7c0ee803a9f8874a87c62b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3c8aa7f53a69c595b7720045000a68cb9cb341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227977 | `0xdfe3fa7027e84f59b266459c567278c79fe86f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02bf848395a538c7c624c2bfe377b039f067a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d2007f6f2a71b90143d6667257d95643183f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec9b5aa7b67135fcc173a96ecc5c4a81cb850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe14833449bdb887975ada05ea09f1c90fd100ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16723a08ae054a8f20bdc0395389569011e78d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ac243f14de48eba4c267e82d97ebc7d260d318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c3218134e7c69f3443bbd96a5851d193224f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25fbb66110a83cc5f3d74dd85a39e070ca3f017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2968dd5557383109998c29c3a5842d73f66ff97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cd7c4739f8b068d1fe32b81a0e67ebc27b36cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227981 | `0xe4433d00cf48bfe0c672d9949f2cd2c008bffc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe45217a77c332ff767112dc89e568c473c5fad2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e8219982e088c4895800ca60891dbc023ee2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53d45abe10ce20427d20c5a1b6360fa5ba0ce0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5d2638b2b8c9ae8ab96eaad2f28eee4b592eeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6191aa754f9a881e0a73f2028edf324242f39e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe621bb24fe3613caaa59c33f0f59eaa026663a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dbd13209338f8b8a4e2d3310da163004835729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92b32d8f55564e0eedbd665ffd810cc918f5627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94c443e2d124cf9d5b5a6f1ce0e29dc464551da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe965db54fe154765460c5289a2b383d34fd6010b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb85dd2374a44f80342acf8010d585bda32b77a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8672dd770d59fad9a811591a5edd40e8f6a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9189c95beb2e7f735e439e858a70b3bb8a6aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecaa8d0a9b2bd5aed3c0964d8349c2aaf8385e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecca5a27b4f8f92a2bffd006f20168a7188c0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee04bd9fca0297ef96d83a77b0c4a713eefbc3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea5ba20b042cce9f1d3f4f796df5a844868916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee2911905e14d3ced80625c3849bf3224cbe213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b0895f986afd7eb7939b65e2883c5e199751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef633d1af20ed99a69b7cf46da5be63da07ed5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9c97e356bc5ff2460e25f40f608101ce15d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1000d3bafdeee84c69ad4dd0168a6ea09866ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba3eef64bbc575c5ddc7454d81afc4800ea689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf248aa4aa0b7fedd183ab08135dd64f992972e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf391a63cddaff93ab52c14497a1ac4121672fa1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227986 | `0xf4b143f94eef97fcb44eea54c7927ce15f96e23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53cc57d1983372c5dc55f0466872265da08e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b2514045f6b003a2a3eeb2b1e3de7f8676979a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227989 | `0xf5c49c69ec7735b7bab85c591ca93c8124825ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf721b9419b2b11a212e9de66ee1ec5d2a19ac710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf780dec6c8f7b4a14858fe3ccd64e4cc1f8f3e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8beb5c479a9b58f581076697bbce83baade90c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227992 | `0xf9779aef9f77e78c857cb4a068c65ccbee25baac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa267599bc504a60806b24656495d89064cbd972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7c660683ff22989413256bd57f569562ce1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb81be4bde317d32ec6934db87e05cfdc5245437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2796c47063d6fcb98006081778c7b45b13a4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf2c2689c130b0686331c9ada0e40ec1a1a58d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe51132b5320bd1a599688ca69697557aa763b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff46ebc4b973e4fbf54cf1e0605cfdfc479086dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff498bbcbf40d0f30f178f553e8fa36153baf30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00b3070a4cc47dcad029f533cef7b71a189e2a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0387a5dd9ab3a06e4fdc750ca6964172fcc17d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x040b85901e33ae58c886ee683c6982ae024dfd2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228199 | `0x08b0617747ad7a839396a909876104e392713e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f36b4ad12611bc79295c1aa52827a4b67865fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fec72dea3b17a86c43ce9a903abb4a180afa684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e2fd1440dbbb7f2680dbc7e34b5a6bb65572fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x244717db5d7e2f8eb4de7ec0adfd2b4a8a1b3b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x249acd06e30467b3c4d98c5625371cb6160a40e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228207 | `0x2a7a163168682f58a5294089b7eb87a65d92b1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f166335eb85492a7cb680436d7f5dff77ed5697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228215 | `0x4efcc03e33470cfef7b2666eff67667f4173918b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a9a8ba84de2027cac00fe4461f93335e9cf3b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bc007ffb8930eeb04dc197ff901d948075e8330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66d377e6bf0ac8a40571b2170fc8a0b3eaec3863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68c58d578a68890f87eba7bb7518d6683d4c5bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e43415b1c3c3ac00042a554dc8314ad1940e3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6faab05d3b85a406c9a6f7516ecb2acfb93d3503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b229e8e435f0d6e96a52b41e44ec09bf2724b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x819dbfefac380e00e6de847869a102532200f8df` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-228226 | `0x859dda370ddb15bd59361cc756496e51b729399b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95a2d848171d6b4548fdfd92c72c181fcdcc34c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228235 | `0x9c6864105aec23388c89600046213a44c384c831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa11c59b2c3b5a5dda82ede3c21dd68bef7fa8bc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228250 | `0xb592c1539ac22edd9784ea4d6a22199c16314498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb59c1a5339e26f0b18b48032e0517e3ad2fe2e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228255 | `0xbd0fe980455e52e4d60c4eacbd6bc19a5cf29f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc285c86b07c8e8b4df4bf425d72c953c8ea2e696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb8c0b5626b467ec4764c3040170b5cf580b6c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2575137161f617289897e59c73b2bf086c97332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbcc120e0b121f4170b504a8509dec4e02ad7a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228283 | `0xeb042dee6f7ff3b45ef0a71686653d168fb02477` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228284 | `0xee5e7575df9db1446f9d601769f448bb4a10f3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf73428231959111f70d3b1825f3cfa685d3305ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe45fdaed66db3bf8d2b690940d70e4b9f296436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0d8ea407fc5569aef5141e68807717a50347668c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228288 | `0x0da0e8f8df8b6541affb071c6e0ff6835154e1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x162f49e66a8e9eab169a9f09eb27120311b4b30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3540f2634c2b4e1f99822e14d09befe346654834` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228289 | `0x45938694d6c66cdf67baa5ab0e312ce2be067ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228291 | `0x4dd0328ac9e4537fab086ed8b52c9dd50a77e097` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228292 | `0x4ec8f8b0f144ce1fa280b84f01df9e353e83ec80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x58f411571fae6cbb348572ff374f0589133773a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228294 | `0x7bc60435aaaddf3d82fb45704d11066530560397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228295 | `0x7bea14e8b5b8693d74a451babecbcd34c6ebe83d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228296 | `0x7de076006de8842b55fa13e1bf8b177bdcffc1f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228298 | `0x8ccd47869e0eea55ba4af520571a9c6ce300347d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228299 | `0x8dbad46d468d57fdd1fcba0452c8cd4d7fae72e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-228300 | `0x9065c0e33bc8fb31a21874f399985e39bc187d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xac93ee7a60649d5b4daa318916fb6d7ea6be4113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe3063e9dcd92da315804118d6bae6364ff8246a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc23378dbfd70a0d6fd6a55b2095ef0ffa8e5106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228009 | `0x127563761083d2ac7794c17d04e17393d8ad9013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228019 | `0x1bb9231f96a5420858d273c3e311f0affc23cdc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2218f90a98b0c070676f249ef44834686daa4285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f465e9fcffc217c5849906216581a657cd60605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aec507f5874e2f6e1c6f43c671b41d10e339c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa86e412109f77c45a3bc1c5870b880492fb86a14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228089 | `0xa9900b2d550c406d1cf58da27228feeef21d447b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf4fc62a40b8a5c3af34bdd865ca31c4d37373e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2edad668740f1aa35e4d8f227fb8e17dca888cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228139 | `0xf63b7f49b4f5dc5d0e7e583cfd79dc64e646320c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09e53af98cc01314b4d2e4211fba00b6d083b9e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c1de6c025548a08b82cb06b049854d704167d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x10e5e048ef63873eafc17121538beb999acab7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2acbdbaa90686eb18ed19d95bb2631f4b019d2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x35e755fac2e275629ff17647dcfad50f6bad5a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x631a30bb2d635f736bbd8125549469bee84637f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7601dfc5c4ccac975e8b72f44f7dc5f8c07497b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x762e6134583f7ca0d0303ef82bda780d6a7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88c9879e18abbd6ec40ee6be215756a442d56756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x971634201e37854ea0c72fc652e9b1dbd4461ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb399391fe9b23690c0f53725bad7f25d0b5f11f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd0dad85f058f2299c3dac8a3440cfd02d51c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228186 | `0xd1a6524fccd465eca7af2340b3d7fd2e3bbd792a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf36208d721d6818baffee5bc9541b3f798f1c721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb8561b4d836225d2c82da00a7d4c753e6c4950d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03190ba0d90ef1532cddd86ef4c02013071872b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x065e4c1653c0efebe1567609a73e62aa0e90112b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x067fa27e64505b7819af9f2f3e990671abccbe18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f831c394a63788b34e0a9a89b09775f46658413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x165d7f86f3fd626d9feb835fddd5ae8e717516f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17658484c4df346fce60a4e64cf0a992bb70a96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c144a510a4d73d0b73b14d10081322541567225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d4c0d2ee7e7adf856ff5274beb8a49dbbdc6aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1eec07ab553709968ed80f4e58fab2b42a3fe457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x206f642ba01692c331786c385cf6e3e39b90809c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25a8f0a1f9b60a0f79762d8d42b04c89e8a4c56c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-227994 | `0x25f603c1a0ce130c7f25321a7116379d3c270c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x261826a45641c28ac84e7ff9bbdec75798663e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x266882e796da0afd36392036f9ec11fa32e36a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b451ef8fa7725d5a41b8c7cc449527eaf016d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b928b1fc820c408f4b8b24e1da6de94f2531a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x301c7ab2729644b2ef9d880b1cbc185c59c85a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32a4e36a4b61037480686bc5d6071d0a71ba0893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34695244057b2d67d5603ae70028cb2007d91e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x357b64f910bab6fc3f4623a3811133dadad21d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3713ad3f1ac1c66ed1539415d48a6e70b6afe057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37767fead3a8fc733eaf93c88ec00739faef879e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38a7f29ab6ce0ff3c3347d39b2eeff17002dcaa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x395cfed005e1500f3a3d67f02317829aa71b2157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b20da500dcaa139ee3eefdfab39dea2602dc3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b7d00adf9cbec4acf3837d82c8387f2b259355f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3dfa9a265b9e40c6e146b4fd151e2ed3b31ca81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f7808c4f6f6cce9a0c6db23e25fde1b83fd2464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4436ae31b0b7d8fe5f07ccde2862fcaaf1696b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4723174de129070cf351bac13e7a4a558a8cbca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ca8aa44cacedb286f46494d238ce88b6c959305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d0836be81fa2f73c21b7650204e4b7f67c2c94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4dc74910caf2b6caf00be62a31deddc298a2c27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50b3643c3db8818cf840ac71bcf43e382deccb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52ea97d679586511fd8851003fd36209fcbd2902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5883b5bd61648bd2c93ae5c533f6bf4fe68058aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62584fc3a02aad9aca3f2929908e92879fd5521a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x684787647f25dbce81da7e410e331ccecbf9d218` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-227995 | `0x69410c9155c863670f81b7ecec60c6706f01a3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6986e62778dd6a1ff439a8873414871204ca3590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7199858abc3edb0630f8b38b55c4bb39591cb933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75cacb990565b8762027cd8c95ad6c508f650697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75cf9869bace3cc80a5f40b46acee544954308d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8097d6bca8698cf2534cfc781160cc3a8a1a8c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8653da16abf452f1db711b51cab27109b1e6083d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8829b060be5e0963f4436842fbfa8ea669b8f91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x891e6ee425366b60a257f69a4d298ad0afa5f428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8c08f8898f36fef47b12c4daf8a871852f46f612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x922e26fcf1a387dc7e3ec10067d551a537fe2c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9306060a85975bde8171a7cc00076d5b54d22510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9720700075fffbcc03453bc49be0afddf107112e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9794b320344f2139789013c7a7b5ab2aa7230d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98576b75469d8dd0305289574639ce9cd2dec1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98ce93db8c977a234a0d849588d4ea8f77b12b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2f62cd57b01f051f744717b9fdad6fc1a9d7711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa3981bf17580adc0aebc3302453feeee5f87523d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa42d770efd1a41b741d0d17f96ab1b120d976498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa493277be4fa5a32588fdc7a24247579dcf2c197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa509a8e1ac69e12fd0bef4bafe60c5963bbf7a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa839a91105a6b2cbb4e34cca36fc66f71f1cff02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad13ace87e1a31b946cd3443e0e9568a5bc8b97b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad5664cb138d5c2a5d7e9b4cec87aff9e59e2b16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-227996 | `0xadee3fd7d10ed834175da327b95755b879194a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae92f445b41aa364dbb4e0b3ea834c19c9d145d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafb384e53f891ba020524e13a7c4de4e0898dcf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb32d9e4b7d53625feace41a90718198092a995b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb348f1736f53fce19158f550dbe6c3a0a4eef1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb57c4ce8b1a88f893c03a5aeed224eb3ba1c5b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb870084f72d9f2cf2ecb2790038cc252c887a2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca8d4e5b6326005d765b37bd18518087811eb2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcae0806fb0799bdfcb6857107badfbdcf59cff8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce41e616b9adea3cdcfaef4d3b24e188ae134a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd04e35191479be52c478825dedb48cc963b91b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5e3fc0e685263d25c54153c3936052d25755d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd15097ccf7a7dfcd9ce697420bc9f6e0d6fcf88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddb4d24ac0ff4a134b3e2c8ff24c220664a5278b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfba019c39ad0af46b5e16fd3744c4c858bd9002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7fd08695a798924195742e9dc48d0ff4fe255bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb84f25d5fa04322b9cb88db69c35f4af8831451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecb789f0d1fe9de0182ba175a9e88cc9e847159a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeec5970a763c0ae3eb2a612721bd675dde2561c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeffceb9cf3c35a73afa4cae5f8bc7ef194bb71a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf52753110c1df1a68565e62b190a5957f9a4a805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9515cba2ee37c14988574c5abfe357e08be584c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9ae96670d9ed96840119578c033027007415606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa0904d34477af25709c9b7552b8b3f7addd8d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc21e52ee6d59b1508530c26c5ec836df9f92d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc98c00b8726afee3cc836f7988fe26614b4c0e0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 943
- Live contracts: 60
- Unknown liveness contracts: 883
- Source-verified contracts: 509
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=8, candidate review=377, contamination review=22, exact address book overlap=4, source verified unclassified=98, unverified unclassified=434

Showing first 200 of 943 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | AutopoolETH<br>`0xf90bb2baa90b457a35c37c5a96de2720ce367281` | project_anchor | core_logic | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate auto own | AerodromeDestinationVault<br>`0xdbd14969b9313e5bfdfed2c7a29e813e6f02c627` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xba5e4322fe1c3c23cb74304fe9537bf54a6b781e` |
| candidate auto own | AutopilotRouter<br>`0xa18b89225491230fdb1883cfbda65e7931606931` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xba5e4322fe1c3c23cb74304fe9537bf54a6b781e` |
| candidate auto own | AutopoolETH<br>`0x2ab4a3a8224726cbaa91d6b04d212979f06efdf9` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xba5e4322fe1c3c23cb74304fe9537bf54a6b781e` |
| candidate auto own | SystemRegistryL2<br>`0x18dc926095a7a007c01ef836683fdef4c4371b4e` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xba5e4322fe1c3c23cb74304fe9537bf54a6b781e` |
| candidate auto own | AutopoolETH<br>`0xd0cf0c4594ed8d2a0d845d493693fde822cc5821` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xb100d9a0d894755bae07f5707908a3e86ccd4529` |
| candidate auto own | AutopoolETH<br>`0x12db19359159e8ab0822506adf15d4d8dbff66c3` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x2a4dc2220f052b761933d53025881d6337a10d27` |
| candidate auto own | AutopoolETH<br>`0xc9db15bf0361a5ae0aca0e3bc8d0ec7fab195e7b` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xfd60f231c20eb5be2bf6b2f5b82fda10bd92b5bf` |
| candidate review | AaveV2Swapper<br>`0x5067e4ebac0f0984d39b02808d2ad84625faace2` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AaveV3StataDestinationVault<br>`0x588354024ecf620337f6d6cd5f0684e9d6940406` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AaveV3Swapper<br>`0x91c008853fdfadc8266d55ec11843dd3d58c95d6` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AaveV3Swapper<br>`0x9d661619493a506e057330572ed43fc0f41f0b44` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AccessController<br>`0x37767cbff88cb623e9404e959560984f7d742df6` | project_anchor | governance | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AuraCalculator<br>`0x594baa7ad9230084261e40adfce95f2ed612898a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopilotRouter<br>`0x37dd409f5e98ab4f151f4259ea0cc13e97e8ae21` | non_address_book | adapter | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopilotRouter<br>`0xc23a37adf8f104d442b438f94c0534514cea893e` | non_address_book | adapter | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopilotRouter<br>`0xc45e939ca8c43822a2a233404ecf420712084c30` | non_address_book | adapter | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETH<br>`0x1c2aa622de8519c4184650ec1e7df709a37c821a` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETH<br>`0x1da0b38df1a446d4ef315c7e06d79f801c691e61` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETH<br>`0xa1f3511ad04fd3608951b6043f47d8a02fb50dc1` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETH<br>`0xb0a44f62bafb6ae524c463dd225712c42c3f428a` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETH<br>`0xfb2ebdedc38a7d19080e44ab1d621bc9afad0695` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETHStrategy<br>`0x1ac1e03ac3b98f1c4361fb1a90b6824eff8e9275` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETHStrategy<br>`0x63139fe3848ac53e5b668e19df1dd4e6f31428c8` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolETHStrategy<br>`0xea7daf04144bbffb8ab4f79f5115130d8aae2bd9` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolFactory<br>`0x7fed74094b7010c6fb3010ed5efc00772fd2ed1f` | project_anchor | registry | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | AutopoolRegistry<br>`0x7e5828a3a6ae75426d739e798140513a2e2964e4` | project_anchor | registry | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BackingRootOracle<br>`0xb122066468b1ce42fabac49d698acc537c87cfbf` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerAuraDestinationVault<br>`0x400aa23eb08c51b93c18f3a8fdd215e4066180f7` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerAuraDestinationVault<br>`0x5f134958eb6e3d13b48b17a364573b8b8055a4d8` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerAuraDestinationVault<br>`0xc066dddb8f9c27f1f452d8ff9b5cdd7fea3efaf5` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerComposableStablePoolCalculator<br>`0xfbd7fa821d57ff7a864002727b3936edb966186b` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerDestinationVault<br>`0xfc09271e3020110f7bb420c34eaddb7b6cd9fb6c` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerGyroscopeDestinationVault<br>`0x6aa9eaabb466b2f869ba6e1b07b1c414980decc6` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3Adapter<br>`0x2b91e3de9f86a3a36fd9e4c4672a92b041eca587` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3Adapter<br>`0x39de7c84c7b2d773a7054a551df93a63c940ab27` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3Adapter<br>`0x9c8d18739f2d4ca2c35b060cafb172e8f782ec0a` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3AuraDestinationVault<br>`0x34d81fc5582fc7d38f26fc322f92955154d3dc7d` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3GaugeDestinationVault<br>`0x4b021f2edd87a601e3010885a9b2a3924b2f212a` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3GaugeDestinationVault<br>`0x68442442cb830fa7cb89ef513553fc80de6727eb` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3GaugeDestinationVault<br>`0x77a5413bda645906a0af550711ab7955967d3350` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3GaugeDestinationVault<br>`0x947bedb53d8c02a8f252ca87652508c19b83135e` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3GaugeDestinationVault<br>`0xb222429887f2589659adc71ac4929d96f6e6aaab` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3StableMathOracle<br>`0x1140cd28e7b8e6b6509761f0bbbfa88abbe8421b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3StableMathOracle<br>`0x792587b191eb0169da6beefa592859b47f0651fe` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BalancerV3StablePoolCalculator<br>`0xe18c81055aabb1f23c79db29c7eac9f7889e4184` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x1d549b0835d7d9ee9de4f5c716bde804323b4a7f` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x2164005a8885cb60824f69c96c0f97a54d4ab9c5` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x2eab6729e2108dc3345ac5fa45df6ec7108bd678` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x38a3e81357b17ba62c0a05141a96dbcdfea3b303` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x5a35121eed3fa09e813768e77f3a58d377696216` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x8652859e41fd0616afb28634665a0c9d17fae79b` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x8821a5c4f808d970de5bb2c31379c67cd67cf6b8` | retained_scope_excluded_inventory | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x8bf1a0ffd135dcfdc1d5110216c874c3de593ef2` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x957243d1cb359a685d90332363a51ba6588f5192` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0x9e29197ad2b9676fadacfdaf86cbd2a7e247a94a` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0xa5947752c5465790f6b5fda8397876c2dc2d6aba` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0xbd9e1c43638590ba64605483c761498eb7dd6db9` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0xcaab99287cc7bb8459344a948fc9781e787c08e1` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BaseAsyncSwapper<br>`0xd24d8abd41f4f980e41b4793c31faa4ddcf565e9` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BebopSwapper<br>`0x117c6504382434076ccf7121d747413ac2a210fd` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BebopSwapper<br>`0x39dd8eff184b860ee7ffe3676eb5102e29a57329` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BebopSwapper<br>`0x69543c91cf980f756fc6305a96fe218ba396e142` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | BebopSwapper<br>`0xcd478d51ae459d47f6280c85dc6baf688ea75ff3` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CbethLSTCalculator<br>`0x24d783e5ed8e4a507583e0c79abf489051069abb` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ChainlinkEthPerTokenSenderUpkeep<br>`0x1d0b1e9f82f381936f9025ba0552e25bc5364ec6` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ChainlinkEthPerTokenSenderUpkeep<br>`0x235c4765a8316a47721468e161327751e5407499` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ChainlinkIncentivePricesUpkeepV3<br>`0xd8d4e70034b8f06a389b4e15d5c0b14d12b2a39e` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ChainlinkStatsUpkeepV4<br>`0x1a63df7f0addd9cfaf36f4a1b535d4a4afecdf4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ChainlinkStatsUpkeepV4<br>`0x691350d1ffcdece03ce0b889fd0dd4cb68679262` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ChainlinkStatsUpkeepV4<br>`0x7d658243ad3bc64bd768d52ecf8ae6405cb8c497` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveConvexDestinationVault<br>`0xd78860acc0621d87aeea94f7d36eb7bb7cbe3631` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveConvexDestinationVaultV2<br>`0x10b45936a0af0a2cee162af415f10195a7967b2d` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveConvexDestinationVaultV2<br>`0x73047a73d0be0768c1132769aa6d2efd1cbf5ec6` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveConvexDestinationVaultV2<br>`0xa7d64212b2aeeb7a969be36677ada2025ffe3b29` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveGaugeDestinationVault<br>`0x3c5be46edc025c6187b74b8f3043f0cd5921f64e` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveGaugeDestinationVault<br>`0x6652b0ef73bc4f11cb4dc01cf15ec4ba139bcbe2` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveGaugeDestinationVault<br>`0x946d9b8bedf7ea968e75477f08f7c465e411391b` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveGaugeDestinationVault<br>`0xa07f6c83557fa8c61bffa2b3de747b7887141a38` | non_address_book | operational_periphery | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveNGConvexDestinationVault<br>`0x9fb4a77dae553aea1e5ab1cfaca0ff1adddff483` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveV1PoolNoRebasingStatsCalculator<br>`0xd2e14c2d2d14c16513f82ebb00f7875db56d4edc` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CurveV1StableEthLockedOracle<br>`0xde695e7f9958725ba78a18fa2191bfd980e4bf31` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CustomRedStoneOracleAdapter<br>`0xbb353fd79b7a52438e0c004fa4c2c9dc71e63b03` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | CustomUpgradeableProxy<br>`0xa84918f3280d488eb3369cb713ec53ce386b6cba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| candidate review | DaiUsdsSwapper<br>`0x6404f61b3d12b5f87d6f76c2c8b58a420581cfdc` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DaiUsdsSwapper<br>`0xbf7335ba1895ffb0d91f850b7f2875e1c8b759f0` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DestinationIncentiveChecker<br>`0x3ac921bb16321e8c9b2e6b83c56397f2e054232b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DestinationIncentiveChecker<br>`0x50619941a410d872c5b3b089705b6bed0a91e295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DestinationIncentiveChecker<br>`0x9e60e47a86d12a1360c1373cc310114a1745b28c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DestinationVaultFactory<br>`0xc6c32cd2197dd6badd828051e50664e3cb199678` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DestinationVaultRegistry<br>`0x3aac1ce01127593ca0c7f87b1aedb1e153e152ae` | project_anchor | registry | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | DexIncentiveSetCalculator<br>`0x269dbe2c9a5756e2fc48c173c869679df3908be7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EethLSTCalculator<br>`0xa87930c4e51ce635065c9f5356a8578e94d4a71e` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EethOracle<br>`0xaa573a9bf7560870a925ea1704c061546486df81` | external_dependency_or_infra | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC20<br>`0xb9200c2aa4053102b984806c63d67e21b8f2070d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x997214ec4f289807a6677abbbd97a4cea813296a` |
| candidate review | ERC20DestinationVault<br>`0x8b025dd2f994885b03173380c5452996551ad095` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC20DestinationVault<br>`0xaeb5492b001aee78c34cf3b46b21f47301fb97c1` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC20DestinationVault<br>`0xb6b90d60192ba7cf78f6da06a8e73be5cdd1362e` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626BackingOracle<br>`0xfc3213faf5b8d96e1ccf27e77bd13247cf014721` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626NonLPSpotEthOracle<br>`0x13da01bae2ceba771033e68cd2e782da56fc380f` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626NonLPSpotEthOracle<br>`0xc840bd95cff6a76c2ecae1f49501e481b8a86cf3` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626NonLPSpotEthOracle<br>`0xd50e56c119fecffb43002e524ad10cf8036b0898` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626OneToOneCalculator<br>`0xf31bd1feb1848711b5ac0bcd08420cb3f791cdd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626Swapper<br>`0x1dfb5041c3f594caef41bcec02f3a9af47ae8c88` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626Swapper<br>`0xfbc60c7134f0a4efe9a5b3b675552eb89a39b895` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | ERC4626VaultShareEthOracle<br>`0x0d1e06578f4ae09e81d33bf5587a0616f4821fa8` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EtherFiClaimingDestinationVaultExtension<br>`0x3b65dc9db1d0935ca412c0a685a2c77581339639` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EthPeggedOracle<br>`0xdeb361babf4c8277f0b2ee30914fb155b1a67de3` | external_dependency_or_infra | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EthPerTokenSender<br>`0xdd92511f1fbe5de911e22a0247ba8c212d625a3d` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EthPool<br>`0x77f18a6968a38f9aef1af676420c4799e8b864ee` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | EthPool<br>`0xb104a7fa1041168556218ddb40fe2516f88246d5` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | EthPool<br>`0xca77a278a03f3e4648f9dc073729427862d5da31` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | ETHxLSTCalculator<br>`0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | EzethLRTCalculator<br>`0xe3e73139d6b1a2ce22c34897423ab56ee925b459` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | FluidDestinationVault<br>`0xf6c131ae53ba6cfc93c3d6f6bb95df83de6b32d7` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | FrxEthLSTCalculator<br>`0xad6d0ecee007145d76c7a9b9551af560a718a223` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | GT<br>`0xf25dc58c25ba97529f5504dca81d2eaf4abaa20c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | HoldTokenCalculator<br>`0x076f94efae4621bab537ce72b9eb48bb0ca65f50` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | HoldTokenCalculator<br>`0x78c4af35094c1cfe23f5b9344ad31771e6f57c0e` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Hypervisor<br>`0x33412fef1af035d6dba8b2f9b33b022e4c31dbb4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x336d7e0a0f87e2729c0080f86801e6f4becf146f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x388a3938fb6c9c6cb0415946dd5d026f7d98e22c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x39b96fe8fc813e0c34cd79ba858492521616013c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x4d7f0f7395dd58da2e6680453a0d0b4b19d0c832` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x51bbf75e7d6ee33da934ea0926b7eac73f808865` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x586880065937a0b1b9541723619b75739df8ef13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0x5e6c481de496554b66657dd1ca1f70c61cf11660` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0xac571cbd56c83362875bf881819b653ec9b1d02f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0xf402ced61500147c19d6944ef85f27f213adbd9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | Hypervisor<br>`0xf6eeca73646ea6a5c878814e6508e87facc7927c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x25758ed87b57c275e70fc80deab2c9fbc9295841` |
| candidate review | HypervisorFactory<br>`0x8ae6c8c7005c7317963487bee834047eb497ceae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x997214ec4f289807a6677abbbd97a4cea813296a` |
| candidate review | IncentiveCalculatorUpdateDestinationVaultExtension<br>`0xee117a999594cf8e7d5845e4a76cd6f8121ab674` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | IncentivePricingStats<br>`0x8607ba6540af378cba64f4e3497fbb2d1385f862` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | KelpDaoClaimingDestinationVaultExtension<br>`0xa305791458d9a53bac60e8273e8208ab00ddd067` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Lens<br>`0x0ab577ba4717b2d4cf097ab902b88ea18fe6c89b` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Lens<br>`0x146b5564dd061d648275e4bd3569b8c285783882` | project_anchor | periphery | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Lens<br>`0x6972eea1c99c8884b8569ff8b447a5ea71cde442` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Lens<br>`0x75455ae8c9b2ff7ae9f21ae06730d614c31d2300` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | LiquidationRow<br>`0xbf58810bb1946429830c1f12205331608c470ff5` | project_anchor | adapter | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | LstPriceHook<br>`0xc7c3086bbd548abfa411d01585057e7928bf4523` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | MaxValueSlippageHook<br>`0x3b16c8e0a1059e5551bb56a3592a61cd8743cfc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | MinTimeGapHook<br>`0x2e9894482fb8fe525ebaed0860eeede918dc3466` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | MorphoDestinationVault<br>`0x616e7ec1d3e3fba728f821371480c6e3e20ecdcc` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | MorphoDestinationVault<br>`0x9bc1526e9d210e04e32e7c481f09f512a69dad01` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | NavLookbackHook<br>`0x33db101517112a9b7b9f5b39eac185a0629c3624` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | OethLSTCalculator<br>`0x21fededbe1cc5aa22a17f171513c105300143826` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | OethLSTCalculator<br>`0x90a7e92ca4cf3da787be39ccd84071a50f2cbd59` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | OHMPrincipleDepository<br>`0x0ee5c2865d6dff605e527b13c336f0b8774815b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd7c4208aeb0961972b3ea717be25f2194d5f0331` |
| candidate review | OneToOneUSDBackingOracle<br>`0xaeb29cecd5ddec1d259b25f731fb3709e2fd1016` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | OsethLSTCalculator<br>`0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | PointsHook<br>`0xa386067eb5f7dc9b731fe1130745b0fb00c615c3` | external_dependency_or_infra | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Pool<br>`0x0139b34012a6639e896b883901b7dc1bb6e6f15a` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | Pool<br>`0xbbfc7d1d53116830326478f77f489530cec7ba8a` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | Pool<br>`0xca5e07804beef19b6e71b9db18327d215cd58d4e` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | Pool<br>`0xd899ac9283a44533c36bc8373f5c898b0d5fc03e` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | ProxyAdmin<br>`0x01b4314072fe86a497e97bd6ad48b635fbe7e1ee` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x9ba84de65acfb90cd6fec95f08574e4f2c32b6e8` |
| candidate review | ProxyAdmin<br>`0xc89f742452f534ece603c7b62df76102aacf00df` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | ProxyAdmin<br>`0xd813b2a8a0c206dc2e5ff7a44e11fd0396c51a21` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | ProxyLSTCalculator<br>`0x8a26c73f5c4597e086254cb815403b98dc494e53` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | PufEthLRTCalculator<br>`0x878958416059f3ea3cd4ac0dc0a5439b49a17e73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | PufEthLRTCalculator<br>`0x9d49209bb8d7859ad26b655e6c6b83fb978b34ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | PxETHEthOracle<br>`0x3cc52170fdea5c485db6d412b78ea40f27ffc629` | external_dependency_or_infra | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | PxEthLSTCalculator<br>`0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | RedstoneOracle<br>`0xe1adb6967e1dbd5332d499dfa2f42377d1da5913` | external_dependency_or_infra | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | RedStonePullOracle<br>`0x9a65e1853381199ca04593ee5c396291e489b811` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | RethLSTCalculator<br>`0x038516cb9bbc0572c2d55896ce75f31fab90fac1` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | RewardPool<br>`0x39baa524eab3f5c9d0738bdf781c3ec9c8d34867` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd7c4208aeb0961972b3ea717be25f2194d5f0331` |
| candidate review | Rewards<br>`0xba7c0fbc8fde123565094252ca7f2990f8c4a54e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | RsethLRTCalculator<br>`0x114ca0dc51abd118125f84d15f87e01e7dcefa86` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | RswethLRTCalculator<br>`0xe861c6eb5376ada41bcc238080439724fe15b90f` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SelfSpotEthOracle<br>`0x8e9a06f85a3d188f2a851d1b4fb582680727a5d7` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SlippageBudgetHook<br>`0xab64ce10efa2559e6838e64852ffacece8294569` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SlippageBudgetHook<br>`0xd7ca2cfbb9beaa85827f41e51ababd610351270a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SlippageBudgetHook<br>`0xebdfe0638d9de4c3e34a6104ab2b53fc31e4f7c3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SolverRootOracle<br>`0xdb8747a396d75d576dc7a10bb6c8f02f4a3c20f1` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | Staking<br>`0x0fc45523d4c63a70f263dceaec9d08c947954b4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | Staking<br>`0x1dddf8ef2a9c181e7c7fd7c8175da30a221d0122` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | Staking<br>`0xe5943d8dc61282fbb4eeabf0e30166bf7f6ba92f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | Staking<br>`0xef8670da2d381a523953e157cf52b704b94a955b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | StatsTransientCacheStore<br>`0x34712f37aee81b3a0d2fe03fea9f4cb25961bb88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | StethLSTCalculator<br>`0xaea78e6d52a55daa7eebeb25068637659e02cee7` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SushiswapControllerV1<br>`0x3f2647952208c1f22d8045e1b55d361abcec3bf5` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | SwapRouter<br>`0x6201523176dc66ccd249248b9c422aac725ea3f2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SwethLSTCalculator<br>`0x7cbbb3db2ff81b1221d50c8f9b9072348dac7408` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SystemSecurityL1<br>`0x027a3359b803885261b140415873845f72238833` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | SystemSecurityL1<br>`0xe57a2ec5ef4cc7f6576bb1ed5ec3759878f39b20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | TokeMigrationPool<br>`0xdb707406aefd74c739311e013f7ee0a0f0d1e86e` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TokeVotePool<br>`0xc727defdb67974a63832d47ed08dd65cea6559e1` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TopWithdrawMonitor<br>`0x7273138186426119a809ede5d6e00169c997def9` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x123cc4afa59160c6328c0152cf333343f510e5a3` |
| candidate review | TransparentUpgradeableProxy<br>`0x1b05128b262ca335de162c8ad5e9281d5f7d4404` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x28cb0de9c70ba1b5116df57d0c421770b5f44d45` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x378ba0c8b4b04b4409103711846e46e63b3fbaf8` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x38c279761864a2329b8298b730ba5e31bf4736c1` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x3bc59a43d82c1acf3a597652eadd3a02082d3671` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x43094ed6d6d214e43c31c38da91231d2296ca511` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x50b82e9b1811125b4c4fc463616580d60b80feea` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x7a75ec20249570c935ec93403a2b840fbdac63fd` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x7d4a5e0fe8f19b07f2ebae3b59d4e6133441fc96` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x8d2254f3ae37201efe9dfd9131924fe0bdd97832` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |
| candidate review | TransparentUpgradeableProxy<br>`0x93b34b6a6f1ddbccb60244e3efdce6b8a83d25f8` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x9e0bce7ec474b481492610eb9dd5d69eb03718d5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view](https://drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view) | Hexens | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view](https://drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view?usp=sharing) | Hexens | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view](https://drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view) | Hexens | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf](https://certora.cdn.prismic.io/certora/Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf) | Certora | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Report.md](https://github.com/Certora/tokemak-v2-core-fv/blob/main/Report.md) | Certora | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2Fm9vasMSC35JbnaqfyPVN%2FTokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 23 | high |
| [spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS0VKxLL6FMLB1onYrDVu%2Fuploads%2FauBJzmmsZIR0afW4AD7c%2FTokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf?alt=media) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view](https://drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11542] drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view — matched: Extracted contract names from file paths and findings sections. Audit date from 'delivered 22.07.2024' in auditing details.
- [11543] drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view — no match: Extracted contract names from file paths in findings and scope section. Audit date from 'delivered 25.03.2025'.
- [11544] drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view — no match: Extracted 5 contracts from findings paths; scope section mentions repository but no explicit contract list; audit date from 'delivered 20.08.2024'.
- [11545] Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf — no match: Only LMPStrategy.sol is explicitly in scope. LMPVault.sol and LMPDebt.sol are mentioned as partially looked at but not in scope.
- [11546] Report.md — no match: Scope section explicitly lists four contracts. Audit competition ended March 11, 2024.
- [11547] spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf — matched: Scope section explicitly lists all contracts under /src folder except 8 excluded files. Extracted contract names from scope and findings. Audit date from engagement end date: September 24th, 2023.
- [11548] spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf — no match: Scope section lists 4 contracts: LMPVault.sol, LMPDebt.sol, DestinationVault.sol (file path given as src/security/AccessController.sol, but contract name is DestinationVault), LMPDestinations.sol. Audit date is end date of engagement: September 15th, 2023.
- [11549] drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view — no match: Scope section explicitly lists AccToke and Staking contracts. Audit date is the end date of engagement: November 11th, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AbstractRewarder | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AccToke | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolDebt | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolETH | ambiguous — not counted | AutopoolETH (alternative) `0x2ab4a3a8224726cbaa91d6b04d212979f06efdf9` — deployed 2024-10-18 20:08:41+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0x12db19359159e8ab0822506adf15d4d8dbff66c3` — deployed 2025-09-09 20:39:35+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0xaadf01dd90ae0a6bb9eb908294658037096e0404` — deployed 2024-10-18 20:12:33+03 — liveness: live (current_address_book_code)<br>AutopoolETH (alternative) `0xf90bb2baa90b457a35c37c5a96de2720ce367281` — deployed 2024-09-11 00:28:23+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0xc9db15bf0361a5ae0aca0e3bc8d0ec7fab195e7b` — deployed 2025-10-14 20:29:38+03 — liveness: live (code_present_context)<br>AutopoolETH (alternative) `0x35911af1b570e26f668905595ded133d01cd3e5a` — deployed 2025-01-28 00:36:11+03 — liveness: live (current_address_book_code)<br>AutopoolETH (alternative) `0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56` — deployed 2024-09-11 00:30:47+03 — liveness: live (current_address_book_code)<br>AutopoolETH (alternative) `0xd0cf0c4594ed8d2a0d845d493693fde822cc5821` — deployed 2025-09-19 23:44:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolFees | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | AutoPoolDestinations | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | DestinationVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | IncentiveCalculatorBase | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | LSTCalculatorBase | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | LiquidationRow | ambiguous — not counted | LiquidationRow (alternative) `0x610ffeb00b8312b0540ded300c683227cb3e3ab5` — deployed 2025-09-09 16:26:10+03 — liveness: live (code_present_context)<br>LiquidationRow (proxy) (alternative) `0xbf58810bb1946429830c1f12205331608c470ff5` — deployed 2024-09-12 20:02:59+03 — liveness: live (current_address_book_code)<br>LiquidationRow (alternative) `0xe2f00bbc3e5ddecfbd95e618ce36b49f38881d4f` — deployed 2024-11-05 21:39:59+03 — liveness: live (code_present_context)<br>LiquidationRow (alternative) `0xc332386610bd4d555c762d7f88c17acf96f05b3c` — deployed 2025-10-10 13:48:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | MainRewarder | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | MessageProxy | own contract | MessageProxy (selected) `0x20ea2f2ecf36bcb6df086d923a120496dc616f76` — deployed 2024-10-18 18:50:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | PriceReturn | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | SummaryStats | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/16OhVtmuEB57k6tAiGb9Su4gQ9Dy_Nv4n/view | TellorOracle | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | BalancerV3StablePoolCalculatorBase | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | NavTracking | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | SlippageBudgetHook | ambiguous — not counted | SlippageBudgetHook (alternative) `0x8e9ac280876826f687e509ce4a0f55ff352d402d` — deployed 2025-09-09 20:39:58+03 — liveness: live (current_address_book_code)<br>SlippageBudgetHook (alternative) `0x798b8a1dd081ac4cec410e40f8dd0616b4824645` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code)<br>SlippageBudgetHook (alternative) `0xf68f04384054e47f3fa08c48fb58f20de080b335` — deployed 2025-09-23 18:09:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | LstPriceHook | ambiguous — not counted | LstPriceHook (alternative) `0xf63daffb0b8eb975856d7935d13e4645e66f2f47` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code)<br>LstPriceHook (alternative) `0x67ae7b7d81de471802fbacdc83a4a6f16fcafbc0` — deployed 2025-09-09 20:39:48+03 — liveness: live (current_address_book_code)<br>LstPriceHook (alternative) `0xc91f3b941df65f58371c9c04221629c2b6a4ebc5` — deployed 2025-09-23 18:09:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | MinTimeGapHook | ambiguous — not counted | MinTimeGapHook (alternative) `0x71689a8e924ba6611fac7bd40c55796e8b1679d9` — deployed 2025-09-23 18:09:17+03 — liveness: live (current_address_book_code)<br>MinTimeGapHook (alternative) `0x09d0d6a48545e959b230600966d93600fab50322` — deployed 2025-09-09 20:39:53+03 — liveness: live (current_address_book_code)<br>MinTimeGapHook (alternative) `0xb617bcc10ea25669dd99071be6a962d4b9532e67` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | NavLookbackHook | ambiguous — not counted | NavLookbackHook (alternative) `0xa31fe55d43e0577155d71bf2231818a6bd59fa42` — deployed 2025-10-14 15:19:21+03 — liveness: live (current_address_book_code)<br>NavLookbackHook (alternative) `0x4c0be1062dcdaed7be09f73a4f00a0313a6b427b` — deployed 2025-09-23 18:09:19+03 — liveness: live (current_address_book_code)<br>NavLookbackHook (alternative) `0x9717e1b7c338aded95fd4bda0fc5fc1fcd756f8b` — deployed 2025-09-09 20:39:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view | DestinationVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | BridgedLSTCalculator | ambiguous — not counted | BridgedLSTCalculator (alternative) `0xb081af21468deb33aab9e37eae6f5004cc1cbdb0` — deployed 2024-10-18 19:43:49+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0xbaf2ee1c91cc8a00b386b14d65bdb4918604e1a7` — deployed 2024-10-18 19:44:55+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0xa80b38da84e7c7a094e6d0093de374a00e892934` — deployed 2024-10-22 17:46:49+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0x4cb4b14128c868f35afe9cac7c23cf821aa64f99` — deployed 2024-10-18 19:42:59+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0xb5182945caa19e3a9fa35e70502fc3269d1fa9ea` — deployed 2024-10-18 19:43:27+03 — liveness: live (current_address_book_code)<br>BridgedLSTCalculator (alternative) `0x58897ec6b7d7102bb24a29e99a14a6d9e517943e` — deployed 2024-10-22 17:47:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | AerodromeAdapter | unmatched — not counted | — | listed in scope and finding toke2-5 | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | AutopoolETHStrategyConfig | unmatched — not counted | — | listed in scope and finding toke2-2 | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | AerodromeStakingIncentiveCalculator | ambiguous — not counted | AerodromeStakingIncentiveCalculator (alternative) `0xe923f84cbbdce6d12c7987511c0b2c122f425318` — deployed 2024-11-12 19:57:07+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0x9813e3091278f41cd6b2686ff83255f97889f3e3` — deployed 2024-11-12 19:57:07+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0xd675d868c751a5b1f331bcf5dcd1fe7d45c2e76b` — deployed 2024-10-22 23:20:17+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0xeaa026495601c47bfeb4bb6501c11ba41a1ac028` — deployed 2024-11-12 19:57:07+03 — liveness: live (current_address_book_code)<br>AerodromeStakingIncentiveCalculator (alternative) `0xc8756b85c5e7c2ab0aa675fd606aa91e14e6ef01` — deployed 2024-10-22 23:18:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view | EzethLRTCalculator | ambiguous — not counted | EzethLRTCalculator (alternative) `0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9` — deployed 2024-08-31 15:50:59+03 — liveness: live (current_address_book_code)<br>EzethLRTCalculator (alternative) `0xe3e73139d6b1a2ce22c34897423ab56ee925b459` — deployed 2024-08-31 15:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf | LMPStrategy | unmatched — not counted | — | listed in scope | no |
| Report.md | LMPStrategy | unmatched — not counted | — | listed in scope | no |
| Report.md | LMPStrategyConfig | unmatched — not counted | — | listed in scope | no |
| Report.md | NavTracking | unmatched — not counted | — | listed in scope | no |
| Report.md | ViolationTracking | unmatched — not counted | — | listed in scope | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPVaultRouterBase | unmatched — not counted | — | Listed in scope and findings (HAL-01, HAL-08) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPVault | unmatched — not counted | — | Listed in scope and findings (HAL-04, HAL-06, HAL-12, HAL-13, HAL-17) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | AbstractRewarder | unmatched — not counted | — | Listed in scope and findings (HAL-02) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | DestinationVault | unmatched — not counted | — | Listed in scope and findings (HAL-03, HAL-20) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LiquidationRow | ambiguous — not counted | LiquidationRow (alternative) `0x610ffeb00b8312b0540ded300c683227cb3e3ab5` — deployed 2025-09-09 16:26:10+03 — liveness: live (code_present_context)<br>LiquidationRow (proxy) (alternative) `0xbf58810bb1946429830c1f12205331608c470ff5` — deployed 2024-09-12 20:02:59+03 — liveness: live (current_address_book_code)<br>LiquidationRow (alternative) `0xe2f00bbc3e5ddecfbd95e618ce36b49f38881d4f` — deployed 2024-11-05 21:39:59+03 — liveness: live (code_present_context)<br>LiquidationRow (alternative) `0xc332386610bd4d555c762d7f88c17acf96f05b3c` — deployed 2025-10-10 13:48:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | AsyncSwapper | unmatched — not counted | — | Listed in scope and findings (HAL-05) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | IncentivePricingStats | ambiguous — not counted | IncentivePricingStats (alternative) `0xf28213d5cbc9f4cfb371599d25e232978848090d` — deployed 2024-10-17 17:34:55+03 — liveness: live (current_address_book_code)<br>IncentivePricingStats (alternative) `0x8607ba6540af378cba64f4e3497fbb2d1385f862` — deployed 2024-08-30 05:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | PeripheryPayments | unmatched — not counted | — | Listed in scope and findings (HAL-08) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | ConvexRewardsAdapter | unmatched — not counted | — | Listed in scope and findings (HAL-09) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | TellorOracle | unmatched — not counted | — | Listed in scope and findings (HAL-11) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | GPToke | unmatched — not counted | — | Listed in scope and findings (HAL-14) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPVaultRegistry | unmatched — not counted | — | Listed in scope and findings (HAL-16) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | MainRewarder | unmatched — not counted | — | Listed in scope and findings (HAL-17) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | ExtraRewarder | ambiguous — not counted | ExtraRewarder (alternative) `0x23e9bbd1c4528f904526be2761250e94177fec38` — deployed 2025-07-29 18:56:59+03 — liveness: live (current_address_book_code)<br>ExtraRewarder (alternative) `0x17c50b9fba151f5f88618dae6c394bd731022975` — deployed 2025-05-28 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | SfrxEthEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-18) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | EthPeggedOracle | unmatched — not counted | — | Listed in scope and findings (HAL-19) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | MavEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-21) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | CurveV1StableEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-22, HAL-26, HAL-27) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | SystemRegistry | own contract | SystemRegistry (selected) `0x2218f90a98b0c070676f249ef44834686daa4285` — deployed 2024-08-30 05:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | BalancerAuraDestinationVault | ambiguous — not counted | BalancerAuraDestinationVault (alternative) `0xb3723e69d6e4553239d7daf514bf8ff7998500e0` — deployed 2024-11-06 00:35:49+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0x5a4b544b9734930ddc587c9a2f093dc5058a4f4d` — deployed 2024-10-08 06:20:11+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0x867991c7737ccbb152ae5a7e6edb05ca0670717e` — deployed 2024-10-08 06:11:11+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0x2f2cc1bf461413014741dd68481db4a3686dac3d` — deployed 2024-10-08 06:21:11+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0xfda49984eb4ea4075b8b451032849347c633e94b` — deployed 2024-10-08 06:19:59+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0xa6efb95b7393cb419b48a933273f49b6bb48dd5d` — deployed 2024-11-06 00:35:41+03 — liveness: live (current_address_book_code)<br>BalancerAuraDestinationVault (alternative) `0xc9b5d82652a1c8214b0971a004983d0eeedd751c` — deployed 2024-10-08 06:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | LMPStrategy | unmatched — not counted | — | Listed in scope and findings (HAL-25) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | CurveV1ConvexStatsCalculator | unmatched — not counted | — | Listed in scope (excluded from scope but mentioned in findings) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | StatsCalculatorRegistry | unmatched — not counted | — | Listed in scope and findings (HAL-25) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/m9vasMSC35JbnaqfyPVN/Tokemak_Autopilot_Smart_Contract_Security_Assessment_Report_Halborn.pdf | CurveV2CryptoEthOracle | unmatched — not counted | — | Listed in scope and findings (HAL-22) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | LMPVault | unmatched — not counted | — | listed in scope | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | LMPDebt | unmatched — not counted | — | listed in scope | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | DestinationVault | unmatched — not counted | — | listed in scope (note: file path mismatch but contract name as given) | no |
| spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf | LMPDestinations | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view | AccToke | unmatched — not counted | — | listed in scope section | no |
| drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view | Staking | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0a2b94f6871c1d7a32fe58e1ab5e6dea2f114e56` | AutopoolETH | core_logic | $7,829,183.81 | Verified native implementation with $7,829,183.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60882d6f70857606cdd37729ccce882015d1755e` | AutopoolMainRewarder | core_logic | $7,272,363.22 | Verified native implementation with $7,272,363.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4103a467166bbbda3694ab739b391db6c6630595` | AutopoolMainRewarder | core_logic | $5,945,373.41 | Verified native implementation with $5,945,373.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x726104cfbd7ece2d1f5b3654a19109a9e2b6c27b` | AutopoolMainRewarder | core_logic | $4,445,740.53 | Verified native implementation with $4,445,740.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x40454f1e95ee73d78f3876c892e9a32007aa2f74` | FluidDestinationVault | core_logic | $821,430.69 | Verified native implementation with $821,430.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf6cc563b93f8e678f696fac632e41b550cb09540` | AutopoolMainRewarder | core_logic | $759,841.65 | Verified native implementation with $759,841.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaadf01dd90ae0a6bb9eb908294658037096e0404` | AutopoolETH | core_logic | $202,384.01 | Verified native implementation with $202,384.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x69a63ddb162a0251248f6c7d22902083ca3e0522` | AutopoolMainRewarder | core_logic | $58,577.59 | Verified native implementation with $58,577.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x116b3e86f2b04c21605c5fc4b95ba6a82dbf8f3e` | ERC20DestinationVault | core_logic | $52,043.38 | Verified native implementation with $52,043.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x03825c8c817ff49a208c9c20365c002418c5bf0d` | AutopoolMainRewarder | core_logic | $121.49 | Verified native implementation with $121.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe041b3b14e76e4b4605876875e1860c6005456f2` | AutopoolMainRewarder | core_logic | $13.66 | Verified native implementation with $13.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37767cbff88cb623e9404e959560984f7d742df6` | AccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x20dfa88e77d4eeb644f68c5752e7d1a3c21f27e8` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7ec41019b6fb853511df54982ae17cbf3b4fd6b2` | AccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58c2233399b85b53c5506f78eaaae9b0dba1ed3e` | AerodromeDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdbd14969b9313e5bfdfed2c7a29e813e6f02c627` | AerodromeDestinationVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb02cb15597e214b9a843ccff9eefe628c057184e` | AerodromeStakingDexCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcef50bf75ed027b8bae5c49562b3f27b4f253985` | AerodromeStakingDexCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9813e3091278f41cd6b2686ff83255f97889f3e3` | AerodromeStakingIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc8756b85c5e7c2ab0aa675fd606aa91e14e6ef01` | AerodromeStakingIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2bb11c6407bb9dcbb5b776f789371de5aaca44a5` | AerodromeSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x09708019cf2527ad3263885ff712fc79cec5d0c2` | ArraysConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73526d80ac5db9ccd2aa46436744c542ef9c0b75` | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3750d3315466a132ee7d10ebee67f28e19577472` | AsyncSwapperRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb45bd07b916cc3544ab9cd54f812ed8d88bfabba` | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x46e9c8207a5bd45d05dc4cb6cff791c01c7468ca` | AsyncSwapperRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x041679acb4088288178589c059543b56ce74ea07` | AuraCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x594baa7ad9230084261e40adfce95f2ed612898a` | AuraCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7c4b58eaa93005162bc80285af2003517213c539` | AuraL2Calculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9254926b61c205e8b64ed00681fe0b2de94b62f3` | AuraL2Calculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39ff6d21204b919441d17bef61d19181870835a2` | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa18b89225491230fdb1883cfbda65e7931606931` | AutopilotRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xc848832a31eb5558f14f13d361bb3a95ec91f27a` | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x27a9c16ef2dc44a7bf6df4d115fe4c27d87621ad` | AutopilotRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf90bb2baa90b457a35c37c5a96de2720ce367281` | AutopoolETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ab4a3a8224726cbaa91d6b04d212979f06efdf9` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xd0cf0c4594ed8d2a0d845d493693fde822cc5821` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x12db19359159e8ab0822506adf15d4d8dbff66c3` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc9db15bf0361a5ae0aca0e3bc8d0ec7fab195e7b` | AutopoolETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63139fe3848ac53e5b668e19df1dd4e6f31428c8` | AutopoolETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea7daf04144bbffb8ab4f79f5115130d8aae2bd9` | AutopoolETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb111c5f02a04e1bba747b6ff622f73cf2ec2d9b0` | AutopoolETHStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7fed74094b7010c6fb3010ed5efc00772fd2ed1f` | AutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x78a7c45e3cc7b9567b4803aeaf9b33bc8c898451` | AutopoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf590865e624d14ed4659f1fca736634b9926e716` | AutopoolMainRewarder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e5828a3a6ae75426d739e798140513a2e2964e4` | AutopoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4fe7916a10b15dadefc59d06ac81757112b1fece` | AutopoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc3b8f578c25be230a2c0f56cb466e7b8c6c9d268` | AutopoolRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6201523176dc66ccd249248b9c422aac725ea3f2` | BalancerV2Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1cde65265061d84753086fe39084694f934647be` | BankSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8821a5c4f808d970de5bb2c31379c67cd67cf6b8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x18f9f37631a866aeac018e8399df23da37c00df8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4423cb967ef8f3a21fb360d8528234271b450ceb` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x45bce6054c4612dca905a4d7801f60e6273949fb` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4660a170e2e36daaab8aa4dcdd0001433e34f58d` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x621091dceaea90571590ee6bf04aecbf8845deba` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9f42f514f4a1e7e0a86a186b804769fc6d4f4ed5` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa2217dc019d2946e3c6ded1e829edaf0b969b478` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xadb96b38c8b99e2b8d52fe7b6060a1ed4a49f858` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc54e002845c1dff4ec13db93200cd108c94717ad` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcaf5b3e34c7d556c9d8dc4873451324b7241bcad` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x0288ef3f2b32fbd03df27b27ca615080b2246b19` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25be909fc91f219a08e06b3b60664d98ea498fd1` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2844a087f60efe110ffa06e28d9b3c1a586a26d8` | BaseAsyncSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2189751274d792b6693e70468fb43ec4af7a76f2` | BlockchainInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4cb4b14128c868f35afe9cac7c23cf821aa64f99` | BridgedLSTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x58897ec6b7d7102bb24a29e99a14a6d9e517943e` | BridgedLSTCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x12d5aad28da62a2d7ec2255af6202a458b48b970` | Bytes32 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24d783e5ed8e4a507583e0c79abf489051069abb` | CbethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab78a570252dd06fdbc1c5c566e842e571d01e08` | CbethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc3ff90869ecb5ce2a4153eef6a5dee08f6598323` | DestinationIncentiveChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa698a94c0dce389b862f58b08f618a981ea99402` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa1afc8aaf80df8ceb179e99bb1a8fb4d26095ba1` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x95b5f1abce00b345990d1ec0152b416cd143c58e` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x66b9eba2cef184dfaf3b9e11b104be0a1c6e258c` | DestinationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37de6f9d23d26dfbcb6dbee86dc7ca538c0ff124` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf34f7975df6cb3dd95849a6c3b9343196ae9abb6` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xc895bbd0fcb39bdcb66151fa6316b5b13f5c288a` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd6683672269b6a109a51825e71a015678559225a` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x618273975be7c43601e500dbc59a28cc2367520f` | DestinationVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3aac1ce01127593ca0c7f87b1aedb1e153e152ae` | DestinationVaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbbbb6e844eed5952b44c2063670093e27e21735f` | DestinationVaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8d75a2b774277370d9dc8c034f23003b29032b4b` | DestinationVaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4353e181c13f7e970f24016a0762c1af271350ba` | EethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa87930c4e51ce635065c9f5356a8578e94d4a71e` | EethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x47cabfe7c68dc09b1e26ac62655664295481ed2f` | ERC4626BackingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4580a56e715f14ed9d340ff30147d66230d44ba` | ERC4626RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5c47f4fa6978a7551488cae568df4ffbab905667` | ERC4626RedeemSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6978f25d2e7feec1a515524fec4ed721c4b3f5c3` | ERC4626RedeemSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x98a216c534b7eaada6d5642a9ca69393360e339a` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe1a08bf9ef02a869eabf2585cbca50e898799213` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x268cbbc41d74618505982e83885baaae02161a03` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3f962ecd4edb29422aa07e456ec2bc7067acc328` | ERC4626Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdd92511f1fbe5de911e22a0247ba8c212d625a3d` | EthPerTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x57831780565ae1526ed1cc2296c1143b3ad68dfe` | EthPerTokenStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2757f5fb6f62ef4b41b5f6236d1e3a77e15b0c55` | ETHxLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d3c5f6670abe46901de4bd39036cf21d178334c` | ETHxLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39841737112ec884406b66a487f3efcdbfd80085` | EulerDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc32572fcc9990977b79a6d744f60d78ac6ea15a8` | EulerDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17c50b9fba151f5f88618dae6c394bd731022975` | ExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x23e9bbd1c4528f904526be2761250e94177fec38` | ExtraRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa84cc1d5ad1cdd5faeb15aa3f4ac5935d4b263d9` | EzethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3e73139d6b1a2ce22c34897423ab56ee925b459` | EzethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x371b3cc4cad4bffc25729c9db4d8c97ecab29488` | FlashBorrowerSolver | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2b8c9765b5983bd3c94849705050daabde414127` | FluidDestinationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x449a957490e24e4d915fd5dcf25dd5446e787590` | FrxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad6d0ecee007145d76c7a9b9551af560a718a223` | FrxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1bfcdfa2722c17959acd1306df1f0406a7d5be5e` | IncentiveHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8607ba6540af378cba64f4e3497fbb2d1385f862` | IncentivePricingStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf28213d5cbc9f4cfb371599d25e232978848090d` | IncentivePricingStats | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x146b5564dd061d648275e4bd3569b8c285783882` | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaf05c205444c5884f53492500bed22a8f617aa9c` | Lens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x590a31453390a1bb266672156a87efb1302fc754` | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0294d71b2c9b88d10f6d3286f5b25026147b2c8c` | LiquidationExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x34d929d9e3287f51932a2095a48203bbb1f7ad94` | LiquidationExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4008dd4a6f8df7427e560b56df1b66e197ceba03` | LiquidationExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2f00bbc3e5ddecfbd95e618ce36b49f38881d4f` | LiquidationRow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x610ffeb00b8312b0540ded300c683227cb3e3ab5` | LiquidationRow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xc91f3b941df65f58371c9c04221629c2b6a4ebc5` | LstPriceHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x67ae7b7d81de471802fbacdc83a4a6f16fcafbc0` | LstPriceHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x881bb334aa682ef61f6ad03ac8cd220e5b3d63d4` | MaxValueSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6404da4cd966afa35fbf2b1664278060e144a402` | MaxValueSlippageHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x71689a8e924ba6611fac7bd40c55796e8b1679d9` | MinTimeGapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x09d0d6a48545e959b230600966d93600fab50322` | MinTimeGapHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x4c0be1062dcdaed7be09f73a4f00a0313a6b427b` | NavLookbackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9717e1b7c338aded95fd4bda0fc5fc1fcd756f8b` | NavLookbackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4e8ce63cce31f667d03955dd98133d504d8e9b32` | OneToOneBaseAssetBackingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3cc4397ee396b49408ae12fd34c7c3b40f257b1b` | OsethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb5aa595c4fe3c297d65bdcdcc6fa48ef8725aebb` | OsethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24864cc03efd84f9df0e5f1d23ab69128325931e` | ProxyLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8a26c73f5c4597e086254cb815403b98dc494e53` | ProxyLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37c9b7fc138a7489c307a7bc6bc1124e3d06296a` | PxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9cb562083d29e027f21fac4d8b66573dea972153` | PxEthLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x32796698388fbc64281dea9fc4070df80a12267e` | ReceivingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x038516cb9bbc0572c2d55896ce75f31fab90fac1` | RethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9801098ee481ed6806c61a4de259fbddd5bb84a8` | RethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xf25bdd81822ab430f6637ea31d8b5add0b6d124f` | RootPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe84cea5553cc9d65166a7850dab2e7712072d97f` | RootPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x114ca0dc51abd118125f84d15f87e01e7dcefa86` | RsethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x840a49a4b83e57718cf67c03d820c938a04fc210` | RsethLRTCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe861c6eb5376ada41bcc238080439724fe15b90f` | RswethLRTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeedb3dd86f690a8c76006d606db7951322b6741a` | RswethLRTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x564c39c2c5d120724da31d1428773c1aead23535` | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x05abaa1882f628c0e6542ba0e90ab20fc01f23f4` | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x537f6e12fbc2ebf630d6d8db7bbf8612a0d97dcc` | SequencerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xf68f04384054e47f3fa08c48fb58f20de080b335` | SlippageBudgetHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8e9ac280876826f687e509ce4a0f55ff352d402d` | SlippageBudgetHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8198069f1709addc6a162c9433665776e5bc917c` | StatsCalculatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd82664a9b7a766b2c311b76c9e4384e8838b0a1c` | StatsCalculatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66a466b838f981b39cf3b3e13e19af5643dbad0c` | StethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaea78e6d52a55daa7eebeb25068637659e02cee7` | StethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x22babd3e0db07b69bb265e58c52d6a131234c56f` | SwapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x23783e62282ca68fd5c3fb45fc7ad01f21b85666` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xb4da8d0deb675dd6619ce64d265dfec369fbcbe6` | SwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x096f44f9fbbe6116de5db5954de776fb8733e59a` | SwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60e98e2dac20faab84781076164290cc31ce3c9e` | SwethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7cbbb3db2ff81b1221d50c8f9b9072348dac7408` | SwethLSTCalculator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18dc926095a7a007c01ef836683fdef4c4371b4e` | SystemRegistryL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfd8e6c9bf2cd5466f5651746f8e946a6c7b4220` | SystemRegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x25f26ec2e764c63f8d191dfe7f88c6646ca9f980` | SystemRegistryL2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x027a3359b803885261b140415873845f72238833` | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xf8cda9d896e06db0a682838ca8ac5fff1e699834` | SystemSecurityL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8c58aff94d7fcb0e8dac43fc3713fcddac8b4006` | SystemSecurityL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe7eeb14de91887a4524d8416203e8aee0796cf99` | SystemSecurityL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x106a60958c8637c9dc850757d1ed2ac11c73963d` | UniV3Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0915f530ef9a52aabae9ac22dc2ecf5265da6e71` | UniV3Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe4fef293650442991c695a055f54d2a54868ca11` | UniV3SwapBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc08f3906e1291f4a470528aae9f89c14dfa917a7` | UpgradeableAutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x01890ea9326d6c2d5941a51473d12f8179744be4` | UpgradeableAutopoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 403 |
| upstream | 104 |
| standard_library | 20 |
| needs_review | 575 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 13 ambiguous, 47 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=2

Zero-match audit list:

- [11543] drive.google.com/file/d/19kZJEkwiP62HlH33IccWVYaweWE4GEI1/view
- [11544] drive.google.com/file/d/1CcKw0ig7eBXV6q8jNjuvOFdEF_ozh_ZE/view
- [11545] Zhba6TjCgu4jzvAQ_Tokemak-CertoraAuditReport.pdf
- [11546] Report.md
- [11548] spaces/S0VKxLL6FMLB1onYrDVu/uploads/auBJzmmsZIR0afW4AD7c/Tokemak_V2_Smart_Contract_Formal_Verification_Report_Halborn_Draft.pdf
- [11549] drive.google.com/file/d/1rE-u847zxv49vShADpMhgVIE1cYvZujG/view

Fork inheritance lineage and inherited audits are included when available.
