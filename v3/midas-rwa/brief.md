# Agentic Audit Brief: Midas RWA

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Midas RWA (`midas-rwa`)
- Website: [https://midas.app](https://midas.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: 0g, arbitrum, avalanche, base, berachain, bsc, celo, ethereum, etherlink, ink, katana, linea, mantle, monad, oasis-sapphire, optimism, plasma, plume, polygon, rootstock, scroll, sei, sonic, tac, unichain, xrpl-evm
- Contract surface: 187 unique implementations (187 raw deployments)
- Coverage basis: 0/132 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $113,502,415.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Midas RWA. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 132 contract row(s) across 0g, base, bsc, ethereum, etherlink, katana, monad, oasis-sapphire, optimism, plasma, plume, rootstock, tac, xrpl-evm. Structural roles: 132 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 132
- Structural roles: unclassified (132)
- Contract kinds: contract (132)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 187 contracts are derived from known codebases. 187 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- mAPOLLO Smart Contracts: Issuance vault (`0xc21511edd1e6ecdc36e8ad4c82117033e50d5921`, chain 1)
- mAPOLLO Smart Contracts: mAPOLLO Token (`0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05`, chain 1)
- mAPOLLO Smart Contracts: mAPOLLO/USD Oracle (`0x84303e5568c7b167fa4febc6253cddfe12b7ee4b`, chain 1)
- mAPOLLO Smart Contracts: Redemption Vault (`0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0`, chain 1)
- mBASIS Smart Contracts: Instant Redemption vault (`0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123`, chain 1)
- mBASIS Smart Contracts: Instant Redemption vault (`0xf804a646c034749b5484bf7dfe875f6a4f969840`, chain 8453)
- mBASIS Smart Contracts: Instant Redemption vault (`0x02e58de067a0c63b3656d7e1df9ecbcbc9e5ffc6`, chain 42793)
- mBASIS Smart Contracts: Instant Redemption vault (`0x9b0d0bdae237116f711e8c9d900b5ddcc8ef8b5d`, chain 98866)
- mBASIS Smart Contracts: Issuance vault (`0xa8a5c4ff4c86a459ebbdc39c5be77833b3a15d88`, chain 1)
- mBASIS Smart Contracts: Issuance vault (`0x80b666d60293217661e7382737bb3e42348f7ce5`, chain 8453)
- mBASIS Smart Contracts: Issuance vault (`0x75c32818ce59d913f9e2aedecd5697566ff9ae4a`, chain 42793)
- mBASIS Smart Contracts: Issuance vault (`0x8f38a24d064b41c990a3f47439a7a7ee713bf8dc`, chain 98866)
- mBASIS Smart Contracts: mBASIS Token (`0x2a8c22e3b10036f3aef5875d04f8441d4188b656`, chain 1)
- mBASIS Smart Contracts: mBASIS Token (`0x1c2757c1fef1038428b5bef062495ce94bbe92b2`, chain 8453)
- mBASIS Smart Contracts: mBASIS Token (`0x2247b5a46bb79421a314ab0f0b67ffd11dd37ee4`, chain 42793)
- mBASIS Smart Contracts: mBASIS Token (`0x0c78ca789e826fe339de61934896f5d170b66d78`, chain 98866)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0xe4f2ae539442e1d3fb40f03ceebf4a372a390d24`, chain 1)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0x6d62d3c3c8f9912890788b50299bf4d2c64823b6`, chain 8453)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0x31d211312d9cf5a67436517c324504ebd5bd50a0`, chain 42793)
- mBASIS Smart Contracts: mBASIS/USD Oracle (`0x01d169aab1ab4239d5ce491860a65ba832f72ef2`, chain 98866)
- mBASIS Smart Contracts: Standard Redemption vault (`0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b`, chain 1)
- mBTC Smart Contracts: Issuance vault (`0x10cc8dbca90db7606013d8cd2e77eb024df693bd`, chain 1)
- mBTC Smart Contracts: Issuance vault (`0x79a15707e2766d486681569bd1041821f5e32998`, chain 30)
- mBTC Smart Contracts: mBTC Token (`0x007115416ab6c266329a03b09a8aa39ac2ef7d9d`, chain 1)
- mBTC Smart Contracts: mBTC Token (`0xef85254aa4a8490bcc9c02ae38513cae8303fb53`, chain 30)
- mBTC Smart Contracts: mBTC/USD Oracle (`0xa537ef0343e83761ed42b8e017a1e495c9a189ee`, chain 1)
- mBTC Smart Contracts: mBTC/USD Oracle (`0xa167bfbeeb48815efb3e3393d91ec586c2421821`, chain 30)
- mBTC Smart Contracts: Redemption Vault (`0x30d9d1e76869516aea980390494aaed45c3efc1a`, chain 1)
- mBTC Smart Contracts: Redemption Vault (`0xe7a1a676d0cca2e20a69add500985c7271a40205`, chain 30)
- mEDGE Smart Contracts: Issuance vault (`0xfe8de16f2663c61187c1e15fb04d773e6ac668cc`, chain 1)
- mEDGE Smart Contracts: Issuance vault (`0xdf7deb47635af76da5e455c6b0f4e26222326fd9`, chain 143)
- mEDGE Smart Contracts: Issuance vault (`0x72a93168ae79f269deb2b1892f2afd7eaa800271`, chain 16661)
- mEDGE Smart Contracts: Issuance vault (`0x23de49c9ecb8baaf4abded123fafbb7d5b7a0ee2`, chain 98866)
- mEDGE Smart Contracts: mEDGE Token (`0xbb51e2a15a9158ebe2b0ceb8678511e063ab7a55`, chain 1)
- mEDGE Smart Contracts: mEDGE Token (`0x1c8ee940b654bfced403f2a44c1603d5be0f50fa`, chain 143)
- mEDGE Smart Contracts: mEDGE Token (`0xa1027783fc183a150126b094037a5eb2f5db30ba`, chain 16661)
- mEDGE Smart Contracts: mEDGE Token (`0x69020311836d29ba7d38c1d3578736fd3ded03ed`, chain 98866)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0x698da5d987a71b68ebf30c1555cfd38f190406b7`, chain 1)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0x33f3cd52c55416ca2eac184b62fa7481af88271d`, chain 143)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0xc0a696cb0b56f6eb20ba7629b54356b0df245447`, chain 16661)
- mEDGE Smart Contracts: mEDGE/USD Oracle (`0x7d5622aa8cc259ae39fba51f3c1849797fb7e82d`, chain 98866)
- mEDGE Smart Contracts: Redemption Vault (`0x9b2c5e30e3b1f6369fc746a1c1e47277396af15d`, chain 1)
- mEDGE Smart Contracts: Redemption Vault (`0x2ce347decfc8dab433c4eb6ca171747e5a82c332`, chain 143)
- mEDGE Smart Contracts: Redemption Vault (`0x9dae503014edc48a4d8fe789f22c70ae650eb79b`, chain 16661)
- mEDGE Smart Contracts: Redemption Vault (`0xc874394cd67f7de462eb5c25889bec9744bc0f80`, chain 98866)
- mevBTC Smart Contracts: Issuance vault (`0xa6d60a71844bc134f4303f5e40169d817b491e37`, chain 1)
- mevBTC Smart Contracts: mevBTC Token (`0xb64c014307622eb15046c66ff71d04258f5963dc`, chain 1)
- mevBTC Smart Contracts: mevBTC/USD Oracle (`0xffd462e0602dd9ff3f038fd4e77a533f8c474b65`, chain 1)
- mevBTC Smart Contracts: Redemption Vault (`0x2d7d5b1706653796602617350571b3f8999b950c`, chain 1)
- mEVUSD Smart Contracts: Issuance vault (`0x5455222ccdd32f85c1998f57dc6cf613b4498c2a`, chain 1)
- mEVUSD Smart Contracts: Issuance vault (`0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61`, chain 8453)
- mEVUSD Smart Contracts: mEVUSD Oracle (`0x6f51d8af5be2cf3517b8d6cd07361be382e83be6`, chain 1)
- mEVUSD Smart Contracts: mEVUSD Oracle (`0x4fe7f62b2f4ef077aed8f458c8b4652f5de8080f`, chain 8453)
- mEVUSD Smart Contracts: mEVUSD Token (`0x548857309befb6fb6f20a9c5a56c9023d892785b`, chain 1)
- mEVUSD Smart Contracts: mEVUSD Token (`0xccbad2823328bccaea6476df3aa529316ab7474a`, chain 8453)
- mEVUSD Smart Contracts: Redemption Vault (`0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f`, chain 1)
- mEVUSD Smart Contracts: Redemption Vault (`0x9bf00b7cfc00d6a7a2e2c994db8c8dca467ee359`, chain 8453)
- mf-ONE Smart Contracts: Issuance vault (`0x41438435c20b1c2f1fca702d387889f346a0c3de`, chain 1)
- mf-ONE Smart Contracts: mFONE Token (`0x238a700ed6165261cf8b2e544ba797bc11e466ba`, chain 1)
- mf-ONE Smart Contracts: mFONE/USD Oracle (`0x8d51dbc85ceef637c97d02bdaabb5e274850e68c`, chain 1)
- mf-ONE Smart Contracts: Redemption Vault (`0x44b0440e35c596e858cea433d0d82f5a985fd19c`, chain 1)
- mFARM Smart Contracts: Issuance vault (`0x695fb34b07a8cec2411b1bb519fd8f1731850c81`, chain 1)
- mFARM Smart Contracts: mFARM Token (`0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6`, chain 1)
- mFARM Smart Contracts: mFARM/USD Oracle (`0x65df7299a9010e399a38d6b7159d25239cdf039b`, chain 1)
- mFARM Smart Contracts: Redemption Vault (`0xf4f042d90f0c0d3aba4a30caa6ac124b14a7e600`, chain 1)
- mGLO Smart Contracts: Issuance vault (`0x2b7e9c9a72a31e4299f735d6e13445b320701df1`, chain 8453)
- mGLO Smart Contracts: mGLO Token (`0xfcc9cc1209651ed8867332d6f664cf82743a2584`, chain 8453)
- mGLO Smart Contracts: mGLO/USD Oracle (`0x6b593a5fabb90f36e125562db833f761d274fcbc`, chain 8453)
- mGLO Smart Contracts: Redemption Vault swapper (`0xa80f9bffff91cbc13314fefd05560032af018f18`, chain 8453)
- mGLOBAL Smart Contracts: Issuance vault (`0xce29c36c6d4556f2d01d79414c1354b968dddef1`, chain 1)
- mGLOBAL Smart Contracts: mGLOBAL Token (`0x7433806912eae67919e66aea853d46fa0aef98a8`, chain 1)
- mGLOBAL Smart Contracts: mGLOBAL/USD Oracle (`0x66aa9fcd63df74e1f67a9452e6e59fbc67f75e38`, chain 1)
- mGLOBAL Smart Contracts: Redemption Vault aave (`0x1e0fd66753198c7b8ba64edee8d41d8628bf20d7`, chain 1)
- mGLOBAL Smart Contracts: Redemption Vault swapper (`0xa0fc8bdfb1e6a705c1375810989b1d70a982b01b`, chain 1)
- mHYPER Smart Contracts: Issuance vault (`0xba9fd2850965053ffab368df8aa7ed2486f11024`, chain 1)
- mHYPER Smart Contracts: Issuance vault (`0xa603cf264adeb8e7f0f063c116929adac2d4286e`, chain 9745)
- mHYPER Smart Contracts: mHYPER OFT (`0x148c86390a4ae6f7a02df5903bc0a89e8b4581a0`, chain 1)
- mHYPER Smart Contracts: mHYPER OFT (`0x08bc5ef2e2afe697614bf3a9eaa71dcbb577f2df`, chain 143)
- mHYPER Smart Contracts: mHYPER Token (`0x9b5528528656dbc094765e2abb79f293c21191b9`, chain 1)
- mHYPER Smart Contracts: mHYPER Token (`0xd90f6bfed23ffde40106fc4498dd2e9edb95e4e7`, chain 143)
- mHYPER Smart Contracts: mHYPER Token (`0xb31bea5c2a43f942a3800558b1aa25978da75f8a`, chain 9745)
- mHYPER Smart Contracts: mHYPER/USD Oracle (`0x43881b05c3be68b2d33eb70addf9f666c5005f68`, chain 1)
- mHYPER Smart Contracts: mHYPER/USD Oracle (`0xf3bbd544f8453ee82211709422d8d7906f816584`, chain 143)
- mHYPER Smart Contracts: mHYPER/USD Oracle (`0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0`, chain 9745)
- mHYPER Smart Contracts: Redemption Vault (`0x6be2f55816efd0d91f52720f096006d63c366e98`, chain 1)
- mHYPER Smart Contracts: Redemption Vault (`0x880661f9b412065d616890ca458dccd0146cb77c`, chain 9745)
- mHyperBTC Smart Contracts: Issuance vault (`0xed22a9861c6edd4f1292aeab1e44661d5f3fe65e`, chain 1)
- mHyperBTC Smart Contracts: Issuance vault (`0x82dd60b6e3f1f3db025a715952b0e9f96b7d7a53`, chain 30)
- mHyperBTC Smart Contracts: mHyperBTC OFT (`0xb67f81069e890a1b3e02c7bed3a9f78ba54a445c`, chain 1)
- mHyperBTC Smart Contracts: mHyperBTC OFT (`0xe9977b9b22ed2c19dcd68d0403163efcd45bf874`, chain 143)
- mHyperBTC Smart Contracts: mHyperBTC Token (`0xc8495eaff71d3a563b906295fcf2f685b1783085`, chain 1)
- mHyperBTC Smart Contracts: mHyperBTC Token (`0x7f71f02ae0945364f658860d67dbc10c86ca3a3c`, chain 30)
- mHyperBTC Smart Contracts: mHyperBTC Token (`0xf7cf282ec810fded974f99c0163e792f432892bc`, chain 143)
- mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle (`0x3359921992c33ef23169193a6c91f2944a82517c`, chain 1)
- mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle (`0xf940a175794fe571fd6e45d8c4f57c642c978827`, chain 30)
- mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle (`0x165d2e3c0a368988f497f649b6fe2134be20fd8c`, chain 143)
- mHyperBTC Smart Contracts: Redemption Vault (`0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67`, chain 1)
- mHyperBTC Smart Contracts: Redemption Vault (`0x4f4da20f45ce2c94e84b93e4d73f3f3f33b8b570`, chain 30)
- mHyperETH Smart Contracts: Issuance vault (`0x57b3be350c777892611cedc93bcf8c099a9ecdab`, chain 1)
- mHyperETH Smart Contracts: mHyperETH Token (`0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1`, chain 1)
- mHyperETH Smart Contracts: mHyperETH/ETH Oracle (`0x5c81ee2c3ee8aaac2eef68ecb512472d9e08a0fd`, chain 1)
- mHyperETH Smart Contracts: Redemption Vault (`0x15f724b35a75f0c28f352b952ea9d1b24e348c57`, chain 1)
- mM1-USD Smart Contracts: Issuance vault (`0x0f7e323103b29e1b18d521de957ed0c4c0a8189e`, chain 1)
- mM1-USD Smart Contracts: mM1-USD Token (`0xcc5c22c7a6bcc25e66726aef011dde74289ed203`, chain 1)
- mM1-USD Smart Contracts: mM1-USD/USD Oracle (`0xad316aa927c0970c2e8f0b903211d0bd19a10702`, chain 1)
- mM1-USD Smart Contracts: Redemption Vault (`0x70ba3211f2584bf1c8a2acdf0a00dba559ce1ffa`, chain 1)
- mMEV Smart Contracts: Issuance vault (`0xe092737d412e0b290380f9c8548cb5a58174704f`, chain 1)
- mMEV Smart Contracts: Issuance vault (`0x577617613c4fac5a7561f8f3f2cb128a560774bc`, chain 42793)
- mMEV Smart Contracts: Issuance vault (`0xe6f0c60fca2bd97d633a3d9d49dbefdf19636d8c`, chain 98866)
- mMEV Smart Contracts: mMEV Token (`0x030b69280892c888670edcdcd8b69fd8026a0bf3`, chain 1)
- mMEV Smart Contracts: mMEV Token (`0x5542f82389b76c23f5848268893234d8a63fd5c8`, chain 42793)
- mMEV Smart Contracts: mMEV Token (`0x7d611dc23267f508de90724731dc88ca28ef7473`, chain 98866)
- mMEV Smart Contracts: mMEV/USD Oracle (`0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61`, chain 1)
- mMEV Smart Contracts: mMEV/USD Oracle (`0x077670b2138cc23f9a9d0c735c3ae1d4747bb516`, chain 42793)
- mMEV Smart Contracts: mMEV/USD Oracle (`0x4e5b43c9c8b7299fd5c7410b18e3c0b718852061`, chain 98866)
- mMEV Smart Contracts: Redemption Vault (`0xac14a14f578c143625fc8f54218911e8f634184d`, chain 1)
- mMEV Smart Contracts: Redemption Vault (`0x403a92a980903707fd8a3a1101f48eb3ebd58166`, chain 42793)
- mMEV Smart Contracts: Redemption Vault (`0x331af8984d9f10c5173e69537f41313996e7c3cc`, chain 98866)
- mRe7BTC Smart Contracts: Issuance vault (`0x5e154946561aea4e750aac6dead23d37e00e47f6`, chain 1)
- mRe7BTC Smart Contracts: mRe7BTC Token (`0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a`, chain 1)
- mRe7BTC Smart Contracts: mRe7BTC/USD Oracle (`0x9de073685aeb382b7c6dd0fb93fa0aef80eb8967`, chain 1)
- mRe7BTC Smart Contracts: Redemption Vault (`0x4fd4dd7171d14e5bd93025ec35374d2b9b4321b0`, chain 1)
- mRe7ETH Smart Contracts: Issuance vault (`0xc562f73add198ce47e9af5b0752de3d7c991225d`, chain 10)
- mRe7ETH Smart Contracts: mRe7ETH Token (`0xe7ba07519dfa06e60059563f484d6090dedf21b3`, chain 10)
- mRe7ETH Smart Contracts: mRe7ETH/ETH Oracle (`0xcffe26979e96b9e0454cc83aa03fc973c9eb0e5e`, chain 10)
- mRe7ETH Smart Contracts: Redemption Vault (`0x2c8aee33a6b1ebdd047903b5fde01d71b8854e6d`, chain 10)
- mRe7SOL Smart Contracts: Issuance vault (`0x175a9b122bf22ac2b193a0a775d7370d5a75268e`, chain 747474)
- mRe7SOL Smart Contracts: mRe7SOL Token (`0xc6135d59f8d10c9c035963ce9037b3635170d716`, chain 747474)
- mRe7SOL Smart Contracts: mRe7SOL/USD Oracle (`0x3e4b4b3aed4c51a6652cdb96732ac98c37b9837b`, chain 747474)
- mRe7SOL Smart Contracts: Redemption Vault (`0xe93e6cf151588d63bb669138277d20f28c2e7cda`, chain 747474)
- mRe7YIELD Smart Contracts: Issuance vault (`0xce0a2953a5d46400af601a9857235312d1924ac7`, chain 1)
- mRe7YIELD Smart Contracts: Issuance vault (`0xbd2ce9d5f2c682fca3ce587bf1c041ad8ddd2a69`, chain 239)
- mRe7YIELD Smart Contracts: Issuance vault (`0xbef85e71ecd0517d0c1446751667891b04860753`, chain 42793)
- mRe7YIELD Smart Contracts: mRe7YIELD Token (`0x87c9053c819bb28e0d73d33059e1b3da80afb0cf`, chain 1)
- mRe7YIELD Smart Contracts: mRe7YIELD Token (`0x0a72ed3c34352ab2dd912b30f2252638c873d6f0`, chain 239)
- mRe7YIELD Smart Contracts: mRe7YIELD Token (`0x733d504435a49fc8c4e9759e756c2846c92f0160`, chain 42793)
- mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle (`0x0a2a51f2f206447de3e3a80fcf92240244722395`, chain 1)
- mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle (`0xbba185027f6c62dac2d7f95cd582785e22d61738`, chain 239)
- mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle (`0x1989329b72c1c81e5460481671298a5a046f3b8e`, chain 42793)
- mRe7YIELD Smart Contracts: Redemption Vault (`0x5356b8e06589de894d86b24f4079c629e8565234`, chain 1)
- mRe7YIELD Smart Contracts: Redemption Vault (`0x911f9af9138284a49b29f9894571fb86e29d1d79`, chain 239)
- mRe7YIELD Smart Contracts: Redemption Vault (`0xb24056ae566e24e35de798880e2dc28e2130de90`, chain 42793)
- mROX Smart Contracts: Issuance vault (`0x511d88e64d843ee11bf039a3eb837393001aede7`, chain 1)
- mROX Smart Contracts: mROX Token (`0x67e1f506b148d0fc95a4e3ffb49068ceb6855c05`, chain 1)
- mROX Smart Contracts: mROX/USD Oracle (`0x7ff56c3a31476c231e74e4f64e9d9718572b54aa`, chain 1)
- mROX Smart Contracts: Redemption Vault (`0xc33dada688f224c514682ec6ba940888d43c4b29`, chain 1)
- msyrupUSD Smart Contracts: Issuance vault (`0x5ae23d23b7986a708cba9bf808ad9a43bf77d1b7`, chain 1)
- msyrupUSD Smart Contracts: msyrupUSD Token (`0x20226607b4fa64228abf3072ce561d6257683464`, chain 1)
- msyrupUSD Smart Contracts: msyrupUSD/USD Oracle (`0x41c60765fa36109b19b21719f4593f19ddefa663`, chain 1)
- msyrupUSD Smart Contracts: Redemption Vault (`0x9f7dd5462c183b6577858e16a13a4d864ce2f972`, chain 1)
- msyrupUSDp Smart Contracts: Issuance vault (`0x8493f1f2b834c2837c87075b0edac17f5273789a`, chain 1)
- msyrupUSDp Smart Contracts: msyrupUSDp Token (`0x2fe058ccf29f123f9dd2aec0418aa66a877d8e50`, chain 1)
- msyrupUSDp Smart Contracts: msyrupUSDp/USD Oracle (`0x337d914ff6622510fc2c63ac59c1d07983895241`, chain 1)
- msyrupUSDp Smart Contracts: Redemption Vault (`0x71efa7af1686c5c04aa34a120a91cb4262679c44`, chain 1)
- mTBILL Smart Contracts: Instant Redemption vault (`0x569d7dccbf6923350521ecbc28a555a500c4f0ec`, chain 1)
- mTBILL Smart Contracts: Instant Redemption vault (`0x99d22115fd6706b78703ff015de897d43667d12f`, chain 30)
- mTBILL Smart Contracts: Instant Redemption vault (`0x2a8c22e3b10036f3aef5875d04f8441d4188b656`, chain 8453)
- mTBILL Smart Contracts: Instant Redemption vault (`0xf939e88ecad43115116c7106dfdbdc4b1315a7ee`, chain 23294)
- mTBILL Smart Contracts: Instant Redemption vault (`0x7f938d26b6179a96870afaecfb0578110e53a3b2`, chain 42793)
- mTBILL Smart Contracts: Instant Redemption vault (`0x3ac6b2bf09f470e5674c3da60be7d2da2791f897`, chain 98866)
- mTBILL Smart Contracts: Issuance vault (`0x99361435420711723af805f08187c9e6bf796683`, chain 1)
- mTBILL Smart Contracts: Issuance vault (`0xf454a52da2157686ef99702c0c19c0e8d66bc03c`, chain 30)
- mTBILL Smart Contracts: Issuance vault (`0x8978e327fe7c72fa4eaf4649c23147e279ae1470`, chain 8453)
- mTBILL Smart Contracts: Issuance vault (`0xd7fe0e91c05cafdd26da4b176eec2b883795bdcc`, chain 23294)
- mTBILL Smart Contracts: Issuance vault (`0xd65bfeb71271a4408ff335e59ecf6c5b21a33a70`, chain 42793)
- mTBILL Smart Contracts: Issuance vault (`0xb05f6aa8c2ea9ab8537cf09a9b765a21de249224`, chain 98866)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e5241cbc5919847783e6c96b2de4754e438`, chain 1)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e5241cbc5919847783e6c96b2de4754e438`, chain 30)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e5241cbc5919847783e6c96b2de4754e438`, chain 8453)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e5241cbc5919847783e6c96b2de4754e438`, chain 23294)
- mTBILL Smart Contracts: mTBILL Token (`0xdd629e5241cbc5919847783e6c96b2de4754e438`, chain 42793)
- mTBILL Smart Contracts: mTBILL Token (`0xe85f2b707ec5ae8e07238f99562264f304e30109`, chain 98866)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x056339c044055819e8db84e71f5f2e1f536b2e5b`, chain 1)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x0ca36af4915a73daf06912dd256b8a4737131ae7`, chain 30)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x70e58b7a1c884fffe7dbce5249337603a28b8422`, chain 8453)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0xf76d11d4473ea49a420460b72798fc3b38d4d0cf`, chain 23294)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0x80da45b66c4cbab140ae53c9accb01be4f41b7dd`, chain 42793)
- mTBILL Smart Contracts: mTBILL/USD Oracle (`0xb701abea3e4b6eadac4f56696904c5f551d2617b`, chain 98866)
- mTBILL Smart Contracts: Standard Redemption vault (`0xf6e51d24f4793ac5e71e0502213a9bbe3a6d4517`, chain 1)
- mXRP Smart Contracts: Issuance vault (`0x30b59844ec16aba3ec4ca0bd97557ccb670d924e`, chain 56)
- mXRP Smart Contracts: Issuance vault (`0x30fbc82a72ca674aa250cd6c27bcca1fe602f1bb`, chain 1440000)
- mXRP Smart Contracts: mXRP Token (`0xc8739fbbd54c587a2ad43b50cbcc30ae34fe9e34`, chain 56)
- mXRP Smart Contracts: mXRP Token (`0x06e0b0f1a644bb9881f675ef266cec15a63a3d47`, chain 1440000)
- mXRP Smart Contracts: mXRP/USD Oracle (`0x3bde0b7b59769ec00c44c77090d88feb4516e731`, chain 56)
- mXRP Smart Contracts: mXRP/USD Oracle (`0xff64785ee22d764f8e79812102d3fa7f2d3437af`, chain 1440000)
- mXRP Smart Contracts: Redemption Vault (`0x73685bd72df34b92bc81d43ef35cff4300de8625`, chain 56)
- mXRP Smart Contracts: Redemption Vault (`0xdac1b058ce42b67ba33dbfdba972d76c83c085d6`, chain 1440000)

## Contract Surface Quality

- Logic-topography rows: 132; live-surface rows included: 132 (132 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 187/190 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/132 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 187 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 187 of 187 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/132
- Verified + Unaudited implementations: 132
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 187
- Raw deployments: 187
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

### ⚠️ Verified + Unaudited (132)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| mAPOLLO Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247821 | `0xc21511edd1e6ecdc36e8ad4c82117033e50d5921` | ⚠️ Unaudited |
| mAPOLLO Smart Contracts: mAPOLLO Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247797 | `0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05` | ⚠️ Unaudited |
| mAPOLLO Smart Contracts: mAPOLLO/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247799 | `0x84303e5568c7b167fa4febc6253cddfe12b7ee4b` | ⚠️ Unaudited |
| mAPOLLO Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247783 | `0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247754 | `0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | base | unit-247918 | `0xf804a646c034749b5484bf7dfe875f6a4f969840` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247814 | `0xa8a5c4ff4c86a459ebbdc39c5be77833b3a15d88` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247912 | `0x80b666d60293217661e7382737bb3e42348f7ce5` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247764 | `0x2a8c22e3b10036f3aef5875d04f8441d4188b656` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | base | unit-247904 | `0x1c2757c1fef1038428b5bef062495ce94bbe92b2` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247829 | `0xe4f2ae539442e1d3fb40f03ceebf4a372a390d24` | ⚠️ Unaudited |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247910 | `0x6d62d3c3c8f9912890788b50299bf4d2c64823b6` | ⚠️ Unaudited |
| mBASIS Smart Contracts: Standard Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247760 | `0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b` | ⚠️ Unaudited |
| mBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247756 | `0x10cc8dbca90db7606013d8cd2e77eb024df693bd` | ⚠️ Unaudited |
| mBTC Smart Contracts: mBTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247750 | `0x007115416ab6c266329a03b09a8aa39ac2ef7d9d` | ⚠️ Unaudited |
| mBTC Smart Contracts: mBTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247812 | `0xa537ef0343e83761ed42b8e017a1e495c9a189ee` | ⚠️ Unaudited |
| mBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247767 | `0x30d9d1e76869516aea980390494aaed45c3efc1a` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247833 | `0xfe8de16f2663c61187c1e15fb04d773e6ac668cc` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | monad | unit-247848 | `0xdf7deb47635af76da5e455c6b0f4e26222326fd9` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247820 | `0xbb51e2a15a9158ebe2b0ceb8678511e063ab7a55` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | monad | unit-247842 | `0x1c8ee940b654bfced403f2a44c1603d5be0f50fa` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247791 | `0x698da5d987a71b68ebf30c1555cfd38f190406b7` | ⚠️ Unaudited |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | monad | unit-247845 | `0x33f3cd52c55416ca2eac184b62fa7481af88271d` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247804 | `0x9b2c5e30e3b1f6369fc746a1c1e47277396af15d` | ⚠️ Unaudited |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | monad | unit-247844 | `0x2ce347decfc8dab433c4eb6ca171747e5a82c332` | ⚠️ Unaudited |
| mevBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247813 | `0xa6d60a71844bc134f4303f5e40169d817b491e37` | ⚠️ Unaudited |
| mevBTC Smart Contracts: mevBTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247817 | `0xb64c014307622eb15046c66ff71d04258f5963dc` | ⚠️ Unaudited |
| mevBTC Smart Contracts: mevBTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247834 | `0xffd462e0602dd9ff3f038fd4e77a533f8c474b65` | ⚠️ Unaudited |
| mevBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247765 | `0x2d7d5b1706653796602617350571b3f8999b950c` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247777 | `0x5455222ccdd32f85c1998f57dc6cf613b4498c2a` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247908 | `0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247793 | `0x6f51d8af5be2cf3517b8d6cd07361be382e83be6` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247907 | `0x4fe7f62b2f4ef077aed8f458c8b4652f5de8080f` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247778 | `0x548857309befb6fb6f20a9c5a56c9023d892785b` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: mEVUSD Token | unknown | project_anchor | own_supporting | 0 | base | unit-247916 | `0xccbad2823328bccaea6476df3aa529316ab7474a` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247806 | `0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f` | ⚠️ Unaudited |
| mEVUSD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | base | unit-247914 | `0x9bf00b7cfc00d6a7a2e2c994db8c8dca467ee359` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247770 | `0x41438435c20b1c2f1fca702d387889f346a0c3de` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: mFONE Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247763 | `0x238a700ed6165261cf8b2e544ba797bc11e466ba` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: mFONE/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247802 | `0x8d51dbc85ceef637c97d02bdaabb5e274850e68c` | ⚠️ Unaudited |
| mf-ONE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247773 | `0x44b0440e35c596e858cea433d0d82f5a985fd19c` | ⚠️ Unaudited |
| mFARM Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247790 | `0x695fb34b07a8cec2411b1bb519fd8f1731850c81` | ⚠️ Unaudited |
| mFARM Smart Contracts: mFARM Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247811 | `0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6` | ⚠️ Unaudited |
| mFARM Smart Contracts: mFARM/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247787 | `0x65df7299a9010e399a38d6b7159d25239cdf039b` | ⚠️ Unaudited |
| mFARM Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247831 | `0xf4f042d90f0c0d3aba4a30caa6ac124b14a7e600` | ⚠️ Unaudited |
| mGLO Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247906 | `0x2b7e9c9a72a31e4299f735d6e13445b320701df1` | ⚠️ Unaudited |
| mGLO Smart Contracts: mGLO Token | unknown | project_anchor | own_supporting | 0 | base | unit-247919 | `0xfcc9cc1209651ed8867332d6f664cf82743a2584` | ⚠️ Unaudited |
| mGLO Smart Contracts: mGLO/USD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247909 | `0x6b593a5fabb90f36e125562db833f761d274fcbc` | ⚠️ Unaudited |
| mGLO Smart Contracts: Redemption Vault swapper | unknown | project_anchor | own_supporting | 0 | base | unit-247915 | `0xa80f9bffff91cbc13314fefd05560032af018f18` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247826 | `0xce29c36c6d4556f2d01d79414c1354b968dddef1` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: mGLOBAL Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247796 | `0x7433806912eae67919e66aea853d46fa0aef98a8` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: mGLOBAL/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247788 | `0x66aa9fcd63df74e1f67a9452e6e59fbc67f75e38` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: Redemption Vault aave | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247761 | `0x1e0fd66753198c7b8ba64edee8d41d8628bf20d7` | ⚠️ Unaudited |
| mGLOBAL Smart Contracts: Redemption Vault swapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247810 | `0xa0fc8bdfb1e6a705c1375810989b1d70a982b01b` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247819 | `0xba9fd2850965053ffab368df8aa7ed2486f11024` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plasma | unit-247921 | `0xa603cf264adeb8e7f0f063c116929adac2d4286e` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER OFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247757 | `0x148c86390a4ae6f7a02df5903bc0a89e8b4581a0` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-247840 | `0x08bc5ef2e2afe697614bf3a9eaa71dcbb577f2df` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247805 | `0x9b5528528656dbc094765e2abb79f293c21191b9` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER Token | unknown | project_anchor | own_supporting | 0 | monad | unit-247847 | `0xd90f6bfed23ffde40106fc4498dd2e9edb95e4e7` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER Token | unknown | project_anchor | own_supporting | 0 | plasma | unit-247922 | `0xb31bea5c2a43f942a3800558b1aa25978da75f8a` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247772 | `0x43881b05c3be68b2d33eb70addf9f666c5005f68` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER/USD Oracle | unknown | project_anchor | own_supporting | 0 | monad | unit-247850 | `0xf3bbd544f8453ee82211709422d8d7906f816584` | ⚠️ Unaudited |
| mHYPER Smart Contracts: mHYPER/USD Oracle | unknown | project_anchor | own_supporting | 0 | plasma | unit-247923 | `0xfc3e47c4da8f3a01ac76c3c5ecfbfc302e1a08f0` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247792 | `0x6be2f55816efd0d91f52720f096006d63c366e98` | ⚠️ Unaudited |
| mHYPER Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | plasma | unit-247920 | `0x880661f9b412065d616890ca458dccd0146cb77c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247830 | `0xed22a9861c6edd4f1292aeab1e44661d5f3fe65e` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC OFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247818 | `0xb67f81069e890a1b3e02c7bed3a9f78ba54a445c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-247849 | `0xe9977b9b22ed2c19dcd68d0403163efcd45bf874` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247823 | `0xc8495eaff71d3a563b906295fcf2f685b1783085` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC Token | unknown | project_anchor | own_supporting | 0 | monad | unit-247851 | `0xf7cf282ec810fded974f99c0163e792f432892bc` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247768 | `0x3359921992c33ef23169193a6c91f2944a82517c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle | unknown | project_anchor | own_supporting | 0 | monad | unit-247841 | `0x165d2e3c0a368988f497f649b6fe2134be20fd8c` | ⚠️ Unaudited |
| mHyperBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247759 | `0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247780 | `0x57b3be350c777892611cedc93bcf8c099a9ecdab` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: mHyperETH Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247781 | `0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: mHyperETH/ETH Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247784 | `0x5c81ee2c3ee8aaac2eef68ecb512472d9e08a0fd` | ⚠️ Unaudited |
| mHyperETH Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247758 | `0x15f724b35a75f0c28f352b952ea9d1b24e348c57` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247755 | `0x0f7e323103b29e1b18d521de957ed0c4c0a8189e` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: mM1-USD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247824 | `0xcc5c22c7a6bcc25e66726aef011dde74289ed203` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: mM1-USD/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247816 | `0xad316aa927c0970c2e8f0b903211d0bd19a10702` | ⚠️ Unaudited |
| mM1-USD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247794 | `0x70ba3211f2584bf1c8a2acdf0a00dba559ce1ffa` | ⚠️ Unaudited |
| mMEV Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247828 | `0xe092737d412e0b290380f9c8548cb5a58174704f` | ⚠️ Unaudited |
| mMEV Smart Contracts: mMEV Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247751 | `0x030b69280892c888670edcdcd8b69fd8026a0bf3` | ⚠️ Unaudited |
| mMEV Smart Contracts: mMEV/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247786 | `0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61` | ⚠️ Unaudited |
| mMEV Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247815 | `0xac14a14f578c143625fc8f54218911e8f634184d` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247785 | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: mRe7BTC Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247809 | `0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: mRe7BTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247807 | `0x9de073685aeb382b7c6dd0fb93fa0aef80eb8967` | ⚠️ Unaudited |
| mRe7BTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247774 | `0x4fd4dd7171d14e5bd93025ec35374d2b9b4321b0` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-247836 | `0xc562f73add198ce47e9af5b0752de3d7c991225d` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: mRe7ETH Token | unknown | project_anchor | own_supporting | 0 | optimism | unit-247838 | `0xe7ba07519dfa06e60059563f484d6090dedf21b3` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: mRe7ETH/ETH Oracle | unknown | project_anchor | own_supporting | 0 | optimism | unit-247837 | `0xcffe26979e96b9e0454cc83aa03fc973c9eb0e5e` | ⚠️ Unaudited |
| mRe7ETH Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-247835 | `0x2c8aee33a6b1ebdd047903b5fde01d71b8854e6d` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | katana | unit-247900 | `0x175a9b122bf22ac2b193a0a775d7370d5a75268e` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: mRe7SOL Token | unknown | project_anchor | own_supporting | 0 | katana | unit-247902 | `0xc6135d59f8d10c9c035963ce9037b3635170d716` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: mRe7SOL/USD Oracle | unknown | project_anchor | own_supporting | 0 | katana | unit-247901 | `0x3e4b4b3aed4c51a6652cdb96732ac98c37b9837b` | ⚠️ Unaudited |
| mRe7SOL Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | katana | unit-247903 | `0xe93e6cf151588d63bb669138277d20f28c2e7cda` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247825 | `0xce0a2953a5d46400af601a9857235312d1924ac7` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: mRe7YIELD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247801 | `0x87c9053c819bb28e0d73d33059e1b3da80afb0cf` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247753 | `0x0a2a51f2f206447de3e3a80fcf92240244722395` | ⚠️ Unaudited |
| mRe7YIELD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247776 | `0x5356b8e06589de894d86b24f4079c629e8565234` | ⚠️ Unaudited |
| mROX Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247775 | `0x511d88e64d843ee11bf039a3eb837393001aede7` | ⚠️ Unaudited |
| mROX Smart Contracts: mROX Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247789 | `0x67e1f506b148d0fc95a4e3ffb49068ceb6855c05` | ⚠️ Unaudited |
| mROX Smart Contracts: mROX/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247798 | `0x7ff56c3a31476c231e74e4f64e9d9718572b54aa` | ⚠️ Unaudited |
| mROX Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247822 | `0xc33dada688f224c514682ec6ba940888d43c4b29` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247782 | `0x5ae23d23b7986a708cba9bf808ad9a43bf77d1b7` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: msyrupUSD Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247762 | `0x20226607b4fa64228abf3072ce561d6257683464` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: msyrupUSD/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247771 | `0x41c60765fa36109b19b21719f4593f19ddefa663` | ⚠️ Unaudited |
| msyrupUSD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247808 | `0x9f7dd5462c183b6577858e16a13a4d864ce2f972` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247800 | `0x8493f1f2b834c2837c87075b0edac17f5273789a` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: msyrupUSDp Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247766 | `0x2fe058ccf29f123f9dd2aec0418aa66a877d8e50` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: msyrupUSDp/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247769 | `0x337d914ff6622510fc2c63ac59c1d07983895241` | ⚠️ Unaudited |
| msyrupUSDp Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247795 | `0x71efa7af1686c5c04aa34a120a91cb4262679c44` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247779 | `0x569d7dccbf6923350521ecbc28a555a500c4f0ec` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | base | unit-247905 | `0x2a8c22e3b10036f3aef5875d04f8441d4188b656` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247863 | `0xf939e88ecad43115116c7106dfdbdc4b1315a7ee` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247803 | `0x99361435420711723af805f08187c9e6bf796683` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | base | unit-247913 | `0x8978e327fe7c72fa4eaf4649c23147e279ae1470` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247860 | `0xd7fe0e91c05cafdd26da4b176eec2b883795bdcc` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247827 | `0xdd629e5241cbc5919847783e6c96b2de4754e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247875 | `0xdd629e5241cbc5919847783e6c96b2de4754e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | base | unit-247917 | `0xdd629e5241cbc5919847783e6c96b2de4754e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247861 | `0xdd629e5241cbc5919847783e6c96b2de4754e438` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247752 | `0x056339c044055819e8db84e71f5f2e1f536b2e5b` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-247911 | `0x70e58b7a1c884fffe7dbce5249337603a28b8422` | ⚠️ Unaudited |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | oasis-sapphire | unit-247862 | `0xf76d11d4473ea49a420460b72798fc3b38d4d0cf` | ⚠️ Unaudited |
| mTBILL Smart Contracts: Standard Redemption vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247832 | `0xf6e51d24f4793ac5e71e0502213a9bbe3a6d4517` | ⚠️ Unaudited |
| mXRP Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | bsc | unit-247896 | `0x30b59844ec16aba3ec4ca0bd97557ccb670d924e` | ⚠️ Unaudited |
| mXRP Smart Contracts: mXRP Token | unknown | project_anchor | own_supporting | 0 | bsc | unit-247899 | `0xc8739fbbd54c587a2ad43b50cbcc30ae34fe9e34` | ⚠️ Unaudited |
| mXRP Smart Contracts: mXRP/USD Oracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-247897 | `0x3bde0b7b59769ec00c44c77090d88feb4516e731` | ⚠️ Unaudited |
| mXRP Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | bsc | unit-247898 | `0x73685bd72df34b92bc81d43ef35cff4300de8625` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247880 | `0x02e58de067a0c63b3656d7e1df9ecbcbc9e5ffc6` | ❓ Unverified |
| mBASIS Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247934 | `0x9b0d0bdae237116f711e8c9d900b5ddcc8ef8b5d` | ❓ Unverified |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247889 | `0x75c32818ce59d913f9e2aedecd5697566ff9ae4a` | ❓ Unverified |
| mBASIS Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247933 | `0x8f38a24d064b41c990a3f47439a7a7ee713bf8dc` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247883 | `0x2247b5a46bb79421a314ab0f0b67ffd11dd37ee4` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247925 | `0x0c78ca789e826fe339de61934896f5d170b66d78` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247884 | `0x31d211312d9cf5a67436517c324504ebd5bd50a0` | ❓ Unverified |
| mBASIS Smart Contracts: mBASIS/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247924 | `0x01d169aab1ab4239d5ce491860a65ba832f72ef2` | ❓ Unverified |
| mBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247870 | `0x79a15707e2766d486681569bd1041821f5e32998` | ❓ Unverified |
| mBTC Smart Contracts: mBTC Token | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247877 | `0xef85254aa4a8490bcc9c02ae38513cae8303fb53` | ❓ Unverified |
| mBTC Smart Contracts: mBTC/USD Oracle | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247874 | `0xa167bfbeeb48815efb3e3393d91ec586c2421821` | ❓ Unverified |
| mBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247876 | `0xe7a1a676d0cca2e20a69add500985c7271a40205` | ❓ Unverified |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | 0g | unit-247856 | `0x72a93168ae79f269deb2b1892f2afd7eaa800271` | ❓ Unverified |
| mEDGE Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247926 | `0x23de49c9ecb8baaf4abded123fafbb7d5b7a0ee2` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | 0g | unit-247858 | `0xa1027783fc183a150126b094037a5eb2f5db30ba` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247930 | `0x69020311836d29ba7d38c1d3578736fd3ded03ed` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | 0g | unit-247859 | `0xc0a696cb0b56f6eb20ba7629b54356b0df245447` | ❓ Unverified |
| mEDGE Smart Contracts: mEDGE/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247931 | `0x7d5622aa8cc259ae39fba51f3c1849797fb7e82d` | ❓ Unverified |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | 0g | unit-247857 | `0x9dae503014edc48a4d8fe789f22c70ae650eb79b` | ❓ Unverified |
| mEDGE Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247937 | `0xc874394cd67f7de462eb5c25889bec9744bc0f80` | ❓ Unverified |
| mHyperBTC Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247872 | `0x82dd60b6e3f1f3db025a715952b0e9f96b7d7a53` | ❓ Unverified |
| mHyperBTC Smart Contracts: mHyperBTC Token | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247871 | `0x7f71f02ae0945364f658860d67dbc10c86ca3a3c` | ❓ Unverified |
| mHyperBTC Smart Contracts: mHyperBTC/BTC Oracle | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247879 | `0xf940a175794fe571fd6e45d8c4f57c642c978827` | ❓ Unverified |
| mHyperBTC Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247869 | `0x4f4da20f45ce2c94e84b93e4d73f3f3f33b8b570` | ❓ Unverified |
| mMEV Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247887 | `0x577617613c4fac5a7561f8f3f2cb128a560774bc` | ❓ Unverified |
| mMEV Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247938 | `0xe6f0c60fca2bd97d633a3d9d49dbefdf19636d8c` | ❓ Unverified |
| mMEV Smart Contracts: mMEV Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247886 | `0x5542f82389b76c23f5848268893234d8a63fd5c8` | ❓ Unverified |
| mMEV Smart Contracts: mMEV Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247932 | `0x7d611dc23267f508de90724731dc88ca28ef7473` | ❓ Unverified |
| mMEV Smart Contracts: mMEV/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247881 | `0x077670b2138cc23f9a9d0c735c3ae1d4747bb516` | ❓ Unverified |
| mMEV Smart Contracts: mMEV/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247929 | `0x4e5b43c9c8b7299fd5c7410b18e3c0b718852061` | ❓ Unverified |
| mMEV Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247885 | `0x403a92a980903707fd8a3a1101f48eb3ebd58166` | ❓ Unverified |
| mMEV Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247927 | `0x331af8984d9f10c5173e69537f41313996e7c3cc` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | tac | unit-247867 | `0xbd2ce9d5f2c682fca3ce587bf1c041ad8ddd2a69` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247893 | `0xbef85e71ecd0517d0c1446751667891b04860753` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD Token | unknown | project_anchor | own_supporting | 0 | tac | unit-247864 | `0x0a72ed3c34352ab2dd912b30f2252638c873d6f0` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247888 | `0x733d504435a49fc8c4e9759e756c2846c92f0160` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle | unknown | project_anchor | own_supporting | 0 | tac | unit-247866 | `0xbba185027f6c62dac2d7f95cd582785e22d61738` | ❓ Unverified |
| mRe7YIELD Smart Contracts: mRe7YIELD/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247882 | `0x1989329b72c1c81e5460481671298a5a046f3b8e` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | tac | unit-247865 | `0x911f9af9138284a49b29f9894571fb86e29d1d79` | ❓ Unverified |
| mRe7YIELD Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247892 | `0xb24056ae566e24e35de798880e2dc28e2130de90` | ❓ Unverified |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247873 | `0x99d22115fd6706b78703ff015de897d43667d12f` | ❓ Unverified |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247890 | `0x7f938d26b6179a96870afaecfb0578110e53a3b2` | ❓ Unverified |
| mTBILL Smart Contracts: Instant Redemption vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247928 | `0x3ac6b2bf09f470e5674c3da60be7d2da2791f897` | ❓ Unverified |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247878 | `0xf454a52da2157686ef99702c0c19c0e8d66bc03c` | ❓ Unverified |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247894 | `0xd65bfeb71271a4408ff335e59ecf6c5b21a33a70` | ❓ Unverified |
| mTBILL Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | plume | unit-247935 | `0xb05f6aa8c2ea9ab8537cf09a9b765a21de249224` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247895 | `0xdd629e5241cbc5919847783e6c96b2de4754e438` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL Token | unknown | project_anchor | own_supporting | 0 | plume | unit-247939 | `0xe85f2b707ec5ae8e07238f99562264f304e30109` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | rootstock | unit-247868 | `0x0ca36af4915a73daf06912dd256b8a4737131ae7` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | etherlink | unit-247891 | `0x80da45b66c4cbab140ae53c9accb01be4f41b7dd` | ❓ Unverified |
| mTBILL Smart Contracts: mTBILL/USD Oracle | unknown | project_anchor | own_supporting | 0 | plume | unit-247936 | `0xb701abea3e4b6eadac4f56696904c5f551d2617b` | ❓ Unverified |
| mXRP Smart Contracts: Issuance vault | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247853 | `0x30fbc82a72ca674aa250cd6c27bcca1fe602f1bb` | ❓ Unverified |
| mXRP Smart Contracts: mXRP Token | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247852 | `0x06e0b0f1a644bb9881f675ef266cec15a63a3d47` | ❓ Unverified |
| mXRP Smart Contracts: mXRP/USD Oracle | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247855 | `0xff64785ee22d764f8e79812102d3fa7f2d3437af` | ❓ Unverified |
| mXRP Smart Contracts: Redemption Vault | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-247854 | `0xdac1b058ce42b67ba33dbfdba972d76c83c085d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 187 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
