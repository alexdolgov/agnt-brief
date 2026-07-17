# Agentic Audit Brief: Avalon Labs

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.3% over 90 days

## Project Overview

- Project: Avalon Labs (`avalon-labs`)
- Website: [https://www.avalonfinance.xyz](https://www.avalonfinance.xyz)
- Lifecycle: unknown (Tier 0, 85.1% below peak)
- Generated: 2026-07-04T14:53:04.980Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, base, berachain, bsc, ethereum, klaytn, mantle, merlin, mode, scroll, sei, sonic
- Contract surface: 571 unique implementations (913 raw deployments)
- DeFi Llama TVL: $398,187,502.00
- On-chain TVL (included contracts): $1,990,093.28
- TVL by chain: Bsc $1,990,093.28 | Ethereum $0.00

## Project Description

Anchor BTC. Structurally: 272 project-authored contract(s) across 10 chain(s); 1 ERC4626 vault, 31 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on aave.

### Architecture

The protocol comprises 13 functional families. Its contracts share 49 common project-authored base contract(s) (proxy, oapp, oappsender). Dominant framework: aave.

## Contract Surface Quality

- Indexed contracts: 1573; live-surface contracts included: 909 (313 live, 596 unknown).
- Excluded by liveness: 664 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/28 (17.9%)
- Deployed-live implementations: 34 of 571 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/44
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 2
- Unverified implementations: 527
- Unique implementations: 571
- Raw deployments: 913
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $1,990,093.28
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 2 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 14.3% (SlowMist)
- Note: This protocol is classified as [unknown]. ASD of $1,990,093.28 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 4 | 9.1% | 2024-10 |
| BlockSec | Tier 2 | 3 | 6.8% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x02fedcff97942fe28e8936cdc3d7a480fdd248f0`](./contracts/bsc-56/0x02fedcff97942fe28e8936cdc3d7a480fdd248f0/); bsc `0xeb13f6d8cd2f9a295fdaa5f1e7638d8ce6d3c5ed` | ✅ Audited |
| SavingAccount | core_logic | ethereum | n/a | [`0x01e3cc8e17755989ad2cafe78a822354eb5ddfa6`](./contracts/ethereum-1/0x01e3cc8e17755989ad2cafe78a822354eb5ddfa6/) | ✅ Audited |
| sUSDa | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b66aade1e9c062ff411bd47c44e0ad696d43bd9`](./contracts/ethereum-1/0x2b66aade1e9c062ff411bd47c44e0ad696d43bd9/); bsc `0x73a325103935b0b5e7aa3aca6dba74ad22f82b03`; mantle `0x5a61b1d8272b250729ea3f5ed3ef843f4d66bc6e` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedUSDX | token | bsc | n/a | [`0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92`](./contracts/bsc-56/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | sei | n/a | 25 deployments: ethereum `0x2ee0438bcc1876cea2c6fc43dd21417cf3d1c2ef`; ethereum `0x87ed94868f6fbaa834db81a1c5854c445cacab67`; ethereum `0xfabb0fdca4348d5a40eb1bb74aea86a1c4ead7e2`; bsc `0x2c4aeb7c9f0d196a51136b3c7bec49cb2dbd1966`; bsc `0x5157f63be7808deb090eee7762e917745896a09e`; bsc `0x56f817ef5d1945e0772496020ff0f72c3984b351`; bsc `0x58c937fa2d147117db43d187f9411151edfff03c`; bsc `0x5b9b3c211b81627cc6b46824cb26829f31a587dc`; bsc `0x672b19dda450120c505214d149ee7f7b6ded8c39`; bsc `0x9515dc23bbe46f9c9885d24fa276745a11b7f9d8`; bsc `0xa34f1a928024e3609c8968fea90c747e8d1fa20f`; bsc `0xc5b05b7092257ee3eeaf013198d30f1e8179b6c9`; bsc `0xf828a73cb00072843241c6294ed778f26854fe5c`; sonic `0x1c6e9510055b71429022b997e6602fbaeeb0481f`; sonic `0x23f02c2eefe2010298ab74059393326d3df59a02`; sonic `0x28350e38f241d7f24106ce5eab1684d6ebeb4700`; sei [`0x16b9b88b773c1a1aba6d305e0560171405d45121`](./contracts/sei-1329/0x16b9b88b773c1a1aba6d305e0560171405d45121/); sei `0x5ecdc2432ed77cd8e2ce6183712c5cc712c40ec0`; base `0xa9d15c669940a757ab76c6604f2f8f1e198f7d50`; mode `0x8f016f5dac399f20b34e35cbaf1dff12eee2de74`; mode `0xc5b05b7092257ee3eeaf013198d30f1e8179b6c9`; arbitrum `0x2c4aeb7c9f0d196a51136b3c7bec49cb2dbd1966`; arbitrum `0xec579d2ce07401258710199ff12a5bb56e086a6f`; arbitrum `0xfabb0fdca4348d5a40eb1bb74aea86a1c4ead7e2`; scroll `0x18cbe70602ee17f79d56971f685e9eaf49da53f2` | ⚠️ Unaudited |
| ACLManager | governance | mode | n/a | 5 deployments: bsc `0xae5d156cecb47b7082e404fcb36cccee92c88537`; bsc `0xdc041aface653446759824b9588ed71201b5049e`; base `0xb961661f5ca019e232661bd26686288a6e21d928`; mode [`0x8692d945f2d8a1f3770610b814110b28bce62cd2`](./contracts/mode-34443/0x8692d945f2d8a1f3770610b814110b28bce62cd2/); mode `0xc6a9361aa27f3765a3b64d3fafa27b4e058f74bb` | ⚠️ Unaudited |
| Avalon | unknown | bsc | n/a | 2 deployments: bsc [`0x9124b9b7517387937e07078db5a2620860400330`](./contracts/bsc-56/0x9124b9b7517387937e07078db5a2620860400330/); bsc `0x9beee89723ceec27d7c2834bec6834208ffdc202` | ⚠️ Unaudited |
| AvalonTimelock | governance | bsc | n/a | [`0x1e93f31dab711d36b263d0b8ae3a6730792b603f`](./contracts/bsc-56/0x1e93f31dab711d36b263d0b8ae3a6730792b603f/) | ⚠️ Unaudited |
| AVLStaking | token | bsc | n/a | 2 deployments: ethereum `0x2c9b3d4e7a82feec1843c1e0e6f1c8fdcb7a1680`; bsc [`0x1c961a18882661dc2aea540108a1165dfa69ec3b`](./contracts/bsc-56/0x1c961a18882661dc2aea540108a1165dfa69ec3b/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | bsc | n/a | 186 deployments: ethereum `0x01f4b5f437d336f9d265a29cd7bb363135f53ebf`; ethereum `0x075df695b8e7f4361fa7f8c1426c63f11b06e326`; ethereum `0x10858774028d2e3dbe54ecdc8eb890fd188b81ca`; ethereum `0x1bf297950b07074c15f3a87eb9f71e5b47eddedb`; ethereum `0x1c81eaa89ed2c607654e84320f92af0f087e4857`; ethereum `0x1cc929ef5d7f16791cbfb2a0be691d2ff728238a`; ethereum `0x30aa4ccff52b565c82185f8701eb764e2453d5e7`; ethereum `0x331c8b64d4a7e3816a0e6dc56437eb755e77c8f4`; ethereum `0x351aa490e6fbc20b2fa7a40a9cddb6f6317e5ba1`; ethereum `0x4892aae426c0b0791e224ed801358d7a67d021d1`; ethereum `0x4c25c261fe47bc216113d140baf72b05e151bce4`; ethereum `0x526580da518cb0fdc4085721c610fb02469230e6`; ethereum `0x558beae3405a11fce77747927b9286ec3a0a651c`; ethereum `0x5a61b1d8272b250729ea3f5ed3ef843f4d66bc6e`; ethereum `0x5f7ceb6fdd291ed0cc426990e63d47e8fa98c358`; ethereum `0x7148ad120b23ba8ac04bba49834063c876bd7bd5`; ethereum `0x787e380c0bfa2b9ce06653e0a117dd6ad2ccbbea`; ethereum `0x7c1f51336ebc56bcc9119491914993fc4cea1643`; ethereum `0x7d51cb25dae8fe4b558dd51282ce67f0cacfe73c`; ethereum `0x80b5be47d113217f06fd07d8b03722df345e1993`; ethereum `0x8c15827d3af9969fe92a307c266e0a89f9b9a467`; ethereum `0x9783bed3471bfef794354b8b7fd4ea52dfbb7de6`; ethereum `0x9a181588c4991bbbd942c23b441a4d23fa70d0ce`; ethereum `0x9d321e54cf174a96c733394c2adb7fbf51526a64`; ethereum `0xa0d400132cf598420c248d2341e2350adc4ea6b9`; ethereum `0xa23e2b1ad0873e0c8f9132f89344a6144daa7295`; ethereum `0xa8944a97eaf75d8d107f97da9acd101b00fc72e6`; ethereum `0xb2a64a0640bd22277de5bec18f23164ee5dd4928`; ethereum `0xb6661f3bbff47fedc73dd983a324f754ede51a8e`; ethereum `0xca2da6d2c91a472b49fe10a672e2324912e582c0`; ethereum `0xd63332b2691626742101680658a96361a415af88`; ethereum `0xd96da8fd5901b6d013708f66f7f38cc81c0ab5f6`; ethereum `0xea714f969cece3b29af0a51d48e0ac3cd91d6fee`; ethereum `0xf043f5a45bd0109afa82d281bacb41ea2b3e3e89`; ethereum `0xfd88b24c0f66d59d7971f46452494288e3ae6bcf`; bsc [`0x0024818043d04b1cc9685233d47ef7eea6df0a5e`](./contracts/bsc-56/0x0024818043d04b1cc9685233d47ef7eea6df0a5e/); bsc `0x016f4d8ea031511e5fa0a6cf3190f9861a00205d`; bsc `0x0230c02a5fa41f41175f21571f3c4308020c6375`; bsc `0x03372fbb8731c0d8ec02b4fa6ab5983c03a9deec`; bsc `0x075df695b8e7f4361fa7f8c1426c63f11b06e326`; bsc `0x07e1ae7f0b49e3d610b717610d17680a1ebc5d9f`; bsc `0x0a444c5a5f623276961ac96fba48cdb86d92dc09`; bsc `0x0b5965f93eadb1b535e1611b4c8181afedf91add`; bsc `0x1076a011a5d39872d774cd83ee094d1eb46e57c0`; bsc `0x1542739248ed3db0c02cd95cf1e73bd2ba528ffa`; bsc `0x191280ea424eb0581e5a1597b18fdeee2231f9b2`; bsc `0x1c81eaa89ed2c607654e84320f92af0f087e4857`; bsc `0x26fd39306c4bef2f35bc38b4aa188987a4de4b54`; bsc `0x2972012b416f5e3f6cf4b29ac348959177e21ea8`; bsc `0x2e6b7991065e10ca2caa06fa8a2c7f8d01dff496`; bsc `0x2e7b1dd4f0ba4db176439a16c2368b03c0dfcd85`; bsc `0x2f88c459c485de94060df48d134709b48160cfcc`; bsc `0x332a0b618e49014832f7d0323ca9b9a6fdc8d776`; bsc `0x3456f198c7c34dfc08a5e96c34c89c38f8380bb3`; bsc `0x38647ff5edfafe5d6e93adf8b96f0edd63cd5858`; bsc `0x3c4537b65ac24f87000b215c930e13e059526351`; bsc `0x42d147324122dfc81addefc821536d4ff6245776`; bsc `0x49c13d5c43b6259cfd3ecdaf224d4088f459d7de`; bsc `0x4bb77e4b19efc2be46ac72b72c809ddb054c3b8e`; bsc `0x4ea93e846b8c6e7b3d5a5bedf4fe6b8aed58fcee`; bsc `0x4faece9571a71d848b5d95a6c554ea975f7b79a1`; bsc `0x5177447c60499ec86cc04653c4966954a46874e8`; bsc `0x53b35d0000ae6f33c45f80918eedae9197d93a44`; bsc `0x5a61b1d8272b250729ea3f5ed3ef843f4d66bc6e`; bsc `0x60e3ef13334f178ea6e95c526cc84034922c95e8`; bsc `0x648cb2d0ecc8eb0b9021a7de7b060bf05e95ec95`; bsc `0x66432ca879a8ac22eb4fd9eb3bb17b964d827570`; bsc `0x6755feb674112e8a47cd81a30b63adc605e3491f`; bsc `0x774636a89cb5680311fb54c11b7dd5530e16b3e6`; bsc `0x78fa4e6ceb09a55424ba300cd3bdfb0ca6e2f10b`; bsc `0x7dbe4a81bfa34be93eb6b86762cc0800ca666a92`; bsc `0x7f013be45e3de5832c928265608b26899b731633`; bsc `0x821d2e44984168d278c698fd742d5138c01baaa2`; bsc `0x84071c55427f2ede30ec6779b8892f565952e80f`; bsc `0x8424e226827aa6fdb7075ea1218e83a27576eb91`; bsc `0x85491ea8bb6d5ca925ce4871a8138360f7d8f937`; bsc `0x87656c0f7de2f267c682d5b9ec070d589571dd22`; bsc `0x897bf29f7cbc77357fb6321890b87844529e1441`; bsc `0x9a181588c4991bbbd942c23b441a4d23fa70d0ce`; bsc `0x9b414992c40659af7228fbe47b5f8acf81560139`; bsc `0xa1a7645f9b28db08c40a32e380d6a58b0a8ced42`; bsc `0xab8371370c6901a386595ea274241fefc0e8af0e`; bsc `0xad833ef141dfb284428a60598cc68de83c781087`; bsc `0xb2c6f2ead0d49bdf27f321449085d054f31f2c25`; bsc `0xb2df8c0dd07e260122135087224aacaea19b7b80`; bsc `0xb60a7e2ef708da20787a2c659d473647607fc584`; bsc `0xb801dcac80de96fca2dae090b6fd3f3286d994ea`; bsc `0xbd014798c547889c36c8b89f6434aecf93278709`; bsc `0xc0117347ce42efb15a6015af9368c5c9b4e46c25`; bsc `0xc0aafe57d302c1095fbf7190467c7c772f15237e`; bsc `0xc18e9273955b51585bba782456ff5ffde2feaca6`; bsc `0xc8b60250993a5bc21c925ff1a5ab7d5044f9dded`; bsc `0xcb3bfa353d2e57895052731797ff6d2ef31e7efc`; bsc `0xccc6131c612147c0b08a9a6628c6c21931c2feda`; bsc `0xd5d37fcb8a7b6afad9b5a05cd80431c12fe02f2b`; bsc `0xddd646fce270e4e726ea323fc1c2297e8587d683`; bsc `0xde33ce612be05dcb65b2a78acc33e7706abe0212`; bsc `0xea8e3d2d0b0dea0e2f529b702dbfd9e22a6d8896`; bsc `0xecf226205ac7b299ed11f4372a5d7f7781c4e40f`; bsc `0xf0d077728d424ee6c6eba82d23ce56c2e91e57ea`; bsc `0xf37c6cd4dda05504bd8a267402d203cf767503ef`; bsc `0xf9511b6f267aaacad9054390d7165a0c60774134`; bsc `0xfb2e7fee3a518e9c84da8abdf3d56779599185be`; bsc `0xfbd67f2d6cf7b8a86549198dd1a72c8db97fb6ab`; bsc `0xfe48b507e063031d7664523dc087153784d7b631`; bsc `0xfe59ca23981346ef981fcb26a88e33e79791c41e`; sonic `0x0ccb6f3c47da459d47d99b3ef75fd2f92ff985da`; sonic `0x143fdaaa8a7620622847e057baa53c0b51588b98`; sonic `0x17aa0e8546cd5b75115f09e3109c0a08aae0c1b7`; sonic `0x1c2031b4367097d2a9125059940c06303fb63bc1`; sonic `0x2329bf5a05eea503f8149edbf4004f9846e562ac`; sonic `0x276f2ed147f858c882f9b0abe9ba58f7d385d851`; sonic `0x3c32711e17a4255b282c28eca96fb09c069b9a29`; sonic `0x3d678b30a3c39bece8ffcc3a8b3d524680bf4d2f`; sonic `0x4384cac1ef7b92388c30e1ca385543ace76bcb0a`; sonic `0x5126add2cf0809410906cb7e7d2e6e886745b389`; sonic `0x577c75295b9a755f4872c39ff23baced3768088b`; sonic `0x5e2ab9aec442f94c4fb0c6bf1741122158ca8385`; sonic `0x641c0b09f53408657a0ee97ce4cbeefe6a704b9e`; sonic `0x6aea35b24545c3b3c9322d9e0988f42b104468a9`; sonic `0x6ddcc9e81c2d27779d3da813853ea67158e0765d`; sonic `0x7dbe4a81bfa34be93eb6b86762cc0800ca666a92`; sonic `0x8b83a1576c0e554b53bed9ec48f646c64c3ef134`; sonic `0x947a1751b5aff60be31529d91ae0067e3cec2b13`; sonic `0xa7da5af5370d7c6511e022ec429c639fdb885ba6`; sonic `0xad0e482f549608cb3de269a5fc690855f5e1ed94`; sonic `0xbb1035380bd581fa0b6c0fbd0362d94a63a701f6`; sonic `0xbd68cc168f504c9addd4ce18aa76c8811117fbf8`; sonic `0xc3f18010b07f01bd58a9782c887eb083435b5b9f`; sonic `0xcb3bfa353d2e57895052731797ff6d2ef31e7efc`; sonic `0xd18f63999172f96a9b405e6362e296a3e7008b84`; sonic `0xd30cb9f955b71eb3d3307068d570ab198f3ab6fa`; sonic `0xd7b09e90fbbe398b1bfda16d03a77c5037cfb95c`; sonic `0xde3cc2e6d4660ac39d2c2c3762d727dc80996bc4`; sonic `0xdf4bcc1230f97eef0efb085397abe8a66e6cab53`; sonic `0xe2f68bbddfed87d8f60bf07373dc491a8210b92e`; sonic `0xe32dd6a28f31eb96765b8f09142c120e97818c3b`; sonic `0xe4bfdfbd930cbac6ec7b5ba2cebec6e1a228bc9d`; sonic `0xf690b3c9501221a5ba955a4bb138c0341dcc6b3f`; sonic `0xf9d3b282f6a63d23e0ffa62573eabcaa661c6af0`; sei `0x4faece9571a71d848b5d95a6c554ea975f7b79a1`; sei `0xed2cb832210f102cd8aa326e2df213b93a1f4102`; base `0x07e1ae7f0b49e3d610b717610d17680a1ebc5d9f`; base `0x19e6856186fe52217055e8edb6814b3ed2d53e05`; base `0x1d6d16afd4f047d16e02902d6a49e4da7c6f4786`; base `0x2c84d2318f78ed5bbc646bf6db625f42ba36ac66`; base `0x332a0b618e49014832f7d0323ca9b9a6fdc8d776`; base `0x407759c97a4d2b93a4d71456ebb6cb8a4b719f1a`; base `0x4ea93e846b8c6e7b3d5a5bedf4fe6b8aed58fcee`; base `0x67fd197f27f2390d55e6a3c81bc22b9d4beca203`; base `0x732712b5288c9e10954a37a691c0368fc7f5dcbf`; base `0x774636a89cb5680311fb54c11b7dd5530e16b3e6`; base `0x84071c55427f2ede30ec6779b8892f565952e80f`; base `0x85491ea8bb6d5ca925ce4871a8138360f7d8f937`; base `0xb2763ad42f91e5c2463c6fba983a1ae7d2a6f03d`; base `0xc76aab1228f1e2e04a409a10408d17fd30ea746b`; base `0xd43ab352c114e470fb67fdcb118769675db07dd3`; base `0xe329c3d847a88fbefc8c9a4e1df5d1c88fd94082`; mode `0x07e1ae7f0b49e3d610b717610d17680a1ebc5d9f`; mode `0x1d6d16afd4f047d16e02902d6a49e4da7c6f4786`; mode `0x2c84d2318f78ed5bbc646bf6db625f42ba36ac66`; mode `0x332a0b618e49014832f7d0323ca9b9a6fdc8d776`; mode `0x3456f198c7c34dfc08a5e96c34c89c38f8380bb3`; mode `0x407759c97a4d2b93a4d71456ebb6cb8a4b719f1a`; mode `0x4ea93e846b8c6e7b3d5a5bedf4fe6b8aed58fcee`; mode `0x67fd197f27f2390d55e6a3c81bc22b9d4beca203`; mode `0x732712b5288c9e10954a37a691c0368fc7f5dcbf`; mode `0x774636a89cb5680311fb54c11b7dd5530e16b3e6`; mode `0x84071c55427f2ede30ec6779b8892f565952e80f`; mode `0x85491ea8bb6d5ca925ce4871a8138360f7d8f937`; mode `0xc0aafe57d302c1095fbf7190467c7c772f15237e`; mode `0xc76aab1228f1e2e04a409a10408d17fd30ea746b`; mode `0xd43ab352c114e470fb67fdcb118769675db07dd3`; mode `0xe329c3d847a88fbefc8c9a4e1df5d1c88fd94082`; arbitrum `0x075df695b8e7f4361fa7f8c1426c63f11b06e326`; arbitrum `0x1c81eaa89ed2c607654e84320f92af0f087e4857`; arbitrum `0x410d2d3dc79ec66a2cfc3a4a0ad4af3a38d38bd0`; arbitrum `0x5a61b1d8272b250729ea3f5ed3ef843f4d66bc6e`; arbitrum `0x7148ad120b23ba8ac04bba49834063c876bd7bd5`; arbitrum `0x821d2e44984168d278c698fd742d5138c01baaa2`; arbitrum `0x9a181588c4991bbbd942c23b441a4d23fa70d0ce`; arbitrum `0xa28b1053e637a7b6ca8e7b457fd250c4e94e1dcf`; arbitrum `0xa46f330e009e8d3355b699a7a28da2cddf77f0fe`; arbitrum `0xa68c3ab85337a57da86f3bea5b6ddbfc96fb2249`; arbitrum `0xf961605cf789d48baaf1060d90fa3bf9bfcf9371`; scroll `0x4ea93e846b8c6e7b3d5a5bedf4fe6b8aed58fcee` | ⚠️ Unaudited |
| DelegationAwareAToken | token | mode | n/a | 2 deployments: mode [`0x00c4613e32536cae23e88bf29c44a73a36ccf3ea`](./contracts/mode-34443/0x00c4613e32536cae23e88bf29c44a73a36ccf3ea/); mode `0xfc8f7a1775322647f3e3d957f125abff70c9e877` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | mode | n/a | 2 deployments: mode [`0xa22de22cbfdd8699ed00e1ceef5f7e0a621890ab`](./contracts/mode-34443/0xa22de22cbfdd8699ed00e1ceef5f7e0a621890ab/); mode `0xb5250a29df1d8de7131e96156d3beeda0bfbb57d` | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | 3 deployments: ethereum [`0x266f93db3771ab1459ef19cfe5cae37107116cc3`](./contracts/ethereum-1/0x266f93db3771ab1459ef19cfe5cae37107116cc3/); bsc [`0x266f93db3771ab1459ef19cfe5cae37107116cc3`](./contracts/bsc-56/0x266f93db3771ab1459ef19cfe5cae37107116cc3/); mantle [`0x266f93db3771ab1459ef19cfe5cae37107116cc3`](./contracts/mantle-5000/0x266f93db3771ab1459ef19cfe5cae37107116cc3/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | [`0x2aa51a1d4a549cf2fff0159f9d041cb50a9a8247`](./contracts/bsc-56/0x2aa51a1d4a549cf2fff0159f9d041cb50a9a8247/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | berachain | n/a | [`0x0c3616027b7d7ac8ba6fa2a1540a5e6a728ceba5`](./contracts/berachain-80094/0x0c3616027b7d7ac8ba6fa2a1540a5e6a728ceba5/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | mode | n/a | 2 deployments: mode [`0x707b8ce7e7313fa3ecdbf458fa27241bb42a6991`](./contracts/mode-34443/0x707b8ce7e7313fa3ecdbf458fa27241bb42a6991/); mode `0xb5ec04d3c4d98c3105210f66eb766ed45f293526` | ⚠️ Unaudited |
| LockedFBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9`](./contracts/ethereum-1/0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9/); ethereum `0x8dc0d5e06995d119a9ccdb3472cc9e920389f39c` | ⚠️ Unaudited |
| LockedFBTC | unknown | bsc | n/a | 2 deployments: bsc [`0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9`](./contracts/bsc-56/0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9/); bsc `0x8dc0d5e06995d119a9ccdb3472cc9e920389f39c` | ⚠️ Unaudited |
| LockedFBTC | unknown | mantle | n/a | 2 deployments: mantle [`0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9`](./contracts/mantle-5000/0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9/); mantle `0x8dc0d5e06995d119a9ccdb3472cc9e920389f39c` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | mode | n/a | 2 deployments: mode [`0x8ca0fe5ba4e182ef11cb012f9a3a8ae9d0de1784`](./contracts/mode-34443/0x8ca0fe5ba4e182ef11cb012f9a3a8ae9d0de1784/); mode `0xef83ddeb85d365daed0743ca4ba06371dbe49af1` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | n/a | 9 deployments: ethereum [`0x3975be5e668b189b8ac9049b96a9d9561c4f5273`](./contracts/ethereum-1/0x3975be5e668b189b8ac9049b96a9d9561c4f5273/); ethereum `0xe00a3fe97714765a1a2054e850724fd1320facc0`; ethereum `0xff12470a969dd362eb6595ffb44c82c959fe9acc`; bsc `0x5395201a4dd625a0d69b99d917282f75928416c1`; bsc `0xb1c93ba1286b6cca1496c266f0ebfce94b0c0cc0`; mode `0x490f8f29eb03caf34b267d20ed2a34752e75ca93`; mode `0xe3b01b24ab4f082ff496589d17e31c13d1ef5dcc`; arbitrum `0xa2ddc06badc817c612111137c0cf6bd43634ee1a`; scroll `0xfbb77a68ee35e7902f1abe0bd34b263023e90c70` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | 4 deployments: bsc [`0x28350e38f241d7f24106ce5eab1684d6ebeb4700`](./contracts/bsc-56/0x28350e38f241d7f24106ce5eab1684d6ebeb4700/); bsc `0x373ab8f1386a4cc5a973ef5d60cd1fc9b97a50f9`; sei `0x5c7163184309fdb63e763192a3f40cf0ca6082a4`; sei `0xcde33b79c2a40e17b4f8f0e11cdeb836c8218ebd` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | mode | n/a | 2 deployments: mode [`0x279600943897b64cd8e7e050c0c7ec66876f2962`](./contracts/mode-34443/0x279600943897b64cd8e7e050c0c7ec66876f2962/); mode `0xdc041aface653446759824b9588ed71201b5049e` | ⚠️ Unaudited |
| RewardsController | governance | mode | n/a | 2 deployments: mode [`0x4881fd4d2d056745098d79b3ee2a45b31e1bac0d`](./contracts/mode-34443/0x4881fd4d2d056745098d79b3ee2a45b31e1bac0d/); mode `0x95feaae6f7991fadcc565c39aebd7b2e6deb0dc4` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x5a79311083dc82abc2de1e5639673c876cc6757e`](./contracts/ethereum-1/0x5a79311083dc82abc2de1e5639673c876cc6757e/) | ⚠️ Unaudited |
| sAVL | unknown | bsc | n/a | 2 deployments: ethereum `0xdb8d776139e635e9ab422a295d47629762b33b50`; bsc [`0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300`](./contracts/bsc-56/0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300/) | ⚠️ Unaudited |
| StableDebtToken | token | mode | n/a | 2 deployments: mode [`0xa3ed9fab560bcf127adabc793de68b241d4ce4a2`](./contracts/mode-34443/0xa3ed9fab560bcf127adabc793de68b241d4ce4a2/); mode `0xe35e20f9e56385915a614ac4d3a67da3c5e80605` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 3 deployments: ethereum [`0x37c21df558f7ba9401a56d9017fa047cbafeeda8`](./contracts/ethereum-1/0x37c21df558f7ba9401a56d9017fa047cbafeeda8/); bsc [`0x37c21df558f7ba9401a56d9017fa047cbafeeda8`](./contracts/bsc-56/0x37c21df558f7ba9401a56d9017fa047cbafeeda8/); mantle [`0x37c21df558f7ba9401a56d9017fa047cbafeeda8`](./contracts/mantle-5000/0x37c21df558f7ba9401a56d9017fa047cbafeeda8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7840fca3acd12b96d7137d9b1f9434634bf333a1`](./contracts/ethereum-1/0x7840fca3acd12b96d7137d9b1f9434634bf333a1/); ethereum `0x88cd59d81020c3727e274fa0bd1f711550edc497` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0xf297230fa5614545b427616148a74c888620d659`](./contracts/ethereum-1/0xf297230fa5614545b427616148a74c888620d659/); ethereum `0xf613a55fa915eafaeb124897c1142c44232b5a3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x713efc245745b370d4246759ed8a856c885ddafb`](./contracts/bsc-56/0x713efc245745b370d4246759ed8a856c885ddafb/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | mode | n/a | 2 deployments: mode [`0x3f72812ffbe9cfd45a020c27d56a9e219ac1c1b1`](./contracts/mode-34443/0x3f72812ffbe9cfd45a020c27d56a9e219ac1c1b1/); mode `0x6cab077bb3c6923b679d665980e7cf15bd26029f` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | sonic | n/a | 42 deployments: ethereum `0x0c57b0a45b2a255f5e9ed830abfbd0402e91aa1f`; ethereum `0x1542739248ed3db0c02cd95cf1e73bd2ba528ffa`; ethereum `0x358c2be29b32f671d6e2ca9f81790e56ce726336`; ethereum `0x8e2fe983dbacdb2fc09a13390047fd2ad771dedd`; ethereum `0xd5d37fcb8a7b6afad9b5a05cd80431c12fe02f2b`; bsc `0x0c57b0a45b2a255f5e9ed830abfbd0402e91aa1f`; bsc `0x12aaa87a13879856aeb5cd4452b20be37ed2bb65`; bsc `0x35b6c804f614bf7c531240e1e249a29deef22f8e`; bsc `0x385009a463bf818812ab7199ea1adee96b9c9c3c`; bsc `0x409392e40356e733db41bc23790d8864b486f28f`; bsc `0x5879b7ee85621d65db4325bd1de1315eba762ab3`; bsc `0x745956a62ef7cbb9f2b73718eb42f699c8a4052e`; bsc `0x89f047bf753f288f170b4ec4c3a3ee1aacae98ce`; bsc `0x9bed9cf1cfb69f468f6f9121dd620c228203cc37`; bsc `0x9d6341a6fed3e886d8be47aaba932ae4b6066aa8`; bsc `0xa498249ff2e4428376530155098edda2c574c636`; bsc `0xc88987be02079fb9fb0483757a0a552e088be431`; bsc `0xea64607d07844ca9860019d29e46ea6d1344b937`; sonic [`0x00ad0e3d7daba4092be35741ff1f92d571f4100f`](./contracts/sonic-146/0x00ad0e3d7daba4092be35741ff1f92d571f4100f/); sonic `0x139b8134fc8aba97a2d8dc9edfd2b23861fa1684`; sonic `0x2bd254646b502ea629fc0a2fcaae6ac5adc29242`; sonic `0x355b535b59f876e4d8273576506231b4e57060fa`; sonic `0x51b70b7ea1d6935167af78738e2cc810694a81a8`; sonic `0x8812c8cdc9cf8955aa2f001d9bc7d06256ae55aa`; sonic `0x8c403dc59b3f05776685db86d273f76bfafc3d46`; sonic `0x8e91bdf808ba32313c6e9af93f862e9a74efe962`; sonic `0xaf0f0321314be505432a076480514b89b905f72d`; sonic `0xb3aac76eac659602501c265f4dc36bba776b2028`; sonic `0xb8ecf1f5a4309393582314b2343e976a8adfe6d3`; sonic `0xc4603b7953dc7144cc8091af7595d535c3fdb055`; sonic `0xcb0f74a08b0b8e3183ec65cecb2c42b07f5058c0`; sonic `0xf111b75c1a87dc80d7bd28ff0f894684a121398c`; sonic `0xf9395736ab156f1a26e1bed881ffb6956868aa8b`; sei `0xe6ad9e1fdc108de1275fd5504eef2ed7e88010ea`; sei `0xf4858292f8985371d440ec17cd0fc8ba22867f8e`; base `0xd14da3828e206dd421172f3bacc9ae78745ec61b`; base `0xe91d6715b04a2c8726db4a266ab0ff26dc826e27`; mode `0xcf11771d1f35e2da5bc43c16cea5d4d0917c8653`; mode `0xd14da3828e206dd421172f3bacc9ae78745ec61b`; arbitrum `0x7d51cb25dae8fe4b558dd51282ce67f0cacfe73c`; arbitrum `0xe565d81ee902d3308ae9517b5e323aa6b50767e1`; arbitrum `0xfe48b507e063031d7664523dc087153784d7b631` | ⚠️ Unaudited |
| USDX | unknown | bsc | n/a | [`0xf3527ef8de265eaa3716fb312c12847bfba66cef`](./contracts/bsc-56/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| USDXRedeem | unknown | bsc | n/a | [`0x0eaf6fe1aed8631114d1de78317982ce73d82f7b`](./contracts/bsc-56/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | ⚠️ Unaudited |
| USDXSales | unknown | bsc | n/a | [`0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1`](./contracts/bsc-56/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | ⚠️ Unaudited |
| VariableDebtToken | token | mode | n/a | 2 deployments: mode [`0xb60a7e2ef708da20787a2c659d473647607fc584`](./contracts/mode-34443/0xb60a7e2ef708da20787a2c659d473647607fc584/); mode `0xc0117347ce42efb15a6015af9368c5c9b4e46c25` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | mode | n/a | 2 deployments: mode [`0x9bed9cf1cfb69f468f6f9121dd620c228203cc37`](./contracts/mode-34443/0x9bed9cf1cfb69f468f6f9121dd620c228203cc37/); mode `0xaddd62a76e216d86a44b192f0e5d53bf46160303` | ⚠️ Unaudited |
| WFBTC | unknown | bsc | n/a | 2 deployments: bsc [`0x8100f723e6bd50a6e3272169caff506da61981b4`](./contracts/bsc-56/0x8100f723e6bd50a6e3272169caff506da61981b4/); bsc `0xafb46b7c87f2aa4b69095178d2c4a41a7fbc7ea7` | ⚠️ Unaudited |
| WFBTC | unknown | sei | n/a | 2 deployments: sei [`0x24826290c8ea044d646530d325f7adbc6d179f0c`](./contracts/sei-1329/0x24826290c8ea044d646530d325f7adbc6d179f0c/); sei `0x5fabd1d440a90ee57dd698ea096b91f994b6df56` | ⚠️ Unaudited |
| WFBTC | unknown | sei | n/a | 2 deployments: sei [`0x9d6341a6fed3e886d8be47aaba932ae4b6066aa8`](./contracts/sei-1329/0x9d6341a6fed3e886d8be47aaba932ae4b6066aa8/); sei `0xe9ca67e5051e1806546d0a06ee465221c5877fee` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | mode | n/a | 5 deployments: bsc `0xebfd8d269c9e5e6d576d79fbebe91da85b5fe687`; sonic `0xee4cfd0dd22675176c07d044a8ba323836284a17`; mode [`0x8ca7c600506a8394b68cce42e780b21ab038ffda`](./contracts/mode-34443/0x8ca7c600506a8394b68cce42e780b21ab038ffda/); mode `0xf6aa54a5b60c324602c9359e8221423793e5205d`; arbitrum `0xb2a64a0640bd22277de5bec18f23164ee5dd4928` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x02fedcff97942fe28e8936cdc3d7a480fdd248f0`](./contracts/ethereum-1/0x02fedcff97942fe28e8936cdc3d7a480fdd248f0/); ethereum `0xeb13f6d8cd2f9a295fdaa5f1e7638d8ce6d3c5ed`; mantle [`0x02fedcff97942fe28e8936cdc3d7a480fdd248f0`](./contracts/mantle-5000/0x02fedcff97942fe28e8936cdc3d7a480fdd248f0/); mantle `0xeb13f6d8cd2f9a295fdaa5f1e7638d8ce6d3c5ed` | ✅ Audited (bytecode match) |
| USDa | unknown | mantle | n/a | 8 deployments: ethereum `0x0b4d6da52df60d44ce7140f1044f2ad5fabd6316`; ethereum `0x8a60e489004ca22d775c5f2c657598278d17d9c2`; bsc `0x8a4ba6c340894b7b1de0f6a03f25aa6afb7f0224`; bsc `0x9356086146be5158e98ad827e21b5cf944699894`; sonic `0xff12470a969dd362eb6595ffb44c82c959fe9acc`; mantle [`0x075df695b8e7f4361fa7f8c1426c63f11b06e326`](./contracts/mantle-5000/0x075df695b8e7f4361fa7f8c1426c63f11b06e326/); mantle `0x2bdc204b6d192921605c66b7260cfef7be34eb2e`; berachain `0xff12470a969dd362eb6595ffb44c82c959fe9acc` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (527)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockedFBTC | unknown | sonic | n/a | `0x040c10f8238e4689c5e549ef5e07478b738b2ba5` | ❓ Unverified |
| Proxy (impl: 0x25db2bae7d6ced94e0cdc28a748ce7c21793eca3) | proxy | berachain | n/a | 2 deployments: berachain `0x0db26233c2eaef6edefa2b48ff6fc53ba42f8fc6`; berachain `0x25db2bae7d6ced94e0cdc28a748ce7c21793eca3` | ❓ Unverified |
| Proxy (impl: 0x99026b750048619c7a2d54cdfc4c6524eeea0b99) | proxy | ethereum | n/a | 2 deployments: ethereum `0x79dac68b111f8875cc34c6f90a325598e78427d3`; ethereum `0x99026b750048619c7a2d54cdfc4c6524eeea0b99` | ❓ Unverified |
| Proxy (impl: 0xc5ebe22b413d12069a0062c3f6ed5f0fc3313497) | proxy | ethereum | n/a | 2 deployments: ethereum `0x0c5bd00c21efdf8f99bc791cb11db5727921252e`; ethereum `0xc5ebe22b413d12069a0062c3f6ed5f0fc3313497` | ❓ Unverified |
| Proxy (impl: 0xcd97c67b101a1d8622c9ed55d1c16b6739c54b1a) | proxy | ethereum | n/a | 2 deployments: ethereum `0xc1a8e4b0475bea3dd4e258c974b03177ea388e3a`; ethereum `0xcd97c67b101a1d8622c9ed55d1c16b6739c54b1a` | ❓ Unverified |
| Proxy (impl: 0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234) | proxy | berachain | n/a | 2 deployments: berachain `0x02fedcff97942fe28e8936cdc3d7a480fdd248f0`; berachain `0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04d0410d9f6d901b9f17e88153b4b530e9ba4eea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6914e53f2103262058ceacd0bc04adde711104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b5965f93eadb1b535e1611b4c8181afedf91add` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x0c0c35b354459e627e3c555fbef8ecd1f04c9db2`; ethereum `0x58cc31c92bff8ad92e3aaa71c1f705a03148cc0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dbd6281918ab0dd4918fc987a450ca899cae4ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dc0fce495a35a8db178a8fdce212a4ad79ef13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fbb0e0150a756ead467e93a1eea0b76a317275e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x10d162bb7fa363201b0c749cd96322082f733a97`; ethereum `0x3f390dd6ef69f68f9877aacc086856a200808693` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x14aaed6f2b876461ee579cce69fd5511bf2483cc`; ethereum `0xfabccd8f8e54b15296a6822b25c8201696893f05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15146439f2f0c8349916fdfd9b7b66519031075c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16d0d4d24305ae29161a42f51d15dc8586bbdc9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x191280ea424eb0581e5a1597b18fdeee2231f9b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x1d6321c031665802b9829f60a0602364bf30456f`; ethereum `0x1e7dff07b891a40ef08bb7d1d2c4385d4ac39dfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2093f1ed8bd9ef1ca4bfbb1fc1b65a70f38c2eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x235b135fedb5823929a279a0b1c00b9da0b6ba3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a85e856fd957ebfcf060a1ffaf550d54451415a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bdc204b6d192921605c66b7260cfef7be34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x2ead68e0e56e4e9b4892e95ca26e26833cae3903`; ethereum `0x6cf44db76bde64491512f2f87c8e6d0aa72c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x361d78678a453951320efd11b5f9c67d539ca0a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a4ba096886de7a1e69913de73d32b08881fc4d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x410d2d3dc79ec66a2cfc3a4a0ad4af3a38d38bd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4422a79a680473a3be512ba8a8c0e9135e2582b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x470f9c4853e4243ad0ca9d9a2b1ac767fd25d72d`; ethereum `0xf72df7dee74dfb021d7c71a5b6431330aa7d373b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x522b3bc00f7dfc5657f8e195868fd062027859e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x535e53c54dfc229cb7d981d7652c4885ab3af910` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a4435deaaad91a3d649456f324bc5a9d8b89d44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca296a74278bfc0fe3ee86abf7f536afef520f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d5c8aec46661f029a5136a4411c73647a5714a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f314b36412765f3e1016632fd1ad528929536ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x5f99a1bd81b7b0ee8826bfc71a97767377056559`; ethereum `0xeabad107333f91a64ffedca2c415276bad638186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61361e89ef2a698347004275a940c31108edf712` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x631da08b6258efaae5aac7bc69e6a8ff2c79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab5d5e96ac59f66bab57450275cc16961219796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d380842c7007ba22483ffd4a08d80fce102433c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fd78d34ecadb842f9676b4bd75dc3e2186ed413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c01e1ff30ce47d5ec1594b762d5c65de164543a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x802cb61844325dc9a161bc3a498e3be1b7b6fe00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8abf8168e2c5c85f0997294d3bf529bf86604d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e435d3178a3388916a1899666cdcba6ddc5e7e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b212e9faf20117eae59d6289cb38749ddfc070` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9935e1d6c566474d97af325d57d886533c9c8333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c9a26f011a89f920f86fc48e2ed3f0fae71683b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa443061581d09809fdfcfdef055a03294e0de89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabfa7275ea6d71cca4fed99ddeab6525000b81d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf0ba81a2a3555df7e58c37f1bf97d4e120587b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9512017cdbbfec4e1e40ca83821419b8fe51497` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba77520d38953bf6a8395d118cff714ed672533f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc415c937246a4de002874a7cd111dc77794d4848` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc48790b692b6e622d494d09317f1450e21dba4b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a02efeccca067ef3d7cba35a8c21d04afff0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9137ffb6f0e361926a8d662da5ebd5e4a58a042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc5f876608f2bfdd055df4eb07bd0db9940fa74c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccc6131c612147c0b08a9a6628c6c21931c2feda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd282d7254c35b6b172ceac0c01601489220a7eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd329f9a8589723357c36727a2d5e15974c835ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf62f12a0d80e3fbc5f29c119af992a2eb1f812d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe028253c2a25f335b770c8ad5d7344057a805c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe29d69ee446c9f49c7b6ea2ee31e4fba4f37a14a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe565d81ee902d3308ae9517b5e323aa6b50767e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5ec818fd56aa405e6d3786045bfba0e87da2cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec34521a475df0d10245cc73360cd070b39de2d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf37c6cd4dda05504bd8a267402d203cf767503ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5cce1169ec46c6234bd1baf33e3dd2975834e8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03ac802121c7014278369109be6c228cb9f5dd8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04d0410d9f6d901b9f17e88153b4b530e9ba4eea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b162ac6bc3f32415d08672deb3bb7a9f8c13f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a90d81826be46d7a7726f60fe08b69f066d677b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fa6558a9aa6c37672761e7a8192ad725d1e56da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fb570f4df6438cb3b526e102f40498097084ded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10392e791acf0ac35e190582181b2bb4cf1ce382` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1190bd0b5ed2a58b39adead5d3e92463e6e09d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13b9541df6d9c4062c91b44897102cb175e29128` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14743b5dc618c31c706e3ee30daa5e068f535ae7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15146439f2f0c8349916fdfd9b7b66519031075c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1683f583b5a3f90bdddbaac0736aaaab9579b337` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16b9b88b773c1a1aba6d305e0560171405d45121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16d0d4d24305ae29161a42f51d15dc8586bbdc9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18cbe70602ee17f79d56971f685e9eaf49da53f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19b329f2a78f2a76513043ee6f1fe06ac3615520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2062bd77f40056f2629a404a456752dd973466c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x208fd53db4df74d8809295567072bc8873f4aef3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a2be79cf40b448a65285e505a55778ecc1a321` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23bbddb6acdb5bb230cb8accf77f782d8d887263` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x255e48cb138bc639434696d0f148c6cc06f1f39d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28292e1ca36e400fb7d0b66aaa99eb808e3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2884f533e9f8102fd05d903968213502294cc273` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28cd18c14afb15e8cacea8f5bca125e45ce06aee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a85e856fd957ebfcf060a1ffaf550d54451415a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2af92dc9402a1e3e3b2f7570f4604a23d191add6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bdc204b6d192921605c66b7260cfef7be34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ca77d79548d931cde0a24f5699ad933cb07a0fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d9526e2cabd30c6e8f89ea60d230503c59c6603` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f1ea99d43e655e142f454b2ebb57e092a09f9aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3016f27fd9f7ccb109c5045a5c86b452bd289c3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x327b3202dec2b0222a71c5e72d378a8e92ebb011` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3469b1afd45f3be05654b758347893b04b101e52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x354b8d4dce29d3f710c051e923758254a5e31e23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35bcab891ca82ae2a1431b058a2f87825ad0d664` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bf334b99170372adebc4a499dafa030ccce0b5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d6c3b080a91abbb8d76e7c063479b218207b766` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db4fb921f82ad0e1331cf5fe401fed638e39543` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e24bef733a5339fbe7c854132bd4b7e5f90a29e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e2b690f281076d08ea0283a79eefdfd8d94e8ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3e764a01e676623ca4914c0de92122c452e073` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e54bb2240f93b82bbcecd6b890a0b0e2ffa6717` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f72812ffbe9cfd45a020c27d56a9e219ac1c1b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4388d8255e42f09433cbdec7de434d83f9034916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4422a79a680473a3be512ba8a8c0e9135e2582b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x480d69f24efb404353669ef5aa848c009b0eb2c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a4cea4ec7ef86d698f38af9b07be0db116f4794` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a6ea647212ca6e3cc58422cf9d6fffde8317968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c25c261fe47bc216113d140baf72b05e151bce4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ffb2aa3f12e4c7b228d8011ab85a51bc1bd8ef7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x522b3bc00f7dfc5657f8e195868fd062027859e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x523c664aad8833f4922346c7408ce492f6e57e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52ec2c038b4f7c144d9091dc88b717a14c957bd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x535e53c54dfc229cb7d981d7652c4885ab3af910` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55bc4d8f13bfc686f1b7f3e9a7c33948722113ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57bf2af51f24b46e503a43fe8c4e197ee9af5a71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a4435deaaad91a3d649456f324bc5a9d8b89d44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ad4281d7b21e2569f22b8c6036661f0475e7ab5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ca296a74278bfc0fe3ee86abf7f536afef520f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d5c8aec46661f029a5136a4411c73647a5714a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dacf1bef3cea21df52b7c32545ad0ccb6323c28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ecdc2432ed77cd8e2ce6183712c5cc712c40ec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61361e89ef2a698347004275a940c31108edf712` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6282397857193a67efad20e04837095fb7986cae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62b1d1f9ec1d6a67c4852a1fdc67511b5c4b348b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x631da08b6258efaae5aac7bc69e6a8ff2c79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x639c9c3e7e78a0b18027f6308ca76f65db097499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x646203a38688b4022518851d7c488d33366677a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x668fc241cf66e7d8c3f91be89ece951cba5059df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x672c136ceffb4d6a2439a62d63c3c5be7aba6dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x693d8670e871b1b1a3658bc389b18e86c997ddf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69bfcb12c03cf522bca5d7f2f2af2a8b2f66067c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ab5d5e96ac59f66bab57450275cc16961219796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b238144f52e56383bad00db50398bedd02de05e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ba7c6b9f4e7c07c84c9b3e52e83c4903e4059c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ce9696d712b3b5f9253d637d317a602ce3055b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cf44db76bde64491512f2f87c8e6d0aa72c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ee42f356132d23e7c949a03a42f5df77913debf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f8c5f41f191a714ecb4e536ba29ae1941bd3713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7221757d86f365ac52aa2e7889c7e4a52e0d24fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74e3094b17fdc4e3e82c4da96ec4b0513dc7df98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76ff29688f095dd3dd64b11439bf39a884ebc6ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77c44fe83c86a51e39c8bb9e91e2136a4a51c8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78f1c2eb56e9de7163448f616ad2a04eb7fcd1e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a5ff6dd35e34040c5156716940e81b7e80b1cb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ba8ee161bcc48344d420634d6d6f48675c8a5f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca9c3d1f753f85ef33f612fc85598d1aeaea50b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d222a442d1a5d5232b25a2c4946d481f4c62635` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d558df1392934c77c22c6c62e380b2ef8b11718` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7fb50c0f5e9576acc74c61892cb6962699e70c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x809138d546429372d28c77db21f9e22a0ae991ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82710d688372e3ea90c37950220e351e524a2f90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84930a23810b7ff56d651dfc380649229fd5c28a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84f5e5209ed8f5246b9271946fd14c9819d01238` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x867885c1db3020e25a86db7e20e35dc7b81d76a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a5cd8a12cd80778be417d53f2cbbe00aca2c07d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8abf8168e2c5c85f0997294d3bf529bf86604d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ef2d74ad561190cf0a482bf0896d391f326de9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f778806cbea29f0f64ba6a4b7724bcd5eed543e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f8004ff48173b103c4a9522d1717d9dfaed96ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90ea8c92adde4d3f323dad9e36f0e0395dbc929d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x912b425d867a09608a884c83b3d5075e9037aa6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x923ae050a4ef51b1a476ef613a7da768e616bbb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x934ad5bd415cbb128cb288749593877cf3b54cd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93cc9c2c214c4f1c224ef408be6bd4d049c89ed6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x952356ef923fa292289872102855966050ba3dff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9543c3fb90f8ca697e04ba0211364a01f04cb879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x954522f3161c3a15402e09d68295bf90ceda4420` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95ffbdca1a72e034568e078d4f2d067ab93e38c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9612ac61949296b36df4777224f7a34d230299f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9790638fa9f9cb8dd70b63fac34c3c196154e92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9799fddca445f9c9ce1a7b86193f4eb08cb265db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x986a4bd6d8ec225858ca4516d6cb69e1657b2039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9915aac577eb0ec4da343f97f16727fc8694ec51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9935e1d6c566474d97af325d57d886533c9c8333` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d777288fbb0b11ec569f3809c6cd338b074892c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ea449308c4b44c8e22d9098a3a71c2beca8bdd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa50aa59a88360b283ced7bd916a293b2f3544e66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa63f69bc94382f2a4f5da02898b967648aacca2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f20c28f8ac40a7559086fed512d7fbedd46b33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa82e83139c8dd9bfc59b41eb6d041daddece5061` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa86d20e319647c0c42322625c8042d7d268ee1e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac8ab98208a13aaacce9e7c4f1885e06ce8cb8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae7645a2183245764903ff22101d57cd5a59c9ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb14aa6c42b675716d15a47cd09cd73b0a13d276d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb82fe94201215a3ef80deb081c4411fafa6e08e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8a84f8f8491b8acebd7650cbd547cf52f8a172d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8f32a952badae582feba6f35506b08c730b312a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba77520d38953bf6a8395d118cff714ed672533f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe717493a03992391621acc953727ebe36fcb05f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfe57a4cf34dd87c5476ad5a8f520f603ec46f16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2c9917e7a16ed72d89ebbe5beb0f0d705387dfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc415c937246a4de002874a7cd111dc77794d4848` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc48790b692b6e622d494d09317f1450e21dba4b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4b45b58a4b2c4ad2c534b378c0ac6384443f285` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5ebe22b413d12069a0062c3f6ed5f0fc3313497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6517002be432e60deb311c2fd264abdc7cc74f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6a02efeccca067ef3d7cba35a8c21d04afff0d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6b830f062696fb33da21f87eef865395fab058a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc757e47d6bc20feab54e16f2939f51aa4826def7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc771c8dc0a5ef0185c6bfd15afa1da1e053f2137` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc61b45a0f4c886afab3be7051ffa1e55314ce30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd4a9244969704c15e497cf1b0bceea15b4cc33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd14da3828e206dd421172f3bacc9ae78745ec61b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd192fbf43a581df245a85ae98c5b97af41a35946` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd282d7254c35b6b172ceac0c01601489220a7eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd329f9a8589723357c36727a2d5e15974c835ccf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd33431fdf84b1de5474cdfa74c81d0ce9079d9d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3e7aa1a64cb05b6f0a5defe05c558d11e432cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5507457350952826ab5742beb747849900597cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd575c58ce530de178e4cb8c80ca220e6752ccb94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6e336aadd94665071afcaa05d8bf29fd0418867` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde32a52507ba4829fd433bca44df340d96e1927e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde34282c5469762a2a5837e438e40c6d0c7269be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe01fd6fbb3a283256399d6da30d50b8b679bca14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe028253c2a25f335b770c8ad5d7344057a805c67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0d1d8ff91b420606897ddf9849159f8f48fa6ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1fcdb333fbb4868ee352c844dbdf3436ec9e844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3c4ad13cad53637163b011b20c384ffbe28c8be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4921a7585465cb6c9735e206aba9e90b54d4f17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6c5691cd12839a9c1c35d47940b8f47262d0ee4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6d86fccd92af5c262665b08f32c75864fdd137f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8d7bd7d408c22bebfcf56ccc578c0be7bbd5c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9dd53e61a80276821500378e4ae23b225755e2a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2c844c13dc3447f93d70943c2278068d9ec779` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec34521a475df0d10245cc73360cd070b39de2d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec4a651955285fd88a7b778b702af95c52c65b41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeced50728baaa223b990ad60d535932dc7c953dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee76f7943c9c6ec8262044c0bae0af4471e1ee45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0e056943b20663909b2303f72026cc4b4f470b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1e0d20b1baccaf47379763f760297af7839f3dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf36c62db4b67afad6c5011a7cfb05baf639826c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf866d28020316e4d8a4ecbbda0b6ddf5c6e5d272` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8a95661a0286b31fd42445557ef36e1a17b8313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb55bd7919b2f2b3090d8b7102e93aa7ce2f4986` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbb77a68ee35e7902f1abe0bd34b263023e90c70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd0b886f5d75b1f03bf296546b40b05fa1254d86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdcd3a9b9a8a8854f46e9da638d6966ba5f6f474` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x006aa2022f989a66f6db24f8e2d28a1817450484` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x00beb1c4f9ddaa5abe21e28a37205d1df8800d54` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x01030d0bf72d05f6b9c81237d5115b7e233f6f97` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x010a960248e7955e1587b1299f6236c3680b7d96` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x01ae5614cc4ab44f51f5b0bf5d9e4894db189faa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x01b81a8ce2dea8b5484682881972440971fa5adb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x02fedcff97942fe28e8936cdc3d7a480fdd248f0`; sonic `0xbe551a5bbe1edbd4571289e9cadd7877333ddb6e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x034d9a7805d3d097d133e08040df844e1d775401` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0abfb76365a2042148c9bfd3f45420ef51218fe5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0b233ac4e5227aed780797937fb4a20fdf3e523e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0d781070e6798d8d9f27175bb6b0bf5f060b5300` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x10a8c66442daf8786c2bb28f6cb7b1532e9b991d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x123826cb235327e3ce0754872bf226b2e889754f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1792f73b586f3e931b51826195ff015a23c86009` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x17d9e7f2cab8c7fc9c5954acdbf842179eb5264c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a0291ecc335d8fda6a00410c97ec74462068292` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1aaf9ed8d415f8830b1b730330b8d2de7620fea8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1bfb6e79c5e8a4b9c4517f78f6d6a435cc36d6d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c7c64d0fca8b1d30ebf5dd1e5cfff85ed798f3f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d85775b6b80cf2dcc8a19302709edf3e8de646d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ddc55d04a3f632b63b3008c78fbb93015e54ba8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1e790640053aa091d22798f3b4da3144bef226c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x20f6dbbac86a060bd2a92cedbc31dde1004802f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x237c363d5770d776b3dcc9284efb48dbf6a0727f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x23c7619e0d765d6f9f676a5b4ccb06d4454ce0ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x242394e2ae9cde5e6b5cbe73196d12d3fd0b63d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2752237ccc6ab5e4b9e9bfca57d7a6956af4fe3d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x27fa65797e20060d9d65abbbc5398433c4760cb0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x27fea3e85cc166bcce2cdc3eb71f3528fbdb6296` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x280a51157f6b75671731020401bce1e3f940b5eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x286c9ee19068ab0bac3ca9756a8066579f0db676` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29d8495ad667698827583ce7d6e0339e779a0bf6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29d8f51b34fb48e940326a9a9a39d50869e9ca52` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29e76c06b5a44184f2dc036e0f6f74bcb4b9cbe4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2a683c0fd6a18a2de50893911b1f5bd6de2365da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2c4e3cfa5584cd1e0aa1dee2b60bbcdf0aedc9cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x2c60a56fdb821b82d1c253dbc5d1b4101075255d`; sonic `0xeb13f6d8cd2f9a295fdaa5f1e7638d8ce6d3c5ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2e23e0080b53541503cf5fced97d84fc33ab620d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fbffb0811cb6a1efc42d2bb44d847e8794fedae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x310d06897049debeeddc263cf5d39a587ffea699` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x32631ed1c3221fae5f3b3c863f472e91cc4751cc`; sonic `0x74476697b5ffd19c8cd9603c01527dcb987c7418` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x32ea228373c5b24d0e5fcb5e430a5cbf7b45bf00` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x361d78678a453951320efd11b5f9c67d539ca0a0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x38d2edd78c13e58814781b774b9f6ccaa3b5383e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3c0ffabe59a870115905746d85c40732e272ac75` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3cc19de3a417aad9ff3363417729d4aec8fe6067` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x443cf323bbb0d47ad9a1b6d797a40439857ed5ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4497ddc7306e9facbb3da3b8a361179faa88ebfc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45f842f1f7e576cb9bf7e1d50ccc4d2ea378dbef` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4a89d2e4bfd7bdf2a8bda1a2614ea16d37d58959` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b0a8298e5304ad3d2b054cf1f853652e413a7d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b9d58314aa14ada0b96714cc87486a7a17231d0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4cca03083e47155a4d350662e3acc7a54a599f20` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e408472d2f2efcc562ad6ccd7987b9a6d3b1df7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5026a643234c4df364f24ade92fd3a8224f0ed23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a537b8804863b93ffe1f833b085d88177e2064` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50e834be6f0a0e83d241bb155e53a3ec6134d96b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x51702df6e0101540dd6da592a85e83b7ebf64a7c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55825ca66c486c9a4a59eb5f45b7ed597225e28e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55b6820621e423f882eea17583580abd86074a3d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55b9c6f6631e3384dcd8b6d15f980f78875d862d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55bf28b559c0585d3ec47e6d535902f01497f6cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56552f4407113894bfce34b5b88c57b941afc519` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x572e21a240d0f7086065eb30c58cd2b3dac30721` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x574745b30a3343fa6a7fbd18007f63ab11270924` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c78ebb34cc5b52146d107365a66e37a677fcf50` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c8d0c48810fd37a0a824d074ee290e64f7a8fa2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5f513046c4094f3835af73a00c46c98c38b840af` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5f837c375d8bf2f9c20c53ee0263d1388a28c52e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5f85a96e684fa3926a16be0850f83f82f5d1c2a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5fea929112a15600326ef9ffb58f9576524a643a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x631da08b6258efaae5aac7bc69e6a8ff2c79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x656f38e2fb1521c873929f2138e28d288b4fd976` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x68b0409dbaa0a7b1b40d5ce7adc99778d6bdd2dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x69a9aecb483e56c71a8d1639fbc982cd7a954d12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b40636013cd0c5cba347345e7ca2291b34cd37d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b5c3da54841c1fee13739598b24f5ed54f82d51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ce360bf147d7f17f01d5b512b7470d4ac477982` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6da3f0655c31b6e8a04d5df2700d11f1459fcfa9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6dd809bc0ebe7a0b41f71f59258dae587647b686` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x703a12b9347e0a46dec9b059ef03e45f0123c7ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x70e75de41a3e5723a4525c48d6d79cdcf1933fc5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x713efc245745b370d4246759ed8a856c885ddafb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x71565d01f0996a1d6031f551ad8be9be77e44c59` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x769ab4dc3172e48698f5e2c10ddf5f90dc0f689d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78576791eb886feb04c29f79b94af0a86382ba0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78a317ce0b1f9d5fbcd30797f8652ecf247495d8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x79cedd2cacc4f5198ebd00cf14aab582bdb1f24f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a2518cb526436ef32fe5aaf0632a2b9aa4b420c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7ab38fb820249ae64de85623942377c64d5affca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7b6f755c03cd9c6a11a6630cddf32a37d99674da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d4eb8c5d3921db3a743e4857ecab57b133d68be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d558df1392934c77c22c6c62e380b2ef8b11718` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d5f4211966000991441242dd599806a7fb5525a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d7d3d692e032f07e838b4954eaffc88bb216089` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8100f723e6bd50a6e3272169caff506da61981b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8264e84690ccafb8a3f00a782b80d5b10c8c8e77` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8406acc976137499e6893ece38ce9656ab9801fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8463bb9861d2b3640b4570d22d55e66f692cc308` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x85c3158e526fa93b884ea7ae513a101ece807282` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87adeafadca6b3ace6b24ff3498dbff1f9021be5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x88a1eff5083dadd44d46cdaaa47fa7ca6ea9a9e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x898f3a4f7b9b21c80b5e18f484a57f86eb13302d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8a37664208df9cc5dfab4cf7085c13c79570c506` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8ad33f78d503cc922885379e825e0c26acd2e962` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8b64b0d72205264cef7ed3737bd303fe456608da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8be94374968034f6cbd8695b7b55ad3b92b75d88` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d116e023e3751c950c690b3f803ce2904d66783` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f4d4f3788c945d3d7be2cda016fb5b9c65e3fff` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x910376bc9487017ad3d951b109c737263b4dbc73` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x912b425d867a09608a884c83b3d5075e9037aa6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9273b6c890f11cd8b44eb3d807cb5f270c7a2e84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x93aa076d8fcc2cdc5e0c54080cb6a69992bf168e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x93d9c14627dcda16b563fc99480b5200648410e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x951e7e46f40308c00c2d81da7bbec1b914fe689d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x954d92c322e472d936e73b881fbec0ca54c2a2b7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x959cc74a02cf56b0f7c7494382f49a4bac2aa84c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x99624aaf058fa8b8e6455337697ea2757f072642` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9a3c2c1d8aebb6d7a9eb7607596e027f8205fa79` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0893db1a7ebf58bc1e467a104f8a073f81f57d6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa15c0c3d6ad3fee623bed68391923c9ff79a50c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa1977f778aa0af19c9ae3948c12e91fed338deb6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa6751bf527f1fcaf6d0b4aad1876f5fa021c67c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xacf480b66aa3e638af0f6312ab4551da51c3d6f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf2054ea63b74091a747737a1d6577064e07255f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xafb46b7c87f2aa4b69095178d2c4a41a7fbc7ea7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb16af88f3c0bda8c841afd9d3cb1bbb489673662` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb187f17201ca8795fe1db306217b37e60fbe1569` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb349688afefa783db9d24dffd00e602f59456995` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb3d3effe8a0d495539288c042afede42bf5fd5fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb99efbffb95309d782571ace8d208a806e450bf2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbedc0d4d04d2c3722736256f5ceb8ae0fd9260a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc0a25dbc0ce69c3a92674c7eda655ba6351171fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc23b16d46005eca6095b9443667d9885665863be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc24bc23b36c94cbf0502d710404c00f040373a38` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc2946a816624c6adbdff946f19e74a8eb7d11817` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc2a4397d0d7c1a3d4521b27a448cfb71bbd1dd1b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc2b1f77ab920313d0552c9ec076d74c3017445ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5823a351fa33a0dd3cc9bfe79c838ab3ef82609` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5bcda222ce3eb9b66dea4328f1745153b7ab2e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcb404ae5af6f237d7ff105cc1865643564bfa933` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xccc39ac6e56ee6715998c2eb28a4175ba98d9190` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xce04608df6d8aec4571732d54c489bb5df4474f8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcfbdd5946e5184ff7c50be95e7de84b8a816126e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1b95ae15cf0f1b7b4bf9a0e1cb427d3d357abad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd7c5d9e0ecf5949c3490a4edbb64e948cf2e7882` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd8c54301754104ff02ffd9c34c464eda45d93a1f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda21ec8bdc7457aa1f4996bf5ff817d5ee30f5f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdb8cab508adeee23443312dc02917fd826d1ca6e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdc826a85fdeb8b8bd965b2c9ec05eca71f9b3f5e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdd9dc91b640e69c74d8eaa745e9758b89654284b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xddb3d4fe161cd17c32d035f922ca879cb39403c0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdf02913f373b23651de8a316533fa7ed95aa8e0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe0d1d8ff91b420606897ddf9849159f8f48fa6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe2bc6a6d2e56b5adba47f0b030f659b10ca24c09` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe5ec818fd56aa405e6d3786045bfba0e87da2cbf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe67a8be59687f3b0d33d927d588ed82f65331f6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6ad9e1fdc108de1275fd5504eef2ed7e88010ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6ba32e0568a76e84a0b91fcbf167ff4a73a7e3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe813dec5ece0323e57ee2a84e2f33ec59ef283e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8b81d377a2c0414f7ab10da67e7e915d4abf083` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea3b11b9358a3f65dec560b9f313266b5b3bb0fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea64607d07844ca9860019d29e46ea6d1344b937` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea8e3d2d0b0dea0e2f529b702dbfd9e22a6d8896` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeae13a8dff9dd325c51739fd0484f03821c30192` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xec0f60b7a992411391e2166cf26756f5ecc3ddc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef6aac795a26812bdebca2b6be26f6e8c0537835` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf0d077728d424ee6c6eba82d23ce56c2e91e57ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf16bf198889f6bf457abd8f1f8e8ee44c9d87001` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf1e0d20b1baccaf47379763f760297af7839f3dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf2c204c13537cb97ee15bff3381fa0b65f1b38cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf4517f16ef2156ae809c1b0503a31636420b06ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5aed8b100afcdfa0eb792df4976cb3a6696772e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5f4ce2445d23fb92f6d7115f3443bd79186a757` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf622403d76e394ab2f92de787de37f368fe8f2f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf6aa54a5b60c324602c9359e8221423793e5205d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf9af4b43f89a949187f70d180de85bc068440424` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfa128ece6f8810d3542e7d9f85f696c8d3a350dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfb7b42698acfb00fc5be3a2750063fbb684cc350` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfe52e23d4b925ee936515ce203fc7c76b0262e56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfea5fafbe2224205c6e81bbd23bb7fa2baca2b53` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x457158f1537ae9a2a5c859dc1282b6979080283d` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x809138d546429372d28c77db21f9e22a0ae991ab` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x882fca0dc96576140ce1cb576b0393f4ce68fb7b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x93d9c14627dcda16b563fc99480b5200648410e3` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xcb0f74a08b0b8e3183ec65cecb2c42b07f5058c0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xdb8cab508adeee23443312dc02917fd826d1ca6e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xea8e3d2d0b0dea0e2f529b702dbfd9e22a6d8896` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 19 deployments: merlin `0x0024818043d04b1cc9685233d47ef7eea6df0a5e`; merlin `0x5f314b36412765f3e1016632fd1ad528929536ca`; merlin `0x623700fee1df64088f258e2c4dab4d6aeac4dda6`; merlin `0x6ab5d5e96ac59f66bab57450275cc16961219796`; merlin `0x883cb2e2d9c5d4d9af5b0d37fc39fa2284405682`; merlin `0x898d0ef6e20b7597728aeb41169c22608fe4b234`; merlin `0x91b212e9faf20117eae59d6289cb38749ddfc070`; klaytn `0x100ac26ad2c253b18375f1dc4bc0eeeb66debc88`; klaytn `0x276c5119f63119921667842da3b71ee10ac486ea`; klaytn `0x2c4aeb7c9f0d196a51136b3c7bec49cb2dbd1966`; klaytn `0x43248df19b9b55f7b488cf68a1224308af2d81ec`; klaytn `0x4353b76e03ad5ff74d40bf5bb2ee4d0fc6fe6d3b`; klaytn `0x45f842f1f7e576cb9bf7e1d50ccc4d2ea378dbef`; klaytn `0x56552f4407113894bfce34b5b88c57b941afc519`; klaytn `0x585e26627c3b630b3c45b4f0e007db5d90fae9b2`; klaytn `0xa34f1a928024e3609c8968fea90c747e8d1fa20f`; klaytn `0xba8870bae2dd170053c0c4b799821edbb19a5e4a`; klaytn `0xdc3cf1961b08da169b078f7df6f26676bf6a4ff6`; klaytn `0xddd3d480521bc027596e078bcd1b838d50daa076` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x867885c1db3020e25a86db7e20e35dc7b81d76a2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | 2 deployments: mantle `0x25db2bae7d6ced94e0cdc28a748ce7c21793eca3`; mantle `0x8f778806cbea29f0f64ba6a4b7724bcd5eed543e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x631da08b6258efaae5aac7bc69e6a8ff2c79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa9be7e4dd659b3acc9f9da3201356044b06b6fca` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc757e47d6bc20feab54e16f2939f51aa4826def7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd3e7aa1a64cb05b6f0a5defe05c558d11e432cbd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd6183c2e8bde61d79798aa5829d36360aedd8ced` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd9080e233f2458a834c8ab985391d5d7adacc909` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1219f7136724fd323ed583324beab1420778ea84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13b9541df6d9c4062c91b44897102cb175e29128` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x315577b6b0b77f25e22027c3ee22ba054967fdd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35bcab891ca82ae2a1431b058a2f87825ad0d664` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3db4fb921f82ad0e1331cf5fe401fed638e39543` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fadcbd14ef1269e77b9ff09a063901490c78b95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x490f8f29eb03caf34b267d20ed2a34752e75ca93` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57bf2af51f24b46e503a43fe8c4e197ee9af5a71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dacf1bef3cea21df52b7c32545ad0ccb6323c28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69b0a9161ad82f2295cb45d7abaf4bc56a98cfdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x707b8ce7e7313fa3ecdbf458fa27241bb42a6991` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x74dfd1c4611ff35834a932140a3bf562430cdff2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78f1c2eb56e9de7163448f616ad2a04eb7fcd1e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79c69f346dada168978f6668b18cf444a4591ad5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d636397af137988451cd5ef2078f8e9e7bb6a2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82710d688372e3ea90c37950220e351e524a2f90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84930a23810b7ff56d651dfc380649229fd5c28a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3c5d5fe0e7b447a1de49e77e24a56e7bacf60c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaee883d2d3517fe1bdc8120bfa05e18e07f75b1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5ec04d3c4d98c3105210f66eb766ed45f293526` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb82fe94201215a3ef80deb081c4411fafa6e08e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5e56bbf584302a6ed1cc57284ef524730b8a2ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc041aface653446759824b9588ed71201b5049e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4d4dabbdbf9949c3f2da3bfbb07a58d400d6a1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf383a99b9326d47d6aa9f16b6e9e904420dfcb54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6d959f3ba15e676c8cf01a2e66d29512c200e56` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x100ac26ad2c253b18375f1dc4bc0eeeb66debc88` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x23bbddb6acdb5bb230cb8accf77f782d8d887263` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x28292e1ca36e400fb7d0b66aaa99eb808e3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5dacf1bef3cea21df52b7c32545ad0ccb6323c28` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x74dfd1c4611ff35834a932140a3bf562430cdff2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x82710d688372e3ea90c37950220e351e524a2f90` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa3c5d5fe0e7b447a1de49e77e24a56e7bacf60c6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa5708900cde0c051b4eefd68fe8291df5b81573b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa86d20e319647c0c42322625c8042d7d268ee1e0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa9d15c669940a757ab76c6604f2f8f1e198f7d50` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd5e56bbf584302a6ed1cc57284ef524730b8a2ab` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe91d6715b04a2c8726db4a266ab0ff26dc826e27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b233ac4e5227aed780797937fb4a20fdf3e523e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x100ac26ad2c253b18375f1dc4bc0eeeb66debc88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1792f73b586f3e931b51826195ff015a23c86009` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x242394e2ae9cde5e6b5cbe73196d12d3fd0b63d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2752237ccc6ab5e4b9e9bfca57d7a6956af4fe3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2bdc204b6d192921605c66b7260cfef7be34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3228995749610bea00b59c44f8d1df21c14027f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3697adaa013fc73f69722bafeabc34aa7549d155` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42d147324122dfc81addefc821536d4ff6245776` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eca89db1ef9458ae332e5b59ace488f7a832527` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x535e53c54dfc229cb7d981d7652c4885ab3af910` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55e225ece70ea4ae6d97136a11bb8dc2fa4f9fc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a4435deaaad91a3d649456f324bc5a9d8b89d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c8d0c48810fd37a0a824d074ee290e64f7a8fa2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d5c8aec46661f029a5136a4411c73647a5714a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f314b36412765f3e1016632fd1ad528929536ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64d4d7297950fcf1684c54ad973a8d17541b855c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ab5d5e96ac59f66bab57450275cc16961219796` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78576791eb886feb04c29f79b94af0a86382ba0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x804ad8049b6018b8e36da67d079dd1213ec84643` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x867885c1db3020e25a86db7e20e35dc7b81d76a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87ed94868f6fbaa834db81a1c5854c445cacab67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x904ce91993e6d0385f34b282120ccdfd4d691496` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x916addd975718d307868b814e0a9bbbedbd7ab17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99c0fb1068b7f39e5a980971403f9578bfcd2e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc415c937246a4de002874a7cd111dc77794d4848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6a02efeccca067ef3d7cba35a8c21d04afff0d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd329f9a8589723357c36727a2d5e15974c835ccf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb52dd393e3a5e95d3b7c7e1c42cc06bb807a369` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddb3d4fe161cd17c32d035f922ca879cb39403c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0d077728d424ee6c6eba82d23ce56c2e91e57ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4858292f8985371d440ec17cd0fc8ba22867f8e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x118e76eec992366baf4192af25f18d365fea8a34` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2840f9d9f96321435ab0f977e7fdbf32ea8b304f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x631da08b6258efaae5aac7bc69e6a8ff2c79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | 2 deployments: berachain `0x69c1b170ee293e842a1979b13c0de2a7abe8efc3`; berachain `0x88065ca6d76f43a19ee7ac4c7c06d1805b5aee8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x86bdfe172d417d91d6c10fd2d556f6d3c6c04415` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9915aac577eb0ec4da343f97f16727fc8694ec51` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb2411284bc9970926951304a6e2e0196f80e23bb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd3e7aa1a64cb05b6f0a5defe05c558d11e432cbd` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xba77520d38953bf6a8395d118cff714ed672533f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Avalon-AVAF_audit_report_2024-06-11.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon-AVAF_audit_report_2024-06-11.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Terms and Conditions - Avalon Finance.docx.pdf](https://raw.githubusercontent.com/avalonfinancexyz/website-ts/bb035cea494cc098d4a26fe267d0b2aa2702406b/Terms%20and%20Conditions%20-%20Avalon%20Finance.docx.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf](https://729569225-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FlcdCcIXgWo7dKoZEUxKp%2Fuploads%2F1R2vC6XKZq24RHJcoH5R%2FAvalon%20Labs%20MiCAR%20White%20Paper.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeFi-Lending-audit-salus (GitHub directory)](https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Avalon-Finance_USDA_audit_report_2024-10-18.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [AVL-audit-salus (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDa-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/USDa-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AVL-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaMinter-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDaMinter-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaConvert-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/USDaConvert-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDa-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDa-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AVL-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaConvert-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDaConvert-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 4 | high |
| [Avalon Finance - SlowMist Audit Report.pdf](https://github.com/avalonfinancexyz/USDa-audit-slowmist/blob/main/Avalon%20Finance%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 2 | n/a |
| [blocksec_avalon_v1.0-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.0-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [blocksec_avalon_v1.1-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.1-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 3 | n/a |
| [blocksec_avalon_v1.3-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.3-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92`](./contracts/bsc-56/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | StakedUSDX | token | $1,990,093.28 | Verified native implementation with $1,990,093.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9124b9b7517387937e07078db5a2620860400330`](./contracts/bsc-56/0x9124b9b7517387937e07078db5a2620860400330/) | Avalon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e93f31dab711d36b263d0b8ae3a6730792b603f`](./contracts/bsc-56/0x1e93f31dab711d36b263d0b8ae3a6730792b603f/) | AvalonTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c961a18882661dc2aea540108a1165dfa69ec3b`](./contracts/bsc-56/0x1c961a18882661dc2aea540108a1165dfa69ec3b/) | AVLStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0024818043d04b1cc9685233d47ef7eea6df0a5e`](./contracts/bsc-56/0x0024818043d04b1cc9685233d47ef7eea6df0a5e/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266f93db3771ab1459ef19cfe5cae37107116cc3`](./contracts/ethereum-1/0x266f93db3771ab1459ef19cfe5cae37107116cc3/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300`](./contracts/bsc-56/0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300/) | sAVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00ad0e3d7daba4092be35741ff1f92d571f4100f`](./contracts/sonic-146/0x00ad0e3d7daba4092be35741ff1f92d571f4100f/) | UiPoolDataProviderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf3527ef8de265eaa3716fb312c12847bfba66cef`](./contracts/bsc-56/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | USDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eaf6fe1aed8631114d1de78317982ce73d82f7b`](./contracts/bsc-56/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | USDXRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1`](./contracts/bsc-56/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | USDXSales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 113 |
| upstream | 2 |
| standard_library | 12 |
| needs_review | 444 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=10, extraction_exact=4

Zero-match audit list:

- [12714] Avalon-AVAF_audit_report_2024-06-11.pdf
- [12715] Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf
- [12716] Terms and Conditions - Avalon Finance.docx.pdf
- [12717] spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf
- [12718] DeFi-Lending-audit-salus (GitHub directory)
- [12720] AVL-audit-salus (GitHub directory)
- [12721] USDa-audit-slowmist (GitHub directory)
- [12722] AVL-audit-slowmist (GitHub directory)
- [12723] USDaMinter-audit-blocksec (GitHub directory)
- [12724] USDaConvert-audit-slowmist (GitHub directory)
- [12725] USDa-audit-blocksec (GitHub directory)
- [12726] AVL-audit-blocksec (GitHub directory)
- [12727] USDaConvert-audit-blocksec (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
