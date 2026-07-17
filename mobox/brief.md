# Agentic Audit Brief: MOBOX

## Project Overview

- Project: MOBOX (`mobox`)
- Website: [https://www.mobox.io/home/#/iframe/momo](https://www.mobox.io/home/#/iframe/momo)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.241Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 312 unique implementations (317 raw deployments)
- DeFi Llama TVL: $528,771.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 14 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeableproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 427; live-surface contracts included: 317 (6 live, 311 unknown).
- Excluded by liveness: 110 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 312 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 306
- Unique implementations: 312
- Raw deployments: 317
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KeyToken | token | bsc | n/a | [`0x85c128ee1feeb39a59490c720a9c563554b51d33`](./contracts/bsc-56/0x85c128ee1feeb39a59490c720a9c563554b51d33/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | bsc | n/a | [`0xa5f8c5dbd5f286960b9d90548680ae5ebff07652`](./contracts/bsc-56/0xa5f8c5dbd5f286960b9d90548680ae5ebff07652/) | ⚠️ Unaudited |
| MoboxToken | token | bsc | n/a | [`0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377`](./contracts/bsc-56/0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377/) | ⚠️ Unaudited |
| MoMoProxy | proxy | bsc | n/a | [`0x2873d94d21efa8af064b02174413966b357c69e7`](./contracts/bsc-56/0x2873d94d21efa8af064b02174413966b357c69e7/) | ⚠️ Unaudited |
| MoMoProxy | proxy | bsc | n/a | [`0x529e2a515ce4499c41b23102e56e45025e393757`](./contracts/bsc-56/0x529e2a515ce4499c41b23102e56e45025e393757/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x8fa59693458289914db0097f5f366d771b7a7c3f`](./contracts/bsc-56/0x8fa59693458289914db0097f5f366d771b7a7c3f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (306)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x7aa0e649d5b40872705b55f350bd315282fbcced) | unknown | bsc | n/a | 2 deployments: bsc `0x592e9ef115096f0121202b2a5e30cd5aa228d117`; bsc `0x7aa0e649d5b40872705b55f350bd315282fbcced` | ❓ Unverified |
| Proxy (impl: 0xdb1c49103f55f67fed5a5a30b0e0c7472b8243eb) | unknown | bsc | n/a | 2 deployments: bsc `0x91a9864606246680a6d53b2a2ba975b475d57358`; bsc `0xdb1c49103f55f67fed5a5a30b0e0c7472b8243eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x008ec89e52dbe64feb391840a7ca9b1b84e3e23a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00d805fb9779cb332252c6dce447b8f374039e04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x013875e96ce60d0f2307128c58246b6f2bf00cfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01bd0ad1e0bca1de640febec53ed2871fdb60aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01bfac2b420c8fadc11cee9d8bde9cb46285818d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02d33b88cd99e4482608b6b85c4af734ca28d4da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0369c9a9af82f9bdb0fa76ce940198324d237730` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03c50e548522c8ce318afb4468658562a55892eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03ffe1a69ef0d350dbea81d6108c1f24e928427e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04145a4329537f898f59f3e0061d6a914f49570e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04ae8b977723e522bd47532e8338bc72a0350e3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x070cff2777fd2f6d0272852c25d5410df7841909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07c0f22817d31cc8a7541e91409e4885cb21eb63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x081c2827a9cf452d32062ce6dfe2d48bb6192e06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08b97fa44a404970a3e882282c01ad59ca6849cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0af8b21fe7acc25a005cc10cf1491ef26f9e913a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b5a22bbd5d7b9998afed837af4e10dd3673aa34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b9e101aa2c3853f4fde0958a4773aa5e3c085c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0beb87cbf27e2f6182e32050a35a65fa954d7084` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d5ee0c54cc11b16dcf18291a54b35cc88d576de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d7d5662dfa1926455965184ba12c1a0aa96570d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e6826298d337f9a024b2ad826ad1759fdeaae69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f32178b78729e1bf8cab33126f34f5e689c952c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f596f64443e1c2e81c80b93c2a11fa02ee1beac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x110133bdd7739b265b9d256052985010723a33c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x114495e7adfa0624782975b13f1960098e7ad3ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x119d511c62a75e9538229f57aabf3258faf24af5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1238d683f9b79a5086acd25237f38bbb1cd1e41e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1240aab72ed872be9b11868cb07dc97f3043efc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13469b6c2fece63ba1c85c0dc86ad59f742fd8c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13d570e43c3eb5afba8b6782264dae1766bc9baa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13e523a3f54fe1b9d2e3fa85f07a15a7199a6c08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14e6ab4c17e76d00f8f0a5b192fd30cc19ffed32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1522c2c9de79bdfc7ee4b7a79017c3325f218d42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x152b9359b5aaee148855922347d33acdf7f2069d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x19842db7f44cf7d9711f760c99de666690106101`; bsc `0x8b50d3e56e627322364709319261794c60401d7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a569bd9b7f05dfb145c7eb0fe0662c318ece4d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cc40df1e891fb0e0acc476899c83bf1dcc8dabc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d33e4b666d984daf247d5243cd117c68052f8a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1dd0159d1d4c1985cc8f817fa0c929283c62fd30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fa6b41708bcb6f554d1f9424288d4a5a42ba065` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x201d2c4cc971e3c709aefb7d7c77dded58fcd53b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21f126eb7229227fe4de2cfc9deaa9392cb1dbf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x231caff642ff0101cfb91172f12a843f45e2e8f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24a3061c6f3708d789402d92517b87b899bf43e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24a82bcce61752190944a636986d7787d8944b8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26df4cff13ed515f6af3b218b854898b82946c06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2880fc5e566759f31da220bf2f4e34a43ed85a5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28cc562051f56b2a21bd325b7a755e69b397c102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x295f68795e21f8c8b03038317b507124c13d2741` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29838dffba6a4af09376fe166497566fabb0b954` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b5d04fa3f983b105789a18f7c87f440a57436a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e403d7e9d9f9b0e886cfd510bf1dd0695740f36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e6bca5a2d4b20c31ada7423fe211b1b485a0fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f9df09d093c7dc1334e05a6d536adc61a964d95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fda03f09990a32572d4578da1984ab4ce89235c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3076f20ab8ea0cf1748bddd33f549e324098be23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31d3fb9610e51a7f431b840ab550522508ee497e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3313492131ea83cc430463160d6909adf62f65eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3327f5322709953e798ac0645be6ccc6b821a360` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3333f8ac97bfae8506a8cefab00929691c421ff9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x337f7eb0089d858fec7628c88ebfba50361b86fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3384d98664af99c24bdb5b3f8dc0535c6142d6b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x340ce58f976f11f092a291ae820885dc9501d7d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35b470888972d86591ee540ff4265718388a5d26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37c668112369e3e90c4e905b0d901c3a5c3c9f23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38023e6c9732dab6a794c3f471685c7cd0361d45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38150344c7006ec4d6a7062f5fe92ea7a489a0ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x381850bceb387b23e226337e5a6f98df07f4a070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38332f8e2282326a1cbd1414e00ef5c70cd257e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3978fc50c6912a35423d2eb6ae5ad67d01aae081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x399bf8005c471043e33825ba7ae9f1036d0800b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a5128b0840af59a78dad9d21e472fb55ca8da0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c6fb97add9b4d30610c011e7a19518bff4440d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d0c8bdea5119d1426fac84475f58e124996ecc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d42dd82a5d388e4b798dd068479c9c6aa41417a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d634a1580a7fe7fc1f6d4f67c217473c8bff213` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db32cb2d8b7c23a36e3086ff065443a2ddeb98f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fdef067a53fa27bcde19ce1417ca4ce20078c92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40221c373e28239188b5293d46fecada2cf0bded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41399f42e5d1025af8aedb85d5b9dbd29dad0233` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41c0455f82895d0d02dee0ce8ba0339162653265` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42d06a7147ff1f190f868eaf20c786570fe054ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42f3311269a870ad41b5ff72281b698a4b8dda10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43bb7596921971cb8fbc7582f517516b4240f493` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44024d67596adb0064c5860d50e8aca98698908b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44abd171035342e5623e89dd9f4a0aaf4c884837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45469a3e0913bf2b8176136651b8a7931e1a688b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4589618c25ea0d5bba3fa449f612a5838ddac076` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x458d739415b7fd911195d62bbc0cee4c39e4da8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x471c1a9e80f3a11ecf3387dccc557115a0f5f923` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4803a8abf271f957eafc61e59f79c5443a801240` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x488c3a6d02cfad4faec48a63c317626cfc2d41e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48e2c4d841525fa97a1f0096fe16fa3d01f542ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49cfd2cacbe4bbf59a376409d0529e2128f5cc2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a68719df7e7481ff41bcab7dd64021783a597e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a6f39147ababef94b319cce53ca265d2f968d12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4aedbc4c2998c48b6bb13699c466633cc736f263` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f41c640d8983ef6f6ddfea437a30bfa8a7562c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x507b0a1080d3980f059da2a06c207c21c97d72f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x509ef0de13383a62ab13b423046290b56be5f76c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5197a1feaf4557d89a3da0cccccd5f4f089aa8f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x527e9ca8a10477a9d3bcb5c401dc823cd3c796a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52d7c762dff1eee73ff134209d9badac1ffa47c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x533b68498760cc0e062648f3f92abd59817dac80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53fca3ed8b8f3c81af82ec15e079eb8925d28e3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55cf2a0f24ab328f10f1969d7c02d62b653edcd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55fba98b4faf3121a4cc94ecc94b0e70a4890e01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x560003c3984b03bfe9dff525f2ac7bf00a8cc8f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56be2caf7562260668369dfc46538f704989f153` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56d5306e5bcd7097c8ab4f67d7d5736b5c5b8273` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59020a171b1fbb62e7a001ec77524c632fa27390` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x596b4d1d1205ba3b8b19f883db7ac0de540c25a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59f3075dc464c99058d87011e10c06bd1e72039e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a40528886cfe5efd42e320f8ed7af9e881d85c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5aa7fde43763d7e13f7f0af16b3367235bff1a62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b2c669953f23308189ea14b20828a06bb19b298` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b54c4fe40f97d668bf557e777e0548553750e20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b69ffb7ae90cb9c9731e2465769b88dca67b648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b7a5882868c4f9b5680098cb480241b7d3f9b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c445f901b1db6a37905d7ba4514d83343399bee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c655095cf6fc4f413e0a214b8e5e6b7c81930cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c88c9d558403046a293b78399487811c0c19f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dcc3bee18146e2115d5755ee1cbaa5fbcdf4bb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd48fd5307a2b873fc6edaf6ff1f66d5721ed1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd8eeb99676dbb94368c605fc174e8fb39c1fc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5df1bfbaae5122d13ca2effc5af64c85fb243d72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ebb974f0ea2b088ef12a6e2a67cd282cfbdf2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6004cfb59739099359b73a53e33969ec0da61c42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x614cb72c1382e5fa91bb349696df405831da8fab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61fdb8f0a166f0945c4c88cba7b15281acd6d204` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62e65fac1d4ab4a2d92c9a5e32317d1cd6517d9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6641b6a6ae72d97e9156aaa70882b1e2ed2c4478` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6767538392a6fcb52d069dfaa3d696b7ebbc3f7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x688a2692a180a284a16283ab16a399c5d0485cb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x697255b2541bd4372ce7b8d8a4ea0e88e32832c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a0292c09c2288518145aa7630d905873a47f5e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a449ac5cc7e40c4a0754fde547023ed3fa5db84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ad39885d5db522cc0159696a0e53bbf5ccd796c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c194438a917780b31e502ddfd3695849047b7c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c8675be7c86c0ffcd1e8d35589bf70783cca75d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ca9cecbb59eb605db75450dcc218985e51fc0d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cbbc4c7256e68ce52e88984de605c5b4ff59481` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3849122048fef59b4efc9fd5e9c0552a129781` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6df15c4b290120c3fc2cc815358a3cdaa86930fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ff6530a1dc938c6625c2bab98bea6296a2802bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d1dba9e7658272f27dc03859ef24888b2a6090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d4697a08b6b056aa7bd60aeacef03c69986a63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71ce10628c0cc09a43562972b8f1e97c3ae32368` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7204b248915b54179f295d22704295a67c36d981` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x729d34b5e081103a5448c84df8c7a1ddccb9c818` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72b4386c293a676d000d067dbdc96e09bfa84d2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73f220341c8dc0a1b619bed7505ddb30bdec1f24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74801810d28f6521d25a85e741b98647e6ed36d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x76352ee1df4afe4e66b2bd07e05d2ed88291ba53`; bsc `0xdc444e7b5f759c17b26ef06cb7e224f643a48f6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763ace8b98e0dc058d935784c601049cb1a001a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77303e4986bd95d878f7519357010b91868727d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7774050befd2956c7f7ccdb20adb0a7d9a18fd20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77e7cb3652bb2a8e1f8b98600373eaf641d727cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x785c3df50554fcdc31d1999477d60265a93fe60e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797bfe164a79f0e6f0fa16fd35c9940e772ce239` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79d6db8f037697f69c9a698176e321e0a4d40870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7af49d126141ce863fe551d2274dd323e2e47a74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c902a9eda196a8c0137b8ba5d3a962fc735674b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d3d86f61752452476d36fc9d05664e72cb0944f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d742bff99fd616bdd3e7845713eae1e8938e471` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d9ffbffce22ca084963104ea0002fe291e6b3f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7db762b620f1e1a4a9b2b248e724d0ad4dd53e46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc56014f474b19be7468be9ba2e5421a9f98d76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dd1c416f1f0384e457764ff6951b0ea3e8c5c3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f750892198c150f1915a24f76a0a2954e4a04b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8034fc7af5669950d28d3085c7bcfed18126f98a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8198915fa61b45b41bd3ca2dc4e8c68ecadb54c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81f77631576ff1187f9f3dd16c62493e53b49725` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83edc16f600b98b39614ab0f558388d1e2e609bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8415137883c8c490b494f5e6099ab7b32bac613b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84be4584d8220cefb325bbde76a4df7747d49924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x858d89d002443a996ea510b40026041f607aa926` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85d1d8b4b272f9e5bbe0dd79a89ddfdc033bd0c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x862d09c5ee70337dc88a7f4e2a1f4bfcb55d3e38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88bcda2a54ba56e3fc4de7347a4d6f077aa7257b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b5f582f9004532e2fb06855e00a30b589a7bd41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ba18674c9beca14102a4a8a90f88bee9c97b47f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c410d6578634d650d20b5b403fa8e8d58e764d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dd8b6631ff44790b3c752098c966d65892bb424` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e2133a143adfb99ea4fdeb099243ad7a754463c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e58d72f10f890d35ec10395d4e19998d6e9e9a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e9171037fa4f7bef61865192c7b9342f78131a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8eb23d9d0552b9ac6ad51434030b7a7335a58956` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f569008d23e1f0c9b1143bbbf01eac0dec09442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fe4920fb9ef3244a2cf8b9efdcd1f6ea8d78407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90e1bc27bf1a26e93419427968dc652661ca5df9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91739ace0fa856f41b0a91205901f8268f2ab107` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9463dc80cfa4d26784cbc85d5ed21e24b3e9cf51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94ddff5cb6e9290d39b89fa3b68b47b85a222edd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96252d83dc3eabe1284250aedd485d1462172ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97aba8a3acb470ca9a4e01d27cdcfbc87cddbc94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x993e811b6ec826ce857fcd4d8d5a78917581452c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b059c955afae75f3c85097016122807f3dc3fbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c7cbafdc4ec09b25d3a0464fc4590a34a9026a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d8ded3b841fd4dbd69fe021ba9e472bc9294502` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e13d34a417271151d2d1f747665a27f1ca542e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e287b4536f6537b5112ae564c1eacb0a37ddbaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e9c74a62ebb1c41d44918a8e748323ab0b9befe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ec4f220c044ab96ba6f5d382bc03f4267926b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f613fb793230804b38f176ea89f997000f12665` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa008a021dc60ef928e381d76e8bdb74014635746` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa11564852273d2892d3e90277466285eab8ba0ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2a9ba50fd6158a4d6bac31e78dd09924bb4ee41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4a959209db6ae2ec8264a726e946e0b0757a4ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa524c830c0211f98b1d91add629b38718dcb41d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa594fd44aabfcf4b85927d2f356776c4af20ba4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa75612c0197b74bce2f3f59471c6a987cd8a91d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9ffb469b2a78a1135dda9d07601fa0f4c068f65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaa33537f4d9bd79698e52ba01e6074defa9162a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab07dc516251b3fa21fd386eaa8b03e15dc8ae3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab1a265c2275383561b504e69c5b6c72c1ac55c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab288325b35e8051c604653b766412ad4a4499ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae709513455b338115d5ca2ec63d20b5a3056b31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf72394095832535429bd13511c148c445242152` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb10d87ff7d59b6f90b97999506004ee66556dd6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb14de6a26e6dbd1f4a78199574ad21fe11843129` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1e02b8300b9fbfb93cab37f1e9b2e9c2fa08755` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3d0e2a8f43a8d02b148f9ff7b94f65b090bd212` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4848c64db8849fe9494e29e1567f2e8e2cb5b84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4a6c585da0d8a6355c30b0a428a4670fa90236d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4e5f52dfff8285eb48323eb4d3e828b5798bed6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6ac38a06cb4fc37326f8a6e132046a709c6487d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba19bade360a87fcac4e2c2c73472ed7e7814eb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbaab46a0ed6a4f4213fb002563c3f19f3323e81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbf98ca37c2caf2c76cea5caf81e98038236ea9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc0211e132999af9851f20bcebc37647492d4f2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc28a6c4d5e443a267cc715718ef1f012079a8f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd63ce9ccfc478d980f4a9af18f701896db9cd8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe2cbace0a7d3c2009eb7c70ccf006c3016cde8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe363cca482e0e5e3865302ceab098d2e6bdcf51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea9f532d9ede7f3ba9c1f053d5a7d0b1e3b2668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf5cfa9c1b5b2fa036df47c033b169ecd4fbbdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0906acbd2e12ea5af80104042c0df90f1a9516b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0c210ae321bb4d5d503eaf041cd6827760bab25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1239ae2754782213c6ecf3340522a9347c9a52c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0xc1b7a37a50f5099fb1bd893c2f76f56847411e9e`; bsc `0xeefb223eda152dd940205d4c3455a0541fd5555d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc224f1b1e6de0c1b19c119b7355fa878b136d18e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc26857a5f3ccaec04faee78a0b16b9ab46b12cd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2e7a86f109a5b17bfe6c7561a8a9adc31cf595a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc365c66d2e7cf3e845e3e9d333339d859ddcaf91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4adc7ab5b66991c5f530ed4518f4f5b4343c1a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5744a8d5c2b5ed003c6776dc722ff7a8f8d012a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f5f9695d8ba219257e30609ba1ad0c1ccfdf79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc61d85a988f5d8a10666069de802c757288ef553` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc667e8ac55590d140957df005ca0c2ef69698270` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7f2e224aa9adbd797a9851a0098761034ae18a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7f5dd9453ef07947df9a311a08f195c931ab873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfc65028ec08bfc4b3afc41e6e95220596bfe1ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd24216ebcebffb938d815f62413de885519b2b08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2563f3624a418a0651e1ea2383db61ef3728aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd529c40dfd080c006ac48123bdf7fd859b49be6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd943c568e6917d6e5bcc9eae5ebdfe28f11d5520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9d81db1ea6a2e373f2ddf807aab4f12c5d8d2e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad96828e2838f8c45e12315fba5e08878e16af3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdadab5a87dd135c083760724984a1c34d368540a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb2016810eb29f197777b1b0d0276378579ef302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb6c8f9c9fc0469733ec87ac0caf63d5a6877eeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb804071e8b04e65d70a6299f3a30f7d9d721219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbb5e0c15f5e9d23df6ae53bfda41721062fe88a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbb812057abfec8fd4adee51cdf17c09cf544d8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdce839ff074c647ec41f5687d698830940c769d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdceb42fce7e9ec7724d89e5f07fba650715f69d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd4495fedc8e0c7479fba5115fc18b6a577fc495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde2950434bf94c696daf9ac0e0de6dab9d74f045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdec390c77dcfdfa786a2ba4ba651282c45b17503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf3d38b70519f86497558822f296353bad4aa786` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfa4b3c0ccabe35e751cf96213402a8c86295824` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe00592387a9b92c0e9155d04a82da873261110e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe07a506b3b0157406db7d94fbef32594d109b0d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe26850f4d4be37417e88db7efcbf689f5fddb92d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe39b3fb518a7892e707c646388d170d3dd7831ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3d82fb8696017a475395c4b555b4245e647b781` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe42e3797b31fc6c7262614e826e4fee41b467a9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f2ff19617f08648df075560304edc1ebcc7d5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6fb68fa09cbd4e12911090c3661812e764a0bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7b6caa4f41aa53220bddd2b93031d0f1870c3e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe821638580c4026bd13077eaded6ac9c654be028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe86d77ff0c87e7dedeb2da3f97cfd62c36902542` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe870bd9929298821e7fc400b0e83bca2a4a2aa82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb68c1fb86f91633f8d03cdb6d7d89abb14034d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed100a3d5ca907234389241f4012f39ff4eec022` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeae103c37c38c1ac6dfb23a76bfb258936159b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef178b1ae570bf4bf7dd2ca3e319b1548ef30136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef28e783e741e1f41bc2deedf99b4216f1d01c2a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf18e6d807a5df8c97257a71c4ad49094966663fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf30d67da3f8bab054b148eba85efffb3114b8541` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3910d184818e54a70ac8eb346b5f2a330383520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3a9bf73cddf1c9693d264ac1395e2029ce20f40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3e3b2d2b24303c5c5ae348c2df08e951c7f6992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3fa56670f6dd1ed5c824f9f6465ba2423c37ee8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5a4d833aad579f289656f16a47cf8c82ea5e860` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6da382573a9ff0e1f9ba67c95e47afd04c863f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf780df994916a300d7de3496b9c558b26372ccc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7c5b301a7a6c606abce9b810c95b487c12edf47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf828447a117aa814e60a36bd62f5d60c9a41b8f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf90ba175cc1f4f4256e64e5a854af764f03736cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb725c2aef3c5a2b73dd703bcb17dd50abc396d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffe80182caf4d04b12f6b5e8f0a8683086a0a0cd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/mobox](https://skynet.certik.com/projects/mobox) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x85c128ee1feeb39a59490c720a9c563554b51d33`](./contracts/bsc-56/0x85c128ee1feeb39a59490c720a9c563554b51d33/) | KeyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa5f8c5dbd5f286960b9d90548680ae5ebff07652`](./contracts/bsc-56/0xa5f8c5dbd5f286960b9d90548680ae5ebff07652/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377`](./contracts/bsc-56/0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377/) | MoboxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2873d94d21efa8af064b02174413966b357c69e7`](./contracts/bsc-56/0x2873d94d21efa8af064b02174413966b357c69e7/) | MoMoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x529e2a515ce4499c41b23102e56e45025e393757`](./contracts/bsc-56/0x529e2a515ce4499c41b23102e56e45025e393757/) | MoMoProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fa59693458289914db0097f5f366d771b7a7c3f`](./contracts/bsc-56/0x8fa59693458289914db0097f5f366d771b7a7c3f/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 306 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2864] skynet.certik.com/projects/mobox

Fork inheritance lineage and inherited audits are included when available.
