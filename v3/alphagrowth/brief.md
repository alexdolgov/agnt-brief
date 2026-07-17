# Agentic Audit Brief: alphagrowth

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: alphagrowth (`alphagrowth`)
- Website: [https://app.euler.finance/governor/alphagrowth?network=unichain](https://app.euler.finance/governor/alphagrowth?network=unichain)
- Lifecycle: active (Tier 0, 25.2% below peak)
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, unichain
- Contract surface: 252 unique implementations (328 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,315,785.21
- On-chain TVL (included contracts): $5,936,051.72
- TVL by chain: Unichain $2,988,703.54 | Base $1,740,580.58 | Ethereum $1,095,577.81 | Linea $111,189.80

## Project Description

This brief describes the observed EVM deployment and audit surface for alphagrowth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, base, ethereum, linea, unichain. Structural roles: 17 core, 10 unclassified. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: core (17), unclassified (10)
- Contract kinds: contract (27)
- Detected standards: erc1967proxy (16)
- Frameworks: openzeppelin-upgradeable (16), permit2 (1)
- Upgradeable-pattern rows: 16

## Fork Analysis

0 of 230 contracts are derived from known codebases. 230 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0120c2748545a4d9c875cddfb439f786d6f1b460`, chain 1)
- UnnamedContract (`0x056f3a2e41d2778d3a0c0714439c53af2987718e`, chain 1)
- UnnamedContract (`0x09136dac538b54994170a6905507a74562a80ed3`, chain 1)
- UnnamedContract (`0x0c01f00e419977cf452e78aae35ffb95c47d9534`, chain 1)
- UnnamedContract (`0x0dbadddf25ed581d0b8acce9567be0d160fd05f9`, chain 1)
- UnnamedContract (`0x0f93f35c0664a6a8231ccae7e22f652c9c075b32`, chain 1)
- UnnamedContract (`0x117576b8854a03ab7c3df1cf1cd8e04767bfa866`, chain 1)
- UnnamedContract (`0x122e9ea082d8c060bb1a3476aa18b9e739fbbaaf`, chain 1)
- UnnamedContract (`0x155d4a34938dcb27486f5bbf6a19d19d0ef0dd8a`, chain 1)
- UnnamedContract (`0x1987c2dcf5674cf90becebad502714c357ce126a`, chain 1)
- UnnamedContract (`0x1e0b68a83ef062cde687351c472cfd0e9300a06d`, chain 1)
- UnnamedContract (`0x1f46186af85a967416b17380800c69860b7c516f`, chain 1)
- UnnamedContract (`0x25c538cc5c5b4cddf9a9a656f90d2d8129e841b2`, chain 1)
- UnnamedContract (`0x27052ea5e307b6e8566d9ee560231c6742a6c03c`, chain 1)
- UnnamedContract (`0x28c6f8d44179ac93a5ebae24189d887eeef38cea`, chain 1)
- UnnamedContract (`0x2daca71cb58285212dc05d65cfd4f59a82bc4cf6`, chain 1)
- UnnamedContract (`0x2df9753e62f46b299f59e632bd18edfe4970922e`, chain 1)
- UnnamedContract (`0x313603fa690301b0caeef8069c065862f9162162`, chain 1)
- UnnamedContract (`0x3152ec91ec776f918cc2090f58319a5a614536e0`, chain 1)
- UnnamedContract (`0x315f93a074d0948e4d068e98a34092750ea8a38c`, chain 1)
- UnnamedContract (`0x328646cdfbad730432620d845b8f5a2f7d786c01`, chain 1)
- UnnamedContract (`0x3bfa6657982a9ada1388cf798f3f211711daf4e5`, chain 1)
- UnnamedContract (`0x3f7ccaded39fd9d06eb0498abeb7eaab569e79ad`, chain 1)
- UnnamedContract (`0x41722452c0348501825c494ec6c1579e9c32d277`, chain 1)
- UnnamedContract (`0x481d4909d7ca2eb27c4975f08dce07dbef0d3fa7`, chain 1)
- UnnamedContract (`0x561ff99a243868fdf755705b1b83e6c4e8b8b0df`, chain 1)
- UnnamedContract (`0x586719300c3966130b3ce15f563b1080271193e8`, chain 1)
- UnnamedContract (`0x5a0064007dddea2c8d6547a7b1e862c619500994`, chain 1)
- UnnamedContract (`0x5a96128c18018a2cef539f46bbed037dad3caae8`, chain 1)
- UnnamedContract (`0x6173b0709dea144cc3662894870b57c53564cfa2`, chain 1)
- UnnamedContract (`0x61aac438453d6e3513c0c8dbb69f13860e2b5028`, chain 1)
- UnnamedContract (`0x631d8e808f2c4177a8147eaa39a4f57c47634de8`, chain 1)
- UnnamedContract (`0x67e4e4e73947257ca62d118e0fbc56d06f11d96f`, chain 1)
- UnnamedContract (`0x6fc6becae0ffaa08f699ec072f31983821a4d7ce`, chain 1)
- UnnamedContract (`0x74034eb8d5b2e480825263a975e4cf82a081c959`, chain 1)
- UnnamedContract (`0x75e695c60af0780f8c9fa79e37946a02f4481c09`, chain 1)
- UnnamedContract (`0x77710edfedfb7e9186cba71b258c75ea2aed5f84`, chain 1)
- UnnamedContract (`0x797dd80692c3b2dadabce8e30c07fde5307d48a9`, chain 1)
- UnnamedContract (`0x7c280dbdef569e96c7919251bd2b0edf0734c5a8`, chain 1)
- UnnamedContract (`0x819662ab6fe32b52100fa32ae3e0e8b36b4c5638`, chain 1)
- UnnamedContract (`0x81f8ac1a4756bfe9d7ce138c0c3bad2cb5e8a582`, chain 1)
- UnnamedContract (`0x82c710b9b225b43c0c90f097db31f5f10a7f86fa`, chain 1)
- UnnamedContract (`0x889b0ab73a262759e1da530ea027268fd9c2b35f`, chain 1)
- UnnamedContract (`0x8dde384022d4de1d6c67891a8865f551c444dc4c`, chain 1)
- UnnamedContract (`0x9167ff08c18ea05d70d5cbf0c576a33dcee6de06`, chain 1)
- UnnamedContract (`0x940fca4be8e0d43be75acc8136342f936f2179e8`, chain 1)
- UnnamedContract (`0x94edbb8f7543593ff1b8d2871ec4730b59c97888`, chain 1)
- UnnamedContract (`0x98281466abcf48eaad8c6e22dedd18a3426a93b4`, chain 1)
- UnnamedContract (`0x998d761ec1badaceb064624cc3a1d37a46c88ba4`, chain 1)
- UnnamedContract (`0xa10bdc927d70325326d71fa7971f7b0e4afff702`, chain 1)
- UnnamedContract (`0xa28c23a459ff8773eb4dbe0e7250d93f79f1fe2b`, chain 1)
- UnnamedContract (`0xa586cb265563ff36dc1f912ad9b06f7124bc6185`, chain 1)
- UnnamedContract (`0xa8cc68e15d50c1c586b5b0d6e1d4d0ef620fdd10`, chain 1)
- UnnamedContract (`0xa992d3777282c44ee980e9b0ca9bd0c0e4f737af`, chain 1)
- UnnamedContract (`0xab254591b63138247eccdf82170eb64890d36b1b`, chain 1)
- UnnamedContract (`0xabbe766f216f689818c3a1f98647ce4e41495325`, chain 1)
- UnnamedContract (`0xac73efa7696dc1c1617bbc20aec64422c8b70eda`, chain 1)
- UnnamedContract (`0xae4d563fc348e0fc3697ed940b23a86779e095c8`, chain 1)
- UnnamedContract (`0xb4f7761c459d09f414e1190df275be3e24535750`, chain 1)
- UnnamedContract (`0xb57320b253363bf749d5ce6e66592fdc74cce6f7`, chain 1)
- UnnamedContract (`0xb5fa20eb3c1a146e1090f24cf3c7d60263dafa71`, chain 1)
- UnnamedContract (`0xb77e25555c2b3e6bce5329d83efd248534a907aa`, chain 1)
- UnnamedContract (`0xbc4b4ac47582c3e38ce5940b80da65401f4628f1`, chain 1)
- UnnamedContract (`0xbd9a8701b0f56b758bcd4ace08daf097e236e0cb`, chain 1)
- UnnamedContract (`0xbef0c894ab4020dcd533fd753bf427662f3f7abe`, chain 1)
- UnnamedContract (`0xc40a68b5e536632b6572283f996b830b34607d01`, chain 1)
- UnnamedContract (`0xc41252d4f61d25658cd83cc39942c49776e1b0c5`, chain 1)
- UnnamedContract (`0xc51e90b48fd7fbff316502b85a71e0ebb1ee5238`, chain 1)
- UnnamedContract (`0xcad0be6e135c3d2859ea0c872ccd510c962765b7`, chain 1)
- UnnamedContract (`0xce45ef0414de3516caf1bcf937bf7f2cf67873de`, chain 1)
- UnnamedContract (`0xcf47fbe97aae77b8abea5e1f59c9bcb808a8d47d`, chain 1)
- UnnamedContract (`0xd1552d878fe4869539ba4d03d207b54913a5c273`, chain 1)
- UnnamedContract (`0xd53f83c7ca5189007c09b5d867a8116bc0540724`, chain 1)
- UnnamedContract (`0xd5f9afc441ca3f72b22d0b60d53e55b966c8de64`, chain 1)
- UnnamedContract (`0xd6506db835b465d5d823add8667362d7b86cfe5f`, chain 1)
- UnnamedContract (`0xd8b27cf359b7d15710a5be299af6e7bf904984c2`, chain 1)
- UnnamedContract (`0xdc1aef6cf0f13267281a0d3547d205ea32287e49`, chain 1)
- UnnamedContract (`0xdc685c0b34edd19f702a8ad4cd4d8279f6452ac8`, chain 1)
- UnnamedContract (`0xe0a80d35bb6618cba260120b279d357978c42bce`, chain 1)
- UnnamedContract (`0xe1ce9af672f8854845e5474400b6ddc7ae458a10`, chain 1)
- UnnamedContract (`0xe3b66ca897b4b844d5a8ee7a30982fac0d126760`, chain 1)
- UnnamedContract (`0xe3eb096cd9a87c271567b0134f6de061c112a9e7`, chain 1)
- UnnamedContract (`0xe47babacfc9ce5f85126fab7c7e211da077d820e`, chain 1)
- UnnamedContract (`0xe668c3f45d126a72cf696ff46054918cf1337786`, chain 1)
- UnnamedContract (`0xe846ca062ab869b66ae8dcd811973f628ba82eaf`, chain 1)
- UnnamedContract (`0xea0c048c728578b1510ebdf9b692e8936d6fbc90`, chain 1)
- UnnamedContract (`0xea79e49a076a75a9bf6013505c2b92eed69e4fe1`, chain 1)
- UnnamedContract (`0xed667e0de292c040cf2183302c8dbde1c06447d7`, chain 1)
- UnnamedContract (`0xee8693c11ace62839bb96beae86696c1e78aba3f`, chain 1)
- UnnamedContract (`0xf26c68e6d26f725858e7cc353ee30e43adf0b732`, chain 1)
- UnnamedContract (`0xf2ec2d8fe1351baff31643855c0f4d1e63bd1ce4`, chain 1)
- UnnamedContract (`0xf4bc4239edca81ed0d305701cb18a5fd82cd06ca`, chain 1)
- UnnamedContract (`0xf69ff7901e199ae4fc354048da09c23c7699716c`, chain 1)
- UnnamedContract (`0xf9a23b059858cdd0e3ed0dde89864bb82b88aa19`, chain 1)
- UnnamedContract (`0xfc323c1727853872a85098ea89a6882853b708dd`, chain 1)
- UnnamedContract (`0xfc6f3a2badb53973f69449da690cfef84dc4a359`, chain 1)
- UnnamedContract (`0x218c9e961fc5f6c8280ba160365fabe8a53ec6e5`, chain 130)
- UnnamedContract (`0x25e2ef0f957b61cdd26bbe954afd5806a9dade49`, chain 130)
- UnnamedContract (`0x5adade21c703912547bfc8952fe1b52f09437e2a`, chain 130)
- UnnamedContract (`0x6bc1f97f96dd6834a86acf412b77c9f464419436`, chain 130)
- UnnamedContract (`0xcf28a176021e6906c359d1777041245d9fda076d`, chain 130)
- UnnamedContract (`0xe6806bea4ecde065bb757c35032f2c625848d8e8`, chain 130)
- UnnamedContract (`0x07954beb7e137101a7cbb3e47864c684aec50524`, chain 8453)
- UnnamedContract (`0x0a6af3a75bb350fb1a402b70138b9820cf0ca0cb`, chain 8453)
- UnnamedContract (`0x13632ed686495b1f5e7f81dcc5977ab55aab98a4`, chain 8453)
- UnnamedContract (`0x16b4438011dbb876ae004b9515435d732ceacbfd`, chain 8453)
- UnnamedContract (`0x1e2f1e8a97e96a2fdd6a8da427603ed1c8b3847f`, chain 8453)
- UnnamedContract (`0x1fd3a242a549d595431442f898fdbb374f15b885`, chain 8453)
- UnnamedContract (`0x24d633664aea3f551b2fa34fa66dd1ba52a33933`, chain 8453)
- UnnamedContract (`0x29dbce367f5157b924af5093617bb128477d7a5c`, chain 8453)
- UnnamedContract (`0x34abb4501419b1e5f836567c58300c861164101a`, chain 8453)
- UnnamedContract (`0x38df63f1986b80578b7357bcda3d4f71f129afff`, chain 8453)
- UnnamedContract (`0x3f131ac9d408926a8b36c1e03ce105f44dcd26af`, chain 8453)
- UnnamedContract (`0x401e8e12bde318772b73709d8101e76e8586c124`, chain 8453)
- UnnamedContract (`0x4c1aeda9b43efcf1da1d1755b18802aabe90f61e`, chain 8453)
- UnnamedContract (`0x596dbb33131fa2991cf5651cb57e4b15682c7f93`, chain 8453)
- UnnamedContract (`0x5ce15fc058e762a6f9722fc6521a0c0f5eecd9ba`, chain 8453)
- UnnamedContract (`0x60c61a47804283a514bfcdf163138b7528720d0f`, chain 8453)
- UnnamedContract (`0x611745c9107d0197f161556691c5129fd9b898d1`, chain 8453)
- UnnamedContract (`0x614bd506051a8ccfcbc57c34aedcf6caffcd5d17`, chain 8453)
- UnnamedContract (`0x6ae4ecc3c9467c587aa4953365e0d8454fe77ef1`, chain 8453)
- UnnamedContract (`0x6d6021ff46b0d4b800c210aab3ad10b9e3e53113`, chain 8453)
- UnnamedContract (`0x774c08f8e78c47046d325c0331788954c35df10a`, chain 8453)
- UnnamedContract (`0x779225f3d7b6fed3ae3b140815fd338ba974e2c6`, chain 8453)
- UnnamedContract (`0x78d6a3bc9d41b7c6fd52ff2e85a2df6d1f4f9b3a`, chain 8453)
- UnnamedContract (`0x7c1487bde1ec32b5ac47f4c3aba269bf43bf8f53`, chain 8453)
- UnnamedContract (`0x81744b5b5527852832f2dd3554c191d3b1342108`, chain 8453)
- UnnamedContract (`0x82d49919d3ea4323cd96f9c6e41d9386f36439b2`, chain 8453)
- UnnamedContract (`0x85114a78c512872df273ca12f35fbe4cf0749616`, chain 8453)
- UnnamedContract (`0x91a9ed5d4368499b1fe41f721ab13e64760b3f05`, chain 8453)
- UnnamedContract (`0x9f876520f1937d4b4f6f4defe29fa5ea6d4526d0`, chain 8453)
- UnnamedContract (`0xa67a95971b8d010c16de4b33259d1c574d256121`, chain 8453)
- UnnamedContract (`0xa6ad67c0c6c2275b616fcc81c55ddd76195fcf86`, chain 8453)
- UnnamedContract (`0xb45e4f1003d11a563bc4f7486edfafd7dfaa8b4a`, chain 8453)
- UnnamedContract (`0xbc46393223990d024fcb2b0ff2f5a4cd52602ea2`, chain 8453)
- UnnamedContract (`0xc063c3b3625df5f362f60f35b0bcd98e0fa650fb`, chain 8453)
- UnnamedContract (`0xc64fd6138f980a5587412dac75e04363046ae32e`, chain 8453)
- UnnamedContract (`0xcf8f0e47cd510938fdd445cf1a24108a681743a6`, chain 8453)
- UnnamedContract (`0xd7c286712bd46aa8acbec4ea99d3018b32edb190`, chain 8453)
- UnnamedContract (`0xdbdc9c3edbd401109c83b333c16a0251806b3330`, chain 8453)
- UnnamedContract (`0xdc4efb20ce286b421f6361734a2a006a1f24af8d`, chain 8453)
- UnnamedContract (`0xeaa709fdb7cccfbbf5185febf183f0138cde5983`, chain 8453)
- UnnamedContract (`0xedcc195ca09c9fcc1dd30b152c0b82045ff2f91f`, chain 8453)
- UnnamedContract (`0xeef57677c2fc1a930eed234e3545e750c88f6743`, chain 8453)
- UnnamedContract (`0xf3bb6b0a9beaf9240d7f4a91341d5df6bf37caea`, chain 8453)
- UnnamedContract (`0xf4480166d66cfb9c5e12c843a8f844f512989289`, chain 8453)
- UnnamedContract (`0x05d28a86e057364f6ad1a88944297e58fc6160b3`, chain 42161)
- UnnamedContract (`0x06b763aa769ad01f6859a56c5a856e47896e6a7f`, chain 42161)
- UnnamedContract (`0x0a1ecc5fe8c9be3c809844fcbe615b46a869b899`, chain 42161)
- UnnamedContract (`0x124bec4d119bc4b5d250f0b0114f2087f8eedb57`, chain 42161)
- UnnamedContract (`0x22038f6fa20aeacba681030b2fb7c77155901c3f`, chain 42161)
- UnnamedContract (`0x27b3b7f97ef233912384d0b5b3844173710f4d3c`, chain 42161)
- UnnamedContract (`0x37512f45b4ba8808910632323b73783ca938cd51`, chain 42161)
- UnnamedContract (`0x44c10da836d2abe881b77bbb0b3dce5f85c0c1cc`, chain 42161)
- UnnamedContract (`0x46e57d0de266638c8339689be04b038049be3812`, chain 42161)
- UnnamedContract (`0x482c3e2530fac8fe2c63ae007ad2695c6d685e98`, chain 42161)
- UnnamedContract (`0x4ad21ebbb639c21ccd9f1eaf388cd91d015e02ee`, chain 42161)
- UnnamedContract (`0x4d375ed67a83edbc03685141f551defe25b4917e`, chain 42161)
- UnnamedContract (`0x4dd134f6f0209e4bdad98ff9a3d84d9244f83c93`, chain 42161)
- UnnamedContract (`0x5059ff3008ffe2b50980330a402ea5c59da01ad7`, chain 42161)
- UnnamedContract (`0x5f7f81fb9a3cfbf35633349990bbc5001f365408`, chain 42161)
- UnnamedContract (`0x683b777a393ba94f3c903fba2b14a6b6ff80dbe7`, chain 42161)
- UnnamedContract (`0x6afb8d3f6d4a34e9cb2f217317f4dc8e05aa673b`, chain 42161)
- UnnamedContract (`0x6d47cbe75b427a09d2a1624d98fd2aa5f0074859`, chain 42161)
- UnnamedContract (`0x78e3e051d32157aacd550fbb78458762d8f7edff`, chain 42161)
- UnnamedContract (`0x79e1f4a1cde92568d58eb823f81d9c0c7c384e6b`, chain 42161)
- UnnamedContract (`0x7d9790403fa53ef3e3a3389c259d244bdc61b785`, chain 42161)
- UnnamedContract (`0x878e12c1a1bbdf7645e28a8e9c420ccd595204ad`, chain 42161)
- UnnamedContract (`0x889e1c458b2469b70accdfb5b59726dc1668896c`, chain 42161)
- UnnamedContract (`0x8ca487811a5e7599a5c68f49ac1fe348371e4c46`, chain 42161)
- UnnamedContract (`0xa8616e4d9f3f0aa01aff1d7c3b66249f8a5f1a58`, chain 42161)
- UnnamedContract (`0xaabb9cbac15a3d646dcdc6574bcfcfb989e1fdd8`, chain 42161)
- UnnamedContract (`0xcc6700f5326b2f8930660c483b4d5ce904b815c6`, chain 42161)
- UnnamedContract (`0xdbd974eb5360d053ea0c56b4dacf4a9d3e894ee2`, chain 42161)
- UnnamedContract (`0xe81157d2788f2cacf5902e803e172e1b6309086d`, chain 42161)
- UnnamedContract (`0xee074ceb44ada094391b9c71a7fb8ba6962d492c`, chain 42161)
- UnnamedContract (`0xf2cf48e4932835c941cccd27e450c71138df81ca`, chain 42161)
- UnnamedContract (`0xfe3320fd1bacf38bf74b84ef0ef7b34562926ddf`, chain 42161)
- UnnamedContract (`0x085f80df643307e04f23281f6fdbfaa13865e852`, chain 59144)
- UnnamedContract (`0x140bd9a62ba84fbf78d9e3dd4a94fdafc999faf5`, chain 59144)
- UnnamedContract (`0x14efcc1ae56e2ff75204ef2fb0de43378d0beada`, chain 59144)
- UnnamedContract (`0x179dfd3ecdc6f5b8f8788584f3289d10c6f1afb8`, chain 59144)
- UnnamedContract (`0x1da14e692956382804a06ce38b984f56de457d7d`, chain 59144)
- UnnamedContract (`0x3cc7963fa503fe32053f177c444855a71068a839`, chain 59144)
- UnnamedContract (`0x42267dc26fcece525f04e75da3fa596f88cedde0`, chain 59144)
- UnnamedContract (`0x4789d8066cac17fd24f24206a49abc72830604f1`, chain 59144)
- UnnamedContract (`0x5464cc940beff4301ed21df535761546f19de2d3`, chain 59144)
- UnnamedContract (`0x5df4080d8d1a85457d699e6a85255fc4087b8abf`, chain 59144)
- UnnamedContract (`0x64623f8617f0019fc155a84c5061b472577d23d0`, chain 59144)
- UnnamedContract (`0x873fea936c29c8a9f3e0d7cacfc1dc46e2a93e56`, chain 59144)
- UnnamedContract (`0x8bf8edc911ab3f0ea4a27c51cb88b57cce5356f1`, chain 59144)
- UnnamedContract (`0x90f0b8a5ba9e1248d3e4f69f4592123d6e8c918d`, chain 59144)
- UnnamedContract (`0x92ba0ded54184ab00f7edd1bc5eba488cc8d9de0`, chain 59144)
- UnnamedContract (`0x9947f3d2ae676be4612eb4d80e94f6441e47a2a9`, chain 59144)
- UnnamedContract (`0x9ac2f0a564b7396a8692e1558d23a12d5a2abb1f`, chain 59144)
- UnnamedContract (`0xa7ada0d422a8b5fa4a7947f2cb0ee2d32435647d`, chain 59144)
- UnnamedContract (`0xae8da9d4e0959108766bf7cf48ede8248be9efff`, chain 59144)
- UnnamedContract (`0xb11fd944cf5e8678b5db42305aff03b7942a3cab`, chain 59144)
- UnnamedContract (`0xb135dcf653dafb5ddaa93f926d7000aa3222efee`, chain 59144)
- UnnamedContract (`0xb770dc4be757ad72bcb7b8ff4958fb5c6ee5aa49`, chain 59144)
- UnnamedContract (`0xcbef9be95738290188b25ca9a6dd2bec417a578c`, chain 59144)
- UnnamedContract (`0xe27c2571f6d1b942bbb438a37b0171c64b469e1f`, chain 59144)
- UnnamedContract (`0xf3c6598a9bc60771dcd4dd448fb56122b7f8588a`, chain 59144)
- UnnamedContract (`0xfb6448b96637d90fcf2e4ad2c622a487d0496e6f`, chain 59144)
- BeaconProxy (`0x2f849ba554c1ea2ede9c240bbe9d247dd6ec8a6b`, chain 1)
- BeaconProxy (`0x3573a84bee11d49a1cbce2b291538de7a7dd81c6`, chain 1)
- BeaconProxy (`0x412d0e31790d77b6e7a7872a9fd6967b6e640229`, chain 1)
- BeaconProxy (`0x1f3134c3f3f8add904b9635acbefc0ea0d0e1ffc`, chain 130)
- BeaconProxy (`0x54ff502df96cd9b9585094eacd86aafce902d06a`, chain 130)
- BeaconProxy (`0x5d2511c1ebc795f4394f7f659f693f8c15796485`, chain 130)
- BeaconProxy (`0x6eae95ee783e4d862867c4e0e4c3f4b95aa682ba`, chain 130)
- BeaconProxy (`0x7650d7ae1981f2189d352b0ec743b9099d24086f`, chain 130)
- BeaconProxy (`0xd49181c522ecdb265f0d9c175cf26fface64ead3`, chain 130)
- BeaconProxy (`0xe36da4ea4d07e54b1029ef26a896a656a3729f86`, chain 130)
- BeaconProxy (`0x085178078796da17b191f9081b5e2fccc79a7ee7`, chain 8453)
- BeaconProxy (`0x0a1a3b5f2041f33522c4efc754a7d096f880ee16`, chain 8453)
- BeaconProxy (`0x358f25f82644eabb441d0df4af8746614fb9ea49`, chain 8453)
- BeaconProxy (`0x3f0d3fd87a42bdaa3dfcc13ada42ea922e638a7a`, chain 8453)
- BeaconProxy (`0x5fe2de3e565a6a501a4ec44aab8664b1d674ac25`, chain 8453)
- BeaconProxy (`0x7b181d6509deabfbd1a23af1e65fd46e89572609`, chain 8453)
- BeaconProxy (`0x859160db5841e5cfb8d3f144c6b3381a85a4b410`, chain 8453)
- BeaconProxy (`0x882018411bc4a020a879cee183441fc9fa5d7f8b`, chain 8453)
- BeaconProxy (`0x990d616ca6e7192625d1b7c41fb67b5758df7cf2`, chain 8453)
- BeaconProxy (`0xd4a805261b28f375fc9c3d89ecd2c952cd130d14`, chain 8453)
- BeaconProxy (`0xe72ea97aaf905c5f10040f78887cc8de8eaec7e4`, chain 8453)
- BeaconProxy (`0xfab9af50f7a1cfe201cae1c15fcfddae7705ccd3`, chain 8453)
- BeaconProxy (`0x359e363c11fc619be76eec8baaa01e61d521aa18`, chain 59144)
- BeaconProxy (`0x8955d7dcde9bd9694b64732ad28ff2113eb217b4`, chain 59144)
- BeaconProxy (`0xa8a02e6a894a490d04b6cd480857a19477854968`, chain 59144)
- BeaconProxy (`0xf4712fc5e6483de9e1ff661d95dd686664327086`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (26 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 208/209 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 208 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 43
- Confirmed-live implementations: 208 of 252 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 225
- Unique implementations: 252
- Raw deployments: 328
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,958,000.98
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EVault | core_logic | project_anchor | own_supporting | 7 | unichain | unit-226552 (7 proxies) | 7 deployments: unichain `0x1f3134c3f3f8add904b9635acbefc0ea0d0e1ffc`; unichain `0x54ff502df96cd9b9585094eacd86aafce902d06a`; unichain `0x5d2511c1ebc795f4394f7f659f693f8c15796485`; unichain `0x6eae95ee783e4d862867c4e0e4c3f4b95aa682ba`; unichain `0x7650d7ae1981f2189d352b0ec743b9099d24086f`; unichain `0xd49181c522ecdb265f0d9c175cf26fface64ead3`; unichain `0xe36da4ea4d07e54b1029ef26a896a656a3729f86` | ⚠️ Unaudited |
| EVault | core_logic | project_anchor | own_supporting | 12 | base | unit-226554 (12 proxies) | 12 deployments: base `0x085178078796da17b191f9081b5e2fccc79a7ee7`; base `0x0a1a3b5f2041f33522c4efc754a7d096f880ee16`; base `0x358f25f82644eabb441d0df4af8746614fb9ea49`; base `0x3f0d3fd87a42bdaa3dfcc13ada42ea922e638a7a`; base `0x5fe2de3e565a6a501a4ec44aab8664b1d674ac25`; base `0x7b181d6509deabfbd1a23af1e65fd46e89572609`; base `0x859160db5841e5cfb8d3f144c6b3381a85a4b410`; base `0x882018411bc4a020a879cee183441fc9fa5d7f8b`; base `0x990d616ca6e7192625d1b7c41fb67b5758df7cf2`; base `0xd4a805261b28f375fc9c3d89ecd2c952cd130d14`; base `0xe72ea97aaf905c5f10040f78887cc8de8eaec7e4`; base `0xfab9af50f7a1cfe201cae1c15fcfddae7705ccd3` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 14 | ethereum | n/a | 14 deployments: ethereum `0x29a56a1b8214d9cf7c5561811750d5cbdb45cc8e`; ethereum `0x2a356443fee07703266066c6bb1b11b82d8246ad`; ethereum `0x2ff5f1ca35f5100226ac58e1bfe5aac56919443b`; ethereum `0x35d4f830543700b7280084280ae3236f178e88e3`; ethereum `0x49d9fd20f1d61648fa9434a8c0c33174f5614eb8`; ethereum `0x69a2fad6ac96dda502f7d240fb4ec88f85217705`; ethereum `0x6fe7fa90756434645f0b0428fdff78e99dda0fbc`; ethereum `0x97c72647be549c6079dc95235271a9a0fe7ecc21`; ethereum `0xa7a064f56fbca60cbed47ed3e13c4b945def7ec3`; ethereum `0xbd858dcee56df1f0cba44e6f5a469fbfec0246cd`; ethereum `0xbfdc482616787b420bc6c710212fe3167e7198e9`; ethereum `0xc11d6b78d8c609a6cbf66e89dbfea06b011b0aef`; ethereum `0xf75d18f76859764abe4d13ca2ebaceff0b90b262`; ethereum `0xfbcc21fedd4c4e9097ef1baa65b7ad386b59512d` | ⚠️ Unaudited |
| EVault | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-226550 (3 proxies) | 3 deployments: ethereum `0x2f849ba554c1ea2ede9c240bbe9d247dd6ec8a6b`; ethereum `0x3573a84bee11d49a1cbce2b291538de7a7dd81c6`; ethereum `0x412d0e31790d77b6e7a7872a9fd6967b6e640229` | ⚠️ Unaudited |
| EVault | core_logic | project_anchor | own_supporting | 4 | linea | unit-226553 (4 proxies) | 4 deployments: linea `0x359e363c11fc619be76eec8baaa01e61d521aa18`; linea `0x8955d7dcde9bd9694b64732ad28ff2113eb217b4`; linea `0xa8a02e6a894a490d04b6cd480857a19477854968`; linea `0xf4712fc5e6483de9e1ff661d95dd686664327086` | ⚠️ Unaudited |
| AccountLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60c4257c809353039a71527dfe701b577e34bc7` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55f9bace2c864ac0d3392ea9fa654b605f21a3d3`; ethereum `0xb7522c867b8afae5e89638b59fb38f31b0821795` | ⚠️ Unaudited |
| CapRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe56caa36da676364e1a0a97e4f7c07651e89b95` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e36ea7481934a651da81483358c67a51583b85` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x130eabada6f4c663095c8e9e276ab5da670ffaed`; ethereum `0x15226e1796c24a635a9662bff2b8dc6cc3aac6bb`; ethereum `0x336d821459db40ba9bfb8a1a89457d689afba6e8`; ethereum `0x3fc2228e67d131de974a0a42fb2e1a94d71b4f12`; ethereum `0x4a35fe57388d8e637690ed27d744917a6fb205af`; ethereum `0x55757d7db2811dd57b4edd5f3594aa7a9058dcc1`; ethereum `0x56292911ae5993c25948ee24273734e6abec1832`; ethereum `0x566c246475b853b7daff705ad5c5e78753eef5dd`; ethereum `0x5ae8c1300245eae3f64625faa20ec9c35a78c275`; ethereum `0x5b12ce5fdafb14399e0ffe6a5410fbec63f6b066`; ethereum `0x5bc6c01611dc945ea2f05d9e5d670846bd3a554c`; ethereum `0x62b1deb38ead3fe18110f0eed52e04626db25f61`; ethereum `0x6a569efb73aea68a3b93fb9deb659074aaa84dc7`; ethereum `0x8424db29b3f19a6b494d20cb3071669fd277ed0c`; ethereum `0xa5263145d8c9bfc89c7a55ea21fb5b617c7b6cff`; ethereum `0xa625cbaeffe19374ed9df500c9ed87d4d962c564`; ethereum `0xadccfc92aff2ea281b7e458c9c9aa2e06d09c988`; ethereum `0xb0baa4dc6af4f2c1541ee4ea4afe01a4183254f0`; ethereum `0xca5b7044be73671fd6707c2312cec7c07556b85f`; ethereum `0xcf8f3a674063c9cb253911718e4d120884972785`; ethereum `0xd201e8c913716fbcbbe489948a5315236ee98f36`; ethereum `0xd6b5eba2282836bfbd73d65bf5203f91cc1179c5`; ethereum `0xd7440b786f38ab805d94f6a8f3ee398b8340cd22`; ethereum `0xd7ad788fee2a7f7cada6e82860d8daed9ef21895`; ethereum `0xf6151700c3c1d5de33319171bfe5174b705e6683`; ethereum `0xf9de4293f3a11d657ac403a8985fc2f5dd156ce6`; ethereum `0xffe3b09b0647cd496d37815f9c8540dca9fab24e` | ⚠️ Unaudited |
| ERC4626EVCCollateralSecuritizeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f51d980f15fe6075ae30394dc35de57a4f76cbb` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383` | ⚠️ Unaudited |
| EulerSwapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb013be1d0d380c13b58e889f412895970a2cf228`; ethereum `0xd05213331221fab8a3c387f2affbb605bb04df5f` | ⚠️ Unaudited |
| EulerSwapPeriphery | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x208ff5eb543814789321daa1b5eb551881d16b06`; ethereum `0xd3a349ee0a21ea0a7e9513ac236ae614b5fd513e` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5171aed04fa9551db484f07c853f252bc6f53b63` | ⚠️ Unaudited |
| EulerSwapRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fccb84363f020c0cade052c9c654aabf932814a` | ⚠️ Unaudited |
| FactoryGovernor | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1`; ethereum `0x86cb5973d23b198fc21a4f0e6333274841be3f56`; ethereum `0x95df7a30af54cc05d1cfb1e9d7655f12269b8439`; ethereum `0xb5004f2e4bcb95be4ba61a891ca3bb63bb31ffb4`; ethereum `0xbd33656cc2a1096024203485945a60224a2121dc`; ethereum `0xf58f4d2cd0ee43624dc442e726871b115dbdd9f0` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcad001c30e96765ac90307669d578219d4fb1dce` | ⚠️ Unaudited |
| Governance | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226551 | `0x8ff1c814719096b61abf00bb46ead0c9a529dd7d` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35400831044167e9e2de613d26515eee37e30a1b` | ⚠️ Unaudited |
| IRMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x061b6b0ba1b552006556c278fc8798d1e20f807a`; ethereum `0x57b1bb683b109eb0f1e6d9043067c86f0c6c52c1` | ⚠️ Unaudited |
| OracleLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e6dfb84782a31d561536f64f47231451f7b48a` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a` | ⚠️ Unaudited |
| UtilsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b6e0b25fef3131f5f461b000cc69d2611af2d95`; ethereum `0x7b89cc2b2607280113c09510353ea6a521e6e0fc`; ethereum `0xbef9b644b15ba33bc21324365f148b13abfcc071` | ⚠️ Unaudited |
| VaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7427e9ef64bbe73d40bbcf455d50d215e50f3177`; ethereum `0x83801c7bbeefa54b91f8a07e36d81515a0fc5b60`; ethereum `0xa18d79deb85c414989d7297f23e5391703ea66ab`; ethereum `0xb65c7ac387a45d7b4709166784bb431a58bc59eb`; ethereum `0xc3c45633e45041bf3be841f89d2cb51e2f657403` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (225)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226329 | `0x0120c2748545a4d9c875cddfb439f786d6f1b460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226330 | `0x056f3a2e41d2778d3a0c0714439c53af2987718e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226331 | `0x09136dac538b54994170a6905507a74562a80ed3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226332 | `0x0c01f00e419977cf452e78aae35ffb95c47d9534` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226333 | `0x0dbadddf25ed581d0b8acce9567be0d160fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226334 | `0x0f93f35c0664a6a8231ccae7e22f652c9c075b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101f9ade673cc3133875f33f14136d0b7ddca1ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226335 | `0x117576b8854a03ab7c3df1cf1cd8e04767bfa866` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226336 | `0x122e9ea082d8c060bb1a3476aa18b9e739fbbaaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226337 | `0x155d4a34938dcb27486f5bbf6a19d19d0ef0dd8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226338 | `0x1987c2dcf5674cf90becebad502714c357ce126a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226339 | `0x1e0b68a83ef062cde687351c472cfd0e9300a06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3249cfc9c393e621f3e81bb992ff428bd18e66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226340 | `0x1f46186af85a967416b17380800c69860b7c516f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d633664aea3f551b2fa34fa66dd1ba52a33933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226341 | `0x25c538cc5c5b4cddf9a9a656f90d2d8129e841b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226342 | `0x27052ea5e307b6e8566d9ee560231c6742a6c03c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226343 | `0x28c6f8d44179ac93a5ebae24189d887eeef38cea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226344 | `0x2daca71cb58285212dc05d65cfd4f59a82bc4cf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226345 | `0x2df9753e62f46b299f59e632bd18edfe4970922e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226346 | `0x313603fa690301b0caeef8069c065862f9162162` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226347 | `0x3152ec91ec776f918cc2090f58319a5a614536e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226348 | `0x315f93a074d0948e4d068e98a34092750ea8a38c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226349 | `0x328646cdfbad730432620d845b8f5a2f7d786c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226350 | `0x3bfa6657982a9ada1388cf798f3f211711daf4e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226351 | `0x3f7ccaded39fd9d06eb0498abeb7eaab569e79ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226352 | `0x41722452c0348501825c494ec6c1579e9c32d277` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226353 | `0x481d4909d7ca2eb27c4975f08dce07dbef0d3fa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4f894bfc9481110278c356ade1473ebe2127fd3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226354 | `0x561ff99a243868fdf755705b1b83e6c4e8b8b0df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226355 | `0x586719300c3966130b3ce15f563b1080271193e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226356 | `0x5a0064007dddea2c8d6547a7b1e862c619500994` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226357 | `0x5a96128c18018a2cef539f46bbed037dad3caae8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226358 | `0x6173b0709dea144cc3662894870b57c53564cfa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226359 | `0x61aac438453d6e3513c0c8dbb69f13860e2b5028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226360 | `0x631d8e808f2c4177a8147eaa39a4f57c47634de8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226361 | `0x67e4e4e73947257ca62d118e0fbc56d06f11d96f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226362 | `0x6fc6becae0ffaa08f699ec072f31983821a4d7ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226363 | `0x74034eb8d5b2e480825263a975e4cf82a081c959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7594aebeefd14418342e1627ad3d67b4656943a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226364 | `0x75e695c60af0780f8c9fa79e37946a02f4481c09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226365 | `0x77710edfedfb7e9186cba71b258c75ea2aed5f84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226366 | `0x797dd80692c3b2dadabce8e30c07fde5307d48a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226367 | `0x7c280dbdef569e96c7919251bd2b0edf0734c5a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226368 | `0x819662ab6fe32b52100fa32ae3e0e8b36b4c5638` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226369 | `0x81f8ac1a4756bfe9d7ce138c0c3bad2cb5e8a582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226370 | `0x82c710b9b225b43c0c90f097db31f5f10a7f86fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226371 | `0x889b0ab73a262759e1da530ea027268fd9c2b35f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226372 | `0x8dde384022d4de1d6c67891a8865f551c444dc4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226373 | `0x9167ff08c18ea05d70d5cbf0c576a33dcee6de06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226374 | `0x940fca4be8e0d43be75acc8136342f936f2179e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226375 | `0x94edbb8f7543593ff1b8d2871ec4730b59c97888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95058f3d4c69f14f6125ad4602e925845bd5d6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950c6bef80bbfd1ea2335d9e6cb5bc3a23361b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226376 | `0x98281466abcf48eaad8c6e22dedd18a3426a93b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226377 | `0x998d761ec1badaceb064624cc3a1d37a46c88ba4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226378 | `0xa10bdc927d70325326d71fa7971f7b0e4afff702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226379 | `0xa28c23a459ff8773eb4dbe0e7250d93f79f1fe2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c12ab83f056510421d3dc4ad38a075e68a690e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226380 | `0xa586cb265563ff36dc1f912ad9b06f7124bc6185` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226381 | `0xa8cc68e15d50c1c586b5b0d6e1d4d0ef620fdd10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226382 | `0xa992d3777282c44ee980e9b0ca9bd0c0e4f737af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226383 | `0xab254591b63138247eccdf82170eb64890d36b1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226384 | `0xabbe766f216f689818c3a1f98647ce4e41495325` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226385 | `0xac73efa7696dc1c1617bbc20aec64422c8b70eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226386 | `0xae4d563fc348e0fc3697ed940b23a86779e095c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226387 | `0xb4f7761c459d09f414e1190df275be3e24535750` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226388 | `0xb57320b253363bf749d5ce6e66592fdc74cce6f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226389 | `0xb5fa20eb3c1a146e1090f24cf3c7d60263dafa71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226390 | `0xb77e25555c2b3e6bce5329d83efd248534a907aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226391 | `0xbc4b4ac47582c3e38ce5940b80da65401f4628f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226392 | `0xbd9a8701b0f56b758bcd4ace08daf097e236e0cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226393 | `0xbef0c894ab4020dcd533fd753bf427662f3f7abe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226394 | `0xc40a68b5e536632b6572283f996b830b34607d01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226395 | `0xc41252d4f61d25658cd83cc39942c49776e1b0c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226396 | `0xc51e90b48fd7fbff316502b85a71e0ebb1ee5238` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226397 | `0xcad0be6e135c3d2859ea0c872ccd510c962765b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226398 | `0xce45ef0414de3516caf1bcf937bf7f2cf67873de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226399 | `0xcf47fbe97aae77b8abea5e1f59c9bcb808a8d47d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226400 | `0xd1552d878fe4869539ba4d03d207b54913a5c273` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226401 | `0xd53f83c7ca5189007c09b5d867a8116bc0540724` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226402 | `0xd5f9afc441ca3f72b22d0b60d53e55b966c8de64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226403 | `0xd6506db835b465d5d823add8667362d7b86cfe5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226404 | `0xd8b27cf359b7d15710a5be299af6e7bf904984c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226405 | `0xdc1aef6cf0f13267281a0d3547d205ea32287e49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226406 | `0xdc685c0b34edd19f702a8ad4cd4d8279f6452ac8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226407 | `0xe0a80d35bb6618cba260120b279d357978c42bce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226408 | `0xe1ce9af672f8854845e5474400b6ddc7ae458a10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226409 | `0xe3b66ca897b4b844d5a8ee7a30982fac0d126760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226410 | `0xe3eb096cd9a87c271567b0134f6de061c112a9e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226411 | `0xe47babacfc9ce5f85126fab7c7e211da077d820e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226412 | `0xe668c3f45d126a72cf696ff46054918cf1337786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226413 | `0xe846ca062ab869b66ae8dcd811973f628ba82eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226414 | `0xea0c048c728578b1510ebdf9b692e8936d6fbc90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226415 | `0xea79e49a076a75a9bf6013505c2b92eed69e4fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb333262b68e29a48f769c32da8049765ec9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226416 | `0xed667e0de292c040cf2183302c8dbde1c06447d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226417 | `0xee8693c11ace62839bb96beae86696c1e78aba3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226418 | `0xf26c68e6d26f725858e7cc353ee30e43adf0b732` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226419 | `0xf2ec2d8fe1351baff31643855c0f4d1e63bd1ce4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226420 | `0xf4bc4239edca81ed0d305701cb18a5fd82cd06ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226421 | `0xf69ff7901e199ae4fc354048da09c23c7699716c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226422 | `0xf9a23b059858cdd0e3ed0dde89864bb82b88aa19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226423 | `0xfc323c1727853872a85098ea89a6882853b708dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226424 | `0xfc6f3a2badb53973f69449da690cfef84dc4a359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226425 | `0x218c9e961fc5f6c8280ba160365fabe8a53ec6e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226426 | `0x25e2ef0f957b61cdd26bbe954afd5806a9dade49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x36639ea17c35a4639eae371391497cb3d02d120a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226427 | `0x5adade21c703912547bfc8952fe1b52f09437e2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226428 | `0x6bc1f97f96dd6834a86acf412b77c9f464419436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8d9ff30f8ecba197fe9492a0fd92310d75d352b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226429 | `0xcf28a176021e6906c359d1777041245d9fda076d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226430 | `0xe6806bea4ecde065bb757c35032f2c625848d8e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226506 | `0x07954beb7e137101a7cbb3e47864c684aec50524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226507 | `0x0a6af3a75bb350fb1a402b70138b9820cf0ca0cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226508 | `0x13632ed686495b1f5e7f81dcc5977ab55aab98a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226509 | `0x16b4438011dbb876ae004b9515435d732ceacbfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226510 | `0x1e2f1e8a97e96a2fdd6a8da427603ed1c8b3847f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226511 | `0x1fd3a242a549d595431442f898fdbb374f15b885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226512 | `0x24d633664aea3f551b2fa34fa66dd1ba52a33933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226513 | `0x29dbce367f5157b924af5093617bb128477d7a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a356443fee07703266066c6bb1b11b82d8246ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226514 | `0x34abb4501419b1e5f836567c58300c861164101a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226515 | `0x38df63f1986b80578b7357bcda3d4f71f129afff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226516 | `0x3f131ac9d408926a8b36c1e03ce105f44dcd26af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226517 | `0x401e8e12bde318772b73709d8101e76e8586c124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44102929b2248b1cefe2e65e9d580893b6d6823a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49d9fd20f1d61648fa9434a8c0c33174f5614eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226518 | `0x4c1aeda9b43efcf1da1d1755b18802aabe90f61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5304ebb378186b081b99dbb8b6d17d9005ea0448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226519 | `0x596dbb33131fa2991cf5651cb57e4b15682c7f93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226520 | `0x5ce15fc058e762a6f9722fc6521a0c0f5eecd9ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226521 | `0x60c61a47804283a514bfcdf163138b7528720d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226522 | `0x611745c9107d0197f161556691c5129fd9b898d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226523 | `0x614bd506051a8ccfcbc57c34aedcf6caffcd5d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69a2fad6ac96dda502f7d240fb4ec88f85217705` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226524 | `0x6ae4ecc3c9467c587aa4953365e0d8454fe77ef1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226525 | `0x6d6021ff46b0d4b800c210aab3ad10b9e3e53113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226526 | `0x774c08f8e78c47046d325c0331788954c35df10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226527 | `0x779225f3d7b6fed3ae3b140815fd338ba974e2c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226528 | `0x78d6a3bc9d41b7c6fd52ff2e85a2df6d1f4f9b3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226529 | `0x7c1487bde1ec32b5ac47f4c3aba269bf43bf8f53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226530 | `0x81744b5b5527852832f2dd3554c191d3b1342108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226531 | `0x82d49919d3ea4323cd96f9c6e41d9386f36439b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226532 | `0x85114a78c512872df273ca12f35fbe4cf0749616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226533 | `0x91a9ed5d4368499b1fe41f721ab13e64760b3f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97c72647be549c6079dc95235271a9a0fe7ecc21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226534 | `0x9f876520f1937d4b4f6f4defe29fa5ea6d4526d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226535 | `0xa67a95971b8d010c16de4b33259d1c574d256121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226536 | `0xa6ad67c0c6c2275b616fcc81c55ddd76195fcf86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226537 | `0xb45e4f1003d11a563bc4f7486edfafd7dfaa8b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7522c867b8afae5e89638b59fb38f31b0821795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226538 | `0xbc46393223990d024fcb2b0ff2f5a4cd52602ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd858dcee56df1f0cba44e6f5a469fbfec0246cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226539 | `0xc063c3b3625df5f362f60f35b0bcd98e0fa650fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc11d6b78d8c609a6cbf66e89dbfea06b011b0aef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226540 | `0xc64fd6138f980a5587412dac75e04363046ae32e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226541 | `0xcf8f0e47cd510938fdd445cf1a24108a681743a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226542 | `0xd7c286712bd46aa8acbec4ea99d3018b32edb190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226543 | `0xdbdc9c3edbd401109c83b333c16a0251806b3330` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226544 | `0xdc4efb20ce286b421f6361734a2a006a1f24af8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226545 | `0xeaa709fdb7cccfbbf5185febf183f0138cde5983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226546 | `0xedcc195ca09c9fcc1dd30b152c0b82045ff2f91f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226547 | `0xeef57677c2fc1a930eed234e3545e750c88f6743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226548 | `0xf3bb6b0a9beaf9240d7f4a91341d5df6bf37caea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226549 | `0xf4480166d66cfb9c5e12c843a8f844f512989289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf75d18f76859764abe4d13ca2ebaceff0b90b262` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226431 | `0x05d28a86e057364f6ad1a88944297e58fc6160b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226432 | `0x06b763aa769ad01f6859a56c5a856e47896e6a7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226433 | `0x0a1ecc5fe8c9be3c809844fcbe615b46a869b899` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226434 | `0x124bec4d119bc4b5d250f0b0114f2087f8eedb57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226435 | `0x22038f6fa20aeacba681030b2fb7c77155901c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226436 | `0x27b3b7f97ef233912384d0b5b3844173710f4d3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226437 | `0x37512f45b4ba8808910632323b73783ca938cd51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226438 | `0x44c10da836d2abe881b77bbb0b3dce5f85c0c1cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226439 | `0x46e57d0de266638c8339689be04b038049be3812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226440 | `0x482c3e2530fac8fe2c63ae007ad2695c6d685e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226441 | `0x4ad21ebbb639c21ccd9f1eaf388cd91d015e02ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226442 | `0x4d375ed67a83edbc03685141f551defe25b4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226443 | `0x4dd134f6f0209e4bdad98ff9a3d84d9244f83c93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226444 | `0x5059ff3008ffe2b50980330a402ea5c59da01ad7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226445 | `0x5f7f81fb9a3cfbf35633349990bbc5001f365408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226446 | `0x683b777a393ba94f3c903fba2b14a6b6ff80dbe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226447 | `0x6afb8d3f6d4a34e9cb2f217317f4dc8e05aa673b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226448 | `0x6d47cbe75b427a09d2a1624d98fd2aa5f0074859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226449 | `0x78e3e051d32157aacd550fbb78458762d8f7edff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226450 | `0x79e1f4a1cde92568d58eb823f81d9c0c7c384e6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226451 | `0x7d9790403fa53ef3e3a3389c259d244bdc61b785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226452 | `0x878e12c1a1bbdf7645e28a8e9c420ccd595204ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226453 | `0x889e1c458b2469b70accdfb5b59726dc1668896c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226454 | `0x8ca487811a5e7599a5c68f49ac1fe348371e4c46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226455 | `0xa8616e4d9f3f0aa01aff1d7c3b66249f8a5f1a58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226456 | `0xaabb9cbac15a3d646dcdc6574bcfcfb989e1fdd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226457 | `0xcc6700f5326b2f8930660c483b4d5ce904b815c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226458 | `0xdbd974eb5360d053ea0c56b4dacf4a9d3e894ee2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226460 | `0xe81157d2788f2cacf5902e803e172e1b6309086d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226462 | `0xee074ceb44ada094391b9c71a7fb8ba6962d492c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226464 | `0xf2cf48e4932835c941cccd27e450c71138df81ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226466 | `0xfe3320fd1bacf38bf74b84ef0ef7b34562926ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226468 | `0x085f80df643307e04f23281f6fdbfaa13865e852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226470 | `0x140bd9a62ba84fbf78d9e3dd4a94fdafc999faf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226472 | `0x14efcc1ae56e2ff75204ef2fb0de43378d0beada` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226474 | `0x179dfd3ecdc6f5b8f8788584f3289d10c6f1afb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226476 | `0x1da14e692956382804a06ce38b984f56de457d7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226478 | `0x3cc7963fa503fe32053f177c444855a71068a839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226480 | `0x42267dc26fcece525f04e75da3fa596f88cedde0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226482 | `0x4789d8066cac17fd24f24206a49abc72830604f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226484 | `0x5464cc940beff4301ed21df535761546f19de2d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226485 | `0x5df4080d8d1a85457d699e6a85255fc4087b8abf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226487 | `0x64623f8617f0019fc155a84c5061b472577d23d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226489 | `0x873fea936c29c8a9f3e0d7cacfc1dc46e2a93e56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226491 | `0x8bf8edc911ab3f0ea4a27c51cb88b57cce5356f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226492 | `0x90f0b8a5ba9e1248d3e4f69f4592123d6e8c918d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226494 | `0x92ba0ded54184ab00f7edd1bc5eba488cc8d9de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226495 | `0x9947f3d2ae676be4612eb4d80e94f6441e47a2a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226496 | `0x9ac2f0a564b7396a8692e1558d23a12d5a2abb1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226497 | `0xa7ada0d422a8b5fa4a7947f2cb0ee2d32435647d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226498 | `0xae8da9d4e0959108766bf7cf48ede8248be9efff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226499 | `0xb11fd944cf5e8678b5db42305aff03b7942a3cab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226500 | `0xb135dcf653dafb5ddaa93f926d7000aa3222efee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226501 | `0xb770dc4be757ad72bcb7b8ff4958fb5c6ee5aa49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226502 | `0xcbef9be95738290188b25ca9a6dd2bec417a578c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226503 | `0xe27c2571f6d1b942bbb438a37b0171c64b469e1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226504 | `0xf3c6598a9bc60771dcd4dd448fb56122b7f8588a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226505 | `0xfb6448b96637d90fcf2e4ad2c622a487d0496e6f` | ❓ Unverified |

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
| native | 15 |
| upstream | 5 |
| standard_library | 7 |
| needs_review | 225 |

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
