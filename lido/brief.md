# Agentic Audit Brief: Lido

## Export Authority

- Production state: **published scope**
- Raw selected rows: 298 across 76 audit(s)
- Eligible audit results: 145 (76 matched; 69 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Lido (`lido`)
- Website: [https://lido.fi/](https://lido.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, gnosis, linea, mantle, mode, moonbeam, moonriver, optimism, polygon, scroll, swellchain, unichain, zksync-era
- Contract surface: 1868 unique implementations (1901 raw deployments)
- Coverage basis: 90/109 confirmed own live verified implementations (82.6%); conservative 82.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $14,419,982,777.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lido. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 129 contract row(s) across arbitrum, base, bsc, ethereum, gnosis, linea, mantle, mode, moonbeam, moonriver, optimism, polygon, scroll, swellchain, unichain, zksync-era. Structural roles: 75 core, 45 supporting, 6 unclassified, 3 infra. 36 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 129
- Structural roles: core (75), supporting (45), unclassified (6), infra (3)
- Contract kinds: contract (121), unclassified (5), abstract (3)
- Detected standards: accesscontrol (12), erc165 (11), ownable (10), erc20 (9), erc1967proxy (8), erc20permit (5), chainlinkaggregator (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (76), openzeppelin-upgradeable (18)
- Upgradeable-pattern rows: 36

## Fork Analysis

7 of 323 contracts are derived from known codebases. 316 contracts have no detected origin.

### Forked Contracts

**AppProxyUpgradeable** (`0xb9e5cbb9ca5b0d659238807e84d0176930753d86`, chain 1)
Origin: lido (`0x3e40d7...6e9c8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ArbitrumBridgeExecutor** (`0x1dca41859cd23b526cbe74da8f48ac96e14b1a29`, chain 42161)
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BokkyPooBahsDateTimeContract** (`0x75100bd564415731b5936a4a94d0dc29dde5db3c`, chain 1)
Origin: frax-finance (`0x90503d...624736`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ComposableStablePool** (`0xde45f101250f2ca1c0f8adfc172576d10c12072d`, chain 10)
Origin: hinkal (`0x20a61b...66c5a9`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Mooniswap** (`0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431`, chain 1)
Origin: deeplock (`0x168926...e1f2a4`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OptimismBridgeExecutor** (`0x0e37599436974a25ddeedf795c848d30af46eacf`, chain 8453)
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WeightedPool** (`0x178e029173417b1f9c8bc16dcec6f697bc323746`, chain 42161)
Origin: hinkal (`0x380aab...4d0fad`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d2aefa542afa8d9d1ec35376068b88042fef5f6`, chain 1)
- UnnamedContract (`0x12a43b049a7d330cb8aeab5113032d18ae9a9030`, chain 1)
- UnnamedContract (`0x14cef290c79fc84fddfdf4129ba335972aac7f41`, chain 1)
- UnnamedContract (`0x168cfea1ad879d7032b3936ef3b0e90790b6b6d4`, chain 1)
- UnnamedContract (`0x17f6b2c738a63a8d3a113a228cfd0b373244633d`, chain 1)
- UnnamedContract (`0x18a1065c81b0cc356f1b1c843ddd5e14e4aeffff`, chain 1)
- UnnamedContract (`0x1bdffe0ebef3feadf2723d3330727d73f538959c`, chain 1)
- UnnamedContract (`0x1f2b79fe297b7098875930bba6dd17068103897e`, chain 1)
- UnnamedContract (`0x200da0b6a9905a377cf8d469664c65db267009d1`, chain 1)
- UnnamedContract (`0x231ac69a1a37649c6b06a71ab32ddd92158c80b8`, chain 1)
- UnnamedContract (`0x2325b0a607808de42d918db07f925ffccfbb2968`, chain 1)
- UnnamedContract (`0x25fdc3be9977cd4da679df72a64c8b6bd5216a78`, chain 1)
- UnnamedContract (`0x281e6bb6f26a94250aceb24396a8e4190726c97e`, chain 1)
- UnnamedContract (`0x29d4fa5fcc282ba2788a281860770c166f597d5d`, chain 1)
- UnnamedContract (`0x2b5a3944a654439379b206de999639508ba2e850`, chain 1)
- UnnamedContract (`0x2b6a2f8880220a66dfb9059fcb76f7db54104a34`, chain 1)
- UnnamedContract (`0x2f8779042efaed4c53db2ce293eb6b3f7096c72d`, chain 1)
- UnnamedContract (`0x313819736457910ac1dd21a712a37f3d7595645a`, chain 1)
- UnnamedContract (`0x3b525f4c059f246ca4aa995d21087204f30c9e2f`, chain 1)
- UnnamedContract (`0x3e2d251275a92a8169a3b17a2c49016e2de492a7`, chain 1)
- UnnamedContract (`0x3f0534cccfb952470775c516dc2eff8396b8a368`, chain 1)
- UnnamedContract (`0x3f9600439ad97fc6f55c2ac7c118f8fd0595eb74`, chain 1)
- UnnamedContract (`0x48c135ff690c2aa7f5b11c539104b5855a4f9252`, chain 1)
- UnnamedContract (`0x48c4929630099b217136b64089e8543db0e5163a`, chain 1)
- UnnamedContract (`0x49d1363016aa899bba09ae972a1bf200ddf8c55f`, chain 1)
- UnnamedContract (`0x4ee3118e3858e8d7164a634825bfe0f73d99c792`, chain 1)
- UnnamedContract (`0x5181d5d56af4f823b96fe05f062d7a09761a5a53`, chain 1)
- UnnamedContract (`0x55032650b14df07b85bf18a3a3ec8e0af2e028d5`, chain 1)
- UnnamedContract (`0x55897893c19e4b0c52731a3b7c689ec417005ad6`, chain 1)
- UnnamedContract (`0x5db427080200c235f2ae8cd17a7be87921f7ad6c`, chain 1)
- UnnamedContract (`0x5dcf7cf7c6645e9e822a379df046a8b0390251a1`, chain 1)
- UnnamedContract (`0x5f456f29238f8d63b3ae69bcef9e9d4e953f2c63`, chain 1)
- UnnamedContract (`0x5fbe8cef9ccc56ad245736d3c5baf82ad54ca789`, chain 1)
- UnnamedContract (`0x606f77bf3dd6ed9790d9771c7003f269a385d942`, chain 1)
- UnnamedContract (`0x6078232c54d956c901620fa4590e0f7e37c2b82f`, chain 1)
- UnnamedContract (`0x6330fe7756fbe8649adfb9a541d61c5edb8b4d70`, chain 1)
- UnnamedContract (`0x64b6af9a108dcdf470e48e4c0147127f26221a7c`, chain 1)
- UnnamedContract (`0x65d4d92cd0eabaa05cd5a46269c24b71c21cfdc4`, chain 1)
- UnnamedContract (`0x68267f3d310e9f0ff53a37c141c90b738e1133c2`, chain 1)
- UnnamedContract (`0x6828b023e737f96b168acd0b5c6351971a4f81ae`, chain 1)
- UnnamedContract (`0x6ab39a8be67d9305799c3f8fdfc95caf3150d17c`, chain 1)
- UnnamedContract (`0x6b535f441f95046562406f4e2518d9ad7db2dc0d`, chain 1)
- UnnamedContract (`0x6ca84080381e43938476814be61b779a8bb6a600`, chain 1)
- UnnamedContract (`0x6e04aed774b7c89bb43721acdd7d03c872a51b69`, chain 1)
- UnnamedContract (`0x6f09d2426c7405c5546413e6059f884d2d03f449`, chain 1)
- UnnamedContract (`0x6f5c0a5a824773e8f8285bc5aa59ea0aab2a6400`, chain 1)
- UnnamedContract (`0x6faccce132d5c397068807ca73883d3df198dff4`, chain 1)
- UnnamedContract (`0x71093eff8d8599b5fa340d665ad60fa7c80688e4`, chain 1)
- UnnamedContract (`0x73b047fe6337183a454c5217241d780a932777bd`, chain 1)
- UnnamedContract (`0x753d5167c31fbeb5b49624314d74a957eb271709`, chain 1)
- UnnamedContract (`0x755610f5be536ad7afbaa7c10f3e938ea3aa1877`, chain 1)
- UnnamedContract (`0x76943c0d61395d8f2edf9060e1533529cae05de6`, chain 1)
- UnnamedContract (`0x79f5e20996abe9f6a48af6f9b13f1e55aed6f06d`, chain 1)
- UnnamedContract (`0x7c2a1e25ca6d778ecaebc8549371062487846aaf`, chain 1)
- UnnamedContract (`0x7e8effab3083fb26ace6832bfca4c377905f97d7`, chain 1)
- UnnamedContract (`0x7fadb6358950c5faa66cb5eb8ee5147de3df355a`, chain 1)
- UnnamedContract (`0x828b154032950c8ff7cf8085d841723db2696056`, chain 1)
- UnnamedContract (`0x834560f580764bc2e0b16925f8bf229bb00cb759`, chain 1)
- UnnamedContract (`0x852ded011285fe67063a08005c71a85690503cee`, chain 1)
- UnnamedContract (`0x86f6c353a0965eb069cd7f4f91c1afef8c725551`, chain 1)
- UnnamedContract (`0x8772e3a2d86b9347a2688f9bc1808a6d8917760c`, chain 1)
- UnnamedContract (`0x87d93d9b2c672bf9c9642d853a8682546a5012b5`, chain 1)
- UnnamedContract (`0x8b7854488fde088d686ea672b6ba1a5242515f45`, chain 1)
- UnnamedContract (`0x8ba6d367d15ebc52f3ebbdb4a8710948c0918d42`, chain 1)
- UnnamedContract (`0x8f73e4c2a6d852bb4ab2a45e6a9cf5715b3228b7`, chain 1)
- UnnamedContract (`0x92abc000698374b44206148596acd8a934687e66`, chain 1)
- UnnamedContract (`0x93559892d3c7f66de4570132d68b69bd3c369a7c`, chain 1)
- UnnamedContract (`0x935cb3366faf2cfc415b2099d1f974fd27202b77`, chain 1)
- UnnamedContract (`0x958e0d946d014f377421a53ab5f9180d4485e63b`, chain 1)
- UnnamedContract (`0x95b521b4f55a447db89f6a27f951713fc2035f3f`, chain 1)
- UnnamedContract (`0x96c9a897d116ef660086d3aa67b3af653324ab37`, chain 1)
- UnnamedContract (`0x97615f72c3428a393d65a84a3ea6bbd9ad6c0d74`, chain 1)
- UnnamedContract (`0x98be4a407bff0c125e25fbe9eb1165504349c37d`, chain 1)
- UnnamedContract (`0x99ac10631f69c753ddb595d074422a0922d9056b`, chain 1)
- UnnamedContract (`0x9b1cebf7616f2bc73b47d226f90b01a7c9f86956`, chain 1)
- UnnamedContract (`0x9d28ad303c90df524ba960d7a2dac56dcc31e428`, chain 1)
- UnnamedContract (`0x9de443adc5a411e83f1878ef24c3f52c61571e72`, chain 1)
- UnnamedContract (`0x9eb81629245c5248a8f4ffcdf11a73e0d0c74071`, chain 1)
- UnnamedContract (`0xa02fc823cce0d016bd7e17ac684c9abab2d6d647`, chain 1)
- UnnamedContract (`0xa12bc993d8144404a8c8c812816048275a066ced`, chain 1)
- UnnamedContract (`0xa1acc1e6edab281febd91e3515093f1de81f25c0`, chain 1)
- UnnamedContract (`0xaa328816027f2d32b9f56d190bc9fa4a5c07637f`, chain 1)
- UnnamedContract (`0xadd673dc6a655afd6f38fb88301028fa31a6fdee`, chain 1)
- UnnamedContract (`0xae7ab96520de3a18e5e111b5eaab095312d7fe84`, chain 1)
- UnnamedContract (`0xae7b191a31f627b4eb1d4dac64eab9976995b433`, chain 1)
- UnnamedContract (`0xaf35a63a4114b7481589fdd9fdb3e35fd65faed7`, chain 1)
- UnnamedContract (`0xb0fe4d300334461523d9d61aad90d0494e1abb43`, chain 1)
- UnnamedContract (`0xb314d4a76c457c93150d308787939063f4cc67e0`, chain 1)
- UnnamedContract (`0xb948a93827d68a82f6513ad178964da487fe2bd9`, chain 1)
- UnnamedContract (`0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f`, chain 1)
- UnnamedContract (`0xbd08f9d6bf1d25cc7407e4855df1d46c2043b3ea`, chain 1)
- UnnamedContract (`0xbd2b6dc189eefd51b273f5cb2d99ba1ce565fb8c`, chain 1)
- UnnamedContract (`0xc18f11735c6a1941431ccc5bcf13af0a052a5022`, chain 1)
- UnnamedContract (`0xc1d0b3de6792bf6b4b37eccdcc24e45978cfd2eb`, chain 1)
- UnnamedContract (`0xc4e3ff0b5b106f88fc64c43031be8b076ee9f21c`, chain 1)
- UnnamedContract (`0xc52fc3081123073078698f1eac2f1dc7bd71880f`, chain 1)
- UnnamedContract (`0xc69685e89cefc327b43b7234ac646451b27c544d`, chain 1)
- UnnamedContract (`0xc6c1f091450b54af3280cfed790047431bc99bb1`, chain 1)
- UnnamedContract (`0xc7792b3f2b399bb0edf53fecdceceb97fbeb18af`, chain 1)
- UnnamedContract (`0xcf33a38111d0b1246a3f38a838fb41d626b454f0`, chain 1)
- UnnamedContract (`0xd30dc38edefc21875257e8a3123503075226e14b`, chain 1)
- UnnamedContract (`0xd43a3e984071f40d5d840f60708af0e9526785df`, chain 1)
- UnnamedContract (`0xd54c1c6413caac3477ac14b2a80d5398e3c32ffe`, chain 1)
- UnnamedContract (`0xd624b08c83baecf0807dd2c6880c3154a5f0b288`, chain 1)
- UnnamedContract (`0xd6a67636c05beb5b4a5c90d408b03a63c4e39426`, chain 1)
- UnnamedContract (`0xd99cc66fec647e68294c6477b40fc7e0f6f618d0`, chain 1)
- UnnamedContract (`0xda1df6442afd2ec36abea91029794b9b2156add0`, chain 1)
- UnnamedContract (`0xda22fa1cea40d05fe4cd536967afdd839586d546`, chain 1)
- UnnamedContract (`0xda7de2ecddfccc6c3af10108db212acbbf9ea83f`, chain 1)
- UnnamedContract (`0xdadc4c36cd8f468a398c25d0d8aaf6a928b47ab4`, chain 1)
- UnnamedContract (`0xdbfa0b8a15a503f25224fca5f84a3853230a715c`, chain 1)
- UnnamedContract (`0xdc24316b9ae028f1497c275eb9192a3ea0f67022`, chain 1)
- UnnamedContract (`0xdc5fe1782b6943f318e05230d688713a560063dc`, chain 1)
- UnnamedContract (`0xdc7300622948a7adaf339783f6991f9cddd79776`, chain 1)
- UnnamedContract (`0xde06d17db9295fa8c4082d4f73ff81592a3ac437`, chain 1)
- UnnamedContract (`0xdfa0bc38113b6d53c2881573fd764ceeff468610`, chain 1)
- UnnamedContract (`0xe0b234f99e413e27d9bc31abba9a49a3e570da97`, chain 1)
- UnnamedContract (`0xe1f6babb445f809b97e3505ea91749461050f780`, chain 1)
- UnnamedContract (`0xe2a682a9722354d825d1bbdf372cc86b2ea82c8c`, chain 1)
- UnnamedContract (`0xe5656eee7eed02bde009d77c88247bc8271e26eb`, chain 1)
- UnnamedContract (`0xe76c52750019b80b43e36df30bf4060eb73f573a`, chain 1)
- UnnamedContract (`0xe78717192c45736df0e4be55c0219ee7f9addd0d`, chain 1)
- UnnamedContract (`0xedc0d2cb2289bba1587424dd42bdd1ca7eabdf17`, chain 1)
- UnnamedContract (`0xee1e3b4f047122650086985f794f0db5f10ae49d`, chain 1)
- UnnamedContract (`0xee60c6ebc91237d334230b12263e26ee3b480ec4`, chain 1)
- UnnamedContract (`0xf0396a8077eda579f657b5e6f3c3f5e8ee81972b`, chain 1)
- UnnamedContract (`0xf1647c86e6d7959f638dd9ce1d90e2f3c9503129`, chain 1)
- UnnamedContract (`0xf23559de8ab37ff7a154384b0822da867cfa7eac`, chain 1)
- UnnamedContract (`0xf2476f967c826722f5505edfc4b2561a34033477`, chain 1)
- UnnamedContract (`0xf4bf42c6d6a0e38825785048124dbad6c9eaaac3`, chain 1)
- UnnamedContract (`0xf4f6a03e3dbf0aa22083be80fdd340943d275ea5`, chain 1)
- UnnamedContract (`0xf5058616517c068c7b8c7ebc69ff636ade9066d6`, chain 1)
- UnnamedContract (`0xf5dc67e54fc96f993cd06073f71ca732c1e654b1`, chain 1)
- UnnamedContract (`0xf65614d73952be91ce0ae7dd9cff25ba15bee2f5`, chain 1)
- UnnamedContract (`0xf668e6d326945d499e5b35e7cd2e82acfbcfe6f0`, chain 1)
- UnnamedContract (`0xf95f069f9ad107938f6ba802a3da87892298610e`, chain 1)
- UnnamedContract (`0xfdab48c4d627e500207e9af29c98579d90ea0ad4`, chain 1)
- UnnamedContract (`0xfddf38947afb03c621c71b06c9c70bce73f12999`, chain 1)
- UnnamedContract (`0xff22ea467301010f1364fc154c13e0c86fcfb077`, chain 1)
- UnnamedContract (`0xffa96d84def2ea035c7ab153d8b991128e3d72fd`, chain 1)
- UnnamedContract (`0xffe21561251c49adccfad065c94fb4931df49081`, chain 1)
- UnnamedContract (`0x2734602c0cebba68662552cacd5553370b283e2e`, chain 10)
- UnnamedContract (`0x4bf0d419793d8722b8391efad4c9ce78f460ced3`, chain 10)
- UnnamedContract (`0x4cf8fe0a4c2539f7efdd2047d8a5d46f14613088`, chain 10)
- UnnamedContract (`0x5a9d695c518e95cd6ea101f2f25fc2ae18486a61`, chain 10)
- UnnamedContract (`0x5fc53f707c7aacd460a1cd564c06e0f07610fcb7`, chain 10)
- UnnamedContract (`0x75483ce83100890c6bf1718c26052ce44e0f2839`, chain 10)
- UnnamedContract (`0x76a50b8c7349ccddb7578c6627e79b5d99d24138`, chain 10)
- UnnamedContract (`0x8e01013243a96601a86eb3153f0d9fa4fbfb6957`, chain 10)
- UnnamedContract (`0x91ce2f083d59b832f95f90aa0997168ae051a98a`, chain 10)
- UnnamedContract (`0x981fb05b738e981ac532a99e77170ecb4bc27aef`, chain 10)
- UnnamedContract (`0xd420d6c8aa81c087829a64ce59936b7c1176a81a`, chain 10)
- UnnamedContract (`0xda74db17023750d02b83be2559a4eaa013b65c54`, chain 10)
- UnnamedContract (`0xe9b65da5dcbe92f1b397991c464ff568dc98d761`, chain 10)
- UnnamedContract (`0xefa0db536d2c8089685630fafe88cf7805966fc3`, chain 10)
- UnnamedContract (`0xfe57042de76c8d6b1df0e9e2047329fd3e2b7334`, chain 10)
- UnnamedContract (`0x15ad245133568c2498c7da0cf2204a03b0e9b98a`, chain 56)
- UnnamedContract (`0x29e6817db339795766244b96aef5dc534a98518d`, chain 56)
- UnnamedContract (`0x451d447776778870bdfe76d031689703aba73ee5`, chain 56)
- UnnamedContract (`0x6981f5621691cbfe3ddd524de71076b79f0a0278`, chain 56)
- UnnamedContract (`0x723aead29acee7e9281c32d11ea4ed0070c41b13`, chain 56)
- UnnamedContract (`0x8e5175d17f74d1d512de59b2f5d5a5d8177a123d`, chain 56)
- UnnamedContract (`0xb7ba81dd07885ae7bfd18452b36d3404d7edd8ee`, chain 56)
- UnnamedContract (`0xb948a93827d68a82f6513ad178964da487fe2bd9`, chain 56)
- UnnamedContract (`0xbe3f7e06872e0df6cd7ff35b7aa4bb1446dc9986`, chain 56)
- UnnamedContract (`0xc2b778fcc3ff311cf1abbf4e53880277bfd14c8f`, chain 56)
- UnnamedContract (`0xc934433f4c433cf80de6fb65fd70c7a650d8a408`, chain 56)
- UnnamedContract (`0xcd867b440c726461e5fabe8d3a050b2f8701c230`, chain 56)
- UnnamedContract (`0xe82c2a5846cfb6d8683d6b636719e7aa61486838`, chain 56)
- UnnamedContract (`0xf0396a8077eda579f657b5e6f3c3f5e8ee81972b`, chain 56)
- UnnamedContract (`0x37de961d6bb5865867add416be07189d2dd960e6`, chain 100)
- UnnamedContract (`0x332ca368dd09ad309c51dc6350730e0bca85cffe`, chain 130)
- UnnamedContract (`0x3b00f262e39372df2756f809dd5dc36aeedfc4a0`, chain 130)
- UnnamedContract (`0x537a7f9d551da3c2800cb11ca17f2946d21029af`, chain 130)
- UnnamedContract (`0x5a007d6e37633fb297b82c074b94bb29546bebc3`, chain 130)
- UnnamedContract (`0x81f2508aac59757ef7425ddc9717ab5c2aa0a84f`, chain 130)
- UnnamedContract (`0xb5cf096a406c1d5297d2493073168f44eb4a1a1d`, chain 130)
- UnnamedContract (`0xc02fe7317d4eb8753a02c35fe019786854a92001`, chain 130)
- UnnamedContract (`0xd835fac9080396cce95bdf9ecc7cc27bab12c9f8`, chain 130)
- UnnamedContract (`0xf0396a8077eda579f657b5e6f3c3f5e8ee81972b`, chain 130)
- UnnamedContract (`0x37de961d6bb5865867add416be07189d2dd960e6`, chain 137)
- UnnamedContract (`0xd65fa54f8df43064dfd8ddf223a446fc638800a9`, chain 137)
- UnnamedContract (`0x0d7f0a811978b3b62cbff4ef6149b5909eacfe94`, chain 324)
- UnnamedContract (`0x65b05f4fca066316383b0fe196c76c873a4dfd02`, chain 324)
- UnnamedContract (`0xadb90cfb3d5ebbab8eee7da10b4db215a7d50bee`, chain 324)
- UnnamedContract (`0xf7169e14cdef99403be9114c9303887f760b1913`, chain 324)
- UnnamedContract (`0xdafc1dcb93da415604ac6187638f88a8ff8d77a4`, chain 1285)
- UnnamedContract (`0x6ef6cd595b775b9752df83c8b1700235b21fe2f6`, chain 5000)
- UnnamedContract (`0xa8579d42e34398267de16e6eeecdb7ed0eff953c`, chain 5000)
- UnnamedContract (`0x37de961d6bb5865867add416be07189d2dd960e6`, chain 8453)
- UnnamedContract (`0x4f793e5d1d71dbbcee34e39a5ad3c6ba5b11e935`, chain 8453)
- UnnamedContract (`0x69ce2505ce515c0203160450157366f927243309`, chain 8453)
- UnnamedContract (`0x7063ef4f2887586e96096d3e94c9b6961c50a9a2`, chain 8453)
- UnnamedContract (`0xac9d11cd4d7ef6e54f14643a393f68ca014287ab`, chain 8453)
- UnnamedContract (`0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452`, chain 8453)
- UnnamedContract (`0x244912352a639001cecfa208cdaa7cb474c9eade`, chain 34443)
- UnnamedContract (`0x1840c4d81d2c50b603da5391b6a24c1cd62d0b56`, chain 42161)
- UnnamedContract (`0x5979d7b546e38e414f7e9822514be443a4800529`, chain 42161)
- UnnamedContract (`0x7acbea3b8ab7cdf4a595c6ed81e7d3e26038d494`, chain 42161)
- UnnamedContract (`0xc20129f1dd4dfed023a6d6a8de9d54a7b61af5cc`, chain 42161)
- UnnamedContract (`0xd97221065e826167a2cfe3307972c0d42200fdb4`, chain 42161)
- UnnamedContract (`0xe75886de20df66827e321efdb88726e6baa4b0a7`, chain 42161)
- UnnamedContract (`0xfb5e6d0c1dfed2ba000fbc040ab8df3615ac329c`, chain 42161)
- UnnamedContract (`0xfdcf209a213a0b3c403d543f87e74fcbca11de34`, chain 42161)
- UnnamedContract (`0x1e1f6f22f97b4a7522d8b62e983953639239774e`, chain 59144)
- UnnamedContract (`0x353012dc4a9a6cf55c941badc267f82004a8ceb9`, chain 59144)
- UnnamedContract (`0x74be82f00cc867614803ffd7f36a2a4af0405670`, chain 59144)
- UnnamedContract (`0xa8ef4db842d95de72433a8b5b8ff40cb7c74c1b6`, chain 59144)
- UnnamedContract (`0xb5bedd42000b71fdde22d3ee8a79bd49a568fc8f`, chain 59144)
- UnnamedContract (`0xc0583e2f5930ede5fab9d57bac4169878730b010`, chain 59144)
- UnnamedContract (`0xd90ed3d4f9d11262d3d346a4369058d5b3777137`, chain 59144)
- UnnamedContract (`0xf951d7592e03edb0bab3d533935e678ce64eb927`, chain 59144)
- UnnamedContract (`0x7ba516fb4512877c016907d6e70fae96fbbdf8cd`, chain 534352)
- UnnamedContract (`0xf580753e334687c0d6b88ef563a258f048384ee6`, chain 534352)
- ActivateNodeOperators (`0xcbb418f6f9bfd3525ce6aade8f74ecfefe2db5c8`, chain 1)
- AddAllowedRecipient (`0x1f809d2cb72a5ab13778811742050eda876129b6`, chain 1)
- AddMEVBoostRelays (`0x00a3d6260f70b1660c8646ef25d0820effd7be60`, chain 1)
- AddNodeOperators (`0xcaa3af7460e83e665eefec73a7a542e5005c9639`, chain 1)
- AllowedRecipientsBuilder (`0x334d6edc13f63728b39e6a6d04a7bbd5d6a9b9ff`, chain 1)
- AllowedRecipientsFactory (`0x83e976758b7ab1bb676a4fea073fa0e2a807642b`, chain 1)
- AllowedRecipientsRegistry (`0x1a7cfa9efb4d5bffde87b0faeb1fc65d653868c0`, chain 1)
- AllowedTokensRegistry (`0x4ac40c34f8992bb1e5e856a448792158022551ca`, chain 1)
- AlterTiersInOperatorGrid (`0x37d9b09eda477a84e3913fcb4d032efb0bf9b62e`, chain 1)
- AppProxyPinned (`0x853cc0d5917f49b57b8e9f89e491f5e18919093a`, chain 1)
- AppProxyUpgradeable (`0x0cb113890b04b49455dfe06554e2d784598a29c9`, chain 1)
- AppProxyUpgradeable (`0x0d97e876ad14db2b183cfeeb8aa1a5c788eb1831`, chain 1)
- AppProxyUpgradeable (`0x2e59a20f205bb85a89c53f1936454680651e618e`, chain 1)
- AppProxyUpgradeable (`0x3e40d73eb977dc6a537af587d48316fee66e9c8c`, chain 1)
- AppProxyUpgradeable (`0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb`, chain 1)
- AppProxyUpgradeable (`0xf73a1260d222f447210581ddf212d915c09a3249`, chain 1)
- AssetRecovererLib (`0xa74528edc289b1a597faf83fcff7eff871cc01d9`, chain 1)
- ChangeNodeOperatorManagers (`0xe31a0599a6772bcf9b2bfc9e25cf941e793c9a7d`, chain 1)
- CircuitBreaker (`0x6019cb557978296ba3c08a7b73225c0975dfb2f7`, chain 1)
- CSEjector (`0xc72b58aa02e0e98cf8a4a0e9dce75e763800802c`, chain 1)
- CSModule (`0x1eb6d4da13ca9566c17f526ae0715325d7a07665`, chain 1)
- CSMSettleElStealingPenalty (`0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4`, chain 1)
- CSMSetVettedGateTree (`0xbc5642bdd6f2a54b01a75605aae9143525d97308`, chain 1)
- CSStrikes (`0x3e5021424c9e13fc853e523cd68ebbec848956a0`, chain 1)
- CuratedSubmitExitRequestHashes (`0x4f716ad3cc7a3a5cda2359e5b2c84335c171dcde`, chain 1)
- Dashboard (`0x294825c2764c7d412dc32d87e2242c4f1d989af3`, chain 1)
- DataBus (`0x37de961d6bb5865867add416be07189d2dd960e6`, chain 10)
- DeactivateNodeOperators (`0x8b82c1546d47330335a48406cc3a50da732672e7`, chain 1)
- DualGovernance (`0xc1db28b3301331277e307fdcff8de28242a4486e`, chain 1)
- EasyTrack (`0xf0211b7660680b49de1a7e9f25c65660f0a13fea`, chain 1)
- EditMEVBoostRelays (`0x6b7863f2c7dee99d3b744fdaedbeb1aecc025535`, chain 1)
- EmergencyProtectedTimelock (`0xce0425301c85c5ea2a0873a2dee44d78e02d2316`, chain 1)
- ERC1967Proxy (`0x723aead29acee7e9281c32d11ea4ed0070c41b13`, chain 1)
- ERC1967Proxy (`0x26c5e01524d2e6280a48f2c50ff6de7e52e9611c`, chain 56)
- ERC20Bridged (`0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921`, chain 42161)
- Escrow (`0x165813a31446a98c84e20dda8c101bb3c8228e1c`, chain 1)
- EVMScriptExecutor (`0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977`, chain 1)
- Executor (`0x23e0b465633ff5178808f4a75186e2f2f9537021`, chain 1)
- GnosisSafeProxy (`0x08637515e85a4633e23dfc7861e2a9f53af640f7`, chain 1)
- GnosisSafeProxy (`0x007132343ca619c5449297507b26c3f85e80d1b1`, chain 1284)
- GnosisSafeProxy (`0x0f9a0e7071b7b21bc7a8514da2cd251bc1ff0725`, chain 8453)
- HyperLaneAdapter (`0x8d374df3de08b971777aa091fa68bce109b3a7f3`, chain 1)
- ImmutableDualGovernanceConfigProvider (`0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef`, chain 1)
- IncreaseNodeOperatorStakingLimit (`0xfebd8fac16de88206d4b18764e826af38546afe0`, chain 1)
- InsuranceFund (`0x8b3f33234abd88493c0cd28de33d583b70bede35`, chain 1)
- KernelProxy (`0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc`, chain 1)
- LayerZeroAdapter (`0x742650e0441be8503682965d601ad0ba1fb54411`, chain 1)
- LidoExecutionLayerRewardsVault (`0x388c818ca8b9251b393131c08a736a67ccb19297`, chain 1)
- MerkleDistributor (`0x4b3edb22952fb4a70140e39fb1add05a6b49622b`, chain 1)
- MetaStablePool (`0x32296969ef14eb0c6d29669c550d4a0449130230`, chain 1)
- MinFirstAllocationStrategy (`0x7e70de6d1877b3711b2beda7ba00013c7142d993`, chain 1)
- MiniMeToken (`0x5a98fcbea516cf06857215779fd812ca3bef1b32`, chain 1)
- NOAddresses (`0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc`, chain 1)
- OperatorGrid (`0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c`, chain 1)
- OracleDaemonConfig (`0xbf05a929c3d7885a6aead833a992da6e5ac23b09`, chain 1)
- OssifiableProxy (`0x06cd61045f958a209a0f8d746e103ecc625f4193`, chain 1)
- OssifiableProxy (`0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e`, chain 1)
- OssifiableProxy (`0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a`, chain 1)
- OssifiableProxy (`0x1d201be093d847f6446530efb0e8fb426d176709`, chain 1)
- OssifiableProxy (`0x23ed611be0e1a820978875c0122f92260804cddf`, chain 1)
- OssifiableProxy (`0x4d4074628678bd302921c20573eea1ed38ddf7fb`, chain 1)
- OssifiableProxy (`0x4d72bff1beac69925f8bd12526a39baab069e5da`, chain 1)
- OssifiableProxy (`0x889edc2edab5f40e902b864ad4d7ade8e412f9b1`, chain 1)
- OssifiableProxy (`0x1f32b1c2345538c0c6f582fcb022739c4a194ebb`, chain 10)
- OssifiableProxy (`0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0`, chain 10)
- OssifiableProxy (`0x1a513e9b6434a12c7bb5b9af3b21963308dee372`, chain 130)
- OssifiableProxy (`0x07d4692291b9e30e326fd31706f686f83f331b82`, chain 42161)
- Pool (`0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a`, chain 42161)
- QueueLib (`0x6eff460627b6798c2907409ea2fdfb287eaa2e55`, chain 1)
- RegisterGroupsInOperatorGrid (`0x17305db55c908e84c58bbdca57258a7d1f7eea7c`, chain 1)
- RemoveAllowedRecipient (`0x22010d1747cafc370b1f1fbba61022a313c5693b`, chain 1)
- RemoveMEVBoostRelays (`0x9721c0f77e3ea40ed592b9dcf3032daf269c0306`, chain 1)
- ResealManager (`0x7914b5a1539b97bd0bbd155757f25fd79a522d24`, chain 1)
- SafeProxy (`0x13600b9aee86f8254969918b1e9ae6ea091b8727`, chain 1)
- SafeProxy (`0xac8bc65814dd0501674f6940aff1a4ea78fc20ef`, chain 130)
- SDVTSubmitExitRequestHashes (`0x58a59ddc6aea9b1d5743d024e15dfa4badb56e37`, chain 1)
- SetJailStatusInOperatorGrid (`0x6a4f33f05e7412a11100353724bb6a152cf0d305`, chain 1)
- SetNodeOperatorNames (`0x7d509bff310d9460b1f613e4e40d342201a83ae4`, chain 1)
- SetNodeOperatorRewardAddresses (`0x589e298964b9181d9938b84bb034c3bb9024e2c0`, chain 1)
- SetVettedValidatorsLimits (`0xd75778b855886fc5e1ea7d6bfada9eb68b35c19d`, chain 1)
- StakingRouter (`0x226f9265cbc37231882b7409658c18bb7738173a`, chain 1)
- StakingVault (`0x06a56487494aa080dec7bf69128eda9225784553`, chain 1)
- Stonks (`0x278f7b6cbb3cc37374e6a40bdfebfff08f65a5c7`, chain 1)
- TiebreakerSubCommittee (`0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951`, chain 1)
- TimeConstraints (`0x2a30f5ac03187674553024296bed35aa49749dda`, chain 1)
- TimelockedGovernance (`0x553337946f2fab8911774b20025fa776b76a7cce`, chain 1)
- TokenRateNotifier (`0x25e35855783bec3e49355a29e110f02ed8b05ba9`, chain 1)
- TopUpAllowedRecipients (`0x00caaef11ec545b192f16313f53912e453c91458`, chain 1)
- TransceiverStructs (`0x27a3daf3b243104e9b0afae6b56026a416b852c9`, chain 56)
- TransparentUpgradeableProxy (`0x051f1d88f0af5763fb888ec4378b4d8b29ea3319`, chain 1)
- TransparentUpgradeableProxy (`0x40c4464fca8cacd550c33b39d674fc257966022f`, chain 56)
- TriggerableWithdrawalsGateway (`0xdc00116a0d3e064427da2600449cfd2566b3037b`, chain 1)
- UniswapV2Pair (`0xc5578194d457dcce3f272538d1ad52c68d1ce849`, chain 1)
- UpdateTargetValidatorLimits (`0x161a4552a625844c822954c5acbac928ee0f399b`, chain 1)
- ValidatorConsolidationRequests (`0xac4aae7123248684c405a4b0038c1560ec7fe018`, chain 1)
- ValidatorExitDelayVerifier (`0xbdb567672c867db533119c2dcd4fb9d8b44ec82f`, chain 1)
- VaultFactory (`0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a`, chain 1)
- VaultsAdapter (`0x28f9ac198c4e0fa6a9ad2c2f97cb38f1a3120f27`, chain 1)
- WithdrawalVault (`0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d`, chain 1)
- WormholeAdapter (`0xbb1e43408bbf2c767ff3bd5bbc34e183cc1ef119`, chain 56)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- WstETHReferralStaker (`0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 129; live-surface rows included: 129 (109 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 311/521 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 90/109 (82.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 311 own, 98 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1459 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 59
- Confirmed-live implementations: 311 of 1868 unique; 1557 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 90/366
- Verified + Unaudited implementations: 276
- Verified by bytecode match: 0
- Unverified implementations: 1502
- Unique implementations: 1868
- Raw deployments: 1901
- Audits discovered: 145 (145 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 76
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/lido/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 53 fresh, 30 aging, 61 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 58 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 55 match-unverified
- Tier 1 coverage: 27.5% (Certora, ChainSecurity, Code4rena, Cyfrin, MixBytes, OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Statemind | Tier 2 | 46 | 12.6% | 2025-09 |
| yAudit | Tier 2 | 42 | 11.5% | 2026-04 |
| Ackee Blockchain | Tier 2 | 22 | 6.0% | 2026-02 |
| Certora | Tier 1 | 22 | 6.0% | 2026-01 |
| Oxorio | Tier 2 | 17 | 4.6% | 2024-08 |
| MixBytes | Tier 1 | 14 | 3.8% | 2026-05 |
| OpenZeppelin | Tier 1 | 9 | 2.5% | 2025-02 |
| Runtime Verification | Tier 2 | 5 | 1.4% | 2025-02 |
| ChainSecurity | Tier 1 | 4 | 1.1% | 2024-06 |
| Hexens | Tier 2 | 2 | 0.5% | 2023-05 |
| Quantstamp | Tier 2 | 2 | 0.5% | 2024-09 |
| Sigma Prime | Tier 2 | 2 | 0.5% | 2026-01 |
| Code4rena | Tier 1 | 1 | 0.3% | 2026-03 |
| Composable Security | Tier 2 | 1 | 0.3% | 2026-06 |
| Cyfrin | Tier 1 | 1 | 0.3% | 2026-05 |
| Nethermind | Tier 2 | 1 | 0.3% | 2026-04 |
| Pessimistic | Tier 2 | 1 | 0.3% | 2023-12 |
| Spearbit | Tier 1 | 1 | 0.3% | 2026-03 |
| Verilog | Tier 2 | 1 | 0.3% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245716 | 2 deployments: ethereum `0x23ed611be0e1a820978875c0122f92260804cddf`; ethereum `0xd43a3e984071f40d5d840f60708af0e9526785df` | ✅ Audited |
| ActivateNodeOperators | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245424 | `0xcbb418f6f9bfd3525ce6aade8f74ecfefe2db5c8` | ✅ Audited |
| AddAllowedRecipient | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245231 | `0x1f809d2cb72a5ab13778811742050eda876129b6` | ✅ Audited |
| AddMEVBoostRelays | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245201 | `0x00a3d6260f70b1660c8646ef25d0820effd7be60` | ✅ Audited |
| AddNodeOperators | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245423 | `0xcaa3af7460e83e665eefec73a7a542e5005c9639` | ✅ Audited |
| AllowedRecipientsBuilder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245254 | `0x334d6edc13f63728b39e6a6d04a7bbd5d6a9b9ff` | ✅ Audited |
| AllowedRecipientsFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245340 | `0x83e976758b7ab1bb676a4fea073fa0e2a807642b` | ✅ Audited |
| AllowedRecipientsRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245225 | `0x1a7cfa9efb4d5bffde87b0faeb1fc65d653868c0` | ✅ Audited |
| AllowedTokensRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245275 | `0x4ac40c34f8992bb1e5e856a448792158022551ca` | ✅ Audited |
| AlterTiersInOperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245256 | `0x37d9b09eda477a84e3913fcb4d032efb0bf9b62e` | ✅ Audited |
| ArbitrumBridgeExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245594 | `0x1dca41859cd23b526cbe74da8f48ac96e14b1a29` | ✅ Audited |
| AssetRecovererLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245387 | `0xa74528edc289b1a597faf83fcff7eff871cc01d9` | ✅ Audited |
| AxelarTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245709 | `0x723aead29acee7e9281c32d11ea4ed0070c41b13` | ✅ Audited |
| ChangeNodeOperatorManagers | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245467 | `0xe31a0599a6772bcf9b2bfc9e25cf941e793c9a7d` | ✅ Audited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245292 | `0x6019cb557978296ba3c08a7b73225c0975dfb2f7` | ✅ Audited |
| CrossChainController | unknown | project_anchor | own_supporting | 1 | bsc | unit-245733 | 2 deployments: bsc `0x40c4464fca8cacd550c33b39d674fc257966022f`; bsc `0xb7ba81dd07885ae7bfd18452b36d3404d7edd8ee` | ✅ Audited |
| CSAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245705 | 2 deployments: ethereum `0x4d72bff1beac69925f8bd12526a39baab069e5da`; ethereum `0x6f09d2426c7405c5546413e6059f884d2d03f449` | ✅ Audited |
| CSEjector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245418 | `0xc72b58aa02e0e98cf8a4a0e9dce75e763800802c` | ✅ Audited |
| CSExitPenalties | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245718 | 2 deployments: ethereum `0x06cd61045f958a209a0f8d746e103ecc625f4193`; ethereum `0xda22fa1cea40d05fe4cd536967afdd839586d546` | ✅ Audited |
| CSFeeOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245721 | 2 deployments: ethereum `0x4d4074628678bd302921c20573eea1ed38ddf7fb`; ethereum `0xe0b234f99e413e27d9bc31abba9a49a3e570da97` | ✅ Audited |
| CSModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245228 | `0x1eb6d4da13ca9566c17f526ae0715325d7a07665` | ✅ Audited |
| CSMSettleElStealingPenalty | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245495 | `0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4` | ✅ Audited |
| CSMSetVettedGateTree | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245403 | `0xbc5642bdd6f2a54b01a75605aae9143525d97308` | ✅ Audited |
| CSStrikes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245262 | `0x3e5021424c9e13fc853e523cd68ebbec848956a0` | ✅ Audited |
| CuratedSubmitExitRequestHashes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245278 | `0x4f716ad3cc7a3a5cda2359e5b2c84335c171dcde` | ✅ Audited |
| Dashboard | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245244 | `0x294825c2764c7d412dc32d87e2242c4f1d989af3` | ✅ Audited |
| DataBus | unknown | project_anchor | own_supporting | 0 | optimism | unit-245513 | `0x37de961d6bb5865867add416be07189d2dd960e6` | ✅ Audited |
| DeactivateNodeOperators | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245351 | `0x8b82c1546d47330335a48406cc3a50da732672e7` | ✅ Audited |
| DualGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245412 | `0xc1db28b3301331277e307fdcff8de28242a4486e` | ✅ Audited |
| EasyTrack | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245479 | `0xf0211b7660680b49de1a7e9f25c65660f0a13fea` | ✅ Audited |
| EditMEVBoostRelays | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245306 | `0x6b7863f2c7dee99d3b744fdaedbeb1aecc025535` | ✅ Audited |
| EmergencyProtectedTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245428 | `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` | ✅ Audited |
| ERC20Bridged | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245591 | `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` | ✅ Audited |
| ERC20BridgedPermit | unknown | project_anchor | own_supporting | 1 | optimism | unit-245727 | 2 deployments: optimism `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb`; optimism `0xfe57042de76c8d6b1df0e9e2047329fd3e2b7334` | ✅ Audited |
| Escrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245218 | `0x165813a31446a98c84e20dda8c101bb3c8228e1c` | ✅ Audited |
| EVMScriptExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245502 | `0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977` | ✅ Audited |
| EVMScriptRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245714 | `0x853cc0d5917f49b57b8e9f89e491f5e18919093a` | ✅ Audited |
| Executor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245238 | `0x23e0b465633ff5178808f4a75186e2f2f9537021` | ✅ Audited |
| HyperLaneAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245354 | `0x8d374df3de08b971777aa091fa68bce109b3a7f3` | ✅ Audited |
| ImmutableDualGovernanceConfigProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245383 | `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` | ✅ Audited |
| IncreaseNodeOperatorStakingLimit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245503 | `0xfebd8fac16de88206d4b18764e826af38546afe0` | ✅ Audited |
| InsuranceFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245347 | `0x8b3f33234abd88493c0cd28de33d583b70bede35` | ✅ Audited |
| L1ERC20TokenGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245715 | 2 deployments: ethereum `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a`; ethereum `0xc4e3ff0b5b106f88fc64c43031be8b076ee9f21c` | ✅ Audited |
| L2ERC20ExtendedTokensBridge | unknown | project_anchor | own_supporting | 1 | unichain | unit-245730 | 2 deployments: unichain `0x1a513e9b6434a12c7bb5b9af3b21963308dee372`; unichain `0x332ca368dd09ad309c51dc6350730e0bca85cffe` | ✅ Audited |
| L2ERC20TokenGateway | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-245731 | 2 deployments: arbitrum `0x07d4692291b9e30e326fd31706f686f83f331b82`; arbitrum `0xe75886de20df66827e321efdb88726e6baa4b0a7` | ✅ Audited |
| LayerZeroAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245317 | `0x742650e0441be8503682965d601ad0ba1fb54411` | ✅ Audited |
| LidoExecutionLayerRewardsVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245257 | `0x388c818ca8b9251b393131c08a736a67ccb19297` | ✅ Audited |
| MinFirstAllocationStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245331 | `0x7e70de6d1877b3711b2beda7ba00013c7142d993` | ✅ Audited |
| MiniMeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245287 | `0x5a98fcbea516cf06857215779fd812ca3bef1b32` | ✅ Audited |
| NOAddresses | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245468 | `0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc` | ✅ Audited |
| OperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245386 | `0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c` | ✅ Audited |
| OptimismBridgeExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-245691 | `0x0e37599436974a25ddeedf795c848d30af46eacf` | ✅ Audited |
| OracleDaemonConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245408 | `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` | ✅ Audited |
| QueueLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245310 | `0x6eff460627b6798c2907409ea2fdfb287eaa2e55` | ✅ Audited |
| RegisterGroupsInOperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245221 | `0x17305db55c908e84c58bbdca57258a7d1f7eea7c` | ✅ Audited |
| RemoveAllowedRecipient | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245234 | `0x22010d1747cafc370b1f1fbba61022a313c5693b` | ✅ Audited |
| RemoveMEVBoostRelays | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245368 | `0x9721c0f77e3ea40ed592b9dcf3032daf269c0306` | ✅ Audited |
| Repo | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245712 | `0x0d97e876ad14db2b183cfeeb8aa1a5c788eb1831` | ✅ Audited |
| ResealManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245324 | `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` | ✅ Audited |
| SDVTSubmitExitRequestHashes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245286 | `0x58a59ddc6aea9b1d5743d024e15dfa4badb56e37` | ✅ Audited |
| SetJailStatusInOperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245303 | `0x6a4f33f05e7412a11100353724bb6a152cf0d305` | ✅ Audited |
| SetNodeOperatorNames | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245330 | `0x7d509bff310d9460b1f613e4e40d342201a83ae4` | ✅ Audited |
| SetNodeOperatorRewardAddresses | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245285 | `0x589e298964b9181d9938b84bb034c3bb9024e2c0` | ✅ Audited |
| SetVettedValidatorsLimits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245448 | `0xd75778b855886fc5e1ea7d6bfada9eb68b35c19d` | ✅ Audited |
| StakingRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245235 | `0x226f9265cbc37231882b7409658c18bb7738173a` | ✅ Audited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245205 | `0x06a56487494aa080dec7bf69128eda9225784553` | ✅ Audited |
| Stonks | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245241 | `0x278f7b6cbb3cc37374e6a40bdfebfff08f65a5c7` | ✅ Audited |
| TiebreakerSubCommittee | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245260 | `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` | ✅ Audited |
| TimeConstraints | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245246 | `0x2a30f5ac03187674553024296bed35aa49749dda` | ✅ Audited |
| TimelockedGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245281 | `0x553337946f2fab8911774b20025fa776b76a7cce` | ✅ Audited |
| TokenBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245723 | `0x051f1d88f0af5763fb888ec4378b4d8b29ea3319` | ✅ Audited |
| TokenRateNotifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245239 | `0x25e35855783bec3e49355a29e110f02ed8b05ba9` | ✅ Audited |
| TokenRateOracle | unknown | project_anchor | own_supporting | 1 | optimism | unit-245726 | 2 deployments: optimism `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0`; optimism `0x4bf0d419793d8722b8391efad4c9ce78f460ced3` | ✅ Audited |
| TopUpAllowedRecipients | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245202 | `0x00caaef11ec545b192f16313f53912e453c91458` | ✅ Audited |
| TransceiverStructs | unknown | project_anchor | own_supporting | 0 | bsc | unit-245636 | `0x27a3daf3b243104e9b0afae6b56026a416b852c9` | ✅ Audited |
| TriggerableWithdrawalsGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245455 | `0xdc00116a0d3e064427da2600449cfd2566b3037b` | ✅ Audited |
| UpdateTargetValidatorLimits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245217 | `0x161a4552a625844c822954c5acbac928ee0f399b` | ✅ Audited |
| ValidatorConsolidationRequests | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245393 | `0xac4aae7123248684c405a4b0038c1560ec7fe018` | ✅ Audited |
| ValidatorExitDelayVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245406 | `0xbdb567672c867db533119c2dcd4fb9d8b44ec82f` | ✅ Audited |
| ValidatorsExitBusOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245710 | `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` | ✅ Audited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245203 | `0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a` | ✅ Audited |
| VaultHub | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245704 | 2 deployments: ethereum `0x1d201be093d847f6446530efb0e8fb426d176709`; ethereum `0x6330fe7756fbe8649adfb9a541d61c5edb8b4d70` | ✅ Audited |
| VaultsAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245243 | `0x28f9ac198c4e0fa6a9ad2c2f97cb38f1a3120f27` | ✅ Audited |
| Voting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245724 | `0x2e59a20f205bb85a89c53f1936454680651e618e` | ✅ Audited |
| WithdrawalQueueERC721 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245722 | `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` | ✅ Audited |
| WithdrawalVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245329 | `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` | ✅ Audited |
| WormholeAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-245671 | `0xbb1e43408bbf2c767ff3bd5bbc34e183cc1ef119` | ✅ Audited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245334 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ✅ Audited |
| WstEthL2Token | unknown | project_anchor | own_supporting | 1 | bsc | unit-245732 | 2 deployments: bsc `0x26c5e01524d2e6280a48f2c50ff6de7e52e9611c`; bsc `0x451d447776778870bdfe76d031689703aba73ee5` | ✅ Audited |
| WstETHReferralStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245388 | `0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d` | ✅ Audited |

### ⚠️ Verified + Unaudited (276)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1def31d26bce797d808c6684f4b0a17867ac01bd` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1655ad5bd23b6fea57dc21fd761ec4552fcb2419` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0050d50cecc09ce311d4e0ab14377bfcd0397af7` | ⚠️ Unaudited |
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a94d49fac6e23e17c1366c999117a1de8ba7b6` | ⚠️ Unaudited |
| AccountingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77fb6fd121afe51c95fea53069686138b8de469a` | ⚠️ Unaudited |
| AccountingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x010ecb2af743c700bdfaf5ddfd55ba3c07dcf9df`; ethereum `0xe1987a83c5427182bc70ffdc02dbf51eb21b1115` | ⚠️ Unaudited |
| ACL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245711 | `0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e` | ⚠️ Unaudited |
| AddRewardProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d15032b91d01d5c1d940eb919461426ab0dd4e3` | ⚠️ Unaudited |
| Agent | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245701 | `0x3e40d73eb977dc6a537af587d48316fee66e9c8c` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2` | ⚠️ Unaudited |
| AmountConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95faf0522fbe3d9b10240c1494c169744489711` | ⚠️ Unaudited |
| APMRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245708 | `0x0cb113890b04b49455dfe06554e2d784598a29c9` | ⚠️ Unaudited |
| AStETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245713 | 2 deployments: ethereum `0x1982b2f5814301d4e9a8b0201555376e62f82428`; ethereum `0xbd233d4ffdaa9b7d1d3e6b18cccb8d091142893a` | ⚠️ Unaudited |
| ATokenWithDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366ae337897223aea70e3ebe1862219386f20593` | ⚠️ Unaudited |
| AuraProposalEncoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5e941fd184ecc4bff84834b487d79efd6483287` | ⚠️ Unaudited |
| AuthManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x1077799f07c4dc45872e832902571f56e1f9185b`; moonriver `0xa19713ae9d07134448735f2643c1b27e42ee6b3f` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e84390dcc5195414ec91a8c56a5c91021b95704` | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245318 | `0x75100bd564415731b5936a4a94d0dc29dde5db3c` | ⚠️ Unaudited |
| BridgedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7` | ⚠️ Unaudited |
| BridgeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b9ac434c6cd3128e0d2f52780a91678db126c7` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0359bc6ef9425414f9b22e8c9b877080b52793f5` | ⚠️ Unaudited |
| CallForwardingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3697bd0bc6c050135b8321f989a5316eacbf367d` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x031828231b6829208c1b2aad4ecfea2c011dcf87` | ⚠️ Unaudited |
| CbEthSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae2930b50cfebc99fe6db16ce5b9c7d8d09332c` | ⚠️ Unaudited |
| CCIPAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12176e3a3d674e4af1176f30ff4dbc4428f2da7f` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30b622609ffab1641b498e9bf1ff102ab288bee7` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae2ed0210e937327aaf199135393f64d5b57` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2819b65021e13ceeb9ac33e77db32c7e64e7520d` | ⚠️ Unaudited |
| CLrETHSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05225cd708bca9253789c1374e4337a019e99d56` | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230e0321cf38f09e247e50afc7801ea2351fe56f` | ⚠️ Unaudited |
| CLwstETHSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981ab570ac289938f296b975c524b66fbf1b8774` | ⚠️ Unaudited |
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3e65ac1dd4938e02301c4869d3043903f5deb474` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80f2c02224a2e548fc67c0bf705ebfa825dd5439` | ⚠️ Unaudited |
| ComposableStablePool | unknown | project_anchor | own_supporting | 0 | optimism | unit-245531 | `0xde45f101250f2ca1c0f8adfc172576d10c12072d` | ⚠️ Unaudited |
| CompositePostRebaseBeaconReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a7e1cbd678d9ebd50c7d69dc75203b0dbdd431` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dc44ca93a1207cb50671dca68991f64776f5fa2` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4bea5e06cb0536cfd5fe32a3f3a20495fabedfd8` | ⚠️ Unaudited |
| CrossChainExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250227c30e3b26525f292f63756e5eb3c425427e` | ⚠️ Unaudited |
| CrosschainForwarderBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3215225538da1546fe0da88ee13019f402078942` | ⚠️ Unaudited |
| CrowdProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62134f1897e236e06ed34841ba91cef55945df23` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9ac96fc75849c6872cf89f367e56feed5c30` | ⚠️ Unaudited |
| CSEarlyAdoption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5148ad93e2ae5dedd1f7a8b3c19e7f67f90c0e` | ⚠️ Unaudited |
| CSFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17fc610ecbbac3f99751b3b2aac1ba2b22e444f0` | ⚠️ Unaudited |
| CSParametersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eee39440b25b254d28994c5b4037b8bed58fa5e` | ⚠️ Unaudited |
| CSVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c345dfa318f9f4977cdd4f33d80f9d0ffa38e8b` | ⚠️ Unaudited |
| CustomBridgedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x0ece76334fb560f2b1a49a60e38cf726b02203f0` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245504 | `0xff04ed5f7a6c3a0f1e5ea20617f8c6f513d5a77c` | ⚠️ Unaudited |
| DelayedWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755a078dee1c264a3053f02cd634e750d505cf85` | ⚠️ Unaudited |
| Delegation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8287f469726a95dede7cff1ea3b24a34a12e88f0`; ethereum `0xe6d3bd67cfcae26564633eab30e7ea5f3e27ac3b` | ⚠️ Unaudited |
| DelegationMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2a805227fbb433f7c05e98af505b04e07ab639` | ⚠️ Unaudited |
| DepositSecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dca6e1cc2c3816f1c880c9861e6c2478dd0e052` | ⚠️ Unaudited |
| DGLaunchOmnibusMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db8a9313785b78f7d0a201c5e0be007f1eb63b4` | ⚠️ Unaudited |
| DGLaunchStateVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48c2fc419569537bb069bad2165dc0ceb160cec` | ⚠️ Unaudited |
| DGRolesValidatorMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31534e3afe219b609da3715a00a1479d2a2d7981` | ⚠️ Unaudited |
| DGUpgradeOmnibusMainnet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245299 | `0x67988077f29fba661911d9567e05cc52c51ca1b0` | ⚠️ Unaudited |
| DGUpgradeStateVerifierMainnet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245268 | `0x487b764a2085ffd595d9141baec0a766b7904786` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01065f4726bbbce2ef1a4bebc04af3209357c71e` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136d8483032e8e6f7de3ba3fb8f7e0cac9d2ccfa` | ⚠️ Unaudited |
| DummyEmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f6541c2203196feedd14cd2c09550da1cbeda31` | ⚠️ Unaudited |
| DummyERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a` | ⚠️ Unaudited |
| DummyERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| DummyMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0017abac5b6f291f9164e35b1234ca1d697f9cf4` | ⚠️ Unaudited |
| EIP712StETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075cef9752b42e332dab0bae1ca63801ad8e28c7` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3`; ethereum `0xfaf8f72e54d1089fa1882b6f597bfdff59a8afca` | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642af405bf64660665b37977449c9c536b806318` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b669b28c339991d8676fa73cf122a121267` | ⚠️ Unaudited |
| ERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76cf3b8064f356a16028124dcfedcf009c5fc2d3` | ⚠️ Unaudited |
| ERC20Predicate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245230 | `0x1f4c1e0afbeb5b5b86d7722549274434b29884f6` | ⚠️ Unaudited |
| ERC20RebasableBridgedPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39afe23ce59e8ef196b81f0dcb165e9ad38b9463` | ⚠️ Unaudited |
| ERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aaae29879c95ed732bababea4cae20a6d931dbb` | ⚠️ Unaudited |
| EtherPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499a865ac595e6167482d2bd5a224876bab85ab4` | ⚠️ Unaudited |
| EthLongMovePermissionsPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274a46efd4364ccba654dc74ddb793f9010b179c` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db974b1f2bd3b5916d503036208064d18295` | ⚠️ Unaudited |
| EthShortMovePermissionsPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb0236007fd3697b03a88b4b550b422f57894cf` | ⚠️ Unaudited |
| EthShortV2Payload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f5c2c54495567537c0f9c4b66a6adb3b584148` | ⚠️ Unaudited |
| EthShortV3Payload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b64dd461944ace6fd2e9f91714d3962ae5007a` | ⚠️ Unaudited |
| FeeSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8680ceabcb9b56913c519c069add6bc3494b7020` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6df6c0e70d6874a37084270de861d4be682f271b` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e57c8d26671e267c3c971824b93343bb75c2dc8` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0ce92b23108cb4bdbf88788a3933546a85cd772` | ⚠️ Unaudited |
| Finance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245707 | `0xb9e5cbb9ca5b0d659238807e84d0176930753d86` | ⚠️ Unaudited |
| FixedRatioSynchronicityPriceAdapterBaseToPeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3af0f4a52c577cc2c241df51a01fde3d06d93b` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26e0e12b1682884a557e67743c6a575fd00bf332` | ⚠️ Unaudited |
| FLOKI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6efff76acf1698a6a215eca7d632991678ec673b` | ⚠️ Unaudited |
| ForceValidatorExitsInVaultHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c968cd89ca358fbaf57b18e77a8973fa869a6aa` | ⚠️ Unaudited |
| FxStateRootTunnel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7dd5c30dca04f487c9ede0c5ac580c91587fc66` | ⚠️ Unaudited |
| GasSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a`; ethereum `0xfaea28b040850144adcfd49eeb4e7e419566f3e3` | ⚠️ Unaudited |
| GateSeal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881dad714679a6feaa636446a0499101375a365c` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245717 | `0x08637515e85a4633e23dfc7861e2a9f53af640f7` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-245728 | `0x007132343ca619c5449297507b26c3f85e80d1b1` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-245692 | `0x0f9a0e7071b7b21bc7a8514da2cd251bc1ff0725` | ⚠️ Unaudited |
| Greeter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1763b9ed3586b08ae796c7787811a2e1bc16163a` | ⚠️ Unaudited |
| GUDOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67953f28b50cd51e99804e86f42f0e7f9f1a0171` | ⚠️ Unaudited |
| HashConsensus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64bc157ec2585fac63d33a31ced56cee4cb421ea` | ⚠️ Unaudited |
| IncreaseVettedValidatorsLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc993499e03dda45ae8804aa1620257a1d7fb996` | ⚠️ Unaudited |
| JointCampaign | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245355 | `0x8f1155447ee97b5ae147a01a5c420b0fddf0370d` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a55871a713fb98a6b60e2e76fc94021c9f182f` | ⚠️ Unaudited |
| Kernel | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245700 | `0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc` | ⚠️ Unaudited |
| L1BatchBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4`; ethereum `0x7999cdd5e2893475d89211a2e3fda67a841e3233` | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97` | ⚠️ Unaudited |
| L1ERC1155Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244bf7aef29f03916569470a51fa0794b62f8cd7` | ⚠️ Unaudited |
| L1ERC20Bridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245703 | 2 deployments: ethereum `0x41527b2d03844db6b0945f25702cb958b6d55989`; ethereum `0x43a66b32c9adca1a59b273e69b61da5197c21ccd` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c5c51a031165ce62f964966a6399b81165efa4` | ⚠️ Unaudited |
| L1ERC721Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6260af48e8948617b8fa17f4e5cea2d21d21554b`; ethereum `0x79f1bf1906b63b56e08c3ada4c51de11f145a27a` | ⚠️ Unaudited |
| L1ETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d` | ⚠️ Unaudited |
| L1Executor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245204 | `0x06185d60ed72a91d1367eb0733b9d20ae7336d3b` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93ac04010bd61f45bf492022a5b49a902f798f3` | ⚠️ Unaudited |
| L1LidoGateway | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245725 | 2 deployments: ethereum `0x6625c6332c9f91f2d27c304e729b86db87a3f504`; ethereum `0xf4f2066ee72d62e3caf9678459149ba7fcf2262f` | ⚠️ Unaudited |
| L1LidoTokensBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0789f3c7f0c932cc663b0f2256c7057a80a648b6` | ⚠️ Unaudited |
| L1LiskToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f` | ⚠️ Unaudited |
| L1MessageQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc9d741501a20f962756c95bf906b4abffadcf8f` | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c36c9026ac18104839a50c61a4507ea5052eca` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b`; ethereum `0x137cc585f607edebbc3ca6360affcfeab507b374` | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67` | ⚠️ Unaudited |
| L1ScrollMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` | ⚠️ Unaudited |
| L1StandardERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4015fc868c06689abeba4a9dc8fa43b804f6239c` | ⚠️ Unaudited |
| L1USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec393209674090368c592a591b25811e490bf36` | ⚠️ Unaudited |
| L1USDCGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5810f71b6836027c26c25bff9708dfcd2b5432` | ⚠️ Unaudited |
| L1VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23`; ethereum `0xd590c2e71739c551eba7aebe00e7855df4cf5fb7` | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b0cfef892c017d84d8220b8d2ac249624cd087` | ⚠️ Unaudited |
| L1WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe`; ethereum `0xe25effefd08c4a57556d47ef96471cb567a86c24` | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x0fc3de4b1bbcb315880d328e3f9c81d742d73d01`; optimism `0x69d02fedae5e289f467280bc25316d2e835c5864` | ⚠️ Unaudited |
| L2GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x987e300fdfb06093859358522a79098848c33852`; ethereum `0xfdf1ee0098168eaa61bf87db68c39c85151a4e9e` | ⚠️ Unaudited |
| L2LidoGateway | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245617 | `0x2b9beb2890dbefc7ca25af3164100d139b623c24` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d43713b7e333d2d54be65ce3b5f3698ab960fd` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1998108fa7993ea67a8b1a99d392a3288c5a5521` | ⚠️ Unaudited |
| L2WstETHToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245619 | `0x38224d52ecc979aedfeb31b1eea0cfcebd55247e` | ⚠️ Unaudited |
| LaunchOmnibusMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffda833d2cf6aa76fa199d96db22c4075c14d71` | ⚠️ Unaudited |
| LazyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f3a6b1e70f7ec7dbc3cb510b1fdb948c863a5b` | ⚠️ Unaudited |
| Ledger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1c7c3c6077ab51e1b656a208f1a9c3ad39b84269` | ⚠️ Unaudited |
| LedgerBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x36cf86ffa541fed07550ffd9536dbfaac73da7eb` | ⚠️ Unaudited |
| LedgerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x780825fd0e7b09a8c136ad41090e356c138e0ede` | ⚠️ Unaudited |
| LegacyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29b819654ce6224a222bb5f586920105e2d7e0e` | ⚠️ Unaudited |
| Lido | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f096e343563b11e35104924111726c596d9f3b9`; ethereum `0xe5418393b2d9d36e94b7a8906fb2e4e9dce9ded3` | ⚠️ Unaudited |
| LidoLocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3994e4bf7cf49ca53d11a5174727deea34b3df` | ⚠️ Unaudited |
| LidoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1430194905301504e8830ce4b0b0df7187e84abd` | ⚠️ Unaudited |
| LidoStVaultYieldProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fc9f1a8cb97fead3c2b37c11ad5b1c2ef73959` | ⚠️ Unaudited |
| LineaBridgeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x280983c7a4764ed26bfdc5465d08eb0885822c95` | ⚠️ Unaudited |
| LineaRollup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04728bf704a716c26f9ef4085013b760ac885631` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a15257c4983a6fe9073d8c91763433124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b826b3c1e8918843baf7abd2e51399cfc13` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88038752750d7717a19f2a681ef75e65fb714f1e` | ⚠️ Unaudited |
| LockedFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x791caa38eb7056696f8d7e0714bb728a34eeac39`; mantle `0xd0581dcb4935131d7ea4d99f604ff2afb91c9e29` | ⚠️ Unaudited |
| LUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32` | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea3f791511d35aa859455bd60af526537040bb3` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x885904d9cfece53fb5042530f780c5208078b2bf` | ⚠️ Unaudited |
| Mediator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245276 | `0x4b3edb22952fb4a70140e39fb1add05a6b49622b` | ⚠️ Unaudited |
| MerklePatriciaProof | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa` | ⚠️ Unaudited |
| MetaStablePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245253 | `0x32296969ef14eb0c6d29669c550d4a0449130230` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf44ad2e36f39572175c72c1d0fa85933c6e0b6` | ⚠️ Unaudited |
| MJAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x532e522964cba02be18f767e4c0e39188894163f` | ⚠️ Unaudited |
| Mooniswap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245410 | `0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431` | ⚠️ Unaudited |
| MultipleVersionRollupVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea29d57dac237152d878758bae4beb2668998f6` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca02f98d590819141aa85c891e2af713c223` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6c71edbdb8174420cf9b368b38a1b52bfdd7f3` | ⚠️ Unaudited |
| NodeOperatorsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1770044a38402e3cfca2fcfa0c84a093c9b42135` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbaab64e8114e0026afaf6bec9135f69d46aa61` | ⚠️ Unaudited |
| OFTAdapterSwETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1b3426e557d6756d8a8859a0779373236f94e2` | ⚠️ Unaudited |
| OpStackTokenRatePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b2d3c03e705e29c6a86662fba1c11a83c205d2` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa73bc334b3c64a66969677cbe7103e38dbc8858d` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa419026809e2d13bc73dee13992e7873ab605981` | ⚠️ Unaudited |
| OracleMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x425fa6d8c977f12e9d62396f3f5037f5bc3c1b5b` | ⚠️ Unaudited |
| OracleReportSanityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6232397ebac4f5772e53285b26c47914e9461e75` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79ef3a538200fe4981d67e7e886bfb36d4cb5a31` | ⚠️ Unaudited |
| OssifiableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245586 | `0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f` | ⚠️ Unaudited |
| PauseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7`; ethereum `0x8717b1e9b466685b589def23891bacbb92265afe` | ⚠️ Unaudited |
| PaymentSplitterWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2504c498bb7e63bcc7bc11f781d30d99b6febb` | ⚠️ Unaudited |
| PermissionlessGate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2305e02c0d92ba3ff09f2393da9997c3404fce0a` | ⚠️ Unaudited |
| PlonkVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2edcbd39334c4e9570d13e2fbd352688f8942c52` | ⚠️ Unaudited |
| PlonkVerifierForDataAggregation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0c26a89833762b65098dd66b6ae04b34d153be` | ⚠️ Unaudited |
| PlonkVerifierForMultiTypeDataAggregation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ab455030e1ea718e445f423bb8d993dcad24cc4` | ⚠️ Unaudited |
| PlonkVerifierFull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6312e56c17e1011dd0821558034a77bb60d06e1b` | ⚠️ Unaudited |
| PlonkVerifierFullLarge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2edea64bb8b45fd87c05dc89286f1a60f4f4bee0` | ⚠️ Unaudited |
| PlonkVerifierMainnetFull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d345775913a9cbfa3675024348b63ef14865d32` | ⚠️ Unaudited |
| PoLidoNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3af10763c8cd302ba446ec877d57d01556f8da` | ⚠️ Unaudited |
| Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245595 | `0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a` | ⚠️ Unaudited |
| PredepositGuarantee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc08c36bd5bb78fdcb10f35b404ada6ffc71a023` | ⚠️ Unaudited |
| ProtocolDebugBinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01434ae91f8b31cceee27593d88112442395458d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0833f5bd45803e05ef54e119a77e463ce6b1a963` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5aed9f27837074612288610fb98ccc1733126` | ⚠️ Unaudited |
| RBACTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a89770722c84b60ce02989aedb22ac4791f8c7f` | ⚠️ Unaudited |
| RegisterTiersInOperatorGrid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5292a1284e4695b95c0840cf8ea25a818751c17f` | ⚠️ Unaudited |
| RegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939f1cc163fdc38a77571019eb4ad1794873bf8c` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6` | ⚠️ Unaudited |
| RemoveRewardProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21e5e72ffc223f02fc410aaede3084a63963932` | ⚠️ Unaudited |
| RepFixedPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7751400f809cdb0c167f87985083c558a0610f7` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff6e65f680844fd2465393ff6f0d742b67d5` | ⚠️ Unaudited |
| RewardExtractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6` | ⚠️ Unaudited |
| RewardProgramsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3129c041b372ee93a5a8756dc4ec6f154d85bc9a` | ⚠️ Unaudited |
| RLPReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbefe614a45a8300f2a4a00fb634b7137b6b1bc47` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb44f9d91b4276621550aeea5d2d96279975bf3` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db7583852c700549b710fd79dd1b54af2efa4dd` | ⚠️ Unaudited |
| RolesValidatorMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc90e7cc979f3e931829cda552b50d82d420b9e8e` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795ead640e261868eb200ed2850eb9c151e7d` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bff34272af650632236703a3d6d8e3c133421cb` | ⚠️ Unaudited |
| RSwellOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428cda6c1994b926f75a4830d5baedee9db2ac58` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245702 | `0x13600b9aee86f8254969918b1e9ae6ea091b8727` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | unichain | unit-245729 | `0xac8bc65814dd0501674f6940aff1a4ea78fc20ef` | ⚠️ Unaudited |
| SafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ScrollBridgeExecutor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245615 | `0x0c67d8d067e349669dfeab132a7c03a90594ee09` | ⚠️ Unaudited |
| ScrollChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa13baf47339d63b743e7da8741db5456dac1e556` | ⚠️ Unaudited |
| SelfOwnedStETHBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b17b9f2b66890b5a0c5d8e7ff631ea340a9f13` | ⚠️ Unaudited |
| SetLiabilitySharesTargetInVaultHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5cc771c7b77f1417fa6ba9262d83c6ccc1e969` | ⚠️ Unaudited |
| ShapellaUpgradeTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa818ff9ec93122bf9401ab4340c42de638cd600a` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe` | ⚠️ Unaudited |
| SocializeBadDebtInVaultHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df50522a1d868c12bf71747bb6f24a18fe6d32c` | ⚠️ Unaudited |
| StableDebtStETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245706 | 2 deployments: ethereum `0x66457616dd8489df5d0afd8678f4a260088aaf55`; ethereum `0x8180949ac41ef18e844ff8dafe604a195d86aea9` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39808cafef4b271faa22afd44177698e7a90b220` | ⚠️ Unaudited |
| StakingRewardsSushi | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245322 | `0x75ff3dd673ef9fc459a52e1054db5df2a1101212` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d0117121f6a7476221e2afc57faf9866e4c` | ⚠️ Unaudited |
| StETHtoETHSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade6cba6c45aa8e9d0337cac3d2619eabc39d901` | ⚠️ Unaudited |
| StMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15152eee59752f18c2de8fbd4bc83ec20c448303` | ⚠️ Unaudited |
| StonksFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78470f9e0a563b5b5b343d42b6cd1392a88de0e3` | ⚠️ Unaudited |
| SwBtcOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2` | ⚠️ Unaudited |
| SwellOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09341022ea237a4db1644de7ccf8fa0e489d85b7` | ⚠️ Unaudited |
| SwETHOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b07fb810ef909b01f959911cef2cc834433f562` | ⚠️ Unaudited |
| SymbioticAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a6a2beebf6d65e03246087a41812db1c5c0caf8` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a124779fdf107c3f6bcb992731dcaad09f2276a` | ⚠️ Unaudited |
| TestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x374d1176eec25dad22b84d331941d3a298e28c2c` | ⚠️ Unaudited |
| TiebreakerCoreCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175742c3ddd88b0192df3ecf98f180a79cb259d0` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b95c960779c72b8c6752119849318e5d550574` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd4c0f24a0a9f3e2fe80ed385d8ad5a2ffeca44` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | ⚠️ Unaudited |
| TokenManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245720 | `0xf73a1260d222f447210581ddf212d915c09a3249` | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49397ac9cb061152b770b1d274a5682155f20099` | ⚠️ Unaudited |
| TopUpLegoProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x648c8be548f43eca4e482c0801ebccccfb944931` | ⚠️ Unaudited |
| TopUpRewardPrograms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77781a93c4824d2299a38ac8bbb11eb3cd6bc3b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245623 | `0x8ae8f22226b9d789a36ac81474e633f8be2856c9` | ⚠️ Unaudited |
| TwoPhaseFrameConfigUpdate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b4db1491cbe949ae85eff01e0d3ee239f110c1` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e33ac57c73f9d4e3e85a97488214cb5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x009aedc40323b16a0cbc71920d05c15192643974` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245415 | `0xc5578194d457dcce3f272538d1ad52c68d1ce849` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974fb3f8c1e02796048bdcded79e9d53a6965` | ⚠️ Unaudited |
| UpdateGroupsShareLimitInOperatorGrid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bdc726a3147d8187820391d7c6f9f942606aee6` | ⚠️ Unaudited |
| UpdateVaultsFeesInOperatorGrid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3bdfa3e7f312d8cf72f56f2b797b026f6b471c` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x971f46a2852d11d59dbf0909e837cfd06f357deb` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x201eba5cc46d216ce6dc03f6a759e8e766e956ae` | ⚠️ Unaudited |
| V3Template | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245255 | `0x34e01ecfebd403370b0879c628f8a5319ddb8507` | ⚠️ Unaudited |
| V3TemporaryAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245496 | `0xf738a2c7d69694b618dbb547c1c5a152d7958f06` | ⚠️ Unaudited |
| V3VoteScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47ca1d2029d8e735237ea4e74c607426d4aa07e` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6` | ⚠️ Unaudited |
| ValidatorContainerProofVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2309c45d44105928b483f608dd6140fb65f3ebde` | ⚠️ Unaudited |
| ValidatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a6c933495a7bb768d95f4667b074dd5b95b78eb`; ethereum `0xb312f9eff3a9643f818f75cc8b194b03e2a743ee` | ⚠️ Unaudited |
| VariableDebtStETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245719 | 2 deployments: ethereum `0xa9deac9f00dc4310c35603fcd9d34d1a750f81db`; ethereum `0xde2c414b671d2db93617d1592f0490c13674de24` | ⚠️ Unaudited |
| VaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57dab476c3e37a2410076c9568d796e429fd8418` | ⚠️ Unaudited |
| VettedGate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0dec7cbc586bc1cadfaa0f20428df200276f37` | ⚠️ Unaudited |
| VettedGateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1681a68793be9a03b5055e830574183dc14e70` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db86d2d8707f260d455f63790f5f5e5d828a961` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2` | ⚠️ Unaudited |
| WeightedPool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245592 | `0x178e029173417b1f9c8bc16dcec6f697bc323746` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37` | ⚠️ Unaudited |
| Withdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x48e18699f4e5009139aa89002508635bd46dfb96` | ⚠️ Unaudited |
| WithdrawalFinalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414f7ca4256e6edeeb8d1eff902328e82f266e9e` | ⚠️ Unaudited |
| WithdrawLimitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x50dfc07cb795d390841632394e19c5466883bed2` | ⚠️ Unaudited |
| WstETHSynchronicityPriceAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245348 | `0x8b6851156023f4f5a66f68bea80851c3d905ac93` | ⚠️ Unaudited |
| WstKSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3bfd113ad0329a7994a681236323fb16e16790e3` | ⚠️ Unaudited |
| YieldManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751236a1afc11b7f1a7630fe87b0bd96ac5203c4` | ⚠️ Unaudited |
| ZkEvmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c8d4ce72afaa417d1f7e833725fdb4e793cd6b3` | ⚠️ Unaudited |
| ZkEvmVerifierPostEuclid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0112315fa1c81c35ac9a477e161b52ae4d1466b3` | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d4702aa5c09af5dd1323e1842a43789021f485` | ⚠️ Unaudited |
| ZkEvmVerifierV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7b737155e6e0dece9cd8cd3240d15939c58184` | ⚠️ Unaudited |
| ZkEvmVerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb` | ⚠️ Unaudited |
| ZrcOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41742a7e10b265accc60c3de389cce93dfb32bab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1502)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c2873693a8a697684a42a7810ebe9e2b328e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059bbe03b1d6b4e03625fd05a83aa514f9a9c4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c6b3a69207fdd19a9d6b625bbacd8b7ab5008a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ddce60658a61dc1732cacf2220fce4a01c49b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08655c10f430e053399473bb7b80f6fb389b55f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa02d04dd8d9a56931d3b083d0609fabd6c3066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b70a8fdb5abfdc2b1c0f9bbc78f1ee053d57d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc2526e10f568a221aa28d11b37df674e557e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c2334db3f407ab370c0aa470a0e5e02748ce0ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245208 | `0x0d2aefa542afa8d9d1ec35376068b88042fef5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d54716285f3f79e3d8d3a4374aca39640d01ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df3f0b3c2fcab01b65c5b8f5e3444ba6f16601c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e58939204eeda84f796fbc86840a50af10ec4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e65898527e77210fb0133d00dd4c0e86dc29bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1e8787297699b3bce464233136e332fcdb8d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1153c7468bd2a7af7f5f3474962d0f1044de722c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b14305c416cd6c0b76523eeac822ac4dbafc3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245211 | `0x1220cccdc9bba5cf626a84586c74d6f940932342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1238a965950695b0d839ea47123cd8885649d468` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245212 | `0x12a43b049a7d330cb8aeab5113032d18ae9a9030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12d68cf22019dfde54e2f00a80ceff7f180884df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138e0d2aad08bdd55e7ba1ba07f74f69cddf9407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1455b96780a93e08abfe41243db92e2fcbb0141c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245216 | `0x14cef290c79fc84fddfdf4129ba335972aac7f41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245219 | `0x168cfea1ad879d7032b3936ef3b0e90790b6b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16bd7af7a46144e1a53ca978464628cf2959e323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16db542c30fb3519d11cf8f632077c62c1a944fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17144556fd3424edc8fc8a4c940b2d04936d17eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176a004ec08ed149583907b30c8ab5ca007545e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245222 | `0x17f6b2c738a63a8d3a113a228cfd0b373244633d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1825242411792536469cbb5843fd27ce3e9e583a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18392733477cc5a06fec857039ceac1fa65e3590` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245223 | `0x1843bc35d1fd15abe1913b9f72852a79457c42ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x185f12492d22bdfecc79cd7b4d0400f8fe293dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a0b8c653c291d69f21a6ef9a1000335f71618e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245224 | `0x18a1065c81b0cc356f1b1c843ddd5e14e4aeffff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ce1d296cebe2596a5c295202a195f898021e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ff3bd97739bf910cdcdb8d138976c6afdb4449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19159810bbc7d56ba24dff075a147cf42dfd6dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194a46da1947e98c9d79af13e06cfbee0d8610cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a658b88fd0a3c82fa1a0609fcdbd32e7dd4ab9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6c28dcc75430b69e3b955a41cd9cadd7d77f1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245226 | `0x1bdffe0ebef3feadf2723d3330727d73f538959c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf32de8af7ca0f412fa3e9104d05dd1e376db99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d920cc5bacf7ee506a271a5259f2417cadece1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dc65f7ab1964ec328f6249d1a68d0c1633a1357` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245227 | `0x1dd909cddf3dbe61ac08112dc0fdf2ab949f79d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e0b019b2c4c856d8d78402a4b45e6fefa16d674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f09e21c1c21054429970a22551937baffb5ea07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245229 | `0x1f2b79fe297b7098875930bba6dd17068103897e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f7e75beb15e390eacd906ca1080b45d08c9e2f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fee6a6dc49095fb9c84d61aa4b8a07284b2a1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff6a59c2b3e87285960ede1ecbd314883d28152` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245233 | `0x200da0b6a9905a377cf8d469664c65db267009d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209437b787c19c0aecbae0867d1966959870fc31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2109cea2103c02eb929a4bc6feebc1b93b3b8d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216b8b78e0632138dc38907dd089aab601ed6edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ea2c5ad21d4b7679444e164a61818dda7cd8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2235672eb81a27815f97cd71becdb99480d0686a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x224dd97d7a0b3d1a7b34721633e887a792e44d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225d508d7389e6926a8a08298233fc367e2269eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2294a7f24187b84995a2a28112f82f07be1bcead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245236 | `0x231ac69a1a37649c6b06a71ab32ddd92158c80b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245237 | `0x2325b0a607808de42d918db07f925ffccfbb2968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e0121ba9e6b32ba0abd1904ba607048aab065a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e8577d9601f4ca8c67e1ed1852bd419ba3dea1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245240 | `0x25fdc3be9977cd4da679df72a64c8b6bd5216a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263b919dac4df7c976d0c8cf2153a0328cbe3c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f41047c24c7445a73b1200e12c8cbdf1f78a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271f8edd19ce46630c5b1dae6f1e43cf326f176c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2761af93845bc538c01216b075a8722b41f48d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278ab3a500925332b1593d6424af49d2379d76ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245242 | `0x281e6bb6f26a94250aceb24396a8e4190726c97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x284d6067372437d44727a95c3f5ffc31d99e690a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ab552a8e0ab0a8af5c0439c6b3bce7e018b88f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293e250b0c058bdbb89667f97ac3b2e9feab911d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296748f1a35b7cd276a5c1046ac57f8a1401ab03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245245 | `0x29d4fa5fcc282ba2788a281860770c166f597d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6699da7b7c0ca1f2ca2f3d09b886fd05fc2a11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245247 | `0x2b5a3944a654439379b206de999639508ba2e850` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245248 | `0x2b6a2f8880220a66dfb9059fcb76f7db54104a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bcfd5d3e481f56ef00e79379e57e44fca01a925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdb8373f19347908c1a4d630a2a3c9af50289d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c298963fb763f74765829722a1ebe0784f4f5cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245249 | `0x2d001d79e5af5f65a939781fe228b267a8ed468b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7a3c96c781b613675ac32430a8b4fba3012b54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245250 | `0x2f543a7c9cc80cc2427c892b96263098d23ee55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245251 | `0x2f8779042efaed4c53db2ce293eb6b3f7096c72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f9cb5345617ab333bd81bec2539b082bc7ec65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fae8f0a4d8d11b6ec35d04d3ea6a0d195eb6d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30546c08834bbf2b497d8a51585b3d79dfa5328b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307f35a207f7107ebaa3baa6078d4051c98ccd0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30dd5a98e5c28c772812be63285beef84da098c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245252 | `0x313819736457910ac1dd21a712a37f3d7595645a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31f6d69b01fa4fa03519206d89de052b569e4d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32760b00a6f0d6008d1faf7dfe896ba79843c426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328bf8c13ff1b178d815028ba5d740c65c15e642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332a2b552ace9a8a62c51bd1e47a2a6de6368ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3455faccb67fe711f840d98c46add65457a88d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3508174fa966e75f70b15348209e33bc711ae63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3535df6e1d776631d0cba53fe9efd34bcbdceed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35364a2ef47649f6167f4977eeba11e8749b75a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36aaed5dc0d8e321ff5465ba6b1fce842fc382e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f274c1c197f277ea3c57859729398fcc8a3763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3790d8d666039b22c7ca76f5c829574dae97bb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b47820bd849096db260f49c27edcd90213a023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39afe23ce59e8ef196b81f0dcb165e9ad38b9463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a106a3e38ad30ea5ad7fb2a0cd8ed3875ee37ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abc4764f0237923d52056cfba7e9aebf87113d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245259 | `0x3b525f4c059f246ca4aa995d21087204f30c9e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d2b441634456442a39c27d26eda0f31e76a8c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dfc50f22aca652a0a6f28a0f892ab62074b5583` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245261 | `0x3e2d251275a92a8169a3b17a2c49016e2de492a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5ca3f2e73c25171a8dc3ce9a0eb30b1e2c3b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec9efe2d3964543bfc108c6d3d9a2d1567aef3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245263 | `0x3f0534cccfb952470775c516dc2eff8396b8a368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9041350b661c74c6cbe440c8bd6bc4c168a9fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245264 | `0x3f9600439ad97fc6f55c2ac7c118f8fd0595eb74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4020cbbe7bc100b8d2bdc964b532fd04f24a6499` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245266 | `0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410f92cd02c015fccee164259e91dac4305e3189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41912d95d040ecc7d715e5115173d37e4e7cb24e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a4d93d09f4718fe899d12a4ad2c8a09104bdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b5fb8322a76a7ad75c76a4fba702378b07e2ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41cf3dbdc939c5115823fba1432c4ec5e7bd226c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41fad3df1b07b647d120d055259e474fe8046eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x440d5e667e0baae928879faf1f21a8b0b4b59dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475429e91acd5af4b49e21a2415cf00a83e85d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a4991eda6166bc9ffedad1335d006bae8a9033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ebab13b806773ec2a2d16873e2df770d130b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x484fd04c598a095360df89bf85ab34c37127aa39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487f980b9fbb9f408a2e5716b10560c6834f75e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245269 | `0x489f04eeff0ba8441d42736549a1f1d6cca74775` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245270 | `0x48c135ff690c2aa7f5b11c539104b5855a4f9252` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245271 | `0x48c4929630099b217136b64089e8543db0e5163a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e4a8ee1dcc9382cd61dde20c825c096beea418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245272 | `0x48f300bd3c52c7da6aabde4b683deb27d38b9abb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245273 | `0x49d1363016aa899bba09ae972a1bf200ddf8c55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49fbb89138d0616edc6224cfeeb1a84eab0dc0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a373f5264b6c029e01530250de53f6c29cf7a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5b648baf8034a795b0d33a3dd08991f0ea8ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b289e4a5331bafbc6ccb2f10c39b8edcecdb247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b7ff1a5d8f34358f490987c59f5652167dcf834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc269d2deca3b85e763f0c778fcf11a4e506622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca459dfc8b1caca3763c954e889e6d644984385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cea3e866e7c57fd75cb0ca3e9f5f1151d4ead3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d224153eec106ab73114d5b8365d9af05c432f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbaa141bd31fceed2ded9ed67e1b714fd5bad1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e85c6ae9770e19d9878b349c98ac29498d546b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e876c7c75e34934e82de9afe1df48d69a60ac68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245277 | `0x4ee3118e3858e8d7164a634825bfe0f73d99c792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504a330327a089d8364c4ab3811ee26976d388ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cea0d048b8524df244218497cbba0471247478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e178c3fdf5fb6cf264bf6047f4c989010ac48e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245279 | `0x5181d5d56af4f823b96fe05f062d7a09761a5a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522896f5bf3df26eaa8399d8f7d64a4826930496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d46ac563435cf437b1eff7451456032d32bfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d4844165925b6cfd2ca27709b16f6e76235c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530a1197d96bd00fc0ddc61ac030027e32153113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53fc68bffc03d17804e5a901de42d1eef2e64562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x544ca3dc5c229286f6be076f0ebd0a26a07aa8e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x546e0bf31fb6e7babd493452e4e6999191367b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547a5b21e45e0829d46d908b44ff8f74745915f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54973f67c0e6b5dd31cf2af5fc20442f143233db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54b8b292b0d5272a27777d6044a49b8236491ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245280 | `0x55032650b14df07b85bf18a3a3ec8e0af2e028d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245282 | `0x55897893c19e4b0c52731a3b7c689ec417005ad6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245283 | `0x55c8de1ac17c1a937293416c9bce5789cbbf61d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e501be3365becc9da7bb69db41c2f8c218f1c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55ea48c6c9cef952c740b9be34394c6065bab6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5604332de9e9dd8f485bcbb3442809498ab7983e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56971da63a3c0205184fef096e9ddfc7a8c2d18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c362b9d2629d4273b34063d3cff015b54ef972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ce8a8e8399f6cd5e7e4f549e8bfd673f2aff5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570356341b35db71114dd99c4641b5b7e21d8dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57851d55fed2179e13c1550b6ef5877c51ce7f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e26d997852e7e94915e250446c3bf43f41d98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x585dfad7bf4099e011d185e266907a8ab60dad2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a61b1807a7bda541855daaeaee89b1dda48568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa6798ad8359eeb9885229047e06181db23dbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0bb17755fba06028530682e2fd5bc373931768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4c41b861c5633088f0253c4f4fd80c876c59ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c67a2a7a33198a15ffe623639bc6a2a36d56472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cfa1a96f80d0b8e2e9d118c5b7218193ae0eaab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d39abaa161e622b99d45616afc8b837e9f19a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d92a56edb14b08ad28d33faee8a119096d15b9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245288 | `0x5db427080200c235f2ae8cd17a7be87921f7ad6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245289 | `0x5dcf7cf7c6645e9e822a379df046a8b0390251a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245290 | `0x5f456f29238f8d63b3ae69bcef9e9d4e953f2c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f9dddf4f0ec29bc931d0ac2efc107a38798944f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fb67fe01c9793bbad2e1df8bd302845987e0680` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245291 | `0x5fbe8cef9ccc56ad245736d3c5baf82ad54ca789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245293 | `0x606f77bf3dd6ed9790d9771c7003f269a385d942` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245294 | `0x6078232c54d956c901620fa4590e0f7e37c2b82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a91e2b7a1568f0848f3d43353c453730082e46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245296 | `0x6140182b2536ae7b6cfcfb2d2bab0f6fe0d7b58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61c233ec1e237c471d5698f807c0ae15b7f9b279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x622b2932c1d04493909e0c4d2363e8cc44ad3ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b110942eebe485909fcebdaeb64d4c49b24ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63688e7b103aa4bb34470009d0b7f1a45a4869b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x638bae4178b5def173df0495effd2f59433d0166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fb51c55d9605a75f8872c80de260a00facfaa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x643943aa314970fa02d21730e5d748514f6b726a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6447c8f2935e7f35734915b4c10f26bce8e62eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647dee7bf33e44829e6430f7a08f63b3319694f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647fa31bec9114d4c1a37750c5e0e83fca0abfc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245297 | `0x64b6af9a108dcdf470e48e4c0147127f26221a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655fbff6c7c0852c0125b7d3ed114af5985d017d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245298 | `0x65d4d92cd0eabaa05cd5a46269c24b71c21cfdc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6667123b5017aab9945f73345848b82d7a953aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66cfd1562d6aa4629e9e4142662c1a403528df00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67260a8b73c5b77b55c1805218a42a7a6f98f515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6748220a79446867eb41a824b4f74a92fc0931a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676be474dba078c9ca61c9473a0422b94dc1edb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245300 | `0x68267f3d310e9f0ff53a37c141c90b738e1133c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245301 | `0x6828b023e737f96b168acd0b5c6351971a4f81ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68331c7a103055fe3dd5141f258cc7376b03cfa2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245302 | `0x689e03565e36b034eccf12d182c3dc38b2bb7d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68c37c5fd0d61ff6924dd5527e6f363ce05c1b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69484e0c70a54f18376ef89269bf4fc1751cccda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a879c119327563ed350238acad6c38ef423f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69dda92dd42040c1290a7870b9fc1dc05e41836a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245304 | `0x6ab39a8be67d9305799c3f8fdfc95caf3150d17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac32db517404a9dede24a7d322eaeff62f7ad04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6accc155626e0cf8bfe97e68a17a567394d51238` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245305 | `0x6b535f441f95046562406f4e2518d9ad7db2dc0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245307 | `0x6bc726c993103197c41d787dd72ecd4d2e1614e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c25aebd494a9984a3d7c8cf395c8713e0c74d98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245308 | `0x6ca84080381e43938476814be61b779a8bb6a600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccfd65b0b14f67259c77ca6267104e058ddb292` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245309 | `0x6e04aed774b7c89bb43721acdd7d03c872a51b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e467826ca6bbb2ecd0792c46d848c72007dafda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e502c568fbe95f65c64b820e4cd746c0803deda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8b0ffe5c1c260e10f65600084d83149f1cb2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3508f8ceca931881d61a263366c964e866bb44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245311 | `0x6f5c0a5a824773e8f8285bc5aa59ea0aab2a6400` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245312 | `0x6faccce132d5c397068807ca73883d3df198dff4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245313 | `0x6fbbe1af52d22557d7f161dc5952e306f4742e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7009008f1e748ee6ef382cbac7ca752c114c024b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245314 | `0x707f9118e33a9b8998bea41dd0d46f38bb963fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245315 | `0x71093eff8d8599b5fa340d665ad60fa7c80688e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710b3303fb508a84f10793c1106e32be873c24cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fcd2a6f38b644641b0f46c345ea03daabf2758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724d17c7af3b26e5d30928d2189509de223d1250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x738cc108eb88917812e5116552232c34d5bf46c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245316 | `0x73b047fe6337183a454c5217241d780a932777bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f80240ad9363d5d3c5c3626953c351ca36bfe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74836470337ba5d2a92fe16e44ad862e28fcf9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f23050f32962ae97bea6b4b47bf81f3dd9244f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75249b5ebf283d0a46c2f9b21498a7d600b6b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x753d45a11cee8b08aaaf9d5b64429e51809c9791` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245319 | `0x753d5167c31fbeb5b49624314d74a957eb271709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245320 | `0x755610f5be536ad7afbaa7c10f3e938ea3aa1877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755ad5eac394743b868a0f6ba65b7fa76e8e0b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75850938c1aa50b8cc6eb3c00995759dc1425ae6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245321 | `0x75bdecbb6453a901ebbb945215416561547dfdd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245323 | `0x76943c0d61395d8f2edf9060e1533529cae05de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77245a4f2c7aed9fa2ddad3c5677ee8a647aa716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77c017ebb74037e593f3552596deb75565f01294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782c11b66e4e17e3a9d1daea70dc15240e6df249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7897499e47582d03a2cd2f2ecfe87e2665cf3f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f7f84f30468a1e3cc0570e0f1e78edfe588891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x790b9e7f00e25cc8468b5eba5972b1ce6be2e9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797c1369e578172112526dfcd0d5f9182067c928` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245325 | `0x79f5e20996abe9f6a48af6f9b13f1e55aed6f06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7a76fcf6b5767a127d524007dadd2c1382f228` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245326 | `0x7b9b8d00f807663d46fb07f87d61b79884bc335b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c09b146e18dd37d4ac948daaa18f71331af3879` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245328 | `0x7c2a1e25ca6d778ecaebc8549371062487846aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c61e300f4bbfa38b7dcee7c5a62b22c6b9546d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c7d957d0752ab732e73400624c4a1eb1cb6cf50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c94f7dc22a6065ccde2ba6340caaaf98ca993af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ccb4ecc323539126fa17e4545785b7e5c7080a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ccecf849dcae53bca9ba810fc86390ef96d05e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d498dc44a0dc8f0f0a7acd053a00f97cb15e0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dadae4e1a0db43f6bcfa75295666fc044605679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dff08491a5d75273a6672b0d65eafcb9b52ffa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0ecc33c1246a94306f1afeed5cb84f681db647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e1dbd017973871abcfac9e4b830018812056c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e87c75bbe7991bbcebd2c7a56f4cfc923bddbcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8c4f10d9e6237086a33cad05264a493f13874a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245332 | `0x7e8effab3083fb26ace6832bfca4c377905f97d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245333 | `0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f10f209a0196f7a855196a00000df5b1eab6aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f2a938f6d1852872e2bb59572208dc73f990e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f512e2e9dfc4552941d99a5b2405bbcf5781c2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245335 | `0x7fadb6358950c5faa66cb5eb8ee5147de3df355a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8041ba598f0e656ebe80c67289efb42c09e86ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x805c6d95c9e707332215f42cb89f93752ffa55b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8077fc5802a395652c2a91a238a3893d06fad1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80aa9484aa0af2a1be4db717ad5a293ccee420a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x814d80782aa8c508ababe9c6956d8f1f90e5177a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817186131a029bf5e6f1ef5529bf173a41537e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ab7ce375fd184e93245b742fae00b4dede9ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82376b54a0c394488be7801a7435641a6a1881d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826714add4dda2b8750794a467c892c0cd49216b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245336 | `0x828b154032950c8ff7cf8085d841723db2696056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b608e13de1da75901a480c078c7aedf063f3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e40a11b3e6ff12f63f152dfc0febf816037d2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245338 | `0x834560f580764bc2e0b16925f8bf229bb00cb759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8413e65374fca711af5eaddcf7191461a1f4d6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8421d1e3fb9a737a85dc7ff531c39f324fb2ac5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8432728a257646449245558b8b7dbe51a16c7a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c1e63807cda408bc76cae41ecd8e34fc5b7d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f2f46a1ae147e87a7b361e3ae4ff2b9af0480c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245342 | `0x852ded011285fe67063a08005c71a85690503cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8538930c385c0438a357d2c25cb3ead95ab6d8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8539195ebffb4a2f2c9217fb7197fbe9204ef844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8596af2f3fa677d4915bd2f7925d3c9223655d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8639254fb53ed54d32d28e8449d4abb46c5f9aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d9b4f2b8c63b9ec9b94792f5b3d6a55976da07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245343 | `0x86f6c353a0965eb069cd7f4f91c1afef8c725551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x876e3df736860948ad7acc34f28b2ec85dc9bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245344 | `0x8772e3a2d86b9347a2688f9bc1808a6d8917760c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879edcc684b2750f50d04822ed1c68c4b18bf7d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245345 | `0x87b02df27cd6ec128532add7c8bc19f62e6f1fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87bbfc897b67414395705d550382656edfcc6164` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245346 | `0x87d93d9b2c672bf9c9642d853a8682546a5012b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89057c7e4c5cd283aff5907b816f61e326047c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8983e1ff61e66b2648cc017b72e96bba9d751e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89eda99c0551d4320b56f82dde8df2f8d2ef81aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aa34daaf0fc263203a15bcfa0ed926d466e59f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b747a13d2af956ea7b9a36e659807ea5cf5e04a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245350 | `0x8b7854488fde088d686ea672b6ba1a5242515f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ba448989f85fd758f55d2bb1aafcff78ac55231` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245352 | `0x8ba6d367d15ebc52f3ebbdb4a8710948c0918d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bf3ddd43f627be77364d3355a19853eb2db21ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c052b289bb9f03dae1443a13cb6f238057c4745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cad91014822418bcd2a4d40de10d1b97c9ebfea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cae7ff138e401384df88a408314e4e9a92f274e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d108eb23306c9f860b1f667d9fcdf0da273fa89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d25c403b463802913b1b7d590ea4333f79b667e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8daea53b17a629918cdfab785c5c74077c1d895b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e625031d47721e5fa1d13cea033ec1dd067f663` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245356 | `0x8f73e4c2a6d852bb4ab2a45e6a9cf5715b3228b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8ec9608223c0b8d13238950c03f5d42ceebb9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff828860a67658c39d89809457a97d81aad418b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905a211ed6830cfc95643f0be2ff64e7f3bf9b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ad61b0fac683b23543ed39b8e3bd418d6ccbfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91287896a0209f84e5d16996079ef17664efcf42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245357 | `0x912c7271a6a3622dfb8b218eb46a6122ab046c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91918b6b2f3db9118e8417bd4b52a73f936ae85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x919ac5c6c62b6ef7b05cf05070080525a7b0381e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9218732389d80f9b8723c3f32a38865b7a63564a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245358 | `0x927c99fc46226bd5131420b16af0b0371165c3fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245359 | `0x92a27c4e5e35cfea112acab53851ec70e2d99a8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245360 | `0x92abc000698374b44206148596acd8a934687e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9305c1dbfe22c12c66339184c0025d7006f0f1cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245361 | `0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x934dd4c63e285551cecef8459103554d0096c179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93540654402a2e18a1b5c9857898871d5298c0ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245362 | `0x93559892d3c7f66de4570132d68b69bd3c369a7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245363 | `0x935cb3366faf2cfc415b2099d1f974fd27202b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93865d97a34152bdd1a71b1acdc409f22354f826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93905bab14ce18b640ea96d14f48a8fcce0d6719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93daaea5d290da9a7a6a65fe4f6c1d3ebb44e0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93f1dee4473ee9f42c8257c201e33a6da30e5d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9473c37a9fe76fbbc3fd7d3b59e1b550415bd873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d1615920291977bac155b8a9b554c5b45ca074` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245364 | `0x9530708033e7262bd7c005d0e0d47d8a9184277d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9574a84566ca3f7725feb1bd16eaa5b258745a00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245365 | `0x958e0d946d014f377421a53ab5f9180d4485e63b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245366 | `0x95b521b4f55a447db89f6a27f951713fc2035f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e8bacd0449a513d954d2ccb5ef48b8ed151ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960706a52217734be3c054e08e3201998c6ba047` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245367 | `0x96c9a897d116ef660086d3aa67b3af653324ab37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245369 | `0x97615f72c3428a393d65a84a3ea6bbd9ad6c0d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98155b73394e1ed4122e74ee49c6433292c65e5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245370 | `0x98be4a407bff0c125e25fbe9eb1165504349c37d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245373 | `0x99ac10631f69c753ddb595d074422a0922d9056b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245375 | `0x9b1cebf7616f2bc73b47d226f90b01a7c9f86956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b35d37a8ebcb1d744addec47ca2a939e811b638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b545accdc14880eefae010bab8be356bc7d71ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcf19b36770969979840a91d1b4dc352b1bd648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1563937145865308c8854e82f106775be28a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c55ada05b7edc8ad455e5edb50ce8a96ffcc1f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb8710332f63296e77d612ea9d8de4dc1a1cf5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245376 | `0x9d28ad303c90df524ba960d7a2dac56dcc31e428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d663f1dd3cb752b47301abdc22d620d1868f377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc8e22185a86a7120bc63a74c9decc4ecc950a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245378 | `0x9de443adc5a411e83f1878ef24c3f52c61571e72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e07af58c4c8893b0509e5d6d0ab8c92083fdae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e90338495ffd691bddc680e47d94b60cf66ddad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245379 | `0x9eb81629245c5248a8f4ffcdf11a73e0d0c74071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ee91f9f426fa633d227f7a9b000e28b9dfd8599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa025ab6a0931d797989fd5ae40b1dc8d0c5ab561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245380 | `0xa02fc823cce0d016bd7e17ac684c9abab2d6d647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0409e79812422e8ae14c3fc79c196354f77967f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f58e5f59e0b466a7c328d75ef07e5a64e64b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fee1350c2ef0724ef420e67fe9bd53e72c0c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa10592b5007edb2777c91f7363a653546a858cea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245382 | `0xa12bc993d8144404a8c8c812816048275a066ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12e79c375fb0aaddfda597bbe7b4e9a92e9b3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245384 | `0xa1acc1e6edab281febd91e3515093f1de81f25c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29173c7bcf39da48d5e404146a652d7464aee14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ab526e5c5491f10fc05a55f064bf9f7cef32a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c9e1ab0bc4d043da48ee647e27c0923a25e573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ecee311e61edaf4a3ac56b437fddfaced8da80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ed40f46c391ddd30094e866aac913a20f17216` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245385 | `0xa2f987a546d4cd1c607ee8141276876c26b72bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3437f9cd578f4848fd3332b9bbc58a0cb3f955a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34dcf3cfb910ff941d63ef2d6c2e9c9a583ca9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3509e690a430f05bd5aaa5dd7786154374f9f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f1155202d36348097b7488b0d2365fa91f8cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f400593dffc0ae02f940ab58f6e3cc6fb9fb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa548afa249d302213f8bb2b87dd78ea98fe9692d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5bd95bfd47d439ce544bcc22b642bf46a2aa3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e15ba0a34df26e3bff48a9587f72b34e1412ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7fe1ba25f375198867b3ca7ca6bcc8acdccce38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89ea51fdde660f67d1850e03c9c9862d33bc42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f0d53d36826ea36f1af4e5cd55a1799b1aa2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90e015fadf719cae18253462ab0eae7712e4bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa97ba583f11a2948ad0ca4f9cb598bd478fcb240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa999d460d26ddf10ca0d923d23e05089794ca5f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245389 | `0xa9b2f5ce3aae7374a62313473a74c98baa7fa70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9bd691b166aafcc9ef55aabc1960825630558d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9cf7b77496db3bd0ed8a0d76173af9e922b1fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f30e6ed4098e9439b2ac8aea2d3fc26bcebb45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245390 | `0xaa328816027f2d32b9f56d190bc9fa4a5c07637f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa42320a35739dd6c3d23b4cdc2cf260d334147a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa4b3a9515c921996abe7930bf75eff7466a4457` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245392 | `0xaac4fce2c5d55d1152512fe5faa94db267ee4863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6feb60775fbeff855c9a3cbde64f2f3e1b03fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb0320f04e743fdcb83743c10438c0e9deeaa76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19e5ec15cd86c27ba6e54f5ff5753fa8b63292` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245394 | `0xadd673dc6a655afd6f38fb88301028fa31a6fdee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaddbe660dcf8a8bb4c74f366dc1d4a42dcdc6e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2d1ef2061389e106726cfd158ebd6f5de07de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5f30d1494a7b29a9a6d0d05072b6fb092e7ad2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245395 | `0xae7ab96520de3a18e5e111b5eaab095312d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245396 | `0xae7b191a31f627b4eb1d4dac64eab9976995b433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef1226bf0c368a39bfe46c3c1f02b846498dca1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245397 | `0xaf35a63a4114b7481589fdd9fdb3e35fd65faed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf7d49e17d92fbf610a71aff497e804747690663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff6528e5dcb21ae0fa4aef7160ebcf453003246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb004f72e61c56cdd23e2bd621e2ffc681fa07277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb01b694e09068d441d97d08e112e73897b7a2c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb02f319a3477f3dc7e2e0c481f3bce9ef8420f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0544dce659ddf702f1823815a1a1fa8100dc65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06c1c476d3254eaa90f7cc7f13e9275468624ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d683ac3f1a97a99ea8aada196cf8a92db1528a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0e690d6791735ec15c87e653f13f4112513a516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245398 | `0xb0fe4d300334461523d9d61aad90d0494e1abb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb280e33812c0b09353180e92e27b8ad399b07f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b10a289a229415a124efdef310c10cb004b6ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245399 | `0xb314d4a76c457c93150d308787939063f4cc67e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb32c3d0ddb0063ffb15e8a50b40cc62230d820b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb39a9060e5ee438166542a74901d881c8fa353c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3ab2400484c85afe569887a7b72a1749b39ddf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb454121669d5182a15f693e1823ba994e2454d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb495c193c9d674013a08fd8054abb0db1cef39bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a0e29c04ee18f1ce2a142e9c54ff2f045277d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5add58879d7975c1f7f51460ebf5df95cadb055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6ab0044edab006fd641d5b2607e793bac82ffc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6eea35870418e764cc53f9e61d91bc7d08ffd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7668b5485d0f826b86a75b0115e088bb9ee03ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f7ea9998530833cbb7e0ef4f0d945957229d8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245400 | `0xb948a93827d68a82f6513ad178964da487fe2bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9bfef8708b506d867b2843e31888c59c6ee4337` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245401 | `0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d82e1a49f6a66e8a07260ba05cf9ac8a938b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba990858d5705b1126fa844cbe94798b239237f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbad002fb13adffcbcba57a4d4a43886f3f4c56cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb08c87a2e871fcf3d86c4f7ed03dec8b66297ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb555f081bc76db844018173fb0830c724407415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4b3d9a89f187dbaa0d2e60985ea1fffa5247d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc826c67987cc982c7f3cb8175c1cdb02bf2e97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc0416a473243293ab49f6d16094eed3e2281f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245404 | `0xbd08f9d6bf1d25cc7407e4855df1d46c2043b3ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245405 | `0xbd2b6dc189eefd51b273f5cb2d99ba1ce565fb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdb235d35232f4ff25a7968cd6e7149231fb47ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdbf61edb776fd3fd1d334bf4064d7dcbcb433d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbec416295a294e791cdb96f57693594bf0378360` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245407 | `0xbf048f2111497b6df5e062811f5fc422804d4bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf5bb7d5b728b89aac720f209e46d54689b551da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf787da98a7d663af66367ef8fce7c5eec36d55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc01e6807db9fb9cc75e9fe622ba8e7f3eb9f2b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc03a4465cc1953b0246583fab9fd9ea0b057a41e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245409 | `0xc18f11735c6a1941431ccc5bcf13af0a052a5022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245411 | `0xc1d0b3de6792bf6b4b37eccdcc24e45978cfd2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fadabdb6fa4079b51e803856fa36940c0af510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34b7eb939b9e49702819e56a8fca32e242c7232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3502c16200224dec6ad61ce75d77be82e4fa07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc383aac4b3dc18d9ce08ab7f63b4632716f1e626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc399f190cb5da949496381e509346894160edc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f942d20ff670e114507e36d9f31265391859f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a403f2d4afcc341fb4d7a309a7530fd57fff56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc51ce601a6814ae289c03fe8d3f23442ba9ad27e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245413 | `0xc52fc3081123073078698f1eac2f1dc7bd71880f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245414 | `0xc5527396ddc353bd05bba578adaa1f5b6c721136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc601e93d9f48d5e374820957cda57516e2523d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc64ba01cd87b32712a3dd7044e125f9bd65e78d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6933c97bf592e4d276f6b920c607b1681621a26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245416 | `0xc69685e89cefc327b43b7234ac646451b27c544d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245417 | `0xc6c1f091450b54af3280cfed790047431bc99bb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245419 | `0xc7315f4faab2f700fc6b4704bb801c46ff6327ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245420 | `0xc7792b3f2b399bb0edf53fecdceceb97fbeb18af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77f8768774e1c9244beed705c4354f2113cfc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7d823206a1b93d1250dfd3ac0fe88eee62cd3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84832f69bffbc1a94e44a157a342766e959ed27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88dc66767cf985d55d29b253916b0880256e6f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245422 | `0xc934e90e76449f09f2369bb85dcea056567a327a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca46358d5f01e4f865885514dae6275087ffe38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca619d6bb203253cac0154d6397aa09b7a494845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca7fb9581f1efc89455d6b5b792e80726ac1caaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaecee2e815e7f758c2477f900afa14bddce54b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb4401d8d63bcc03615e39dd0036d38f46b24176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb461e10f5ad0575172e7261589049e44aaf209b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb4638620e4c6decef26374e71b0dd4871863593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbcb90af19a2b44fefee701c6da462703f9c2ccc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245425 | `0xcc2c53556bc75217cf698721b29071d6f12628a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc52f17756c04bba7e377716d7062fc36d7f69fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc6132221c7f9e9e48dadf6f5f1e74d089f85c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccfd93c7216da18e697670b76898034f8c4a6dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd26aa57a3dc7015a7fcd7ecbb51cc4e291ff0c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245426 | `0xcd42eb8a5db5a80dc8f643745528dd77cf4c7d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd7d0c2f0aeff8cbd17702bfa9505421253ede54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf49b058d606ad34c5789fd8c3bf8b3e54ba2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcec15c4bf03608098571d108325543b6a2fb514e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245430 | `0xcf33a38111d0b1246a3f38a838fb41d626b454f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9d49e3f86af059acb9abd96351daa849289d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3781c4ee2cf54fceb71113da97d650505ea70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfda8ab0ae5f4fa33506f9c51650b890e4871cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe90261ee79fb33a366a0bf89f1ba8bc88a9222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd00b744b341074b1684c3740a9ebc79cd694dcb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02b8d81301195bc6ea01d80dd122d0394f2d921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd085ef2ea5bbaa54a548686611e8f8c2c21186a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245432 | `0xd089cc83f5b803993e266aceb929e52a993ca2c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245434 | `0xd0dea0a3bd8e4d55170943129c025d3fe0493f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0efdc90bdb5127a407daba673ec1a42a6869a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0f0bc55ac46f63a68f7c27fbfd60792c9571fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd15a672319cf0352560ee76d9e89eab0889046d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1841c5756428812233eea78afc17cb2d3e392bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd19d4b5d358258f05d7b411e21a1460d11b0876f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245438 | `0xd30dc38edefc21875257e8a3123503075226e14b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245440 | `0xd3950eb3d7a9b0abf8515922c0d35d13e85a2c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3c42158682d55e082eabe08a29f7515a97ca307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f6bef8ddbc7306684b8d7c836269e0e6f8b6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52c09e67af3be0977b52b4817366e9bab5dcfa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245442 | `0xd54c1c6413caac3477ac14b2a80d5398e3c32ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57c229bdf8d1f6031c0fa647fa90cb25b9cc170` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245444 | `0xd624b08c83baecf0807dd2c6880c3154a5f0b288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65a39a74e8cf546ea8c6ff533b8a7963e1fef71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd680db0f7e932f5f2505d60e8cd6687a0f808ce8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245446 | `0xd6a67636c05beb5b4a5c90d408b03a63c4e39426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd77ed5e13fbfcfb3ab940cf0524436126217589f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8784e748f59ba711fb5643191ec3fadd50fb6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a2818a71a5d0141fe545e1010a8ad8f8e9374a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd905418c46d8141dd80ba065e694abd4dfd5b4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96223670bf73cb191a9f0b526653b7ec99dcf45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd98f5cd9699d2824149015985df21cc568c27b5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245449 | `0xd99cc66fec647e68294c6477b40fc7e0f6f618d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ab4dc22af4302fb3ea259ef1245a780d39fd1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245450 | `0xda1df6442afd2ec36abea91029794b9b2156add0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245451 | `0xda7de2ecddfccc6c3af10108db212acbbf9ea83f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245452 | `0xdadc4c36cd8f468a398c25d0d8aaf6a928b47ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf7032d11b60d468d478defc5c3da26c79e585a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdafa0332e904d5d1f2f1cdc2a3cad636a120f72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb45e7c8debeed4ee961fa220cc83054c6fcd6cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245453 | `0xdb46c277da1599390eab394327602889e9546296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd08d2cd36a52d5bcd9cd8f71187201c7d277c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245454 | `0xdbfa0b8a15a503f25224fca5f84a3853230a715c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245456 | `0xdc1a0c7849150f466f07d48b38eaa6ce99079f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1d1189da69ae2016e4976a43de20972d349b1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245457 | `0xdc24316b9ae028f1497c275eb9192a3ea0f67022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245458 | `0xdc5fe1782b6943f318e05230d688713a560063dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245459 | `0xdc7300622948a7adaf339783f6991f9cddd79776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc82a78007f8d370ba27e23663a6f04f94ff20ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcbf587122914fce40810c10eba84f4c8da61c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde8788f1a7ba39b40fa8a6c67c8a071c37e418e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245460 | `0xde06d17db9295fa8c4082d4f73ff81592a3ac437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3be7c2aa151d1e152ddfcbf0962fcdf5323dae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245461 | `0xdfa0bc38113b6d53c2881573fd764ceeff468610` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245462 | `0xdffcd3bf14796a62a804c1b16f877cf7120379db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245463 | `0xe07305f43b11f230eaa951002f6a55a16419b707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe09899a4c98473460bc19d136b330608b465dc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12bf7ae03c46f4aea1868178ec1af9ee1760df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1696dde1b0b50a8eb3519fe2aeb3a17f57b55c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1a7bc10bef3348c11ad5d2d9a394f9470df0467` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245464 | `0xe1f4c16908fce6935b5ad38c6e3d58830fe86442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245465 | `0xe1f6babb445f809b97e3505ea91749461050f780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe24779af85936a22b53342c9901c462686f83b0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245466 | `0xe2a682a9722354d825d1bbdf372cc86b2ea82c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2dcb5bb2e477279c00111f134a3728a09db1882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2de6d2deff15588a71849c0429101f8ca9fb14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe37e1160bda53d75c805b848b2f9b4ee4c89e725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c4c47685974b704bca0def8edd4898155e2b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d4696241b0efdcb6cde30bd4d86f91230bcb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe40e84457f4b5075f1eb32352d81ecf1de77fee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42c659dc09109566720ea8b2de186c2be7d94d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe48c5a26e3dc684b705b02e7445be447dada05c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5325348e58c10124e7d6e4a8a27839d76c1df9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245470 | `0xe5576eb1dd4aa524d67cf9a32c8742540252b6f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245471 | `0xe5656eee7eed02bde009d77c88247bc8271e26eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5e595b828426d5d0899e9395784827578e309c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6793b9e4fba7de0ee833f9d02bba7db5eb27823` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245472 | `0xe6a4ed59ec73ed78ae3a10294c99f0ee18a6bf76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe73842aebec99dacf2aaeec61409fd01a033f478` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245473 | `0xe76c52750019b80b43e36df30bf4060eb73f573a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe772a43097903582d0127246fded630db03b9c3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245474 | `0xe78717192c45736df0e4be55c0219ee7f9addd0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7c8a00ee75214bd66af133a38ee185a38989168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89e038b4a8f298a731c5d9ed31d35c7d71abd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f627df6cb02e415b2e6d6e112323bd269b4706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9906e543274cebcd335d2c560094089e9547e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2e804ff5291ca423dfeff486b9a91ae4432ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb63cabdd78537b9b72a2afb573f7caa91bd8d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb803eb3f501998126bf37bb823646ed3d59d072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebaed7a81c298b24ee6d59c22698a951dc448e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc3fcc3ed902db4d15d490e29f67cc7ad21f217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec3b38edc7878ad3f18cfddcd341aa94fc57d20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6cc185f671f627fb9b6f06c8772755f587b05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6de7031ce1a284d13b551ef8c4c04b6fdf773c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245475 | `0xecf3376512edaca4fbb63d2c67d12a0397d24121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed39c0c41a7651006953ab58ecb3039363620995` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245476 | `0xedc0d2cb2289bba1587424dd42bdd1ca7eabdf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc2bba1f8b11852e1de97a56d51975b9bbbb11c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245477 | `0xee1e3b4f047122650086985f794f0db5f10ae49d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245478 | `0xee60c6ebc91237d334230b12263e26ee3b480ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee96b77129cf54581b5a8fecccc50a6a067034a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa158006b072793a49e622b26761cd0ec38591d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245480 | `0xf034de8bd85a434d9dc68f03382b589f86791425` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245481 | `0xf0396a8077eda579f657b5e6f3c3f5e8ee81972b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0477b9334cf94eb63f933d67a980590913e5570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07c258dc91462af2ec48e7300616ecb7a8a358f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08283b33b90db1a16f77d7136e879b6b4fec482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c7beef3b9a9274d087d4f54013ce271ef21fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15a4b6d1fe2ca6ee38bc3fb957f43f58b515eee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245482 | `0xf1647c86e6d7959f638dd9ce1d90e2f3c9503129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1af3b23de0a5ca3cab7261cb0061c0d779a5c7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245484 | `0xf23559de8ab37ff7a154384b0822da867cfa7eac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245485 | `0xf2476f967c826722f5505edfc4b2561a34033477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a814c776cbd2306285cab1ddb5863a847e6f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2becc7af0aa50dad54781e06d5ce1a7ead59afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c5e0a67f32cf1dc07a8817590efa102079a1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf43721d752a8d1d1bdb219f52e19278b45494ad9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245488 | `0xf4bf42c6d6a0e38825785048124dbad6c9eaaac3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245489 | `0xf4f6a03e3dbf0aa22083be80fdd340943d275ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245490 | `0xf5058616517c068c7b8c7ebc69ff636ade9066d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245491 | `0xf5436129cf9d8fa2a1cb6e591347155276550635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245492 | `0xf5dc67e54fc96f993cd06073f71ca732c1e654b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245493 | `0xf65614d73952be91ce0ae7dd9cff25ba15bee2f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245494 | `0xf668e6d326945d499e5b35e7cd2e82acfbcfe6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf69889805f6ef91655c11ee90cef999b704d9ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7656410c805cbe55b141755142714f2e7529c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7bbec58106afb1e7a8233d64b759b4c8e81ed1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84bd0892892dca3a30c18beb4bafd0a540ec52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf91a6778521b0751dfee96f4cd025a36441b1088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf94afbd9370e25dd6ca557d5d67634aefda2416b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245498 | `0xf95f069f9ad107938f6ba802a3da87892298610e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6e3b4c7f378b32f785b2898b07b7b3d65dc794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5768e73f8974f087c840470fbf132ed059aebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc20733250b879e9071de98b664366bcd8481f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd858c8bc5ac5e10f01018bc78471bb0dc392247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245500 | `0xfdab48c4d627e500207e9af29c98579d90ea0ad4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245501 | `0xfddf38947afb03c621c71b06c9c70bce73f12999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe093d89b5c1ff9110d3f1c6ffc7030a6b243907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245505 | `0xff22ea467301010f1364fc154c13e0c86fcfb077` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245506 | `0xff7f4d05e3247374e86a3f7231a2ed1ca63647f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff8238be22cc583b3d69a76da9d84da7788c0ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff84f0d25cae37b7924792031968b8d65168662e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245507 | `0xffa96d84def2ea035c7ab153d8b991128e3d72fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245508 | `0xffe21561251c49adccfad065c94fb4931df49081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00ee580c07eaa3948351e09e087e39ac897c61f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02f5e9e9dcc66ba6392f6904d5fcf8625d9b19c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x070c58467e2a9b55b094936f500c297c84020c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0838cfe6a97c9ce1611a6ed17252477a3c71ebeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x089730f866c6d478398ce1632c7c38677c475ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c1272d2ac652d10d03bb4deb0d31f15ea3eab2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c194ae5819c4631c58a2849051b269e57a3b657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ccc8d29ee66e94fca62685f524410a12d8bf284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e09921cf7801a5ad47b892c8727593275625a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11429ee838cc01071402f21c219870cbac0a59a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11e71af59b5069b40456ac632af1bb5ec24246c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1343bcf0ad22235f5673b4c172b43401b31e95f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x137b5b4502a65c15171a0ce784483aa82c740c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x138b809b8472ff09cd3e075e6ecbb2e42d41d870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x13e3ee699d1909e989722e753853ae30b17e08c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15772f61e4cdc81c7c1c6c454724ce9c7065a6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16a9fa2fda030272ce99b29cf780dfa30361e0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18ff3bd97739bf910cdcdb8d138976c6afdb4449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c1245eefb57d50f90efc4070b508f4f24c3ab7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dca41859cd23b526cbe74da8f48ac96e14b1a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1ecc392728ed2776da3610e82503005b1f4b0dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f69648f1b985344cdeccd5d2a36255cd22aded7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x206a01d5b59b7d7315b6bc7b5866f62a6fdff7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22ba046769b584c3b05530f7c50d0e8638bd71f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23b96add54c479c6784dd504670b5376b808f4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25f99e20f894daf1bd5008fc41b11195b433d1e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245511 | `0x2734602c0cebba68662552cacd5553370b283e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x28e67baeeb5de7a788f3dde6cf6ee491369bb3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x290dd71254874f0d4356443607cb8234958dee49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b6efc1ea650d5d566d1d4a7c1be988bef60a559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f50410612f5e69f52c21fe9811e23cdab358ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2fcf37343e916eaed1f1ddaaf84458a359b53877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31604669c93fcac48afd4a0a6cb2da2f06c69e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32c9596d07aa0d6b31b79c0c25e6a23e5731a6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x338ed6787f463394d24813b297401b9f05a8c9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34e0e85ceec6be6146c4f0115769a29a9539222e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3626369857a10ccc6cc3a6e4f5c2f5984a519f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b06b9b3ead7ec34ae67e2d7f73b128da09c583a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e313e778da811f79a66570b8703c66204112dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e75c48a27b54deec3381689cfa9ce41ca55c050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x455d966bbf8d1cd3a8900800febea979f36a9a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46c627150f7993cb71f12e158478546f5fe060ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4713b96931c490f1b66d25cc2ac96eb0aafa2ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47f260694802fe5918d9ffa3544b6a54deb7157e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ba31115e3996804c860a2e7695de169b7b0aab2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245516 | `0x4cf8fe0a4c2539f7efdd2047d8a5d46f14613088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4edabf7e2ccee44e8ac7240834f6ace24ded57a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x50424ed4002bdd315d02ae863ff9cc8f1f4f12e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x517c2557c29f7c53aa5f97a1dae465e0d5c174aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x530ab34385ca1d134ffd33d267f5a2788d645039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x54e6827c19b63854b7de196b84366a9421ab3411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x572dff69eb1b7ee3d2dce5aca07f3f067c97c230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5805883423da1deb9866b4ba6b3749b163d0b472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5812ecd191228f27b674b12fe665ba8e5050b87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x584f57911b6eedab5503e202f8e193663c9bd3db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245517 | `0x5a9d695c518e95cd6ea101f2f25fc2ae18486a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c67a2a7a33198a15ffe623639bc6a2a36d56472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d101824c693c70a68ffc3cdb0cc394f3a4fb9ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245518 | `0x5fc53f707c7aacd460a1cd564c06e0f07610fcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x647da0ebfd5314af3bd53ea40541c6b67169e6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64ecf089a6594be781908d5a26fc8fa6cb08a2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b89879ac4c699d89673bd2ff3464916fb10cf65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c71e3bcf854d3f27aa3a8a4ea28302a1d55e929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6cf3c03cc87b7fba793d6cfca6b36173a757d48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e7a3ceb4797d0fd7b9854b251929ad68849951a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73316ef731f3c7219482716682c063dbbd1602f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73a3919a69efcd5b19df8348c6740bb1446f5ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x74af0fbcea9eb75f34a00ae45a5362de05206027` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245519 | `0x75483ce83100890c6bf1718c26052ce44e0f2839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x75ff3dd673ef9fc459a52e1054db5df2a1101212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7622d23baf73f428815032990d9f7ccafa20e075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245520 | `0x76a50b8c7349ccddb7578c6627e79b5d99d24138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x78f049f6da1ac1dca50d6d8f184acf47eb269852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79d80df3432a4352b5ca2f4ed8262c2a0d63ca1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a406c4e8e429d816bd46eb69de00bd1afc23e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c57dabfd89d34865f7b1853775ea6bb1009c3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ccb4ecc323539126fa17e4545785b7e5c7080a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f102e5b4c32e0861293e97de85e6e0db3530605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f9c5b838510e06b85dd146e71553eb7890faf2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7fb8ac2d753d45125a16d52dda5b6f039a3c27a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8158d24603296ce54ba903c7d5299e3b6744b555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x818e89b7fc0df4683a4d3768c4fdf2612a73277a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81cc0c227bf9bfb8088b14755dfca65f7892203b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x823dadda66b631776660b849e734b95a4f3241bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x826c51a9ec42c7d634eabfbd90101a7de84406d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x85a48ded8c35d82f8f29844e25dd51a70a23c93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8788f0dbda7678244ac7ff09d963d7696d56a8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d486d0e63cc20df15c9426a0ff74f0f2bd5a709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8dba75e83da73cc766a7e5a0ee71f656bab470d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245522 | `0x8e01013243a96601a86eb3153f0d9fa4fbfb6957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f7bfb42bf7421c2b34aad619be4654bfa7b3b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8fcfb87fc17cfd5775d234acfd1753764899bf20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x903f58ee6d6c3c2ca26427c8f917f6ae515827b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9076a9ccedf0694939068369aaa9d9d2ff419c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90cc16f5493894eff84a5fedd1dce297d174feef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245523 | `0x91ce2f083d59b832f95f90aa0997168ae051a98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92834c37df982a13bb0f8c3f6608e26f0546538e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92c9b9c512759f5d04563efa3698fc4fbf735d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93521aeffa5f7adec85d7bcbe51c22a1513981bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95aa5f56cb5a67d50e9b2c845e5b8df810a8de27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245524 | `0x981fb05b738e981ac532a99e77170ecb4bc27aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa369969f522fda5ce1d3823d07a393c27b74f723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8d30dd9720f292440f9539a89495fcd63803c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaa49cf620e3f80ce72d3a7668b1b4f3df370d2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaa75ace4575abbe1d237d991a7461f497a56a8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaae61c522e1b65e686d736d67c4eee10bcd47805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab164949e0db4a6b6877e1eb2045ad3af3cf2259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac37790ff4abf9483fae2d1f62fc61fe6b8e4789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb14cbe04a49bf352b939576f9f9665e1d8dc02d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb22900d4d0cea5db0b3bb08565a9f0f4a831d32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb413d63ac2e38a5a1c18834f20b958745dbeb998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb429de60943a8e6ded356dca2f93cd31201d9ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4479d436dda5c1a79bd88d282725615202406e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb785e9aa87cdb29cc11a3f2b8bd17e6279275a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbadcccf4156967783fa818bc4a8c93b5575a07b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb7c94e761f3e213c196118520dbfb8b102c55e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbce7579e241e5d676c2371dc21891489dacda250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3a1fbab91a46aabd8ee0c6b81ad404268d31990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3cda94d924eb5c1b0b64e05f01487d30da3f235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4ee9c6632bef4798b165180811084666b3a8ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc663315f7af904fbbb0f785c32046dfa03e85270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca80a73840718826a7a8b6b7216bd5fda12c121a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc232dcfaae6354ce191bd574108c1ad03f86450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc341634464b6fd1221e4d517cd7801155abac55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfdb47a0c2cbf1ebed49b03bc6d15954c81004db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1cb03cc31caa72d34dba7ebe21897d9580c4af0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245527 | `0xd420d6c8aa81c087829a64ce59936b7c1176a81a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd54c1c6413caac3477ac14b2a80d5398e3c32ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd61f4177bc81193bead7e8f6fafd0e9842e27eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd702dd976fb76fffc2d3963d037dfdae5b04e593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd87acdf6e63e00191da405e054b095744a008f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245529 | `0xda74db17023750d02b83be2559a4eaa013b65c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdad904e1c8387e0626de1443f112c9d0123e5a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd275d071137c5c157d16ffa3e0ba2117119dc58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe036c2b215b2533bce1c9d0436728ce8abe5665d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe05a8c52b2e813c9605cfb8f073178ebe5a74705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1f2671bade2fba894de982880c716592ab99daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3455b6ff64b30ca6e7c41d838d3a4629f7a889b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe4003ce4321fbd0a0b691690f917e3a82b97628c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-245532 | `0xe59eba0d492ca53c6f46015eea00517f2707dc77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5ddd474717f5fe6d6d78843bea3540a399ab8c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245533 | `0xe9b65da5dcbe92f1b397991c464ff568dc98d761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeaf1a9fe242aa9928faedc6ce7e09ad4875f7133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xec236454209a76a6decdf5c1183ae2eb5e82a829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecef79e109e997bca29c1c0897ec9d7b03647f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245534 | `0xefa0db536d2c8089685630fafe88cf7805966fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf030366b47eb1a9b14ad570381d29647e40955af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf178abc94f72c3f70c4d7229c0ea40b0d4cb469c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf46ef0157b8ccd16340f6e4dd841f20cc180bf91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf91a6778521b0751dfee96f4cd025a36441b1088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfbe83018d075bdd6affbe85e5f1e37f0b43bf1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcdb9ead2f752ad002cdf8fcb08caac4a3402375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xff441d6626a48d4fecb81af40f305d84cde6af92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfff3615e67fbcdfa06c5aeb29b3aa2743c082fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0393bf6541f20b537188c966d1a8d241daea239a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06f34edd61be3b2ff3f630b500df81eea8312350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08e70777b982a58d23d05e3d7714f44837c06a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cde2aecd7a3ea447edae9a7cb5010790c913fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bf0c3f7d5aca9e711930d704da2774358d9210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13d70e002c9b4fc86c03488d92ecc3358ff75ccc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245634 | `0x15ad245133568c2498c7da0cf2204a03b0e9b98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c1dd334a22030990bcad3f65a8114f9207c6791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c3218163b6f733f2e5fefcd0e621114fd3fede5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e8d447113bbb4b02786b263d3f940dcabb66c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2029297624088ea9e3ee549e40d33d4966ce1c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245638 | `0x29e6817db339795766244b96aef5dc534a98518d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a6da8351fabd72503cd5e33453831936ba176af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x338b40caaef0267191a1869ac5ef9e7945949aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35b42f3a314aa33f050eb0fe7d162d7b03958a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35f8a0e8b3036e82b76108e8fe94a5ced8f5c02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b37c6f1e3207de5a4664e837072bd9a25269b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44b24057e1cf7a58c86d06dfb12c83806db7ca95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x485c59b5e7548a8504f7669266a39980ca3787ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4908c8fd61ddcbb97c82cbafc520b1d429e83636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-245643 | `0x4c75d01cfa4d998770b399246400a6dc40fb9645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50dfc07cb795d390841632394e19c5466883bed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54ba496119131ac94baf198e94bea324699e8021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5974855ce31ee8e1fff2e76591cbf83d7110f151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c92e232ccaa4a617dc3768be04747f2861d2818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5df8567ab71ff351c4c6874f4361a2962297383a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x697a9bca2795d2632395098374246877e3502e9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245649 | `0x6981f5621691cbfe3ddd524de71076b79f0a0278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69a879c119327563ed350238acad6c38ef423f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245651 | `0x723aead29acee7e9281c32d11ea4ed0070c41b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75e9262c8e87af54fadf2f7a1bdd975d1c7a5479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c76fb5f994974943390662bc950b4a959c82fa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245658 | `0x8e5175d17f74d1d512de59b2f5d5a5d8177a123d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dbd0a319979714d0358c17b317a382b38cbc860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f23da82ac170cde333fc74638665776e1ea5505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa07ec9c41defd5553f4901141bb13a9f4217b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb495c193c9d674013a08fd8054abb0db1cef39bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4c0f8f07a5e5d870bc02457213809b9cb5f56c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245670 | `0xb948a93827d68a82f6513ad178964da487fe2bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaaaba9bfd2fd22e228147298ad478cfa9e3393e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdbf61edb776fd3fd1d334bf4064d7dcbcb433d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245672 | `0xbe3f7e06872e0df6cd7ff35b7aa4bb1446dc9986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfeea960f05a3a56b1d54f5511e7ebaef1b9e18f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245673 | `0xc2b778fcc3ff311cf1abbf4e53880277bfd14c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc430481d7f5b670623c70420643ac5efa0d7c95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4a79b595ab6f45bc3f4a14d129774a941127db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5e353bed3a74ce79210ac6819355e8531616876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc63a3f10d0aed9f60346feefb49a476e64081a27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245675 | `0xc934433f4c433cf80de6fb65fd70c7a650d8a408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc738a42678e8acf7ea4cf71f29a51b0ed745d0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245676 | `0xcd867b440c726461e5fabe8d3a050b2f8701c230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd024f743916f01dfea7da13286a97f6f713c3be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd164a1559e78b9e6eacb12b2e627f31d2f603c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd97ab9e5bd461ebcd55009791c410294f7b42cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde0c8e8912dd6a2a51b7b5c3b63a95c3d0587882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe114809badf7b310f196250078d389981c2d7e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2a47e87c0f4134c8d06a41975f6860468b2f925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5325348e58c10124e7d6e4a8a27839d76c1df9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245677 | `0xe82c2a5846cfb6d8683d6b636719e7aa61486838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245679 | `0xf0396a8077eda579f657b5e6f3c3f5e8ee81972b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1615264f37d4ffdd39943195c46bf34643cf20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf37be32598e9851f785aca86c2162e7c1a8466dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5c16d009af1f1d3395883d9d7e626472d2dd6b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-245538 | `0x37de961d6bb5865867add416be07189d2dd960e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245541 | `0x3b00f262e39372df2756f809dd5dc36aeedfc4a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245543 | `0x537a7f9d551da3c2800cb11ca17f2946d21029af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245544 | `0x5a007d6e37633fb297b82c074b94bb29546bebc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245546 | `0x81f2508aac59757ef7425ddc9717ab5c2aa0a84f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245547 | `0xb5cf096a406c1d5297d2493073168f44eb4a1a1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245549 | `0xc02fe7317d4eb8753a02c35fe019786854a92001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245550 | `0xd835fac9080396cce95bdf9ecc7cc27bab12c9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245552 | `0xf0396a8077eda579f657b5e6f3c3f5e8ee81972b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-245553 | `0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245555 | `0x37de961d6bb5865867add416be07189d2dd960e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-245557 | `0x60991ccae8f1420b43bf14937a2c9f69162be21a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245558 | `0xd65fa54f8df43064dfd8ddf223a446fc638800a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245566 | `0x0d7f0a811978b3b62cbff4ef6149b5909eacfe94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245567 | `0x139ee25dcad405d2a038e7a67f9ffdbf0f573f3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245568 | `0x13f46b59067f064c634fb17e207ed203916dccc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245569 | `0x24a0c9404101a8d7497676be12f10aea356bac28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245570 | `0x64ee90b086c99fd3439354f382fef25229a01f02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245571 | `0x65b05f4fca066316383b0fe196c76c873a4dfd02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245572 | `0x703b52f2b28febcb60e1372858af5b18849fe867` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245573 | `0xadb90cfb3d5ebbab8eee7da10b4db215a7d50bee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245574 | `0xbd80e505ecc49bae2cc86094a78fa0e2db28b52a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245575 | `0xc7a0daa1b8fea68532b6425d0e156088b0d2ab2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245576 | `0xe1d6a50e7101c8f8db77352897ee3f1ac53f782b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245577 | `0xf7169e14cdef99403be9114c9303887f760b1913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1aade12b1b8cd58beb6c876c51b59a828a39cb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21b52de9cb55c1993ab396ce0adf2a6213dceade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4870e6aebff93d8db99941d6f07f281f34ae82a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50afc32c3e5d25aee36d035806d80ee0c09c2a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x54206eae5351b33f12bd38a1d1b110e0932ae4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x66d6498b1886155dd21562b136e02ac3cfa35e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x698ec30d747996670a4063505e34dfbd6d1e1db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6b6424912c6878ce99b7d1520d3aa4779542e701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8d24ef5b84d99b1871eef84b4999b97b96ecfba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x93f220d3e997d21d423687cbca5874a7eabebe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa1095c24e0e2294502d27b13f01cce923ed90e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa3965dcee17dceda55244ff85e979d4d5b8a0d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa8df024da38ddc3d19c1336ac3c25461724ac202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaa1a7bb442a0cf1f742bee64c89c2b623b6b317b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xad53e530e2f482f66bea495ff865ba8ff0136547` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-245539 | `0xdafc1dcb93da415604ac6187638f88a8ff8d77a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe142fa0eb62557eab51b9e9ed3ec33a301e7cf94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe3e16e4fdeb9485692b97f05d5e482bacbbea9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xebb4bb1049c5721dbcad685ce595a6b242b7e2a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf2265cdacdfd90347a5b830f40188b6de95cf2bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xffc7780c34b450d917d557e728f033033cb4fa8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245559 | `0x66ca84bc3c2db33b6bd7b8994c033444c72b8ade` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245560 | `0x7c98e0779eb5924b3ba8ce3b17648539ed5b0ecc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245562 | `0x8311496799b8c2c7f13bc32c123ac4eea068e6f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245563 | `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245565 | `0xff22ea467301010f1364fc154c13e0c86fcfb077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x157668a4184ba8c1f14a8399ba5b8e9022588e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1cc57dce39176c5ab33f9b88b8bbac43b10c76b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245608 | `0x1fabaaec88198291a4efcc85cabb33a3785165ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2d001d79e5af5f65a939781fe228b267a8ed468b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245609 | `0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x42773116c040f7d0a2ca9d6f0c82a5e564b8e114` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245610 | `0x458ed78eb972a369799fb278c0243b25e5242a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x636d4073738c071326aa70c9e5db7c334beb87be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6b9060f812e3524343d09ccded1e4fbd2c650a82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-245611 | `0x6ef6cd595b775b9752df83c8b1700235b21fe2f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7393cc2ff19c0a6e498a08aabaea06758bf6bd3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9aca7fce0fef6215bd9ed346e63bcded4a936f20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245612 | `0x9c46560d6209743968cc24150893631a39afde4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9d42f4ad208636523d3bc3ce3f5883d04b478fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa3edc0667fd066ad2c1aecde2122ade1b40134e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-245613 | `0xa8579d42e34398267de16e6eeecdb7ed0eff953c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaadc8fa4897454e62358b48070b22164699865ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb7bd9ae83a8378965aa4b22294330ad8f1370e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc1fd84bf1bb21eb4e0f6ab0a2dafa451b911b2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xedd326657a03c95529f2f69ff66ae5f74c710d6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245614 | `0xf10a7ffc613a9b23abc36167925a375bf5986181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf259e640c7429cac5db761557803f06a120a54e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf50d60714255364f3366ad8a4e15ca4d2000d49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04030d2f38bc799af9b0aab5757adc98000d7ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08f9654349b33b955133b28e35dbecce9950c219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ee7145e1370653533e2f2e824424be2aa95a4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f8e057d1d7b282ef968d26e9cb432617df52519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1564df754c268d6402e1d5d55c288a83abd9f5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17cab8fe31e32f08326e5e27412894e49b0f9d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21b1e4ea0e9ae2e79932662300eb12a0f90abe59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x243d66299c1946c4f712cc66b386fe7a39a54509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x290b97eb30af8ed088659d6738e314069d71352b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33cdd3f7259327e0f124398a19c25ac143776bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245693 | `0x37de961d6bb5865867add416be07189d2dd960e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x427c210b489a3cf30009778cf8082339ff3b28b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42868efcee13c0e71af89c04ff7d96f5bec479b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43a5c292a453a3bf3606fa856197f09d7b74251a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45867eb09bb39766ebcee7ff9dcdfb6f6cc6f8da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245694 | `0x4f793e5d1d71dbbcee34e39a5ad3c6ba5b11e935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x507e00769aa2c2e65cb17c78ae4d8c0b4ac5eb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57d2d46fc7ff2a7142d479f2f59e1e3f95447077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x591e79239a7d679378ec8c847e5038150364c78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6228a44cd0ec29c3373c9742e4bbaf6f2e536b9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245695 | `0x69ce2505ce515c0203160450157366f927243309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245696 | `0x7063ef4f2887586e96096d3e94c9b6961c50a9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71041dddad3595f9ced3dccfbe3d1f4b0a16bb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72fc7950a832396720736e7e08d6f74c84c6909a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79b0e87ff1c40d27a0f941296d70a91cd1553482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e1c22b20f670a1bcc11f7709e82b46323e40358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e860098f58bbfc8648a4311b374b1d669a2bc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8004571d9f54de016fc3d448e7aee2d70947727a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x806b4ac04501c29769051e42783cf04dce41440b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x817c9f4cf0661e5fc18f52841b6b6725b227769d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8694280b00b5f371ff29161e28ba9325b472c086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88fb150bdc53a65fe94dea0c9ba0a6daf8c6e196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d5ca7131f42fbd79d0621119148e1f6d5a9a944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f975f674e1b202b52acadbc8ed459ee505ee0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9081d072f31d1c613d3481ee266d99b7addf7f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9189882b85d37f117dc125fbcce7b61c653fa30c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dda783de64a9d1a60c49ca761ebe528c35ba428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e8ee77c76d4fa41306056d1c3196af5da1600bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1887f180a377453a3d7761e85fd4af177e751f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5925a27d3281198c0ae60a5efcd6c44a5e47526` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245697 | `0xac9d11cd4d7ef6e54f14643a393f68ca014287ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb16953d6aea7ff29ccb4c18043450110bb4f462a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb58c5c550ba19c4ceee071f8ceeb58f8770e6978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-245698 | `0xb88bac61a4ca37c43a3725912b1f472c9a5bc061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9b743d02d173e4529051ec9dda06a0c5cb4a2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba0db01cea73792d0b23f243a78b7150c9db7cde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245699 | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5e65227fe3385b88468f9a01600017cdc9f3a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca317758bf38ad4a03a167dd79d8dee6131739b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccadc697c55bbb68dc5bcdf8d3cbe83cdd4e071e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0407a6524c7d9075e0b040dcef4696129b2c3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc2d2fa8e7b824a2c16128446e288280dcb12844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe186722b9d5c063625c49a4bf6bb3d669f66a8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe640ac663d3a926420cb370e948d1e43e355d51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6b386be97ce1caf849befaa1ba0ee9f06f1cc05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedc243c7e3c1a9daf067c90641d2346d2694d2e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf19d560eb8d2adf07bd6d13ed03e1d11215721f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3c72d97a5dcf0449e89bbce1a0581d8d15c0237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf586d0728a47229e747d824a939000cf21def5a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-245579 | `0x244912352a639001cecfa208cdaa7cb474c9eade` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245580 | `0x2acec6d8aba90685927b61968d84cfff6192b32c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245583 | `0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245587 | `0xb8161f28a5a38ce58f155d9a96bdac0104985fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd988097fb8612cc24eec14542bc03424c656005f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf0f161fda2712db8b566946122a5af183995e2ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245590 | `0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x004f214586cafe0f1321ad13a93bca77c385b196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x021126143d0b6e20bb69befcc860e7e523df8055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0225781042c46db247e009ffead5aef044f3e7be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ded5a7edda750e3eb240b54437a54d57b74dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02e892e7f49dfeb8b26563150047c7c33d148e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02f6bc122595651127ffb89b1cd5bb4ffd942182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0309c05449070ac1ab244b99955ea5fedeb79e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x037100c673e8a63fbf8f6f78a8fbeebb683593a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04180965a782e487d0632013aba488a472243542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b7384473a2adf1903e3a98acac5d62ba8c2702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0526ed34229425a10888c6972906cf2a820d6d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x054296f0d036b95531b4e14afb578b80cfb41252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06047dd6f43552831bb51319917dc0c99c29a44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x066ba4567c40cb315ead257bd86585bb4a74004f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a32255dd4bb6177c994baac73e0606fdd568f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b6eac11aad4211ad686d1ece56c071e306bd29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c61188a875022166d9d2884c26a55fa99bdb79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c997958cce7a0403aea7e34d14bbada897b5bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ca784a2a7fa84f69021aacbf481ba899e79e732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d02b6eba98bda364953d9b1def8eedc19ffd516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d0faddd42c53fc6d1b933c7cccccfaf9b79b571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d20576fae18e89a28e75b63bfce5d1b8586d739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d390bf7c43d9ac7ea848ae4c9ce3798a83384d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e278d14b4bf6429ddb0a1b353e2ae8a4e128c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f38d86fcef4955b705f35c9e41d1a16e0637c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x103c63bdd0497422f4dfd6bdc14f6799d24b29a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10e138756622245f43bc210aeca5a9be22764493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12b8916e7b6297f31c99e3a8e2bda661f27c676a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x158b2203d267a50be9b7930d13d8247a4968d659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16c0e73906cda7ac1f137b0f513a00b84c8f7a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16f384aef73f3f3f7b566125b1f144bc7c847b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17298e460f18f1380fe5ed68985a566949b91d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b8448bf2a085b7945f8bc20a1bfa489f9d35c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17d8d87df3e279c737568ab0c5cc3ff750ab763e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18230897e88bd26b47e4c8c472db59849792c799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245593 | `0x1840c4d81d2c50b603da5391b6a24c1cd62d0b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b47b4124b9a5094c59710e6b9126e5e32a4fb8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b9749e06817433a34d7efaaa0a7f6a94a41e432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c8a384af067418f631683262965f7b5d1e5c788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cde96670e1e779b13ddfd6a5c6d19349cc6a642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d416d75fa88100fa0198f1c1f3ecc074c555d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f4abf0cde2959fa199a16fc6e4c6bc15888e5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x205aad468a11fd5d34fa7211bc6bad5b3deb9b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20d0fcab0ecfd078b036b6caf1fac69a6453b352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21e1a03da332f9277a6839d1ef182d07644d1875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x229a9322d050bb6ac91c40ffbb8e3bef79c48071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x244ea8646cc2342497dfd5d8f841f79e66e598cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2489462e64ea205386b7b8737609b3701047a77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x256654437f1ada8057684b18d742efd14034c400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2829f6cc137cf3552325f69b9fd215acacfd104c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2946220288dbbf77df0030fcecc2a8348cbbe32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29d57534598bf8adda2cc2fbde4b7502387b8177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b55e42c45b71b2bc70c14be02563f90d1fc0106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c1c5eab455a91cead280b12650faaa7bfdd59e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x326fa29b208de897981c78827b8ffdbfa355590b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x333399f03b84678ec22842cd467c8fe089e3ef27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x339a66699167d8bc7105c4b9772492d2576e5183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34ea4fc62510bd81a72399309f717b96f740a4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x355e12f02c59b31aff1ae2775352dc2ac1f5c829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3607e46698d218b3a5cae44bf381475c0a5e2ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x368b55beb0d85abe2bd04c7cba5bd640a53fcf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x373510bda1ab7e873c731968f4d81b685f520e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37b300020b77d043f2a8cf7700f1b05d6d889090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3815dd45cde3bfaf1e3db6d7ff9ef3b437d6d0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x382f3c547e3ebd1d08cd0caf6e5f0a7b0b350a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3861d83ed006a6570ce8eb9878f4df0df889a2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a9659c071dd3c37a8b1a2363409a8d41b2feae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3aa743f761e03458d41d36019e2b505ed2057a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b9c34dc5b6bfc1de896496afcef1ca705d0c762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c5c5329b028e674f7a124b18527b94be74a66cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c6abda21358c15601a3175d8dd66d0c572cc904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c786e934f23375ca345c9b8d5ad54838796e8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d50d699a812a0f66f36876df47b2ae68e781736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d9145b5804e13bc14d19c3ddbd3da8fd02b5034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eabf62eb761bd86c71d07adbb1a9183fec24064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ed9d8146a32b3390b373bbdff0ede7361568c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f3f5df88dc9f13eac63df89ec16ef6e7e25dde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4050bd8263771f8bbded08c299bd944488a91aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4099b89cb3686c6ff504fe330d90ee20e9cf174a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41230419afff6c7ffecf715fa57958d53f803de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x413b219d371c352f6d1e9a39f5ce4c869eda9476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41f14afb0eb605097c5950d2458415437a3d2bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42081a82cbeab05b6feecf8bed1e200b23b48ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4258e5d50d737cbbea347f0115ad166e234902d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43c570dab5fe78bb255359fa4e9d5cc1b7070062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d3ab6c4b98a3f9f241e1753b2475ad7e502051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x453e2db4288c75f3b6b8c44aae1f7e7c8cc8e0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x457afca66d8b797b3924a1acb5529e08897c13e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x476de91e5ea44747f5be60a8c8eda5407d2af349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47a2fbeb46553f01e7133686fb1b5349d4823a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47c0e86123c5d33801cc6957626db14fb4352778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47c38c695639ae97a00f57d6d9f5ece1debb033c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47e55ccec6582838e173f252d08afd8116c2202d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x484a1b29ed1ea038dbd75d7c7293714343363122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48fd0a91ff0660dbb9882c538184c0c0bb25a115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x496000e12f6d5a2ec4512a6be34fe36ba84e6349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49814574e634538985049db7e2ae60fff3e19600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a85b128ebdafc24d5cb611e161376ffdeceb289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b13dd76de990db9a2dab58d35c2c02e5e3ae848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bc735ef24bf286983024cad5d03f0738865aaef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c76f02e484e8ce9b6c2358cf9624babc5531e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dacfb8ddf3067da0787fc31409abd40b052b2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ee1f9ec1048979930ac832a3c1d18a0b4955a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f861f14246229530a881d32c8d26d78b8c48be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5082d93991dfcc69f57a27cec63edee1b8c22757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50834f3163758fcc1df9973b6e91f0f0f0434ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5265846205081df808b2111ebce5899811b62fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54a82bc6c6540f95c0b84690773635acc97a92ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x552c92c0c09a73d569ab52ff4c17a153c3472be3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245596 | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a0f8231e89264e9fe7555896724e8fb1b7b6e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ab0b1e2604d4b708721bc3cd1ce962958b4297e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ba6ff4024936412bc402bccd6a5ec44441184b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d750cc68ff61e2d68930003f77241f7346adc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ddc9a020c34d00be5fb042f797a89beb0480dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e4c65194f6f33a8bf7e9b95f1d0ca9d611f6d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fb73f7af8a29297953d3611422826039338e5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fb8e23065c362080e540e01e0bd4119b6cb53fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x605ea726f0259a30db5b7c9ef39df9fe78665c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62619470fcba2ae5c2dc22c18cf5251c09c1e618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x626fd7e1bbd2bbfa91260a1f7e485ce2286231a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6303c35d49b13016a6acef5414893fa7519e6da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x639b7cd102a1c5bab71c54f88d41e894215c54e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x639fe6ab55c921f74e7fac1ee960c0b6293ba612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x660e7af290f540205a84dccc1f40d0269fc936f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6662e348b2710bddfb69a1356482e2cf1c27dd7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66b074afc32cafd8e5518fa061701cf84789fd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x670bd6d743fa996dc512e2c652b7c8ffa8e7c23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x671ee94ece3c0d19d0f69cb1718aa9150daa8ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x674a6d60637891c63116218c38a9a49be07d21bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67db13c76ce77e8feef9b500616162ec142597ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x682c4f55135167930cbe5ce77ac44fb9a03b8e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69b798425cfff3ae962f6118fd6d6646c829a8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69ff5b330f579229f9a842b9dd215b8e6833301d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aa147e11e423f529bedaed75f3128d5fbe67939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ab8414a33065d4889049f6ebd202f1cb5e45537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b22717a43c639b3055de40911d09d8be23f3c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b37301d8723009de204baf49e9af6d4d37fe654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bc7ff3c21f005684ef834fba4d88459e988ccdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c77960beb512d955cce2d5eaa1ea20a388ba9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ce185860a4963106506c203335a2910413708e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d77f5f03e97ce24606b1e9517be955d6852a4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fabee62266da6686ee2744c6f15bb8352d2f28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ffbc6339dd46a7e0513d4887106349214c05505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70001968d6ee8f909de9e730e5b4e586565bbbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x703389807836463cff0cb01142de903a74e509c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70e48a135f76ba31b47fe944e769e052a8feb849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x726a96f31846f586e6a4c72f73c3db671986a002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72b424c9a254481626535dbb1aa3175c08f15943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x730a28c2b674e7d2c3e168337bfb2dd82ac1a67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7399107df5344e0b928e75f3acfa90569ec20848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x745ab5b69e01e2be1104ca84937bb71f96f5fb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7537f8c0f8f7e7def07bf9e91e636e55881c7a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75dd106b46017f9b5bf2c468f29ee55f410b991c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75ff3dd673ef9fc459a52e1054db5df2a1101212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76998c22eea325a11dc6971cedcf533e9740f854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x778356313a7419eec9d0762bf15795a771e0cd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77d76ea1a5a2616275d50350b4c796aaef7ce0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78aabb7a55508bbcc3a76d2dfd9ad4ff97afed7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a58648caea88e042767823723af266dc6c4c4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a8a9ad4aee9b8cf491de61c03834eb364a4eed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aaee6ad40a947a162deab5afd0a1e12be6ff871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245598 | `0x7acbea3b8ab7cdf4a595c6ed81e7d3e26038d494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b5fdbe00ed829e97020dc94dfa65c6533e6ab87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c7dffec76f590e9648ea468ba2fdd0a9892a595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c8e67de37937bce98116c605053ed06826691ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82ba56a2fadf9c14f17d08bc51bda0bdb83a8934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84ad1cb9fde786c00a77b7539344ad3c66a616f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85bb02e0ae286600d1c68bb6ce22cc998d411916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e53cf1b870786351da77a57575e79cb55812cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e5d529cb7caef5c475aab0727a84739e12ea3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x875c69da7ae092e4dc277171e9c373718ddb25e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87a79519345922e2babcef6b8ee3674b90bb9f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8883045300eaf3b1bb1b3b17f9b4d70eff50212a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88ac7bca36567525a866138f03a6f6844868e0bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8abe008b267c82199ec81e7f80ee4dc3a3545c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8afe9b0e7c131b6a7e749d6e967751f40e4df5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b48e1a576d47eb8bfe13d54d30ac2251c9f1a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fcb0f3715a82d83270777b3a5f3a7cf95ce8eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x920d90b3953b3c90b06ebe8579b0215d6801da54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x923b42ae13dac73191949c1b124cc78d2b8e7719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x926eed7973ebc57a8767659c5b35b9a0bab6302f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92e6b837362fabe1adf1d11a4255884e5f4dd939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x942d00008d658dbb40745bbec89a93c253f9b882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94cd888bea0de39dd0b41396a9311c5212635eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9854e9a850e7c354c1de177ea953a6b1fba8fc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a7fb1b3950837a8d9b40517626e11d4127c098c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b8ddcf800a7bfcdebad6d65514de59160a2c9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bda3a26361b6021b5a4df6e77e2cfb3a54a967b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c917083fdb403ab5adbec26ee294f6ecada2720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ca3d04bdf90ddc0074ea57d3e2d331cd4b2d5a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ee96caa9972c801058caa8e23419fc6516fbf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0a62496c42627379d865618a00849239ff69e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0e9a602b8060e1828be7ee4626e086bddbd2f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa14d53bc1f1c0f31b4aa3bd109344e5009051a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1c0bd64affaf53e7674e2a6c5df6b80a4fb80d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3403cbd8db989ed2204a51f9f70945bf5b2cfb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa44bcd128e99188565c4849cdffeea9c773f74ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa631deff664da5a42642c3e1a4a8d5b4f99ee28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa64344ec6b4971d1fbdaf5550001ac5751eed599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa668682974e3f121185a3cd94f00322bec674275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa677622735c38001fd1183c92dc5b889128ec234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa686fa6122d30ebc51843847fef4a0ae759fbac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa821e9cd8490ad5cb398fbaea8baeeda27aa6f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa841011089336de36b239b49f70a456edd1c87c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9cc9b5ea2584239365ea6b985868d121cb7aea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab5745a3bc42a8f73232d56f0566d5eb4e4095a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac812c6eaed6823d115ed2beb9ecfcbc98b31a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad1d5344aade45f43e596773bcc4c423eabdd034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad81bc9887ab35b4aa05493e9b3c32ca7393c8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae0d73c9a489084531deedca6765fa3396db49c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae8b4179389059a735821a77417eacca60f3e4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf2f4f94f06f8f9c6fca5547fdd5da723e4ae803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafaebeb1db6d13ec1279b59396a9dc40502458c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-245602 | `0xb1552c5e96b312d0bf8b554186f846c40614a540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2a8ba74cbca38508ba1632761b56c897060147c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2ae7b3457c86120134e2a0b9374662de46b801f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb39082aa764c8ebeb91f196e31ce0e570b1a268c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb39bfad6295724e01e079ee3aa78a378eff6deb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4102d5e72c402d537c9f024f4bd9c3709fe200d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb471a2a999feda077832579a5df26edd268c6e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb49b8beb7b57e92416a122a495244d7cf2fe0bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb72359b2dc04ff363e094648df78247c98297c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb98512d5a21e13cf27b84cc90ea118ae14134a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba55b9d246d351278f1ec3bacdde414cac8006d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbadcccf4156967783fa818bc4a8c93b5575a07b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc78d5f22ae6a7b86ab716c5d2f7dc61a8c1b61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc81b4e883375c387db454acae322196ae07a481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf1cd5cb759f8e21c98a4367b665f43d607e8885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfc294070e8a7594ceaa6c564883e1f9222bc09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbff434a1b44677d4ce302da64d84bb4d305c0d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0552c1a54409d11a7f644b7b3a0f8c9ad628f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1720a8240dbd992d95d6c865a15e490901879b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc195ba27455182e3bb6f86dab5838901604ba72c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245603 | `0xc20129f1dd4dfed023a6d6a8de9d54a7b61af5cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3534c27e3de2ae861eb38889a1c8dcfea4cb39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc373b9db0707fd451bc56ba5e9b029ba26629df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc59d26fc2ff1309930569faa0c541e2a31339d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5c8e77b397e531b8ec06bfb0048328b30e9ecfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8d14c7948973ef37db7ed7275d79ef7bd8f3d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc952f31456c15087e014f489a48e13b69d707d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9eb7e7b86d5c888246f8bed9be298b6486ec496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcad2225f02b0d077dcf3f945f129d12f3b595820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb35fe6e53e71b30301ec4a3948da4ad3c65ace4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb6501e44e7d9165df29649bccc39434f2df6847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc3370bde6afe51e1205a5038947b9836371eccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce2adfff491f4627ea61091182d4bf9a87ffd80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf7a7a1fb746e926bbe5c88a702a89167a94c51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfcaa24b51c0af95659945e5b0bdc0ff68c15e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd01d5e889659d33aaf01b34b1d41123f07b11b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd05ad7b6e72b23c15c011a6d2967017005639c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd07de6e37a011ccafd375d7eb130205e0fa24d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0b5f6b81811fce57e533dc57ae7d90e0867c177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0e9220a422ba14676dc34042f5f70c6fbc3f7af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd542b9c755587d595cdd7df808841d74585e194c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd896f8b9e7c1058bade26323181dbd9765d38c21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245604 | `0xd97221065e826167a2cfe3307972c0d42200fdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9fcb26fe3d4589c3e2ecd6a2a3af54eddb67240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb0c64efa0395063033b10769a80c62f885a620a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb4bdd7f74c2c961a1ee138a6c33c32c7e6bd27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbff913e9058c1e60446150d23bb0ffe9144d531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc1a8f77cdc46d1fb7f22f94dfca4ddbf566fa23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde4af8b4747192ea29339d0feb36d9830d399134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeccf98ab543e6faca8e22db33445c7ddc855df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded2c52b75b24732e9107377b7ba93ec1ffa4baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0685dd3c3dcfc31b7e747510788fa09fd8a3fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2a3216d8e4bdfa2ee78f2e55b995e787e6ce500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2cb592d636c500a6e469628054f09d58e4d91bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe46a44cb6f15edfbf01873e00b131c596860aa3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4c31c5b118d8aa92433ed1c7ec70afb430cd730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4c892be702f8e0771122ccaaa0e50bf9639e2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4d040128cfdf03ec221832251cac9b6f0515e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4df63bf89fd868a899f2422b030709fd79be921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5576eb1dd4aa524d67cf9a32c8742540252b6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe60f9489ea2478a149efd26bf9f5d31264aacab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe68beb4eb070c4362494fddbd2fb9288ce2631e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7c522c60ba7f1b5e398d2312593713e2b19aeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe837702f8d422f19a3fe9799fcadf8dab9c6ebef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea320e4d688b143a3bfbf1b4a5cc4b986fca086c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea84b5a70175a98df02a85bdc6f9191c753130d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea9b4da450a1feb3c374fd671f291d563b54cc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec2e9000b487f28fd03455f9277be3c96a3180b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef1b41577f2b53eece602e6e3e132dce2e7d58c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefa0db536d2c8089685630fafe88cf7805966fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefc5061b7a8aef31f789f1ba5b3b8256674f2b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf04bf09a664745c0a6404c885acfe4f395335ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0b7159bbfc341cc41e7cb182216f62c6d40533d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0e892f66173d37ed7fb0794c704330c0ac3bd22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2215b9c35b1697b5f47e407c917a40d055e68d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3d6b05e69918d71807ab005791daccec5de8c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4c257b5c6c526d56367a602e87b1932d13e67cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf613f9fda1c83fa88924e02781aeecc1daf03bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6897122530ca89beb919f5990fdd3f7cc9837c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7ee427318d2bd0eed3c63382d0d52ad8a68f90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8abb3c41a3b21687ad862c9fd00d007e413eeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94463c077c828b4efb82e07f1525027fa296255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf97eeaac36bdd096bb2445c7582f9095bfce04c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa74da2fc3d7adaa6fc1136ea1690ccd5e2d242c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245605 | `0xfb5e6d0c1dfed2ba000fbc040ab8df3615ac329c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfbe1c9f4297d509b4d0eccbc098df7db29da2918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc06bb03a9e1d8033f87ea6a682cbd65477a43b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245606 | `0xfdcf209a213a0b3c403d543f87e74fcbca11de34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdf256eed0ec8b782065e2acdb975071033a6110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe45c3466c42edd8868fd8efa161f4a7745678e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe92fa509ac5a0742aad3e419af6ab8663528c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeac1a3936514746e70170c0f539e70b23d36f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff6b58d50dadf1ecc69101b2784b2ebb2edc30f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff82aaf635645fd0bcc7b619c3f28004cdb58574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0956106bd02f2c7eca0abde1d51fc8050cc41714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0aac940015d333b8e4f93fce9c0f6f365d252741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18e0c88706a74456a52ed4943088c49db352f9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1bd1d8f94111ca0666fa58c9f3a271ad79512ba6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245682 | `0x1e1f6f22f97b4a7522d8b62e983953639239774e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e2286815b3d628128fbaa0f213fd53dea9e015e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e5777e847c6e1ed918590d1bdcddce3c795404b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e80eac9b0f143d1ec8f877af07ac40e9ae65dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x279dbd934bd20c0af72caa2caf9005ab70d8c7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2884f3d4fe39cd5c77b00900127a538bc3bb548b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2c30e9282d04095762f6a37f6c43a040d8d3a0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x32a7438fd4f6fc2d1174a3b701cae2f9103aead4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x347c78c807b982f4354264be49110a0f6b3dbc82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245683 | `0x353012dc4a9a6cf55c941badc267f82004a8ceb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x391f84f0a7ed1e8b35890a0ad220af41b56bc278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-245684 | `0x3c8a95f2264bb3b52156c766b738357008d87cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x441351e174fc3516520cb800c2ddd794062f6018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x452b408b3e2805c109d52c80bd54deda239716d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x49768d7ebb7694b1e72546300ccced877084d72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50c7d9682b2ffa05405b2ce16b62162d24bd5359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5791839144356737cb8b2d9e24d221e46387785a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5852e7ced574bd1e25bd1f6b72607a666de43489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5c5ee01b351b7ef0b16cfd59e93f743e0679d7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5cc678be64bf599b97131092d7cef6c30a5271ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x67f8f34a08233fa07fcd15ee597c643fd1ebc422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ca39855106dec6bea3d37926a47c5886d96c32d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x700e6178ee7b594a6cc1f3df6105042355051fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x71df27e7b480f3099ac3e820a02576c9547b3940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7396a310401c5809c99aa1752d6b7afc241ee94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x746fbd85558fe29d0cdaea433e0625ce983e2ecb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245685 | `0x74be82f00cc867614803ffd7f36a2a4af0405670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x81f4d3052b034007cb5fa1d4cfb56d0732867f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x82b6a73008c8f73df744847209e3399bc514f8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8b65a2ba86d9ae89bfe4ea68e97b20e45ab05623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8b7fac4a99dada67c661d4854b2284c7a64722f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8d6ceb62ce510935792be737e30f9f61082b72b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8ece1aba32716fdde8d6482bfd88e9a0ee01f565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x90946fce1e3b248466160475340a753aa4c17562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9165802ea199c36f85d53a6f71da6af5a6ea8951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x917cab79f9132a0417eba7b23866b90a8eeea2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x921000dd4faa3dc53f5ee1c21ab6e4211b191c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x92b4b8511059ade8e1b8145ca66c9eeed8323263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9e6c73ae2b419eb32d5d4380067d8e24785926d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9ecea805f9dbeefe8edb7e3ee08995ff65828d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa872f1f102473205e202f5cd337487c1cc35b82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245686 | `0xa8ef4db842d95de72433a8b5b8ff40cb7c74c1b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245687 | `0xb5bedd42000b71fdde22d3ee8a79bd49a568fc8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb71f79770ba599940f454c70e63d4de0e8606731` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245688 | `0xc0583e2f5930ede5fab9d57bac4169878730b010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc4194f19e3a0836f6b998394445c6535c50604ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc834a55fb78dea866e9cd86047df0f584b9da339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc93766a8e4ede52ad79dddea16e42d26a462ddf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xca3d6b17def8c8ccc37c4fcfcf303a3d5209157e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd3cdbdb251b1ed9ec74beea171fa84b5eca51e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd691e46b96702a4b64c0ac552216dfcacd233319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd7bfedf3e4b49cb8a3e1bf5e6c81df759ddda4f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245689 | `0xd90ed3d4f9d11262d3d346a4369058d5b3777137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdaad34260e4105702278f225d3d20c453d12065e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xde14081b6bd39230eca7be1137413b7b87b07c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xde28babf574277e532d5737f459e672afd098435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe3b01c1a61ef2f13a7a24f060a2d53006d91e38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe5aca1a31ad6fc61e30ab8e4a19a9445884a1ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe77542c59677e831ac6941bdca4e3a75180d8fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xef77b4a7d92ebdc89025b8e11916a69bda6d189c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245690 | `0xf951d7592e03edb0bab3d533935e678ce64eb927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb27a93105bbc2130f458c609f61d7e7994aed8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x02812d966b5cdeeb9acbbbae51ca2d5d0f86a086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x02d96869f2f88eafdaed49d5e9fe95c9c904e52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0894150db82b912105f6d0907b5c69e72f1df279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x105b9baaf75da556c0206159481243163faea1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x14473e2bd405dcb5550cca1d36da40227a6810ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x150a31d567cfe36bb09fc90a01e96e2699913242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x174d1a887e971f7d0fe5c68b328c30e0ed743160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x191770c52309dff2c52ffecf059ecc3862f5d721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1d14c3498546abf7af8e4cc216a5d1a5e25bfd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1d40306eefcf6ebd496d6048f6edf8892346e558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1f807e2e8ab2e61230a0a9c271f90242831278b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x203322e1d15eb3dff541a5af0288d951c4a8d3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x227a4e5e9239cac88022df86b1ad9b24a7616e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2b14d0e4b042d11c7e3fc653132a2c82efa7d376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2c51f93e3075a007a746aa91f4ba07aee8423b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2f9449644ceaf63ef9bc8d1fd359be53490c1ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x331a873a2a85219863d80d248f9e2978fe88d0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x33b60d5dd260d453cac3782b0bdc01ce84672142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3808d0f2f25839e73e0fbf711368fc4ae80c7763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x392beda731d31a751f82c67047bb214e2f126aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3ffe801a43d25d0288683237a848e14f73a226f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4200977c58c6298bdba595c4835c9897e757ca6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x42a899f5e0a8add4f1667b31e5f08097430d5d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x42bcacb8d24ba588cab8db0bb737dd2efca408ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4355d497a568f1332cb59b0e0cdb83afecb5e09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x43d12fb3afcad5347fa764eeab105478337b7200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4966c037d653e31db2c1f9727dd50dc679d51d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4a1b3d103801f0e1400046ae1948b9808e9b043b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4a295f37a7ca6d2842349cca55607312216519aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4c0926ff5252a435fd19e10ed15e5a249ba19d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4d88fcfc4294a675968ae98cfefe436d3e47a8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4eeaf6d336f9619a381385cc0ccd88a8099ee390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4efef984a3eafda2e22a28b993e441bddc6e7659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x52d9a4fac326934c593b451dda6f53bba053577f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x548c6944cba02b9d1c0570102c89de64d258d3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x552137396879d96a4396e376b83050cf0ace2d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5b3477d4350df6a69c9f1c545e58046aacc7c61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5e9154a96ada7a32ccb1810b65d6bc9809b4585f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x61fa2a936e1fce6b2facf9e0e197472975d73678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x62597cc19703af10b58fef87b0d5d29efe263bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x64046cfdd76b57d8206cde65e8435a2cc561de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x64ccbe37c9a82d85a1f2e74649b7a42923067988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6beaa1f51a25fddda2c4e7b1ade8dc1257870de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6bf14cb0a831078629d993fdebcb182b21a8774c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d247636c987415944a865a12559a1c96ceea1c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d868bae5d6e1a3ca266ae1bff0ea8178aa1a1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6e0618d128d2d861994df7a725743f69b53c2804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6ea73e05adc79974b931123675ea8f78ffdacdf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7003e7b7186f0e6601203b99f7b8decbfa391cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x71d7f43617ceae99a43b7727151267a9919288f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x72e2451a2da1535dbf0e7cb1e8c69f56e00a7b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x781e90f1c8fc4611c9b7497c3b47f99ef6969cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7a32aa04c4b1d2b09ad5783c33fd582f1f3fea89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-245622 | `0x7ba516fb4512877c016907d6e70fae96fbbdf8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7bc08e1c04fb41d75f1410363f0c5746eae80582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x86c5cbfc03fffc7faf5dfc7d781a9adfa9f47dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8b5c3997af5e1fa7a5614fa5917df28366ffdc3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8ca7296fada2518095c30a3516b74ef26ad37e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245624 | `0x8e34d07eb348716a1f0a48a507a9de8a3a6dce45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x93526d5199a2c0f206afd26b866517d7ec6fce53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x940b5c8d6f757af7e8c5266215314819932c0ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x98de219a50584be7ca16a065f7714d220c0105f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9dc2684e434757ccc309963bd568932ecebc8fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa1a12158be6269d7580c63ec5e609cdc0ddd82bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa76acf000c890b0dd7aeef57627d9899f955d026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa7773655c4f7a2c8a62849d0bd3e5d960380ad48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa77d19c1f2b06c9aea9be88c17b771a33892734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xac78dff3a87b5b534e366a93e785a0ce8fa6cc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xac92e88bac1848a5feea5cf5a60e0abc3bd5df94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xaf9a61aa21ab4a2fdbc88e81363d2e3d359749dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb239e88e4b91af6a0a54fd7996410b5270ba8633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb5ce5f2277cfc547f48aa8263838faed424ae4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc568b5dccebe52073fa783eadacde0a30fa4c2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc6305b415e1c08d11e4f6b23b29af22d2ee56fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc67d807b67fe541a9efeedab0fd9dc23332e3064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xca77eb3fefe3725dc33bccb54edefc3d9f764f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcaa86d504b7670f4bce0b323c2aaf7002cf6c478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcaca6bfdeda537236ee406437d2f8a400026c589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcbd4cb4116dee5273cbeb36f26edb3640055cd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xceec457fe7eb7138b66ecf191c0a2fca7a94ac3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd2f3ab0e1f5015a08ce1b98e6ca62e6101c30a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd34e5e5120ef8f70f6cdc1e0ef9b169eecda3d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdaf142691a2d25442f03319463f2ef1a14f85e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdfea658fa9bd311d6629f46baa775580a7ff80ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe0a0509a66c509f55c85a20eb8c60676135081f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe2b4795039517653c5ae8c2a9bfdd783b48f447a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe33bee9d3d9f62b86ee577977cd6ecfc6f5f88a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245629 | `0xe61da4c909f7d86797a0d06db63c34f76c9bcbdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe863c747c127ef8cd543f3f8975e7a4ab7abb0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xed746456ba6ad119e3d80681b34e0474da4e60f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf376a91ae078927eb3686d6010a6f1482424954e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf4e8749184257684d3576c2c5d45f854ca0f75ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-245631 | `0xf580753e334687c0d6b88ef563a258f048384ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf6069db81239e5194bb53f83af564d282357bc99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245632 | `0xf610a9dfb7c89644979b4a0f27063e9e7d7cda32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf76de5c08432074496038a01f00598243a83fc59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf8a069d9230238763fc574157fa39a78396bd26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfba14466fc7620a3b3fd2def8ae527c2f414aaa8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1238
- Live contracts: 0
- Unknown liveness contracts: 1238
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=1238

Showing first 200 of 1238 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75ff3dd673ef9fc459a52e1054db5df2a1101212` | non_address_book | unknown | unknown | unverified | n/a | `0x2a61d3ba5030ef471c74f612962c7367eca3a62d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf2f4f94f06f8f9c6fca5547fdd5da723e4ae803` | non_address_book | unknown | unknown | unverified | n/a | `0x2a61d3ba5030ef471c74f612962c7367eca3a62d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbadcccf4156967783fa818bc4a8c93b5575a07b0` | non_address_book | unknown | unknown | unverified | n/a | `0x2a61d3ba5030ef471c74f612962c7367eca3a62d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5576eb1dd4aa524d67cf9a32c8742540252b6f4` | non_address_book | unknown | unknown | unverified | n/a | `0x2a61d3ba5030ef471c74f612962c7367eca3a62d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xefa0db536d2c8089685630fafe88cf7805966fc3` | non_address_book | unknown | unknown | unverified | n/a | `0x2a61d3ba5030ef471c74f612962c7367eca3a62d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfdf256eed0ec8b782065e2acdb975071033a6110` | non_address_book | unknown | unknown | unverified | n/a | `0x36c648351274bb4455ba6aaabf3f976824a93af4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x004f214586cafe0f1321ad13a93bca77c385b196` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x021126143d0b6e20bb69befcc860e7e523df8055` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0225781042c46db247e009ffead5aef044f3e7be` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x02ded5a7edda750e3eb240b54437a54d57b74dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x02e892e7f49dfeb8b26563150047c7c33d148e40` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x02f6bc122595651127ffb89b1cd5bb4ffd942182` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0309c05449070ac1ab244b99955ea5fedeb79e6a` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x037100c673e8a63fbf8f6f78a8fbeebb683593a8` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04180965a782e487d0632013aba488a472243542` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04b7384473a2adf1903e3a98acac5d62ba8c2702` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0526ed34229425a10888c6972906cf2a820d6d13` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x054296f0d036b95531b4e14afb578b80cfb41252` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06047dd6f43552831bb51319917dc0c99c29a44c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x066ba4567c40cb315ead257bd86585bb4a74004f` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0a32255dd4bb6177c994baac73e0606fdd568f66` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0b6eac11aad4211ad686d1ece56c071e306bd29b` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c61188a875022166d9d2884c26a55fa99bdb79e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c997958cce7a0403aea7e34d14bbada897b5bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ca784a2a7fa84f69021aacbf481ba899e79e732` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d02b6eba98bda364953d9b1def8eedc19ffd516` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d0faddd42c53fc6d1b933c7cccccfaf9b79b571` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d20576fae18e89a28e75b63bfce5d1b8586d739` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d390bf7c43d9ac7ea848ae4c9ce3798a83384d2` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0e278d14b4bf6429ddb0a1b353e2ae8a4e128c93` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f38d86fcef4955b705f35c9e41d1a16e0637c73` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x103c63bdd0497422f4dfd6bdc14f6799d24b29a5` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10e138756622245f43bc210aeca5a9be22764493` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12b8916e7b6297f31c99e3a8e2bda661f27c676a` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x158b2203d267a50be9b7930d13d8247a4968d659` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x16c0e73906cda7ac1f137b0f513a00b84c8f7a4e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x16f384aef73f3f3f7b566125b1f144bc7c847b1e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17298e460f18f1380fe5ed68985a566949b91d20` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17b8448bf2a085b7945f8bc20a1bfa489f9d35c4` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17d8d87df3e279c737568ab0c5cc3ff750ab763e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18230897e88bd26b47e4c8c472db59849792c799` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1b47b4124b9a5094c59710e6b9126e5e32a4fb8e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1b9749e06817433a34d7efaaa0a7f6a94a41e432` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c8a384af067418f631683262965f7b5d1e5c788` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1cde96670e1e779b13ddfd6a5c6d19349cc6a642` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d416d75fa88100fa0198f1c1f3ecc074c555d6e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f4abf0cde2959fa199a16fc6e4c6bc15888e5ff` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x205aad468a11fd5d34fa7211bc6bad5b3deb9b98` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x20d0fcab0ecfd078b036b6caf1fac69a6453b352` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21e1a03da332f9277a6839d1ef182d07644d1875` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x229a9322d050bb6ac91c40ffbb8e3bef79c48071` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x244ea8646cc2342497dfd5d8f841f79e66e598cf` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2489462e64ea205386b7b8737609b3701047a77d` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x256654437f1ada8057684b18d742efd14034c400` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2829f6cc137cf3552325f69b9fd215acacfd104c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2946220288dbbf77df0030fcecc2a8348cbbe32c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29d57534598bf8adda2cc2fbde4b7502387b8177` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b55e42c45b71b2bc70c14be02563f90d1fc0106` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c1c5eab455a91cead280b12650faaa7bfdd59e6` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x326fa29b208de897981c78827b8ffdbfa355590b` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x333399f03b84678ec22842cd467c8fe089e3ef27` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x339a66699167d8bc7105c4b9772492d2576e5183` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34ea4fc62510bd81a72399309f717b96f740a4ae` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x355e12f02c59b31aff1ae2775352dc2ac1f5c829` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3607e46698d218b3a5cae44bf381475c0a5e2ca7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x368b55beb0d85abe2bd04c7cba5bd640a53fcf37` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x373510bda1ab7e873c731968f4d81b685f520e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37b300020b77d043f2a8cf7700f1b05d6d889090` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3815dd45cde3bfaf1e3db6d7ff9ef3b437d6d0e0` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x382f3c547e3ebd1d08cd0caf6e5f0a7b0b350a11` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3861d83ed006a6570ce8eb9878f4df0df889a2da` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3a9659c071dd3c37a8b1a2363409a8d41b2feae3` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3aa743f761e03458d41d36019e2b505ed2057a04` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b9c34dc5b6bfc1de896496afcef1ca705d0c762` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c5c5329b028e674f7a124b18527b94be74a66cf` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c6abda21358c15601a3175d8dd66d0c572cc904` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c786e934f23375ca345c9b8d5ad54838796e8e7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d50d699a812a0f66f36876df47b2ae68e781736` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d9145b5804e13bc14d19c3ddbd3da8fd02b5034` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3eabf62eb761bd86c71d07adbb1a9183fec24064` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3ed9d8146a32b3390b373bbdff0ede7361568c4e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3f3f5df88dc9f13eac63df89ec16ef6e7e25dde7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4050bd8263771f8bbded08c299bd944488a91aad` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4099b89cb3686c6ff504fe330d90ee20e9cf174a` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41230419afff6c7ffecf715fa57958d53f803de9` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x413b219d371c352f6d1e9a39f5ce4c869eda9476` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41f14afb0eb605097c5950d2458415437a3d2bcd` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42081a82cbeab05b6feecf8bed1e200b23b48ec2` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4258e5d50d737cbbea347f0115ad166e234902d7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43c570dab5fe78bb255359fa4e9d5cc1b7070062` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44d3ab6c4b98a3f9f241e1753b2475ad7e502051` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x453e2db4288c75f3b6b8c44aae1f7e7c8cc8e0e3` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x457afca66d8b797b3924a1acb5529e08897c13e4` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x476de91e5ea44747f5be60a8c8eda5407d2af349` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47a2fbeb46553f01e7133686fb1b5349d4823a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47c0e86123c5d33801cc6957626db14fb4352778` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47c38c695639ae97a00f57d6d9f5ece1debb033c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47e55ccec6582838e173f252d08afd8116c2202d` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x484a1b29ed1ea038dbd75d7c7293714343363122` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48fd0a91ff0660dbb9882c538184c0c0bb25a115` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x496000e12f6d5a2ec4512a6be34fe36ba84e6349` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49814574e634538985049db7e2ae60fff3e19600` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a85b128ebdafc24d5cb611e161376ffdeceb289` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b13dd76de990db9a2dab58d35c2c02e5e3ae848` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4bc735ef24bf286983024cad5d03f0738865aaef` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c76f02e484e8ce9b6c2358cf9624babc5531e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4dacfb8ddf3067da0787fc31409abd40b052b2f9` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ee1f9ec1048979930ac832a3c1d18a0b4955a02` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f861f14246229530a881d32c8d26d78b8c48be6` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5082d93991dfcc69f57a27cec63edee1b8c22757` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50834f3163758fcc1df9973b6e91f0f0f0434ad3` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5265846205081df808b2111ebce5899811b62fc5` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x54a82bc6c6540f95c0b84690773635acc97a92ff` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x552c92c0c09a73d569ab52ff4c17a153c3472be3` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a0f8231e89264e9fe7555896724e8fb1b7b6e23` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ab0b1e2604d4b708721bc3cd1ce962958b4297e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ba6ff4024936412bc402bccd6a5ec44441184b8` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d750cc68ff61e2d68930003f77241f7346adc84` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ddc9a020c34d00be5fb042f797a89beb0480dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5e4c65194f6f33a8bf7e9b95f1d0ca9d611f6d62` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fb73f7af8a29297953d3611422826039338e5b4` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fb8e23065c362080e540e01e0bd4119b6cb53fe` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x605ea726f0259a30db5b7c9ef39df9fe78665c44` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62619470fcba2ae5c2dc22c18cf5251c09c1e618` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x626fd7e1bbd2bbfa91260a1f7e485ce2286231a7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6303c35d49b13016a6acef5414893fa7519e6da0` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x639b7cd102a1c5bab71c54f88d41e894215c54e2` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x639fe6ab55c921f74e7fac1ee960c0b6293ba612` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x660e7af290f540205a84dccc1f40d0269fc936f5` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6662e348b2710bddfb69a1356482e2cf1c27dd7c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x66b074afc32cafd8e5518fa061701cf84789fd25` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x670bd6d743fa996dc512e2c652b7c8ffa8e7c23f` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x671ee94ece3c0d19d0f69cb1718aa9150daa8ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x674a6d60637891c63116218c38a9a49be07d21bc` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67db13c76ce77e8feef9b500616162ec142597ac` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x682c4f55135167930cbe5ce77ac44fb9a03b8e73` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69b798425cfff3ae962f6118fd6d6646c829a8c5` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69ff5b330f579229f9a842b9dd215b8e6833301d` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6aa147e11e423f529bedaed75f3128d5fbe67939` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ab8414a33065d4889049f6ebd202f1cb5e45537` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b22717a43c639b3055de40911d09d8be23f3c54` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b37301d8723009de204baf49e9af6d4d37fe654` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6bc7ff3c21f005684ef834fba4d88459e988ccdc` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c77960beb512d955cce2d5eaa1ea20a388ba9a2` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ce185860a4963106506c203335a2910413708e9` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6d77f5f03e97ce24606b1e9517be955d6852a4ea` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6fabee62266da6686ee2744c6f15bb8352d2f28d` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ffbc6339dd46a7e0513d4887106349214c05505` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70001968d6ee8f909de9e730e5b4e586565bbbf9` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x703389807836463cff0cb01142de903a74e509c4` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70e48a135f76ba31b47fe944e769e052a8feb849` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x726a96f31846f586e6a4c72f73c3db671986a002` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x72b424c9a254481626535dbb1aa3175c08f15943` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x730a28c2b674e7d2c3e168337bfb2dd82ac1a67d` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7399107df5344e0b928e75f3acfa90569ec20848` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x745ab5b69e01e2be1104ca84937bb71f96f5fb21` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7537f8c0f8f7e7def07bf9e91e636e55881c7a66` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75dd106b46017f9b5bf2c468f29ee55f410b991c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76998c22eea325a11dc6971cedcf533e9740f854` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x778356313a7419eec9d0762bf15795a771e0cd36` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77d76ea1a5a2616275d50350b4c796aaef7ce0aa` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78aabb7a55508bbcc3a76d2dfd9ad4ff97afed7a` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a58648caea88e042767823723af266dc6c4c4d9` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a8a9ad4aee9b8cf491de61c03834eb364a4eed1` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7aaee6ad40a947a162deab5afd0a1e12be6ff871` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b5fdbe00ed829e97020dc94dfa65c6533e6ab87` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c7dffec76f590e9648ea468ba2fdd0a9892a595` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c8e67de37937bce98116c605053ed06826691ad` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82ba56a2fadf9c14f17d08bc51bda0bdb83a8934` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84ad1cb9fde786c00a77b7539344ad3c66a616f5` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85bb02e0ae286600d1c68bb6ce22cc998d411916` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86e53cf1b870786351da77a57575e79cb55812cb` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86e5d529cb7caef5c475aab0727a84739e12ea3f` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x875c69da7ae092e4dc277171e9c373718ddb25e2` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87a79519345922e2babcef6b8ee3674b90bb9f7f` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8883045300eaf3b1bb1b3b17f9b4d70eff50212a` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x88ac7bca36567525a866138f03a6f6844868e0bc` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8abe008b267c82199ec81e7f80ee4dc3a3545c82` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8afe9b0e7c131b6a7e749d6e967751f40e4df5d6` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b48e1a576d47eb8bfe13d54d30ac2251c9f1a8a` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8fcb0f3715a82d83270777b3a5f3a7cf95ce8eec` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x920d90b3953b3c90b06ebe8579b0215d6801da54` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x923b42ae13dac73191949c1b124cc78d2b8e7719` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x926eed7973ebc57a8767659c5b35b9a0bab6302f` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x92e6b837362fabe1adf1d11a4255884e5f4dd939` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x942d00008d658dbb40745bbec89a93c253f9b882` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x94cd888bea0de39dd0b41396a9311c5212635eb7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9854e9a850e7c354c1de177ea953a6b1fba8fc22` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a7fb1b3950837a8d9b40517626e11d4127c098c` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b8ddcf800a7bfcdebad6d65514de59160a2c9cc` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bda3a26361b6021b5a4df6e77e2cfb3a54a967b` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c917083fdb403ab5adbec26ee294f6ecada2720` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ca3d04bdf90ddc0074ea57d3e2d331cd4b2d5a2` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ee96caa9972c801058caa8e23419fc6516fbf7e` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0a62496c42627379d865618a00849239ff69e66` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0e9a602b8060e1828be7ee4626e086bddbd2f99` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa14d53bc1f1c0f31b4aa3bd109344e5009051a84` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1c0bd64affaf53e7674e2a6c5df6b80a4fb80d3` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa3403cbd8db989ed2204a51f9f70945bf5b2cfb7` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa44bcd128e99188565c4849cdffeea9c773f74ec` | non_address_book | unknown | unknown | unverified | n/a | `0x88e104d83599dab09050b4fe9486b3dfa2d3c0de` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/lido/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [See [audit report]().](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [See [formal verification report]() for more details.](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Direct | address | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V7_1%20Audit%20Report.pdf) | Composable Security | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | address | matched | 2 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Smart%20Contracts%20Security%20Assessment%20Report%20fix%20review%2003-26.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 1 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | address | matched | 3 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20BLS%20Library%20Security%20Assessment%20Report%20v2.0%20-%2001-2026.pdf) | Sigma Prime | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20CSM%20Performance%20Oracle%20Security%20Audit%20Report%2001-26.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20Security%20Audit%20Report%2001-2026.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Vault%20Wrapper%20Report%2001-2026.pdf) | Ackee Blockchain | Audit | 2026-02 | fresh | Direct | address | no match | 0 | 0 | 0 | 14 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Audit%20Report%20-%2012-2025.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 6 | 2 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Formal%20Verification%20Report%20-%2012-2025.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 5 | 2 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Oracle%20V7%20Audit%20Report%20-%2012-2025.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20V3%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20V3%20Easy%20Track%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 10 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/Consensys%20Diligence%20Lido%20V3%20Security%20Audit%20-%2011-2025.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 6 | 1 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Stonks%202%20Audit%20Report%2012-25.pdf) | Ackee Blockchain | Audit | 2026-02 | fresh | Direct | address | no match | 0 | 0 | 0 | 8 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Lido%20LDO%20Revesting%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2025-12 | fresh | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20V3%20Oracle%20V7%20Audit%20Report%20-%2012-2025.pdf) | Composable Security | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20Security%20Audit%20Report%2009-25.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20WstETH%20Staker%20Security%20Audit%20Report%2009-2025.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Triggerable%20Withdrawals%20Audit%20Report%2009-25.pdf) | Ackee Blockchain | Audit | 2025-09 | fresh | Direct | contract_name | matched | 5 | 1 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V6%20Audit%20Report.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [See [full report]() for more details](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V6_0_2%20Audit%20Report.pdf) | Composable Security | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Easy%20Track%20CSM%20v2%20Security%20Audit%20Report%2009-2025.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Community%20Staking%20Module%20v2%20Audit%20Report%2009-2025.pdf) | Ackee Blockchain | Audit | 2025-09 | fresh | Direct | address | matched | 14 | 0 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Triggerable%20Withdrawals%20and%20CSM%20v2%20Audit%20Report%2009-2025.pdf) | Statemind | Audit | 2025-09 | fresh | Direct | contract_name | matched | 15 | 4 | 0 | 30 | high |
| [report](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20v1.0.1%20Hotfix%20Review%20Report%2008-2025.pdf) | Certora | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | medium |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Escrow%20Fix%20Review%20Report%2008-2025.pdf) | Statemind | Audit | 2025-08 | fresh | Direct | address | matched | 8 | 0 | 0 | 26 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V5_4_1%2008-25.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Code4rena%20CSM%20V2%20Audit%20Report%2008-2025.pdf) | Code4rena | Contest | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | medium |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20CSM%20Security%20Audit%20Report%2007-2025.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | matched | 11 | 2 | 0 | 23 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/zk/Nethermind_LIDO_ACCOUNTING_ZK_ORACLE_FINAL.pdf) | Nethermind | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Deployment%20and%20Voting%20Script%20Review%20Report%2006-2025.pdf) | Statemind | Audit | 2025-06 | aging | Direct | address | matched | 5 | 0 | 0 | 31 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V5_2%2006-25.pdf) | Composable Security | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20RMC%20EasyTrack%20Security%20Audit%20Report%2005-2025.pdf) | yAudit | Audit | 2025-05 | aging | Direct | address | matched | 3 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Oracle%20v5%2004-25.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20v5%2004-25.pdf) | Composable Security | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Community%20Staking%20Module%20Report%2004-25.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | address | matched | 4 | 0 | 0 | 16 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeal%20Deployment%20Validation%2003-2025.pdf) | Statemind | Audit | 2025-03 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20Audit%20Report%2002-2025.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 41 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/OpenZeppelin%20Dual%20Governance%20Re-Audit%20Report%2002-2025.pdf) | OpenZeppelin | Audit | 2025-02 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 41 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Runtime%20Verification%20Dual%20Governance%20Formal%20Verification%20Report%2002-2025.pdf) | Runtime Verification | Audit | 2025-02 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 2 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/OpenZeppelin%20Dual%20Governance%20Audit%20Report%2011-2024.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 38 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Staking%20Router%20v2%20Report%2010-24.pdf) | Ackee Blockchain | Audit | 2024-10 | aging | Direct | address | matched | 2 | 0 | 0 | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Community%20Staking%20Module%20Report%2010-24.pdf) | Ackee Blockchain | Audit | 2024-10 | aging | Direct | address | matched | 4 | 0 | 0 | 18 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20CSM%20Security%20Audit%20Report%2010-24.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | matched | 11 | 2 | 0 | 23 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Oracle%20Security%20Audit%20Report%2010-24.pdf) | yAudit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Audit%20Report%2010-2024.pdf) | Statemind | Audit | 2024-10 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 24 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20Draft%20Audit%20Report%2009-2024.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | matched | 7 | 0 | 0 | 27 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Simple%20Delegation%20audit%20report%2007-24.pdf) | Ackee Blockchain | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20Simple%20Delegation%20audit%20report%2007-24.pdf) | Statemind | Audit | 2024-03 | stale | Direct | address | matched | 1 | 1 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Lido%20Sanity%20Checker%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Code%20Assessment%20of%20LIP-23%20Negative%20Rebase%20Checks%20Smart%20Contracts%2006-24.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeal%20Deployment%20Validation%2004-2024.pdf) | Statemind | Audit | 2024-11 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Stonks%20Audit%20Report%2003-24.pdf) | Ackee Blockchain | Audit | 2024-03 | stale | Direct | address | matched | 1 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20Simple%20DVT%20Easy%20Track%20Factories%20Audit%20Report%2001-24.pdf) | Statemind | Audit | 2023-12 | stale | Direct | address | matched | 7 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Pessimistic%20Lido%20Stonks%20Audit%20Report%2012-23.pdf) | Pessimistic | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20roles%20analysis%2010-2023.pdf) | Statemind | Audit | 2023-10 | stale | Direct | contract_name | matched | 5 | 2 | 0 | 51 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20Easy%20Track%20Smart%20Contracts%20Security%20Audit%20Report%2010-2023.pdf) | yAudit | Audit | 2023-10 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Upgrade%20Template%20Audit%20Report%2005-2023.pdf) | Statemind | Audit | 2023-05 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Deployment%20Validation%2005-2023.pdf) | Statemind | Audit | 2023-05 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 37 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Hexens%20Lido%20V2%20Oracle%20Security%20Review%20Report%2005-23.pdf) | Hexens | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20V2%20On-chain%20Audit%20Report%2006-23.pdf) | Oxorio | Audit | 2023-05 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 39 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20V2%20Off-chain%20Audit%20Report%2006-23.pdf) | Oxorio | Audit | 2023-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 64 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Hexens%20Lido%20V2%20Smart%20Contract%20Audit%20Report%2004-23.pdf) | Hexens | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 25 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Camp%20Lido%20V2%20Contest%20Report%2004-23.pdf) | MixBytes | Audit | 2023-03 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 32 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeals%20Audit%20Report%2004-2023.pdf) | Statemind | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V2%20Audit%20Report%2004-23.pdf) | Certora | Audit | 2023-04 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 39 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Audit%20Report%2004-23.pdf) | Statemind | Audit | 2023-04 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 33 | high |
| [See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20-%20dc4bc%20Security%20Assessment%20Report%20-%20v2.2%2003-2023.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Lido%20Staking%20Router%20audit%20report%2002-23.pdf) | ChainSecurity | Audit | 2023-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 15 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20TRP%20Vesting%20Escrow%20Audit%20Report%2001-2023.pdf) | Statemind | Audit | 2023-01 | stale | Direct | address | matched | 1 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20MEV-Boost%20relay%20allowlist%20Security%20Audit%20Report%2009-2022.pdf) | yAudit | Audit | 2022-09 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Reserve%20Fund%20Audit%20Report%2009-2022.pdf) | Statemind | Audit | 2022-09 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Easy%20Track%20Payment%20Processor%20with%20limits%2009-2022.pdf) | Statemind | Audit | 2022-09 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 16 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Code%20Assessment%20of%20the%20Lido%20Smart%20Contracts%20Report%2008-22.pdf) | ChainSecurity | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Note%20on%20Deployed%20Code%20Compliance%2008-22.pdf) | MixBytes | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Two-Phase%20Voting%20Security%20Audit%20Report%2006-2022.pdf) | yAudit | Audit | 2022-06 | stale | Direct | address | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Jumpgate%20Smart%20Contracts%20Security%20Audit%20Report%2005-2022.pdf) | yAudit | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido_Protocol_Security_Audit_Report%2005-2022.pdf) | MixBytes | Audit | 2022-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [The implementation has been audited by MixBytes() and considered safe. Read the full report from [here]().](https://github.com/lidofinance/audits/blob/main/MixBytes%20AAVE%20stETH%20integration%20Security%20Audit%20Report%2002-22.pdf) | yAudit | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20In-protocol%20Coverage%20Security%20Audit%20Report%2002-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Deposit%20Security%20Module%20Security%20Audit%20Report%2002-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2001-2022.pdf) | yAudit | Audit | 2022-01 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Aragon%20Voting%20Security%20Audit%20Report%2010-2021.pdf) | yAudit | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20Easy%20Track%20Smart%20Contract%20Security%20Review%20Report%20v2.0%2010-2021.pdf) | Sigma Prime | Audit | 2021-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20wstETH%20Security%20Audit%20Report%2009-2021.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Easy%20Track%20Security%20Audit%20Report%2009-2021.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 13 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%201inch%20Rewards%20Manager%20Security%20Audit%20Report%2009-21.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2008-2021.pdf) | yAudit | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2007-2021.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20stETH%20Price%20Feed%20Security%20Audit%20Report%2006-2021.pdf) | yAudit | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20stETH%20price%20oracle%20Security%20Audit%20Report%2005-2021.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Withdrawals%20Manager%20Stub%20Security%20Audit%20Report%2005-2021.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20ETH2%20Oracle%20Security%20Audit%20Report%2004-2021.pdf) | yAudit | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20Finance%20Security%20Assessment%20Report%20v2.1.pdf) | Sigma Prime | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/QSP%20Lido%20Report%2012-2020.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/wstETH-on-Lisk-2025-04-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Unichain-2025-02-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-02 | aging | Direct | address | matched | 7 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Soneium-2025-01-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-01 | aging | Direct | address | no match | 0 | 0 | 0 | 9 | high |
| [See the [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Starknet-2024-11-14-deployment-verification.pdf) | Nethermind | Audit | 2024-11 | aging | Direct | address | matched | 1 | 1 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Zircuit_2024-10-02-Quantstamp-wstETH-deployment-verification.pdf) | Quantstamp | Audit | 2024-09 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |
| [See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details.](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 2 | high |
| [See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details.](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | matched | 3 | 2 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Mode-2024-07-18-Cantina-wstETH-deployment-verification.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/bsc/MixBytes%20Lido%20a.DI%20Security%20Audit%20Report%2007-2024.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | matched | 4 | 1 | 0 | 24 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Optimism-2024-06-Ackee-Blockchain-Audit-report.pdf) | Ackee Blockchain | Audit | 2024-06 | stale | Direct | contract_name | matched | 5 | 3 | 0 | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Optimism-2024-06-MixBytes-Audit-Report.pdf) | MixBytes | Audit | 2024-06 | stale | Direct | address | matched | 7 | 0 | 0 | 16 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Scroll-2024-01-Lido-Gateway-Zellic-Audit-Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Lidea-2023-12-Diligence-Custom-Bridged-Token-Audit-Report.pdf) | Consensys Diligence | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Linea-2023-12-OpenZeppelin-Bridge-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 22 | high |
| [Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified.](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2023-10-Cantina-Audit-Report.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Linea-2023-10-Diligence-Cross-Chain-Governance-Executor-Audit-Report.pdf) | Consensys Diligence | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Mantle-2023-09-Verilog-L2-ERC20-Token-Bridge-Audit-Report.pdf) | Verilog | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Governance-Crosschain-Bridges-2022-08-Oxorio-Audit%20Report.pdf) | Oxorio | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Lido-L2-2022-07-Oxorio-Smart-Contracts-Security-Audit-Report.pdf) | Oxorio | Audit | 2022-07 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 11 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/polygon/Oxorio%20Lido%20on%20Polygon%20V2%2008-2022.pdf) | Oxorio | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/polygon/Oxorio%20Lido%20on%20Polygon%20pr69%20report%2004-2022.pdf) | Oxorio | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding.](https://github.com/mellow-finance/mellow-lrt/blob/85370ae372f95d057dc9806ec98fde24e5ed4d29/audits/202406_Statemind/Mellow%20LRT%20report%20with%20deployment.pdf) | Immunefi | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [- [**Audit Report for v8.0.1 (Composable Security)**]()](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2025-07-28_Sherlock_Mellow-Core-Vaults.pdf](https://docs.lido.fi/audits/mellow/2025-07-28_Sherlock_Mellow-Core-Vaults.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [2025-09-03_Nethermind_Mellow-Core-Vaults.pdf](https://docs.lido.fi/audits/mellow/2025-09-03_Nethermind_Mellow-Core-Vaults.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [2025-10-15_Nethermind_NM-0682_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-10-15_Nethermind_NM-0682_Mellow.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-11-17_Nethermind_NM-0703_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-11-17_Nethermind_NM-0703_Mellow.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-11-19_Nethermind_NM-0735_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-11-19_Nethermind_NM-0735_Mellow.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-12-09_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-12-09_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Mellow Core Vaults](https://docs.lido.fi/assets/files/2025-07-28_Sherlock_Mellow-Core-Vaults-b8fffecfc7c40da7dac9d1654f59ca1e.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Mellow Core Vaults](https://docs.lido.fi/assets/files/2025-09-03_Nethermind_Mellow-Core-Vaults-2d0fc4a5c603de11cd338ba30110cdaa.pdf) | Code4rena | Contest | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [NM-0682 Migrator](https://docs.lido.fi/assets/files/2025-10-15_Nethermind_NM-0682_Mellow-bf1ce27d0e36bff7ad7cb26077705428.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0703 Oracle Submitter](https://docs.lido.fi/assets/files/2025-11-17_Nethermind_NM-0703_Mellow-61713de8a6d07b1e1efea20c6af6ab61.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0735 Swap Module](https://docs.lido.fi/assets/files/2025-11-19_Nethermind_NM-0735_Mellow-dfe7f5e4b179a46c4dcacfa8598769d9.pdf) | Code4rena | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0758 SyncDepositQueue](https://docs.lido.fi/assets/files/2025-12-09_Nethermind_NM-0758_Mellow-882ef5c8bc26ba2870ebb6655a989718.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM-0798 BurnableTokenizedShareManager](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0812 Redeem Queue Fee Fix](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0758 SyncDepositQueue](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM-0891 PermissionedChainlinkOracle](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17721] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only general categories like 'smart contracts' and 'applications' are mentioned.
- [17722] See [audit report](). — matched: Two contracts in scope: CircuitBreaker and Registry (library).
- [17723] See [formal verification report]() for more details. — matched: Only CircuitBreaker and its harness are in scope; Registry is a library, not a contract.
- [17724] See [full report]() for more details. — matched: Two contracts in scope: CircuitBreaker and Registry. Audit date from cover page.
- [17725] See [full report]() for more details. — no match: The audit scope lists Python files (constants.py, events.py, staking_vaults.py, block.py, variables.py) and directories, not smart contracts. No Solidity or smart contract names were found.
- [17726] See [full report]() for more details. — no match: Scope table lists two files: MellowStrategyFactory.sol and MellowStrategy.sol. StrategyCallForwarder is a deployed contract mentioned in the report but not in the scope table; however, it is part of the audited system.
- [17727] See [full report]() for more details. — matched: Three contracts in scope: CuratedSubmitExitRequestHashes, SDVTSubmitExitRequestHashes, and SubmitExitRequestHashesUtils. Audit date is March 18, 2026 from the title.
- [17728] See [full report]() for more details. — matched: Extracted from Project Scope and Protocol Overview sections. The report lists Essential Layer contracts (StakingVault, VaultHub, LazyOracle, OperatorGrid, PredepositGuarantee) and Utility Layer contracts (VaultFactory, Dashboard) as part of the audited system. VaultHub.sol is explicitly referenced in findings. Date inferred from 'January 2026' on cover page.
- [17729] See [full report]() for more details. — matched: Scope explicitly lists LazyOracle.sol and VaultHub.sol. Other contracts mentioned (OperatorGrid, stVault) are explicitly out of scope.
- [17730] See [full report]() for more details. — matched: Three contracts in scope: AlterTiersInOperatorGrid, RegisterGroupsInOperatorGrid, RegisterTiersInOperatorGrid. Audit date from cover page.
- [17731] See [full report]() for more details. — no match: Only BLS.sol is in scope; PredepositGuarantee.sol is mentioned but not in scope.
- [17732] See [full report]() for more details. — no match: Only TwoPhaseFrameConfigUpdate is in scope; CSFeeOracle and off-chain module are explicitly out of scope.
- [17733] See [full report]() for more details. — no match: Extracted 17 contract names from the scope table and mainnet deployments section. Audit date derived from the latest commit date (29.01.2026) in the versions log, which is the final commit before the report.
- [17734] See [full report]() for more details. — no match: Extracted contracts from scope listing and deployment verification section. Audit date from document revision table (February 2, 2026).
- [17735] full report — matched: Extracted contract names from the Project Scope table and findings sections. The audit date is derived from the cover page 'January 2026' and the work period ending January 8th, 2026, so the last day of January 2026 is used.
- [17736] See [full report]() for more details. — matched: Extracted contract names from scope table, findings, and formal verification properties. Audit date from 'December 4th, 2025' in project overview.
- [17737] See [full report]() for more details. — matched: Extracted contract names from scope file list and findings. Audit date from 'December 10 2025' in Project Overview.
- [17738] full report — matched: Scope explicitly lists Lido.sol and Accounting.sol as the two contracts in scope. Audit date is January 15, 2026 from the cover page.
- [17739] full report — matched: All contracts listed in the 'Scope of Audit' table on page 4. The audit date is from the cover page: 'JANUARY 15, 2026'.
- [17740] full report — matched: Extracted contracts from scope section and findings. Audit date is the end of the fix-review period (November 14, 2025).
- [17741] See [full report]() for more details. — no match: Scope defined as all Solidity contracts except stubs and test directories. Contracts verified on mainnet are explicitly listed. Additional contracts (Ownable, AssetRecoverer) are referenced in findings and trust model.
- [17742] See [full report]() for more details. — no match: Only one contract in scope: LDORevesting.sol. Audit date from cover page and timeline.
- [17743] See [full report]() for more details. — no match: Extracted contract/module names from affected files in findings and scope section listing Python files. The scope includes Python files from the lido-oracle repository, not Solidity contracts. The audit date is the report date: 2025-12-12.
- [17744] See [full report]() for more details. — no match: Three contracts in scope: CuratedSubmitExitRequestHashes, SDVTSubmitExitRequestHashes, and SubmitExitRequestHashesUtils. Audit date from title page.
- [17745] See [full report]() for more details. — matched: Only one contract in scope: WstethStaker. Audit date from cover page and timeline.
- [17746] See [full report]() for more details. — matched: All contracts listed in the scope section of the executive summary (Revision 1.0) were extracted. The audit date is the final report date (16.9.2025) from the cover page and appendix.
- [17747] See [full report]() for more details. — matched: Scope includes Python files from lido-oracle repo and Solidity contracts for CSM V2. Main contracts: distribution.py, CSStrikes.sol, CSOracle, CSM, CSParametersRegistryContract, CSStrikesContract.
- [17748] See [full report]() for more details — no match: The report is a security consultation for Lido's Oracle V6 upgrade, but the scope section only mentions a GitHub repository and commit ID, not specific contract names. No Solidity files or contract names are listed.
- [17749] See [full report]() for more details. — matched: Only one contract in scope: CSMSetVettedGateTree. VettedGate is explicitly out of scope.
- [17750] See [full report]() for more details. — matched: Scope defined as all Solidity files in src directory except interfaces. Deployment verification lists 14 contracts with addresses. Additional contracts from findings included.
- [17751] See [full report]() for more details. — matched: Extracted from the 'Project Scope' section listing files in scope. Audit date from the timeline: 06-06-2025 - 19-09-2025, using end date.
- [17752] report — matched: The report scope mentions 'all changes to smart contracts within the specified commit' but only explicitly names 'Escrow' in the formal verification section. No file paths or other contract names are provided.
- [17753] See [note]() contents for more details. — matched: Extracted 34 contract names from the scope section listing files. Also extracted deployment addresses for two mainnet contracts. Audit date inferred from timeline '18-08-2025 - 19-08-2025' as end date.
- [17754] See [full report]() for more details. — no match: The scope section references a GitHub repository and commit ID but does not list specific contract names or file paths. The report discusses changes to an Oracle system and mentions contracts like NodeOperatorsRegistry, CSVerifier, and DSM module, but these are not explicitly listed as in-scope contracts. No contract names could be reliably extracted.
- [17755] See [full report]() for more details. — matched: Scope section mentions 30 smart contracts but does not list them individually. Only CSStrikes and VettedGate are named in findings.
- [17756] See [full report]() for more details. — matched: Extracted 34 contract names from the scope table and file listings. Audit date from cover page: JULY 18, 2025.
- [17757] See [full report]() for more details. — no match: Extracted contract names from Audited Files tables (Section 2) and file paths. Audit date from Final Report date on page 2.
- [17758] See [note]() contents for more details. — matched: Extracted all contracts from the scope listing and deployment table. Audit date is the end date of the timeline (05-06-2025).
- [17759] See [full report]() for more details. — no match: The report is a security consultation for a hotfix in the Lido Oracle repository. The only contract explicitly named is NodeRegistry. The scope sections refer to a GitHub repository and commit IDs, not specific contract files. No other contract names are mentioned.
- [17760] See [full report]() for more details. — matched: All four contracts explicitly listed in scope table. Audit date from cover page.
- [17761] See [full report]() for more details. — matched: Extracted contract/module names from scope table and findings. The audit report covers Python modules, not Solidity contracts. The date is from the cover page.
- [17762] See [full report]() for more details. — no match: Extracted contract names from affected files in findings and scope section listing Python files in src/ directory.
- [17763] See [full report]() for more details. — matched: Extracted contract names from scope descriptions, deployment verification addresses, and findings sections. Audit date from final report date (08.04.2025).
- [17764] See [note]() contents for more details. — no match: Scope table lists GateSealFactory.vy and GateSeal.vy (with multiple instances). Audit date from title: 10-03-2025.
- [17765] See full [report]() for more details. — matched: Extracted all contracts, interfaces, libraries, and types listed in the scope section on page 5. Audit date inferred from 'February 2025' in the title and 'January 10 2025 to February 7 2025' work period; used end of February as the report date.
- [17766] See full [report]() for more details. — matched: All contracts listed in the Scope section of the audit report.
- [17767] See full [report]() for more details. — matched: Audit report for Lido Dual Governance protocol. Main contracts: DualGovernance, Escrow, EmergencyProtectedTimelock, TimelockedGovernance. External models: StETH, WithdrawalQueue. Executor is also referenced.
- [17768] See full [report]() for more details. — matched: Extracted all contracts, interfaces, libraries, and types listed in the Scope section. Excluded three committee contracts that were removed from scope.
- [17769] See [full report]() for more details. — matched: Scope explicitly listed in Executive Summary Revision 1.0 and deployment verification addresses provided in Revision 1.2.
- [17770] See [full report]() for more details. — matched: The audit report covers the Lido Community Staking Module. The scope includes all files in the src directory (excluding interfaces) of the community-staking-module repository and the CSMSettleELStealingPenalty.sol file from the easy-track repository. The deployment verification section lists deployed contracts with addresses, confirming they are in scope. The audit date is the deployment verification date (14.10.2024) as the final report revision.
- [17771] See [full report]() for more details. — matched: Extracted 34 contract names from the scope table and file listings. Audit date from cover page: Oct 15, 2024.
- [17772] See [full report]() for more details. — no match: Extracted contract names from scope table and findings. The audit report covers Python files for Lido Oracle off-chain service, not on-chain smart contracts. The names are modules and services.
- [17773] See full [report]() for more details. — matched: Extracted 32 contract names from the scope section listing files. Audit date from timeline: 12-09-2024 - 25-10-2024, using end date.
- [17774] See full [report]() for more details. — matched: Extracted 34 contract names from the scope section on page 5. Audit date inferred from work period end date (September 5, 2024).
- [17775] See [full report]() for more details. — matched: Only one contract, Voting.sol, is explicitly listed in scope. The report covers multiple revisions but the scope remains the same contract.
- [17776] See [full report]() for more details. — matched: Only one contract, Voting.sol, is in scope. The audit date is the end date of the timeline '04-03-2024 - 12-03-2024'.
- [17777] See [full report]() for more details. — no match: Two contracts in scope: SafeCastExt and OracleReportSanityChecker. Audit date from cover page.
- [17778] See [full report]() for more details. — no match: Scope explicitly lists two files: OracleReportSanityChecker.sol and SafeCastExt.sol. Audit date is June 21, 2024 from the cover page.
- [17779] See [note]() contents for more details. — no match: Extracted two contracts from scope: GateSealFactory and GateSeal (blueprint and instance). Audit date from title line.
- [17780] See [full report]() for more details. — matched: Extracted 5 main contracts from scope and 2 inherited contracts from system overview. Audit date from cover page and appendix.
- [17781] See [full report]() for more details. — matched: All 9 contracts explicitly listed in scope section and deployment addresses provided.
- [17782] See [full report]() for more details. — matched: Scope includes entire repository; contracts identified from findings and notes.
- [17783] See [full report]() for more details. — matched: The report is a role analysis of Lido protocol contracts. All contracts mentioned in the role analysis sections are considered in scope. The audit date is the end date of the timeline '28-08-2023 - 20-10-2023'.
- [17784] See [full report]() for more details. — matched: Scope section explicitly lists four contracts. Audit date is from the cover page.
- [17785] See [full report]() for more details. — no match: Only one contract file is in scope: ShapellaUpgradeTemplate.sol. Other contracts mentioned (e.g., Burner, HashConsensus, DepositSecurityModule, StakingRouter) are referenced in findings but not listed as in-scope files.
- [17786] See [note]() contents for more details. — matched: Extracted all contracts listed in the 'Project Scope' section and the deployment table. The audit date is the final commit date of the ShapellaUpgradeTemplate (2023-05-10), which is the latest date mentioned.
- [17787] See [full report]() for more details. — no match: The audit covers off-chain Python code (prediction.py, test_prediction.py) from Lido V2 Oracle, not smart contracts. No Solidity contracts are in scope.
- [17788] See [full report]() for more details. — matched: Extracted 48 contract names from the audit scope section (pages 11-12) and the report date from the cover page.
- [17789] See [full report]() for more details. — matched: Extracted all source files listed in the Audit Scope section (pages 10-12). The audit date is from the cover page: 'MAY 10, 2023'.
- [17790] See [full report]() for more details. — matched: Extracted from Lido V2 audit report by Hexens. Scope includes all contracts mentioned in findings and scope section. Audit completion date is 14.04.2023.
- [17791] See [full report]() for more details. — matched: Extracted 41 contract names from the scope table and additional files listed in the report. The audit date is inferred from the latest commit date in the timeline (07.04.2023) which is the date of the final fix commit, likely the report publication date.
- [17792] See [full report]() for more details. — no match: Scope explicitly lists GateSealFactory.vy and GateSeal.vy. Audit date range ends 20-04-2023.
- [17793] See [full report]() for more details. — matched: Extracted 48 contract names from the on-chain scope list and file paths. Audit date from cover page: 'Date of report release: 27 April 2023'.
- [17794] See [full report]() for more details. — matched: Extracted 41 contract names from the scope section listing files. Audit date from timeline: 13-02-2023 - 28-04-2023, using end date.
- [17795] See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. — no match: The audit report covers the dc4bc project (Distributed Custody for the Beacon Chain) by Lido Finance. The scope includes multiple Go source files and binaries. The audit date is March 2023, interpreted as the last day of the month.
- [17796] See [full report]() for more details. — matched: Extracted contracts from scope table and findings. MemUtils, IStakingRouter, ILido are referenced but not in scope table; included as they are part of the audited codebase.
- [17797] See [full report]() for more details. — matched: Three contracts in scope: VestingEscrow, VestingEscrowFactory, VotingAdapter. Audit date from title '24-01-2023 - 27-01-2023' using end date.
- [17798] See [full report]() for more details. — matched: Single contract in scope: MEVBoostRelayAllowedList.vy, deployed on mainnet at 0xf95f069f9ad107938f6ba802a3da87892298610e. Audit date from title: 05-09-2022 - 09-09-2022, using end date.
- [17799] See [full report]() for more details. — matched: Only one contract in scope: InsuranceFund.sol. Audit date is the end date of the timeline (15-09-2022).
- [17800] See [full report]() for more details. — matched: All contracts listed in the Project Scope section were extracted. The audit date is the end date of the timeline (30-09-2022).
- [17801] See [full report]() for more details. — matched: All contracts listed in the scope table on page 5 are extracted. The audit date is from the cover page: 'August 23, 2022'.
- [17802] See [note]() contents for more details. — matched: All contracts listed in the scope section of the audit report.
- [17803] See [full report]() for more details. — matched: Two contracts in scope: Voting.sol and MiniMeToken.sol. Audit date from cover page.
- [17804] See [full report]() for more details. — no match: Two contracts in scope: AssetRecoverer.sol and Jumpgate.sol. Audit date from title page.
- [17805] See [full report]() for more details. — matched: Extracted 16 contracts from the scope table on page 7. Audit date from cover page: May 24, 2022.
- [17806] The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). — no match: Extracted contract names from the files listing and project overview. SignedSafeMath is included because it is referenced in a finding (WRN-3) as a file under audit.
- [17807] See [full report]() for more details. — no match: Three contracts explicitly listed in scope with file paths and deployed addresses.
- [17808] See [full report]() for more details. — no match: Extracted 9 contracts from the scope section and file listing. Audit date from cover page.
- [17809] See [full report]() for more details. — no match: All six contracts explicitly listed in scope with file paths and deployed addresses.
- [17810] See [full report]() for more details. — matched: Only one contract, Voting.sol, is in scope. Audit date is October 01, 2021 from the title and dashboard.
- [17811] See [full report]() for more details. — matched: Extracted from Lido Easy Track audit report. Scope includes EasyTrack, EasyTrackStorage, EVMScriptExecutor, EVMScriptFactoriesRegistry, EVMScriptPermissions, EVMScriptCreator, MotionSettings, RewardProgramsRegistry, AddRewardProgram, BytesUtils, TrustedCaller. Audit date is October 2021.
- [17812] See [full report]() for more details. — matched: Two contracts in scope: WstETH.sol and IStETH.sol. Audit date is September 07, 2021.
- [17813] See [full report]() for more details. — matched: All contracts listed in the 'FILES LISTING' section are in scope. Audit date is September 06, 2021 from the title and project dashboard.
- [17814] See [full report]() for more details. — no match: Only one contract in scope: RewardsManager.vy
- [17815] See [full report]() for more details. — no match: All contracts listed in the FILES LISTING section are in scope. The audit date is August 04, 2021 from the cover page.
- [17816] See [full report]() for more details. — no match: All five contracts listed in the 'FILES LISTING' section are in scope.
- [17817] See [full report]() for more details. — no match: Two contracts in scope: PriceFeedProxy.sol and StEthPriceFeed.vy. Audit date from cover page.
- [17818] See [full report]() for more details. — no match: All five contracts listed in the FILES LISTING section are in scope. The audit date is May 14, 2021 from the cover page.
- [17819] See [full report]() for more details. — no match: Audit report for Lido Finance withdrawals manager stub. Scope includes two contracts: WithdrawalsManagerProxy and WithdrawalsManagerStub.
- [17820] See [full report]() for more details. — no match: Two contracts in scope: LidoOracle.sol and ReportUtils.sol. Audit date from cover page and project dashboard.
- [17821] See [full report]() for more details. — no match: Extracted contracts from scope section and findings. Audit date inferred from 'December, 2020' on cover page.
- [17822] See [full report]() for more details. — no match: Extracted contract names from findings, file signatures, and test results. Audit date from report header.
- [17823] See [full report]() for more details. — no match: Extracted contracts from scope section and deployment verification report. Date inferred from 'APRIL 2025' in header, using last day of month.
- [17824] See [full report]() for more details. — matched: Extracted contract names from the scope table and audit report text. OssifiableProxy is included as it is used as a proxy for multiple contracts in scope. GovernanceBridgeExecutor is also listed in the scope table.
- [17825] See [full report]() for more details. — no match: Extracted contracts from scope table and deployment verification sections. Audit date inferred from 'JANUARY 2024' on cover page, using last day of month.
- [17826] See the [full report]() for more details. — matched: Extracted contracts from scope table and audit report verification section. Date from document title.
- [17827] See [full report]() for more details. — matched: Audit report for Zircuit/Lido proposal to deploy wstETH on Zircuit L2. Scope includes files from lido-l2 and governance-crosschain-bridges repos. Audit date from changelog: 2024-09-24.
- [17828] See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. — matched: Extracted contracts from scope section and deployment scripts. Audit date from cover page.
- [17829] See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. — matched: Extracted contract names from scope section and report body. Audit date from cover page.
- [17830] See [full report]() for more details. — matched: The report is a bytecode and storage verification of wstETH deployment on Mode network. The scope table on page 3 lists all contracts with their addresses on Mode and Base networks. The report date is July 18, 2024 from the cover page.
- [17831] See [full report]() for more details. — matched: Extracted 28 contract names from the scope table in the audit report. Audit date from cover page: Oct 14, 2024.
- [17832] See [full report]() for more details. — matched: Extracted 22 contracts from scope listings in Executive Summary (Revision 1.0 and Revision 1.3). Audit date from cover page and Appendix A.
- [17833] See [full report]() for more details. — matched: Extracted 23 contract names from the scope table and deployment tables. Audit date from cover page.
- [17834] See [full report]() for more details. — no match: All six contracts listed in the 'Programs' subsection of the Scope section (page 9) are extracted. The audit date is from the cover page: 'January 23, 2024'.
- [17835] See [full report]() for more details. — no match: Only one contract in scope: CustomBridgedToken. Audit date inferred from 'December 2023' in header.
- [17836] See [full report]() for more details. — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is from the document header: 'December 7, 2023'.
- [17837] Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. — no match: Extracted contract names from findings context and file paths mentioned in the report. The audit date is from the cover page: 'October 19, 2023'.
- [17838] See [full report]() for more details. — no match: Scope section and Appendix 1 explicitly list two files: LineaBridgeExecutor.sol and IMessageService.sol. The audit date is from the report date (October 11, 2023) as per the Document Change Log.
- [17839] See [full report]() for more details. — matched: Scope section states 'covered the Solidity smart contracts under the folder contracts' and findings reference specific files. Date from cover page.
- [17840] See [full report]() for more details. — matched: Scope section lists 5 contracts. Audit date from cover page.
- [17841] See [full report]() for more details. — matched: All contracts listed in Audit Scope section (1.4) with file paths. Date from cover page.
- [17842] See [full report]() for more details. — no match: Only one contract in scope: L1ERC20Bridge.sol
- [17843] See [full report]() for more details. — no match: Scope section explicitly lists 6 contracts: StMatic.sol, NodeOperatorRegistry.sol, PoLidoNFT.sol, FxStateChildTunnel.sol, FxStateRootTunnel.sol, RateProvider.sol. Audit date is August 3, 2022 from the cover page.
- [17844] See [full report]() for more details. — no match: Scope section explicitly lists PoLidoNFT.sol and StMATIC.sol as the contracts in scope for PR#69.
- [17845] There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. — no match: Extracted 20 contract names from the 'Project Scope' section listing files. Audit date from title: 06-05-2024 - 27-05-2024, using end date.
- [17846] - [**Audit Report for v8.0.1 (Composable Security)**]() — no match: Extracted contract names from scope sections and findings. The scope includes the entire src/ directory of the lido-oracle repository. Specific files mentioned in findings include accounting.py, ejector.py, exit_order_iterator.py, lido_validators.py, state.py, base.py, meta_registry.py, server.py, variables.py, and others. The audit date is explicitly stated as 'Report date: 2026-06-24'.
- [17848] 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf — no match: All contracts listed in the 'Files:' section of the scope are extracted. The audit date is the end date of the contest period (July 14-July 28, 2025).
- [17849] 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is explicitly stated as 'Final Report September 03, 2025' on the cover page.
- [17850] 2025-10-15_Nethermind_NM-0682_Mellow.pdf — no match: Only one contract in scope: Migrator.sol. Audit date from cover page and summary.
- [17851] 2025-11-17_Nethermind_NM-0703_Mellow.pdf — no match: The audit report explicitly states the scope is the OracleSubmitter contract only. The date is from the cover page and summary table.
- [17852] 2025-11-19_Nethermind_NM-0735_Mellow.pdf — no match: The audit report explicitly states the scope is the SwapModule contract in src/utils/SwapModule.sol. The audit date is November 19, 2025, from the cover page and summary table.
- [17853] 2025-12-09_Nethermind_NM-0758_Mellow.pdf — no match: Audit report for Mellow Finance's SyncDepositQueue contract, including inherited SyncQueue. Date from cover page and summary.
- [17854] 2026-01-07_Nethermind_NM-0798_Mellow.pdf — no match: Only one contract in scope: BurnableTokenizedShareManager. Audit date from cover page and summary.
- [17855] 2026-01-21_Nethermind_NM-0812_Mellow.pdf — no match: The scope is a pull request with 2 lines of code; only ShareManager is explicitly named as the contract being modified. No file paths with .sol extension provided.
- [17856] 2026-03-02_Nethermind_NM-0758_Mellow.pdf — no match: Two contracts in scope: SyncDepositQueue and SyncQueue. Audit date is March 02, 2026 from the cover page.
- [17858] Mellow Core Vaults — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is the end date of the audit period (July 14 - July 28, 2025).
- [17859] Mellow Core Vaults — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is explicitly stated as 'Final Report September 03, 2025' on the cover page and in the summary table.
- [17860] NM-0682 Migrator — no match: Only one contract, Migrator, is in scope. Audit date is October 15, 2025 from the summary table.
- [17861] NM-0703 Oracle Submitter — no match: Only one contract, OracleSubmitter, is in scope. The audit report date is November 17, 2025, from the cover page and summary.
- [17862] NM-0735 Swap Module — no match: The audit scope is explicitly limited to the SwapModule contract in src/utils/SwapModule.sol. The report date is November 19, 2025.
- [17863] NM-0758 SyncDepositQueue — no match: Audit report for Mellow Finance's SyncDepositQueue contract. Scope includes SyncDepositQueue.sol and SyncQueue.sol. Audit date is December 09, 2025.
- [17864] NM-0798 BurnableTokenizedShareManager — no match: Only one contract in scope: BurnableTokenizedShareManager. Audit date from cover page and summary.
- [17865] NM-0812 Redeem Queue Fee Fix — no match: The audit report focuses on a pull request that changes the ShareManager contract. No other contracts are explicitly listed in scope.
- [17866] NM-0758 SyncDepositQueue — no match: Two contracts in scope: SyncDepositQueue and SyncQueue. Audit date is March 02, 2026 from the cover page.
- [17867] NM-0891 PermissionedChainlinkOracle — no match: Scope explicitly lists PermissionedChainlinkOracle.sol; SwapModule.sol is referenced in the finding as an audited file.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| See [audit report](). | CircuitBreaker | own contract | CircuitBreaker (selected) `0x6019cb557978296ba3c08a7b73225c0975dfb2f7` — deployed 2026-04-30 16:21:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [audit report](). | Registry | unmatched — not counted | — | listed in scope | no |
| See [formal verification report]() for more details. | CircuitBreaker | own contract | CircuitBreaker (selected) `0x6019cb557978296ba3c08a7b73225c0975dfb2f7` — deployed 2026-04-30 16:21:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [formal verification report]() for more details. | CircuitBreakerHarness | unmatched — not counted | — | Harness contract inheriting CircuitBreaker, used for formal verification. | no |
| See [full report]() for more details. | CircuitBreaker | own contract | CircuitBreaker (selected) `0x6019cb557978296ba3c08a7b73225c0975dfb2f7` — deployed 2026-04-30 16:21:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Registry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MellowStrategyFactory | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MellowStrategy | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StrategyCallForwarder | unmatched — not counted | — | mentioned as deployed contract and in findings | no |
| See [full report]() for more details. | CuratedSubmitExitRequestHashes | own contract | CuratedSubmitExitRequestHashes (selected) `0x4f716ad3cc7a3a5cda2359e5b2c84335c171dcde` — deployed 2026-03-17 15:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SDVTSubmitExitRequestHashes | own contract | SDVTSubmitExitRequestHashes (selected) `0x58a59ddc6aea9b1d5743d024e15dfa4badb56e37` — deployed 2026-03-17 15:52:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SubmitExitRequestHashesUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingVault | own contract | StakingVault (selected) `0x06a56487494aa080dec7bf69128eda9225784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LazyOracle | unmatched — not counted | — | mentioned as foundational contract in Essential Layer | no |
| See [full report]() for more details. | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PredepositGuarantee | unmatched — not counted | — | mentioned as foundational contract in Essential Layer | no |
| See [full report]() for more details. | VaultFactory | own contract | VaultFactory (selected) `0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a` — deployed 2025-12-03 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Dashboard | own contract | Dashboard (selected) `0x294825c2764c7d412dc32d87e2242c4f1d989af3` — deployed 2025-12-03 15:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LazyOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AlterTiersInOperatorGrid | own contract | AlterTiersInOperatorGrid (selected) `0x37d9b09eda477a84e3913fcb4d032efb0bf9b62e` — deployed 2026-03-27 20:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RegisterGroupsInOperatorGrid | own contract | RegisterGroupsInOperatorGrid (selected) `0x17305db55c908e84c58bbdca57258a7d1f7eea7c` — deployed 2026-03-27 20:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RegisterTiersInOperatorGrid | own contract | 0x6b535f… (selected) `0x6b535f441f95046562406f4e2518d9ad7db2dc0d` — deployed 2026-03-27 20:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BLS | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | TwoPhaseFrameConfigUpdate | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | AllowList | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Distributor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Factory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | StvPool | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StvStETHPool | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DistributorFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | GGVStrategyFactory | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StvPoolFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | StvStETHPoolFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | TimelockFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | WithdrawalQueueFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | GGVStrategy | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StrategyCallForwarder | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StrategyCallForwarderRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | FeaturePausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StvPool | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StvStETHPool | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GGVStrategy | unmatched — not counted | — | listed in scope via src/strategy/*.sol | no |
| See [full report]() for more details. | Factory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Distributor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Allowlist | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StvPoolFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | StvStETHPoolFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | WithdrawalQueueFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | DistributorFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | TimelockFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | DummyImplementation | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | FeaturePausable | unmatched — not counted | — | listed in scope | no |
| full report | StakingVault | own contract | StakingVault (selected) `0x06a56487494aa080dec7bf69128eda9225784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | LazyOracle | unmatched — not counted | — | mentioned in Protocol Overview and findings | no |
| full report | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | PredepositGuarantee | unmatched — not counted | — | mentioned in Protocol Overview and findings | no |
| full report | VaultFactory | own contract | VaultFactory (selected) `0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a` — deployed 2025-12-03 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | Dashboard | own contract | Dashboard (selected) `0x294825c2764c7d412dc32d87e2242c4f1d989af3` — deployed 2025-12-03 15:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | NodeOperatorFee | unmatched — not counted | — | mentioned in findings | no |
| full report | Lido | unmatched — not counted | — | mentioned in findings | no |
| full report | WithdrawalQueue | unmatched — not counted | — | mentioned in findings | no |
| full report | Accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | StETH | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Lido | unmatched — not counted | — | Listed in scope and findings (M-03, L-01, P-LI-01, etc.) | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | Listed in scope and findings (L-02, P-LI-06) | no |
| See [full report]() for more details. | Accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Burner | unmatched — not counted | — | Listed in scope and properties (P-BU-01, P-BU-02) | no |
| See [full report]() for more details. | LazyOracle | unmatched — not counted | — | Listed in scope and properties (P-LO-01, P-LO-02) | no |
| See [full report]() for more details. | PredepositGuarantee | unmatched — not counted | — | Listed in scope and properties (P-PG-01) | no |
| See [full report]() for more details. | StakingVault | own contract | StakingVault (selected) `0x06a56487494aa080dec7bf69128eda9225784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | Mentioned in assumptions | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | Mentioned in L-04 and P-NO-01 | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | Mentioned in L-04 | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | Mentioned in L-04 | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | Project Scope lists src/main.py as in scope | no |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingVaultIpfsReport | unmatched — not counted | — | Listed in scope and referenced in findings | no |
| See [full report]() for more details. | MintedSharesOnVaultEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | BurnedSharesOnVaultEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | VaultFeesUpdatedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | VaultRebalancedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | BadDebtSocializedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | BadDebtWrittenOffToBeInternalizedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| full report | Lido | unmatched — not counted | — | listed in scope table | no |
| full report | Accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | AlterTiersInOperatorGrid | own contract | AlterTiersInOperatorGrid (selected) `0x37d9b09eda477a84e3913fcb4d032efb0bf9b62e` — deployed 2026-03-27 20:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | DecreaseShareLimitsInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | DecreaseVaultsFeesInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | ForceValidatorExitsInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | RegisterGroupsInOperatorGrid | own contract | RegisterGroupsInOperatorGrid (selected) `0x17305db55c908e84c58bbdca57258a7d1f7eea7c` — deployed 2026-03-27 20:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | RegisterTiersInOperatorGrid | unmatched — not counted | — | listed in scope table | no |
| full report | SetJailStatusInOperatorGrid | own contract | SetJailStatusInOperatorGrid (selected) `0x6a4f33f05e7412a11100353724bb6a152cf0d305` — deployed 2026-01-13 16:16:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | SetLiabilitySharesTargetInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | SetVaultRedemptionsInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | SocializeBadDebtInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | UpdateGroupsShareLimitInOperatorGrid | unmatched — not counted | — | listed in scope table | no |
| full report | UpdateVaultsFeesInOperatorGrid | unmatched — not counted | — | listed in scope table | no |
| full report | VaultHubAdapter | unmatched — not counted | — | listed in scope table | no |
| full report | VaultsAdapter | own contract | VaultsAdapter (selected) `0x28f9ac198c4e0fa6a9ad2c2f97cb38f1a3120f27` — deployed 2026-01-13 16:15:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | PinnedBeaconProxy | unmatched — not counted | — | listed in scope and findings | no |
| full report | StakingVault | own contract | StakingVault (selected) `0x06a56487494aa080dec7bf69128eda9225784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | Dashboard | own contract | Dashboard (selected) `0x294825c2764c7d412dc32d87e2242c4f1d989af3` — deployed 2025-12-03 15:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | LazyOracle | unmatched — not counted | — | listed in scope and findings | no |
| full report | NodeOperatorFee | unmatched — not counted | — | listed in findings | no |
| full report | VaultFactory | own contract | VaultFactory (selected) `0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a` — deployed 2025-12-03 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | AccessControlConfirmable | unmatched — not counted | — | listed in findings | no |
| full report | Confirmations | unmatched — not counted | — | listed in findings | no |
| full report | PinnedBeaconUtils | unmatched — not counted | — | listed in findings | no |
| full report | ValidatorConsolidationRequests | own contract | ValidatorConsolidationRequests (selected) `0xac4aae7123248684c405a4b0038c1560ec7fe018` — deployed 2025-12-03 15:54:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | TriggerableWithdrawals | unmatched — not counted | — | listed in findings | no |
| See [full report]() for more details. | StonksFactory | unmatched — not counted | — | Deployment verification section lists StonksFactory contract address. | no |
| See [full report]() for more details. | Order | unmatched — not counted | — | Deployment verification section lists Order contract address as sample. | no |
| See [full report]() for more details. | OracleRouter | unmatched — not counted | — | Deployment verification section lists OracleRouter contract address. | no |
| See [full report]() for more details. | AmountConverterFactory | unmatched — not counted | — | Deployment verification section lists AmountConverterFactory contract address. | no |
| See [full report]() for more details. | AmountConverter | unmatched — not counted | — | Deployment verification section lists AmountConverter (USD-anchored) contract address. | no |
| See [full report]() for more details. | Stonks | unmatched — not counted | — | Deployment verification section lists Stonks (stETH → LDO) contract address. | no |
| See [full report]() for more details. | Ownable | unmatched — not counted | — | Mentioned as inherited contract in Stonks and in findings (I1). | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | Mentioned in executive summary and trust model as contract for recovering tokens. | no |
| See [full report]() for more details. | LDORevesting | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | lazy_oracle | unmatched — not counted | — | Affected files in findings: lazy_oracle.py#L131 | no |
| See [full report]() for more details. | staking_vaults | unmatched — not counted | — | Affected files in findings: staking_vaults.py#L103-L104, L105, L119 | no |
| See [full report]() for more details. | converter | unmatched — not counted | — | Affected files in findings: converter.py#L86-L135 | no |
| See [full report]() for more details. | CuratedSubmitExitRequestHashes | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | SDVTSubmitExitRequestHashes | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | SubmitExitRequestHashesUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstethStaker | own contract | WstETHReferralStaker (selected) `0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d` — deployed 2025-09-09 15:35:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TriggerableWithdrawalsGateway | own contract | TriggerableWithdrawalsGateway (selected) `0xdc00116a0d3e064427da2600449cfd2566b3037b` — deployed 2025-09-12 13:00:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVaultEIP7002 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ExitLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconTypes | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorExitDelayVerifier | own contract | ValidatorExitDelayVerifier (selected) `0xbdb567672c867db533119c2dcd4fb9d8b44ec82f` — deployed 2025-09-12 13:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | distribution.py | unmatched — not counted | — | Affected files in LDO-6fda87f2-L01 | no |
| See [full report]() for more details. | CSStrikes.sol | own contract | CSStrikes (selected) `0x3e5021424c9e13fc853e523cd68ebbec848956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSOracle | unmatched — not counted | — | Section 3.1: CSM Oracle module | no |
| See [full report]() for more details. | CSM | unmatched — not counted | — | Section 3.1: CSM Oracle integrates with Community Staking Module | no |
| See [full report]() for more details. | CSParametersRegistryContract | unmatched — not counted | — | Section 3.1: Introduced CSParametersRegistryContract | no |
| See [full report]() for more details. | CSStrikesContract | unmatched — not counted | — | Section 3.1: Introduced CSStrikesContract | no |
| See [full report]() for more details. | CSMSetVettedGateTree | own contract | CSMSetVettedGateTree (selected) `0xbc5642bdd6f2a54b01a75605aae9143525d97308` — deployed 2025-09-18 16:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff460627b6798c2907409ea2fdfb287eaa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSParametersRegistry | own contract | 0x25fdc3… (selected) `0x25fdc3be9977cd4da679df72a64c8b6bd5216a78` — deployed 2025-09-17 15:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSAccounting | own contract | 0x6f09d2… (selected) `0x6f09d2426c7405c5546413e6059f884d2d03f449` — deployed 2025-09-17 15:32:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PermissionlessGate | own contract | 0xcf33a3… (selected) `0xcf33a38111d0b1246a3f38a838fb41d626b454f0` — deployed 2025-09-17 15:32:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VettedGate | own contract | 0x65d4d9… (selected) `0x65d4d92cd0eabaa05cd5a46269c24b71c21cfdc4` — deployed 2025-09-17 15:32:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VettedGateFactory | own contract | 0xfdab48… (selected) `0xfdab48c4d627e500207e9af29c98579d90ea0ad4` — deployed 2025-09-17 15:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeDistributor | own contract | 0x5dcf7c… (selected) `0x5dcf7cf7c6645e9e822a379df046a8b0390251a1` — deployed 2025-09-17 15:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | own contract | CSModule (selected) `0x1eb6d4da13ca9566c17f526ae0715325d7a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSStrikes | own contract | CSStrikes (selected) `0x3e5021424c9e13fc853e523cd68ebbec848956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeOracle | own contract | 0xe0b234… (selected) `0xe0b234f99e413e27d9bc31abba9a49a3e570da97` — deployed 2025-09-17 15:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSExitPenalties | own contract | 0xda22fa… (selected) `0xda22fa1cea40d05fe4cd536967afdd839586d546` — deployed 2025-09-17 15:37:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSEjector | own contract | CSEjector (selected) `0xc72b58aa02e0e98cf8a4a0e9dce75e763800802c` — deployed 2025-09-17 15:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1782b6943f318e05230d688713a560063dc` — deployed 2025-09-17 15:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | mentioned in findings (L1) | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | mentioned in findings (I1, I3) | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | mentioned in findings (W6) | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | mentioned in findings (I2) | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | mentioned in findings (I4) | no |
| See [full report]() for more details. | ICSBondCurve | unmatched — not counted | — | mentioned in findings (I2, I4) | no |
| See [full report]() for more details. | ICSModule | unmatched — not counted | — | mentioned in findings (W3) | no |
| See [full report]() for more details. | CSMSetVettedGateTree | own contract | CSMSetVettedGateTree (selected) `0xbc5642bdd6f2a54b01a75605aae9143525d97308` — deployed 2025-09-18 16:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | ambiguous — not counted | CSModule (alternative) `0x1eb6d4da13ca9566c17f526ae0715325d7a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code)<br>0xda7de2… (alternative) `0xda7de2ecddfccc6c3af10108db212acbbf9ea83f` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff460627b6798c2907409ea2fdfb287eaa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528edc289b1a597faf83fcff7eff871cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TransientUintUintMapLib | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorCountsReport | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSAccounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSStrikes | own contract | CSStrikes (selected) `0x3e5021424c9e13fc853e523cd68ebbec848956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSEjector | own contract | CSEjector (selected) `0xc72b58aa02e0e98cf8a4a0e9dce75e763800802c` — deployed 2025-09-17 15:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSExitPenalties | own proxy deployment | OssifiableProxy (proxy) (selected) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ExitTypes | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1782b6943f318e05230d688713a560063dc` — deployed 2025-09-17 15:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Types | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSFeeOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSParametersRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | VettedGate | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PermissionlessGate | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | VettedGateFactory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorExitDelayVerifier | own contract | ValidatorExitDelayVerifier (selected) `0xbdb567672c867db533119c2dcd4fb9d8b44ec82f` — deployed 2025-09-12 13:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TriggerableWithdrawalsGateway | own contract | TriggerableWithdrawalsGateway (selected) `0xdc00116a0d3e064427da2600449cfd2566b3037b` — deployed 2025-09-12 13:00:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVaultEIP7002 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ExitLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconTypes | unmatched — not counted | — | listed in scope | no |
| report | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DGUpgradeOmnibusMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | DGUpgradeStateVerifierMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | CSStrikes | own contract | CSStrikes (selected) `0x3e5021424c9e13fc853e523cd68ebbec848956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VettedGate | unmatched — not counted | — | mentioned in findings as VettedGate contract | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSAccounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1782b6943f318e05230d688713a560063dc` — deployed 2025-09-17 15:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | ambiguous — not counted | CSModule (alternative) `0x1eb6d4da13ca9566c17f526ae0715325d7a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code)<br>0xda7de2… (alternative) `0xda7de2ecddfccc6c3af10108db212acbbf9ea83f` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | TransientUintUintMapLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ValidatorCountsReport | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Types | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff460627b6798c2907409ea2fdfb287eaa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528edc289b1a597faf83fcff7eff871cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UpdateTargetValidatorLimits | own contract | UpdateTargetValidatorLimits (selected) `0x161a4552a625844c822954c5acbac928ee0f399b` — deployed 2024-10-08 18:45:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleELStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DataBus | own contract | DataBus (selected) `0x37de961d6bb5865867add416be07189d2dd960e6` — deployed 2024-10-07 20:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ISecondOpinionOracle | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | Sp1LidoAccountingReportContract | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | main | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | input_verification | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | io | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | report | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | circuit_logic | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_io | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | program_io | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | serde_utils | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_consensus_layer | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_execution_layer | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_spec | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | lib | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | lido | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | merkle_proof | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | util | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | Deploy | unmatched — not counted | — | listed in Audited Files table | no |
| See [note]() contents for more details. | DGLaunchOmnibusMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | DGRolesValidatorMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | DGLaunchStateVerifier | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | TimeConstraints | own contract | TimeConstraints (selected) `0x2a30f5ac03187674553024296bed35aa49749dda` — deployed 2025-05-22 14:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Escrow | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernance | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | EmergencyProtectedTimelock | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerCoreCommittee | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerSubCommittee | unmatched — not counted | — | listed in scope and deployed on mainnet (Sub Committee 1) | no |
| See [note]() contents for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ImmutableDualGovernanceConfigProvider | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockedGovernance | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ResealManager | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Executor | unmatched — not counted | — | listed in scope and deployed on mainnet (Admin executor) | no |
| See [note]() contents for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeRegistry | unmatched — not counted | — | mentioned as the smart contract affected by the vulnerability in section 2.1 | no |
| See [full report]() for more details. | AddMEVBoostRelays | own contract | AddMEVBoostRelays (selected) `0x00a3d6260f70b1660c8646ef25d0820effd7be60` — deployed 2025-05-07 18:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EditMEVBoostRelays | own contract | EditMEVBoostRelays (selected) `0x6b7863f2c7dee99d3b744fdaedbeb1aecc025535` — deployed 2025-05-07 18:05:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveMEVBoostRelays | own contract | RemoveMEVBoostRelays (selected) `0x9721c0f77e3ea40ed592b9dcf3032daf269c0306` — deployed 2025-05-07 18:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | MEVBoostRelaysInputUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Accounting Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Ejector Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSM Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | abnormal_cl_rebase | unmatched — not counted | — | mentioned in findings M-1 and L-3 | no |
| See [full report]() for more details. | accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | exit_order_iterator | unmatched — not counted | — | mentioned in findings L-1 and L-5 | no |
| See [full report]() for more details. | sweep | unmatched — not counted | — | mentioned in finding L-2 | no |
| See [full report]() for more details. | validator_state | unmatched — not counted | — | mentioned in finding L-4 | no |
| See [full report]() for more details. | exit_order_iterator | unmatched — not counted | — | Affected files in findings LDO-0dbc1d8a-M01 and LDO-0dbc1d8a-L01 | no |
| See [full report]() for more details. | safe_border | unmatched — not counted | — | Affected files in findings LDO-0dbc1d8a-M02 and LDO-0dbc1d8a-L03 | no |
| See [full report]() for more details. | validator_state | unmatched — not counted | — | Affected files in finding LDO-0dbc1d8a-L01 | no |
| See [full report]() for more details. | consensus | unmatched — not counted | — | Affected files in finding LDO-0dbc1d8a-L02 | no |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528edc289b1a597faf83fcff7eff871cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NOAddresses | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | QueueLib | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSModule | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | OssifiableProxy | own contract | 0xda7de2… (selected) `0xda7de2ecddfccc6c3af10108db212acbbf9ea83f` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSAccounting | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSFeeOracle | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSVerifier | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | HashConsensus | own contract | 0x71093e… (selected) `0x71093eff8d8599b5fa340d665ad60fa7c80688e4` — deployed 2024-10-10 16:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleElStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | mentioned in findings | no |
| See [note]() contents for more details. | GateSealFactory | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | GateSeal | unmatched — not counted | — | listed in scope table as CSM instance | no |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IDualGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IDualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEmergencyProtectedTimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEscrowBase | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IExternalExecutor | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IOwnable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IRageQuitEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IResealManager | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISealable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISignallingEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWstETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IDualGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IDualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEmergencyProtectedTimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEscrowBase | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IExternalExecutor | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IOwnable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IRageQuitEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IResealManager | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISealable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISignallingEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWstETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | StETH | unmatched — not counted | — | external contract model used in tests | no |
| See full [report]() for more details. | WithdrawalQueue | unmatched — not counted | — | external contract model used in tests | no |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IDualGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IDualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEmergencyProtectedTimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IExternalExecutor | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGateSeal | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IOwnable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IResealManager | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISealable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWstETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | DepositSecurityModule | own contract | 0xffa96d… (selected) `0xffa96d84def2ea035c7ab153d8b991128e3d72fd` — deployed 2024-10-08 16:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528edc289b1a597faf83fcff7eff871cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NOAddresses | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | QueueLib | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSModule | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | OssifiableProxy | own contract | 0xda7de2… (selected) `0xda7de2ecddfccc6c3af10108db212acbbf9ea83f` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSAccounting | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSFeeOracle | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSVerifier | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | HashConsensus | own contract | 0x71093e… (selected) `0x71093eff8d8599b5fa340d665ad60fa7c80688e4` — deployed 2024-10-10 16:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleElStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | Mentioned in findings (e.g., L4, W13) and is part of the src directory. | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | Mentioned in finding W8. | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | Mentioned in findings (e.g., W15). | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | Mentioned in findings (e.g., L2, W2). | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | Mentioned in finding W1. | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | Mentioned in finding W6. | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | Mentioned in finding I2. | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | Mentioned in finding I14. | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | Mentioned in findings (e.g., W4, I4). | no |
| See [full report]() for more details. | ICSModule | unmatched — not counted | — | Mentioned in finding I14 (incorrect statement about totalExitedKeys). | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSAccounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1782b6943f318e05230d688713a560063dc` — deployed 2025-09-17 15:38:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | ambiguous — not counted | CSModule (alternative) `0x1eb6d4da13ca9566c17f526ae0715325d7a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code)<br>0xda7de2… (alternative) `0xda7de2ecddfccc6c3af10108db212acbbf9ea83f` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | TransientUintUintMapLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ValidatorCountsReport | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Types | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff460627b6798c2907409ea2fdfb287eaa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528edc289b1a597faf83fcff7eff871cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UpdateTargetValidatorLimits | own contract | UpdateTargetValidatorLimits (selected) `0x161a4552a625844c822954c5acbac928ee0f399b` — deployed 2024-10-08 18:45:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleELStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DataBus | own contract | DataBus (selected) `0x37de961d6bb5865867add416be07189d2dd960e6` — deployed 2024-10-07 20:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Accounting Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Ejector Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSM Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Withdrawal | unmatched — not counted | — | mentioned in finding L-1 | no |
| See [full report]() for more details. | CSOracle | unmatched — not counted | — | mentioned in finding L-3 | no |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813a31446a98c84e20dda8c101bb3c8228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28b3301331277e307fdcff8de28242a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425301c85c5ea2a0873a2dee44d78e02d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | WithdrawalBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCore | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyExecutionCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ResealCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5a1539b97bd0bbd155757f25fd79a522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyActivationCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337946f2fab8911774b20025fa776b76a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b465633ff5178808f4a75186e2f2f9537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | arrays | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Voting | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x2e59a20f205bb85a89c53f1936454680651e618e` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Voting | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x2e59a20f205bb85a89c53f1936454680651e618e` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SafeCastExt | unmatched — not counted | — | listed in Project Scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in Project Scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SafeCastExt | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | GateSealFactory | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | GateSeal | unmatched — not counted | — | listed in scope table as instance | no |
| See [full report]() for more details. | Stonks | own contract | 0x3e2d25… (selected) `0x3e2d251275a92a8169a3b17a2c49016e2de492a7` — deployed 2024-03-15 17:03:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StonksFactory | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | AmountConverter | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | AmountConverterFactory | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | Order | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | described in system overview as inherited contract | no |
| See [full report]() for more details. | Ownable | unmatched — not counted | — | described in system overview as inherited contract | no |
| See [full report]() for more details. | ActivateNodeOperators | own contract | ActivateNodeOperators (selected) `0xcbb418f6f9bfd3525ce6aade8f74ecfefe2db5c8` — deployed 2023-12-26 12:27:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddNodeOperators | own contract | AddNodeOperators (selected) `0xcaa3af7460e83e665eefec73a7a542e5005c9639` — deployed 2023-12-26 12:27:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ChangeNodeOperatorManagers | own contract | ChangeNodeOperatorManagers (selected) `0xe31a0599a6772bcf9b2bfc9e25cf941e793c9a7d` — deployed 2023-12-26 12:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DeactivateNodeOperators | own contract | DeactivateNodeOperators (selected) `0x8b82c1546d47330335a48406cc3a50da732672e7` — deployed 2023-12-26 12:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IncreaseVettedValidatorsLimit | unmatched — not counted | — | listed in scope and deployment addresses | no |
| See [full report]() for more details. | SetNodeOperatorNames | own contract | SetNodeOperatorNames (selected) `0x7d509bff310d9460b1f613e4e40d342201a83ae4` — deployed 2023-12-26 12:28:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SetNodeOperatorRewardAddresses | own contract | SetNodeOperatorRewardAddresses (selected) `0x589e298964b9181d9938b84bb034c3bb9024e2c0` — deployed 2023-12-26 12:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SetVettedValidatorsLimits | own contract | SetVettedValidatorsLimits (selected) `0xd75778b855886fc5e1ea7d6bfada9eb68b35c19d` — deployed 2023-12-26 12:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UpdateTargetValidatorLimits | unmatched — not counted | — | listed in scope and deployment addresses | no |
| See [full report]() for more details. | Stonks | own contract | Stonks (selected) `0x278f7b6cbb3cc37374e6a40bdfebfff08f65a5c7` — deployed 2024-03-15 17:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Order | unmatched — not counted | — | mentioned in findings L02, L03 | no |
| See [full report]() for more details. | AmountConverter | unmatched — not counted | — | mentioned in note N01 | no |
| See [full report]() for more details. | IStonks | unmatched — not counted | — | mentioned in finding L03 | no |
| See [full report]() for more details. | GPv2Order | unmatched — not counted | — | mentioned in audit process | no |
| See [full report]() for more details. | MEV Boost Relay Allowed List | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Withdrawal Vault | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Withdrawal Queue ERC721 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Execution Layer Rewards Vault | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Deposit Security Module | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Node Operators registry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Staking Router | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido and stETH token | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido Locator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Accounting Oracle:AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Accounting Oracle:HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Validators Exit Bus Oracle:ValidatorsExitBusOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Validators Exit Bus Oracle:HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Legacy Oracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido DAO (Implementation) - Kernel | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon ACL | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EVMScriptRegistry | own proxy deployment | AppProxyPinned (proxy) (selected) `0x853cc0d5917f49b57b8e9f89e491f5e18919093a` — deployed 2020-12-18 00:59:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Aragon Agent | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LDO token | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon Voting | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon Token Manager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon Finance | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Repo | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x0d97e876ad14db2b183cfeeb8aa1a5c788eb1831` — deployed 2020-12-18 00:55:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Insurance Fund | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GateSeal | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b7660680b49de1a7e9f25c65660f0a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | reWARDS stETH:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TRP LDO:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ATC DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO LDO:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RCC DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PML DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ATC DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TRP LDO:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO LDO:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RCC DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PML DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | reWARDS stETH:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | reWARDS stETH:AddAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:AddAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:AddAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | reWARDS stETH:RemoveAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:RemoveAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:RemoveAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Arbitrum:L1ERC20TokenGateway | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Optimism:L1ERC20TokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AllowedTokensRegistry | own contract | AllowedTokensRegistry (selected) `0x4ac40c34f8992bb1e5e856a448792158022551ca` — deployed 2023-10-26 19:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TopUpAllowedRecipients | own contract | TopUpAllowedRecipients (selected) `0x00caaef11ec545b192f16313f53912e453c91458` — deployed 2022-11-23 23:39:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AllowedRecipientsBuilder | own contract | AllowedRecipientsBuilder (selected) `0x334d6edc13f63728b39e6a6d04a7bbd5d6a9b9ff` — deployed 2023-10-26 18:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AllowedRecipientsFactory | own contract | AllowedRecipientsFactory (selected) `0x83e976758b7ab1bb676a4fea073fa0e2a807642b` — deployed 2022-11-23 15:31:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ShapellaUpgradeTemplate | unmatched — not counted | — | listed in scope section and deployed on mainnet | no |
| See [note]() contents for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [note]() contents for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | GateSealFactory | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | GateSeal | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ShapellaUpgradeTemplate | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DummyEmptyContract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IStakingModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IEIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ILidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IBurner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | withdrawal | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | exit_order_iterator_state | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | validator_state | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | abnormal_cl_rebase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | midterm_slashing_penalty | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | bunker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | prediction | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | exit_order_iterator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | safe_border | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | variables | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consistency | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | client | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_client | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | http_provider | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ejector | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ejector_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | data_encode | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | oracle_module | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | submodules_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | exceptions | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | extra_data | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | accounting_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | checks_module | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | pytest.ini | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_api | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus_node | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | execution_node | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | conftest | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | common | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | duration_meter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ejector_metrics | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | basic | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | business | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | validators | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | accounting_metrics | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | logging | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | healthcheck_server | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | validator_state_utils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | build | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | events | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | abi | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | cache | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | types | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | slot | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | web3converter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | dataclass | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | input | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | blockstamp | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | typings_main | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | web3py_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_api_ext | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | fallback | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | contracts | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | lido_validators | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus_ext | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | tx_utils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | contract_tweak | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | middleware | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | constants | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | main | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | WithdrawalRequestERC721 | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | ILidoLocator | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IStakingRouter | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | ILidoExecutionLayerRewardsVault | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IDepositContract | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IStakingModule | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IERC721Metadata | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | GateSealFactory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GateSeal | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IStakingModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IEIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ILidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IBurner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_airgapped | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_cli | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_d | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_dkg_reinitializer | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | fsm/types/requests/signing_proposal.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | storage/kafka_storage/kafka_storage.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | client/services/node/node_service.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | go.mod | unmatched — not counted | — | Listed as asset in finding LDC-04. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | pkg/wc_rotation/payload_csv_test.sh | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | cmd/airgapped/main.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | cmd/dc4bc_cli/main.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | pkg/wc_rotation/rotation.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | pkg/prysm/prysm.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | signing_proposal.go | unmatched — not counted | — | Listed as asset in finding LDC-01. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | kafka_storage.go | unmatched — not counted | — | Listed as asset in finding LDC-02. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | node_service.go | unmatched — not counted | — | Listed as asset in findings LDC-03 and LDC-07. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | payload_csv_test.sh | unmatched — not counted | — | Listed as asset in finding LDC-05. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | main.go | unmatched — not counted | — | Referenced in finding LDC-08 as containing error wrapping examples. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | rotation.go | unmatched — not counted | — | Referenced in finding LDC-08 as containing unnecessary if statements. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | prysm.go | unmatched — not counted | — | Referenced in finding LDC-04 as file where Prysm dependency is used. | no |
| See [full report]() for more details. | BytesLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Math64 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeysStats | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewards | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f9265cbc37231882b7409658c18bb7738173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de6d1877b3711b2beda7ba00013c7142d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | referenced in findings as MemUtils.memcpy | no |
| See [full report]() for more details. | IStakingRouter | unmatched — not counted | — | referenced in findings as interface | no |
| See [full report]() for more details. | ILido | unmatched — not counted | — | referenced in findings as interface | no |
| See [full report]() for more details. | VestingEscrow | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | VestingEscrowFactory | own contract | 0xda1df6… (selected) `0xda1df6442afd2ec36abea91029794b9b2156add0` — deployed 2023-02-02 13:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VotingAdapter | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | MEVBoostRelayAllowedList | own contract | 0xf95f06… (selected) `0xf95f069f9ad107938f6ba802a3da87892298610e` — deployed 2022-09-15 16:26:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | InsuranceFund | own contract | InsuranceFund (selected) `0x8b3f33234abd88493c0cd28de33d583b70bede35` — deployed 2022-09-29 15:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddAllowedRecipient | own contract | AddAllowedRecipient (selected) `0x1f809d2cb72a5ab13778811742050eda876129b6` — deployed 2023-07-12 13:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddRewardProgram | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IncreaseNodeOperatorStakingLimit | own contract | IncreaseNodeOperatorStakingLimit (selected) `0xfebd8fac16de88206d4b18764e826af38546afe0` — deployed 2021-11-24 13:39:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveAllowedRecipient | own contract | RemoveAllowedRecipient (selected) `0x22010d1747cafc370b1f1fbba61022a313c5693b` — deployed 2023-05-22 10:58:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveRewardProgram | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TopUpAllowedRecipients | own contract | TopUpAllowedRecipients (selected) `0x00caaef11ec545b192f16313f53912e453c91458` — deployed 2022-11-23 23:39:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TopUpLegoProgram | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TopUpRewardPrograms | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IBokkyPooBahsDateTimeContract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IEVMScriptExecutor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IEVMScriptFactory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IFinance | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BytesUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EVMScriptCreator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EVMScriptPermissions | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AllowedRecipientsRegistry | own contract | AllowedRecipientsRegistry (selected) `0x1a7cfa9efb4d5bffde87b0faeb1fc65d653868c0` — deployed 2024-03-18 18:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptFactoriesRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b7660680b49de1a7e9f25c65660f0a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LimitsChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MotionSettings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RewardProgramsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TrustedCaller | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ReportUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ReportUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LidoOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | deposit_contract | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Voting | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MiniMeToken | own contract | MiniMeToken (selected) `0x5a98fcbea516cf06857215779fd812ca3bef1b32` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | Jumpgate | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ReportUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c818ca8b9251b393131c08a736a67ccb19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | AStETH | unmatched — not counted | — | listed in scope and deployed | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | StableDebtStETH | unmatched — not counted | — | listed in scope and deployed | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | VariableDebtStETH | unmatched — not counted | — | listed in scope and deployed | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | AaveAStETHIncentivesController | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | AaveIncentivesControllerStub | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | RewardsUtils | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | UnstructuredStorageVersionised | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | UInt256Lib | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | IAToken | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | ILendingPool | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | MathUtils | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | WadRayMath | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | DataTypes | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | SignedSafeMath | unmatched — not counted | — | mentioned in finding WRN-3 | no |
| See [full report]() for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope and deployed to mainnet | no |
| See [full report]() for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope and deployed to mainnet | no |
| See [full report]() for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope and deployed to mainnet | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BytesLib | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | INodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AnchorVault | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | AnchorVaultProxy | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | bEth | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | RewardsLiquidator | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | InsuranceConnector | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | BridgeConnectorWormhole | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | Voting | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x2e59a20f205bb85a89c53f1936454680651e618e` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b7660680b49de1a7e9f25c65660f0a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EasyTrackStorage | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | EVMScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptFactoriesRegistry | unmatched — not counted | — | Listed in scope and findings | no |
| See [full report]() for more details. | EVMScriptPermissions | unmatched — not counted | — | Listed in scope and findings | no |
| See [full report]() for more details. | EVMScriptCreator | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | MotionSettings | unmatched — not counted | — | Listed in scope and findings | no |
| See [full report]() for more details. | RewardProgramsRegistry | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | AddRewardProgram | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | BytesUtils | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | TrustedCaller | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ContractProxy | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EVMScriptFactoriesRegistry | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b7660680b49de1a7e9f25c65660f0a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EasyTrackStorage | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EvmScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | MotionSettings | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | RewardProgramsRegistry | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | TrustedCaller | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | AddRewardProgram | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | IncreaseNodeOperatorStakingLimit | own contract | IncreaseNodeOperatorStakingLimit (selected) `0xfebd8fac16de88206d4b18764e826af38546afe0` — deployed 2021-11-24 13:39:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveRewardProgram | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | TopUpLegoProgram | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | TopUpRewardPrograms | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | BytesUtils | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EVMScriptCreator | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EVMScriptPermissions | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | RewardsManager | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | AnchorVault | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | AnchorVaultProxy | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | bEth | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | RewardsLiquidator | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | InsuranceConnector | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | BridgeConnectorWormhole | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | AnchorVault | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | BridgeConnectorShuttle | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | InsuranceConnector | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | RewardsLiquidator | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | bEth | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | PriceFeedProxy | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StEthPriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StateProofVerifier | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | StableSwapStateOracle | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | StableSwapPriceHelper | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | MerklePatriciaProofVerifier | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | RLPReader | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | WithdrawalsManagerProxy | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | WithdrawalsManagerStub | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | listed in FILES LISTING | no |
| See [full report]() for more details. | ReportUtils | unmatched — not counted | — | listed in FILES LISTING | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | Listed in scope and findings reference Lido.sol | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | Listed in scope and findings reference NodeOperatorRegistry.sol | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | Listed in scope and findings reference StETH.sol | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | Listed in scope and findings reference LidoOracle.sol | no |
| See [full report]() for more details. | DePool | unmatched — not counted | — | Listed in scope and findings reference DePool.sol | no |
| See [full report]() for more details. | Memutils | unmatched — not counted | — | Listed in scope and findings reference Memutils.sol | no |
| See [full report]() for more details. | BitOps | unmatched — not counted | — | Listed in scope and findings reference BitOps.sol | no |
| See [full report]() for more details. | DePool | unmatched — not counted | — | Listed in findings QSP-1, QSP-2, QSP-3, QSP-6, QSP-7, QSP-8, QSP-9, QSP-11, QSP-13 | no |
| See [full report]() for more details. | DePoolOracle | unmatched — not counted | — | Listed in findings QSP-4, QSP-10 | no |
| See [full report]() for more details. | Algorithm | unmatched — not counted | — | Listed in findings QSP-5 | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | Listed in findings QSP-6, QSP-11, QSP-12, QSP-13 | no |
| See [full report]() for more details. | StakingProvidersRegistry | unmatched — not counted | — | Listed in findings QSP-7, QSP-10 | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | Listed in findings QSP-14 | no |
| See [full report]() for more details. | CstETH | unmatched — not counted | — | Listed in file signatures and test results | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | Listed in file signatures and test results | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | Listed in file signatures and test results | no |
| See [full report]() for more details. | BitOps | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | ILido | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | ILidoOracle | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | INodeOperatorsRegistry | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | ISTETH | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | IValidatorRegistration | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | LidoTemplate | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | Imports | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | LinkAssetComment | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OssifiableProxy | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenBridgeImplementation | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | listed as Ossifiable proxy for the L1ERC20TokenBridge | no |
| See [full report]() for more details. | ERC20Bridged | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | unmatched — not counted | — | listed as ERC20BridgedWstETH | no |
| See [full report]() for more details. | L2ERC20TokenBridgeImplementation | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | listed as Ossifiable proxy for the L2ERC20TokenBridge | no |
| See [full report]() for more details. | OptimismBridgeExecutor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OpStackTokenRatePusher | own contract | 0x755610… (selected) `0x755610f5be536ad7afbaa7c10f3e938ea3aa1877` — deployed 2025-02-14 10:53:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L1LidoTokensBridge | own contract | 0x607823… (selected) `0x6078232c54d956c901620fa4590e0f7e37c2b82f` — deployed 2025-02-14 10:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedPermit | own contract | 0xb5cf09… (selected) `0xb5cf096a406c1d5297d2493073168f44eb4a1a1d` — deployed 2025-02-14 10:53:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | own contract | 0x5a007d… (selected) `0x5a007d6e37633fb297b82c074b94bb29546bebc3` — deployed 2025-02-14 10:54:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TokenRateOracle | own contract | 0x537a7f… (selected) `0x537a7f9d551da3c2800cb11ca17f2946d21029af` — deployed 2025-02-14 10:53:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | own contract | 0x332ca3… (selected) `0x332ca368dd09ad309c51dc6350730e0bca85cffe` — deployed 2025-02-14 10:54:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | GovernanceBridgeExecutor | own contract | 0x3b00f2… (selected) `0x3b00f262e39372df2756f809dd5dc36aeedfc4a0` — deployed 2025-02-14 10:53:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LinkAssetComment | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OpStackTokenRatePusher | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OssifiableProxy | unmatched — not counted | — | listed in scope table as proxy for L2ERC20ExtendedTokensBridge | no |
| See [full report]() for more details. | L1LidoTokensBridge | unmatched — not counted | — | listed in scope table as implementation | no |
| See [full report]() for more details. | ERC20BridgedPermit | unmatched — not counted | — | listed in scope table as WstETH | no |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | unmatched — not counted | — | listed in scope table as StETH | no |
| See [full report]() for more details. | TokenRateOracle | unmatched — not counted | — | listed in scope table as implementation | no |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | unmatched — not counted | — | listed in scope table as implementation | no |
| See [full report]() for more details. | GovernanceBridgeExecutor | unmatched — not counted | — | listed in scope table as Governance Bridge Executor | no |
| See the [full report]() for more details. | StarkGate: wstETH Bridge | unmatched — not counted | — | listed in scope table | no |
| See the [full report]() for more details. | StarkGate: wstETH Token | unmatched — not counted | — | listed in scope table | no |
| See the [full report]() for more details. | GovernorForwarder | unmatched — not counted | — | listed in scope table | no |
| See the [full report]() for more details. | TokenBridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x051f1d88f0af5763fb888ec4378b4d8b29ea3319` — deployed 2023-08-03 16:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See the [full report]() for more details. | PermissionedERC20 | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarknetTokenBridg | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarkgateManager | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarkgateRegistry | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarkgateEthBridge | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | BridgeExecutor | unmatched — not counted | — | mentioned in audit report verification section | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | listed in scope files for lido-l2 repo | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | listed in scope files for lido-l2 repo | no |
| See [full report]() for more details. | OptimismBridgeExecutor | own contract | OptimismBridgeExecutor (selected) `0x0e37599436974a25ddeedf795c848d30af46eacf` — deployed 2023-09-20 15:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2BridgeExecutor | unmatched — not counted | — | listed in scope files for governance-crosschain-bridges repo | no |
| See [full report]() for more details. | BridgeExecutorBase | unmatched — not counted | — | listed in scope files for governance-crosschain-bridges repo | no |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | NttManager | unmatched — not counted | — | Deployment scripts section lists NttManager: DeployWormholeNtt.s.sol | no |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | WormholeTransceiver | unmatched — not counted | — | Listed in scope and verification details | no |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | AxelarTransceiver | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x723aead29acee7e9281c32d11ea4ed0070c41b13` — deployed 2024-07-18 16:11:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | TransceiverStructs | own contract | TransceiverStructs (selected) `0x27a3daf3b243104e9b0afae6b56026a416b852c9` — deployed 2024-07-16 19:20:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | WstETH | own contract | WstETH (selected) `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | NttManager | unmatched — not counted | — | mentioned in scope section and throughout report | no |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | WormholeTransceiver | unmatched — not counted | — | mentioned in scope section and throughout report | no |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | TransceiverStructs | own contract | TransceiverStructs (selected) `0x27a3daf3b243104e9b0afae6b56026a416b852c9` — deployed 2024-07-16 19:20:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | AxelarTransceiver | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x723aead29acee7e9281c32d11ea4ed0070c41b13` — deployed 2024-07-18 16:11:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | WstEthL2Token | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x26c5e01524d2e6280a48f2c50ff6de7e52e9611c` — deployed 2024-06-26 01:07:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OptimismBridgeExecutor | own contract | OptimismBridgeExecutor (selected) `0x0e37599436974a25ddeedf795c848d30af46eacf` — deployed 2023-09-20 15:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedProxy | unmatched — not counted | — | listed in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | ERC20BridgedImplementation | unmatched — not counted | — | listed as ERC20BridgedImpl in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L2ERC20TokenBridgeProxy | unmatched — not counted | — | listed in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L2ERC20TokenBridgeImplementation | unmatched — not counted | — | listed as L2ERC20TokenBridgeImpl in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L1ERC20TokenBridgeProxy | unmatched — not counted | — | listed in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L1ERC20TokenBridgeImplementation | unmatched — not counted | — | listed as L1ERC20TokenBridgeImpl in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | BaseCrossChainController | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossChainController | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40c4464fca8cacd550c33b39d674fc257966022f` — deployed 2024-06-20 14:07:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CrossChainForwarder | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossChainReceiver | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseAdapter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CCIPAdapter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ICCIPAdapter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Client | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HyperLaneAdapter | own contract | HyperLaneAdapter (selected) `0x8d374df3de08b971777aa091fa68bce109b3a7f3` — deployed 2024-06-20 14:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StandardHookMetadata | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TypeCasts | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LayerZeroAdapter | own contract | LayerZeroAdapter (selected) `0x742650e0441be8503682965d601ad0ba1fb54411` — deployed 2024-06-20 14:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BytesLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ExecutorOptions | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OptionsBuilder | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PolygonAdapterBase | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PolygonAdapterEthereum | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PolygonAdapterPolygon | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | FxTunnelEthereum | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | FxTunnelPolygon | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WormholeAdapter | own contract | WormholeAdapter (selected) `0xbb1e43408bbf2c767ff3bd5bbc34e183cc1ef119` — deployed 2024-06-20 14:37:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ChainIds | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | EncodingUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Errors | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BridgeExecutorBase | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossChainExecutor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OwnableWithGuardian | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Rescuable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TokenRateNotifier | own contract | TokenRateNotifier (selected) `0x25e35855783bec3e49355a29e110f02ed8b05ba9` — deployed 2025-12-03 15:51:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20ExtendedTokensBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1LidoTokensBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OpStackTokenRatePusher | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RebasableAndNonRebasableTokens | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TokenRateOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedPermit | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Core | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Metadata | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20RebasableBridged | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PermitExtension | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositDataCodec | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TokenRateAndUpdateTimestampProvider | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgingManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgingManager | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositDataCodec | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SignatureChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TokenRateNotifier | unmatched — not counted | — | listed in scope table and deployment table | no |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedPermit | own contract | 0xfe5704… (selected) `0xfe57042de76c8d6b1df0e9e2047329fd3e2b7334` — deployed 2024-08-22 15:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Core | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PermitExtension | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | own contract | 0xe9b65d… (selected) `0xe9b65da5dcbe92f1b397991c464ff568dc98d761` — deployed 2024-08-22 15:01:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Metadata | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ERC20RebasableBridged | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | L1ERC20ExtendedTokensBridge | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | L1LidoTokensBridge | own contract | 0x168cfe… (selected) `0x168cfea1ad879d7032b3936ef3b0e90790b6b6d4` — deployed 2024-08-22 15:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TokenRateOracle | own contract | 0x4bf0d4… (selected) `0x4bf0d419793d8722b8391efad4c9ce78f460ced3` — deployed 2024-08-22 15:00:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OpStackTokenRatePusher | own contract | 0xd54c1c… (selected) `0xd54c1c6413caac3477ac14b2a80d5398e3c32ffe` — deployed 2024-08-22 15:00:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | own contract | 0x273460… (selected) `0x2734602c0cebba68662552cacd5553370b283e2e` — deployed 2024-08-22 15:01:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RebasableAndNonRebasableTokens | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossDomainEnabled | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TokenRateAndUpdateTimestampProvider | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | L1LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.1 | no |
| See [full report]() for more details. | L2LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.2 | no |
| See [full report]() for more details. | L2WstETHToken | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.3 | no |
| See [full report]() for more details. | LidoBridgeableTokens | unmatched — not counted | — | Listed in scope section (Programs) | no |
| See [full report]() for more details. | LidoGatewayManager | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.4 | no |
| See [full report]() for more details. | ScrollBridgeExecutor | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.5 | no |
| See [full report]() for more details. | CustomBridgedToken | unmatched — not counted | — | listed in scope appendix | no |
| See [full report]() for more details. | IGenericErrors | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IL1MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IL2MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IMessageService | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IPauseManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IRateLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IZkEvmV2 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1MessageService | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2MessageService | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Codec | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PauseManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RateLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rlp | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TimeLock | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TransactionDecoder | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MessageServiceBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgedToken | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ITokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TokenBridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x051f1d88f0af5763fb888ec4378b4d8b29ea3319` — deployed 2023-08-03 16:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ZkEvmV2Init | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ZkEvmV2 | unmatched — not counted | — | listed in scope | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L2BridgeExecutor | unmatched — not counted | — | Context in findings (e.g., 3.1.1, 3.2.4, 3.3.3) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | BridgeExecutorBase | unmatched — not counted | — | Context in findings (e.g., 3.2.2, 3.2.3, 3.2.5, 3.3.4, 3.3.5) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ZkSyncBridgeExecutor | unmatched — not counted | — | Context in finding 3.2.4 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L1ERC20Bridge | unmatched — not counted | — | Context in findings (e.g., 3.3.1, 3.4.1, 3.5.2, 3.5.4, 3.5.5) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L2ERC20Bridge | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L1Executor | unmatched — not counted | — | Context in findings (e.g., 3.3.2, 3.3.8, 3.4.2) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | BridgeableTokensUpgradable | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | BridgingManager | unmatched — not counted | — | Context in findings (e.g., 3.3.2, 3.3.6, 3.3.8) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ERC20BridgedUpgradeable | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ERC20CoreUpgradeable | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ERC20MetadataUpgradeable | unmatched — not counted | — | Context in findings 3.3.2 and 3.3.6 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L2CrossDomainEnabled | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | IL2ERC20Bridge | unmatched — not counted | — | Context in finding 3.5.3 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | IL2Messenger | unmatched — not counted | — | Context in finding 3.5.6 | no |
| See [full report]() for more details. | LineaBridgeExecutor | unmatched — not counted | — | listed in scope and Appendix 1 | no |
| See [full report]() for more details. | IMessageService | unmatched — not counted | — | listed in scope and Appendix 1 | no |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | mentioned in findings and scope | no |
| See [full report]() for more details. | BridgeableTokens | unmatched — not counted | — | mentioned in finding 4.1.2 | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | mentioned in finding 4.1.2 | no |
| See [full report]() for more details. | ERC20BridgedPermit | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OptimismBridgeExecutor | own contract | OptimismBridgeExecutor (selected) `0x0e37599436974a25ddeedf795c848d30af46eacf` — deployed 2023-09-20 15:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ArbitrumBridgeExecutor | own contract | ArbitrumBridgeExecutor (selected) `0x1dca41859cd23b526cbe74da8f48ac96e14b1a29` — deployed 2022-08-02 16:47:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2BridgeExecutor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgeExecutorBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgeableTokens | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgingManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Core | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Metadata | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201be093d847f6446530efb0e8fb426d176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074628678bd302921c20573eea1ed38ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed611be0e1a820978875c0122f92260804cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e9b6434a12c7bb5b9af3b21963308dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61045f958a209a0f8d746e103ecc625f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bff1beac69925f8bd12526a39baab069e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | InterchainERC20TokenGateway | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenGateway | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20TokenGateway | own proxy deployment | OssifiableProxy (proxy) (selected) `0x07d4692291b9e30e326fd31706f686f83f331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L1ERC20Bridge | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | StMatic | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PoLidoNFT | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | FxStateChildTunnel | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | FxStateRootTunnel | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RateProvider | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PoLidoNFT | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StMATIC | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | Vault | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ManagedValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondStrategy | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DepositWrapper | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultAccessControl | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ERC20SwapValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ManagedRatiosOracle | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ERC20SwapModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondTvlModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ManagedTvlModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ERC20TvlModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | AllowAllValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ConstantAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | WStethRatiosAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | FullMath | unmatched — not counted | — | listed in scope | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | LidoOracle | unmatched — not counted | — | Scope section: 'Files in scope: . src __init__.py constants.py main.py metrics modules providers runtime.py services types.py utils variables.py web3py' | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | AccountingOracle | unmatched — not counted | — | Scope section: 'Files in scope: . src ...' and findings reference accounting.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | EjectorOracle | unmatched — not counted | — | Scope section and findings reference ejector.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ExitOrderIterator | unmatched — not counted | — | Findings reference exit_order_iterator.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ValidatorExitIterator | unmatched — not counted | — | Findings reference exit_order_iterator.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | LidoValidatorsProvider | unmatched — not counted | — | Findings reference lido_validators.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | State | unmatched — not counted | — | Findings reference state.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | BaseStakingModuleOracle | unmatched — not counted | — | Findings reference base.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | SMPerformanceOracle | unmatched — not counted | — | Findings reference base.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | MetaRegistry | unmatched — not counted | — | Findings reference meta_registry.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ExternalOperator | unmatched — not counted | — | Findings reference meta_registry.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | PerformanceWebServer | unmatched — not counted | — | Findings reference server.py and variables.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | DutyAccumulator | unmatched — not counted | — | Recommendation R02 mentions DutyAccumulator.add_duty | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ContractInterface | unmatched — not counted | — | Recommendation R02 mentions ContractInterface.is_deployed | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | CarConverter | unmatched — not counted | — | Recommendation R02 mentions CarConverter.create_car_from_data | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | MidtermSlashingPenalty | unmatched — not counted | — | Recommendation R02 mentions MidtermSlashingPenalty.get_bound_with_midterm_epoch_slashed_validators | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SlotLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | TransferLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BasicShareManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ShareManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ACLModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | CallModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ShareModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SubvaultModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | VaultModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | VerifierModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Consensus | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | MellowACL | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | DepositQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Queue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | RedeemQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SignatureQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Subvault | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Consensus | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Verifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | MellowACL | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SymbioticStrategy | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | RedeemQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SignatureQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | DepositQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | RiskManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | FeeManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BasicShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | TransferLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SlotLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IMellowACL | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IConsensus | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ICustomVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IDepositQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISignatureQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRiskManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ITokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IFeeManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRedeemHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IFactoryEntity | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISymbioticRegistry | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISymbioticVault | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISymbioticStakerRewards | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRewardsCoordinator | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IDelegationManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IAllocationManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISignatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IStrategyManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IWSTETH | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IVerifierModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IBaseModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IShareModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IACLModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IVaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISubvaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ICallModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | OracleHelper | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Subvault | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | VerifierModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SubvaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ACLModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | CallModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ShareModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | VaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BaseModule | unmatched — not counted | — | listed in scope table | no |
| 2025-10-15_Nethermind_NM-0682_Mellow.pdf | Migrator | unmatched — not counted | — | listed in Audited Files table | no |
| 2025-11-17_Nethermind_NM-0703_Mellow.pdf | OracleSubmitter | unmatched — not counted | — | Listed in Audited Files section and described as the sole contract in scope. | no |
| 2025-11-19_Nethermind_NM-0735_Mellow.pdf | SwapModule | unmatched — not counted | — | Listed in Audited Files table and throughout report as the sole contract in scope. | no |
| 2025-12-09_Nethermind_NM-0758_Mellow.pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| 2025-12-09_Nethermind_NM-0758_Mellow.pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| 2026-01-07_Nethermind_NM-0798_Mellow.pdf | BurnableTokenizedShareManager | unmatched — not counted | — | listed in Audited Files table | no |
| 2026-01-21_Nethermind_NM-0812_Mellow.pdf | ShareManager | unmatched — not counted | — | mentioned in Executive Summary and System Overview as the contract from which fees are transferred | no |
| 2026-03-02_Nethermind_NM-0758_Mellow.pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| 2026-03-02_Nethermind_NM-0758_Mellow.pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| Mellow Core Vaults | Factory | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BasicRedeemHook | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | LidoDepositHook | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | RedirectingDepositHook | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | FenwickTreeLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SlotLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | TransferLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BasicShareManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | FeeManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | RiskManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ShareManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | TokenizedShareManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ACLModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BaseModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | CallModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ShareModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SubvaultModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | VaultModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | VerifierModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Oracle | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BitmaskVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Consensus | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | MellowACL | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | EigenLayerVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ERC20Verifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | OwnedCustomVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SymbioticVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Verifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | DepositQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Queue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | RedeemQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SignatureDepositQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SignatureQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SignatureRedeemQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Subvault | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Vault | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BitmaskVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Consensus | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Verifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | MellowACL | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | EigenLayerVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | OwnedCustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ERC20Verifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SymbioticVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SymbioticStrategy | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SignatureDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | RedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Queue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | DepositQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SignatureRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | TokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | RiskManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | FeeManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | BasicShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | LidoDepositHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | RedirectingDepositHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | BasicRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | TransferLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SlotLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | FenwickTreeLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IMellowACL | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IConsensus | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ICustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRiskManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ITokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IFeeManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IFactory | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IFactoryEntity | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IOracle | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISymbioticRegistry | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISymbioticVault | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISymbioticStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRewardsCoordinator | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IDelegationManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IAllocationManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISignatureUtils | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IStrategy | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IStrategyManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IWSTETH | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IWETH | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IVerifierModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IBaseModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IShareModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IACLModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IVaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ICallModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Factory | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | OracleHelper | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Subvault | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Vault | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | VerifierModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ACLModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | CallModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ShareModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | VaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | BaseModule | unmatched — not counted | — | listed in scope table | no |
| NM-0682 Migrator | Migrator | unmatched — not counted | — | listed in Audited Files section | no |
| NM-0703 Oracle Submitter | OracleSubmitter | unmatched — not counted | — | Listed in Audited Files section and described as the main contract in scope. | no |
| NM-0735 Swap Module | SwapModule | unmatched — not counted | — | Listed in Audited Files table and throughout report as the sole contract in scope. | no |
| NM-0758 SyncDepositQueue | SyncDepositQueue | unmatched — not counted | — | listed in scope table | no |
| NM-0758 SyncDepositQueue | SyncQueue | unmatched — not counted | — | listed in scope table | no |
| NM-0798 BurnableTokenizedShareManager | BurnableTokenizedShareManager | unmatched — not counted | — | listed in Audited Files table | no |
| NM-0812 Redeem Queue Fee Fix | ShareManager | unmatched — not counted | — | The audit scope is a pull request that modifies the ShareManager contract to transfer fees via burn and mint. | no |
| NM-0758 SyncDepositQueue | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM-0758 SyncDepositQueue | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM-0891 PermissionedChainlinkOracle | PermissionedChainlinkOracle | unmatched — not counted | — | listed in scope table and executive summary | no |
| NM-0891 PermissionedChainlinkOracle | SwapModule | unmatched — not counted | — | mentioned in finding as file(s) in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb` | ACL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e40d73eb977dc6a537af587d48316fee66e9c8c` | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb113890b04b49455dfe06554e2d784598a29c9` | APMRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75100bd564415731b5936a4a94d0dc29dde5db3c` | BokkyPooBahsDateTimeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xde45f101250f2ca1c0f8adfc172576d10c12072d` | ComposableStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9e5cbb9ca5b0d659238807e84d0176930753d86` | Finance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc` | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b3edb22952fb4a70140e39fb1add05a6b49622b` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x32296969ef14eb0c6d29669c550d4a0449130230` | MetaStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431` | Mooniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a` | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf73a1260d222f447210581ddf212d915c09a3249` | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x178e029173417b1f9c8bc16dcec6f697bc323746` | WeightedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 350 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 1502 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 68
- Inherited remapped matches: 0
- Address-book scope dispositions: 298 own (48 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 17 ambiguous, 1486 unmatched
- Matched-own operational status: 298 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=136, low=5, medium=4
- Match method counts: address=62, unique_name=236

Zero-match audit list:

- [17725] See [full report]() for more details.
- [17726] See [full report]() for more details.
- [17731] See [full report]() for more details.
- [17732] See [full report]() for more details.
- [17733] See [full report]() for more details.
- [17734] See [full report]() for more details.
- [17741] See [full report]() for more details.
- [17742] See [full report]() for more details.
- [17743] See [full report]() for more details.
- [17744] See [full report]() for more details.
- [17748] See [full report]() for more details
- [17754] See [full report]() for more details.
- [17757] See [full report]() for more details.
- [17759] See [full report]() for more details.
- [17762] See [full report]() for more details.
- [17764] See [note]() contents for more details.
- [17772] See [full report]() for more details.
- [17777] See [full report]() for more details.
- [17778] See [full report]() for more details.
- [17779] See [note]() contents for more details.
- [17785] See [full report]() for more details.
- [17787] See [full report]() for more details.
- [17792] See [full report]() for more details.
- [17795] See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release.
- [17804] See [full report]() for more details.
- [17806] The implementation has been audited by MixBytes() and considered safe. Read the full report from [here]().
- [17807] See [full report]() for more details.
- [17808] See [full report]() for more details.
- [17809] See [full report]() for more details.
- [17814] See [full report]() for more details.
- [17815] See [full report]() for more details.
- [17816] See [full report]() for more details.
- [17817] See [full report]() for more details.
- [17818] See [full report]() for more details.
- [17819] See [full report]() for more details.
- [17820] See [full report]() for more details.
- [17821] See [full report]() for more details.
- [17822] See [full report]() for more details.
- [17823] See [full report]() for more details.
- [17825] See [full report]() for more details.
- [17834] See [full report]() for more details.
- [17835] See [full report]() for more details.
- [17837] Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified.
- [17838] See [full report]() for more details.
- [17842] See [full report]() for more details.
- [17843] See [full report]() for more details.
- [17844] See [full report]() for more details.
- [17845] There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding.
- [17846] - [**Audit Report for v8.0.1 (Composable Security)**]()
- [17848] 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf
- [17849] 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf
- [17850] 2025-10-15_Nethermind_NM-0682_Mellow.pdf
- [17851] 2025-11-17_Nethermind_NM-0703_Mellow.pdf
- [17852] 2025-11-19_Nethermind_NM-0735_Mellow.pdf
- [17853] 2025-12-09_Nethermind_NM-0758_Mellow.pdf
- [17854] 2026-01-07_Nethermind_NM-0798_Mellow.pdf
- [17855] 2026-01-21_Nethermind_NM-0812_Mellow.pdf
- [17856] 2026-03-02_Nethermind_NM-0758_Mellow.pdf
- [17858] Mellow Core Vaults
- [17859] Mellow Core Vaults
- [17860] NM-0682 Migrator
- [17861] NM-0703 Oracle Submitter
- [17862] NM-0735 Swap Module
- [17863] NM-0758 SyncDepositQueue
- [17864] NM-0798 BurnableTokenizedShareManager
- [17865] NM-0812 Redeem Queue Fee Fix
- [17866] NM-0758 SyncDepositQueue
- [17867] NM-0891 PermissionedChainlinkOracle

Fork inheritance lineage and inherited audits are included when available.
