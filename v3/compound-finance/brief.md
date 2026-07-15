# Agentic Audit Brief: Compound Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 11 (3 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Compound Finance (`compound-finance`)
- Website: [https://compound.finance/](https://compound.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, mantle, optimism, polygon, scroll, unichain
- Contract surface: 1130 unique implementations (1130 raw deployments)
- Coverage basis: 2/65 confirmed own live verified implementations (3.1%); conservative 3.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,244,363,245.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Compound Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 65 contract row(s) across arbitrum, base, ethereum, linea, mantle, optimism, polygon, scroll, unichain. Structural roles: 42 core, 13 supporting, 9 infra, 1 unclassified. 34 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 65
- Structural roles: core (42), supporting (13), infra (9), unclassified (1)
- Contract kinds: contract (61), abstract (4)
- Detected standards: erc1967proxy (22), erc20 (17), erc20permit (8), ownable (6), chainlinkaggregator (5), erc165 (3), ownable2step (3), pausable (1)
- Frameworks: openzeppelin (46), openzeppelin-upgradeable (19), chainlink (7), uniswap-v3 (6), layerzero (2), solmate (2)
- Upgradeable-pattern rows: 34

## Fork Analysis

0 of 418 contracts are derived from known codebases. 418 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x074692...4461a7`, chain 1)
- UnnamedContract (`0x0a4f4f...af887d`, chain 1)
- UnnamedContract (`0x0ca923...516f96`, chain 1)
- UnnamedContract (`0x16f353...9cf3b3`, chain 1)
- UnnamedContract (`0x1933f7...14027b`, chain 1)
- UnnamedContract (`0x1b0e76...885a40`, chain 1)
- UnnamedContract (`0x1c0c89...8c82b2`, chain 1)
- UnnamedContract (`0x1ec63b...2e8779`, chain 1)
- UnnamedContract (`0x1fa408...e8c958`, chain 1)
- UnnamedContract (`0x214ed9...c1a0d6`, chain 1)
- UnnamedContract (`0x23a982...bb5549`, chain 1)
- UnnamedContract (`0x266570...ce423a`, chain 1)
- UnnamedContract (`0x2bea10...7dce14`, chain 1)
- UnnamedContract (`0x2d0914...05722d`, chain 1)
- UnnamedContract (`0x316f97...d336e3`, chain 1)
- UnnamedContract (`0x31b844...23bf3f`, chain 1)
- UnnamedContract (`0x351a13...ddec91`, chain 1)
- UnnamedContract (`0x3afdc9...ab0840`, chain 1)
- UnnamedContract (`0x3d0bb1...8fafe3`, chain 1)
- UnnamedContract (`0x3e7d1e...64e32d`, chain 1)
- UnnamedContract (`0x400249...b43b5d`, chain 1)
- UnnamedContract (`0x40fcee...1cb1d3`, chain 1)
- UnnamedContract (`0x4f1263...0070d2`, chain 1)
- UnnamedContract (`0x4f4d5a...d9bdd5`, chain 1)
- UnnamedContract (`0x514910...f986ca`, chain 1)
- UnnamedContract (`0x553303...63220e`, chain 1)
- UnnamedContract (`0x554619...25a8f5`, chain 1)
- UnnamedContract (`0x5641af...42e747`, chain 1)
- UnnamedContract (`0x57a71a...7400d1`, chain 1)
- UnnamedContract (`0x5abcfc...b7f876`, chain 1)
- UnnamedContract (`0x5acae7...3c54dd`, chain 1)
- UnnamedContract (`0x5c2986...7d3212`, chain 1)
- UnnamedContract (`0x5d409e...897b56`, chain 1)
- UnnamedContract (`0x60f205...552194`, chain 1)
- UnnamedContract (`0x687496...782f38`, chain 1)
- UnnamedContract (`0x69b50f...ac8ccd`, chain 1)
- UnnamedContract (`0x6d903f...c33925`, chain 1)
- UnnamedContract (`0x6f654c...1b036e`, chain 1)
- UnnamedContract (`0x72e9b6...b7fa48`, chain 1)
- UnnamedContract (`0x7783a5...da5f5e`, chain 1)
- UnnamedContract (`0x7b03a0...06bc37`, chain 1)
- UnnamedContract (`0x7badab...0b45b9`, chain 1)
- UnnamedContract (`0x8236a8...634494`, chain 1)
- UnnamedContract (`0x8350b7...354297`, chain 1)
- UnnamedContract (`0x835b92...8f77e7`, chain 1)
- UnnamedContract (`0x83b346...89d5a7`, chain 1)
- UnnamedContract (`0x87641f...f74188`, chain 1)
- UnnamedContract (`0x8a5c2e...ae9aaa`, chain 1)
- UnnamedContract (`0x8c74b2...20ed2f`, chain 1)
- UnnamedContract (`0x8fffff...6818f6`, chain 1)
- UnnamedContract (`0x91359c...b94ee9`, chain 1)
- UnnamedContract (`0x9f4001...a1af35`, chain 1)
- UnnamedContract (`0x9feac5...ba9397`, chain 1)
- UnnamedContract (`0xa0332a...573451`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xa17581...93ae94`, chain 1)
- UnnamedContract (`0xa26992...029acf`, chain 1)
- UnnamedContract (`0xa35b1b...00a15b`, chain 1)
- UnnamedContract (`0xa3931d...c27fbd`, chain 1)
- UnnamedContract (`0xa569d9...69f961`, chain 1)
- UnnamedContract (`0xa70a02...3aaedc`, chain 1)
- UnnamedContract (`0xaa9527...8d3484`, chain 1)
- UnnamedContract (`0xb6e043...9fca84`, chain 1)
- UnnamedContract (`0xba8f83...c33867`, chain 1)
- UnnamedContract (`0xbf5495...8d2110`, chain 1)
- UnnamedContract (`0xc0053f...a673ad`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xc3d688...84cdc3`, chain 1)
- UnnamedContract (`0xc8e4c3...bba1fc`, chain 1)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 1)
- UnnamedContract (`0xcfc1fa...80df4f`, chain 1)
- UnnamedContract (`0xd4ec91...3f68ed`, chain 1)
- UnnamedContract (`0xd5f783...b0adfa`, chain 1)
- UnnamedContract (`0xd6a48f...12cf1c`, chain 1)
- UnnamedContract (`0xd72ac1...4ce0ab`, chain 1)
- UnnamedContract (`0xd98be0...a57d07`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xdc035d...07384f`, chain 1)
- UnnamedContract (`0xdcee70...b78192`, chain 1)
- UnnamedContract (`0xdf08cd...6ededc`, chain 1)
- UnnamedContract (`0xe3458a...a14dd1`, chain 1)
- UnnamedContract (`0xe51a17...425282`, chain 1)
- UnnamedContract (`0xe85dc5...6a9293`, chain 1)
- UnnamedContract (`0xef819f...935007`, chain 1)
- UnnamedContract (`0xf1c9ac...190e38`, chain 1)
- UnnamedContract (`0xf1cee2...ad715b`, chain 1)
- UnnamedContract (`0xf469fb...0a012e`, chain 1)
- UnnamedContract (`0xf5600f...9c6bf8`, chain 1)
- UnnamedContract (`0xfae103...afa6c0`, chain 1)
- UnnamedContract (`0xfd5282...857bf2`, chain 1)
- UnnamedContract (`0xfdfd9c...2fbb23`, chain 1)
- UnnamedContract (`0xff3058...1219b1`, chain 1)
- UnnamedContract (`0x0b2c63...97ff85`, chain 10)
- UnnamedContract (`0x0be923...50510f`, chain 10)
- UnnamedContract (`0x0d276f...269246`, chain 10)
- UnnamedContract (`0x13e3ee...7e08c5`, chain 10)
- UnnamedContract (`0x16a9fa...61e0f3`, chain 10)
- UnnamedContract (`0x1f0e8f...1dc345`, chain 10)
- UnnamedContract (`0x24d86d...f397af`, chain 10)
- UnnamedContract (`0x2e44e1...8c5bcb`, chain 10)
- UnnamedContract (`0x371db4...ecfe02`, chain 10)
- UnnamedContract (`0x3e6d1c...6823b4`, chain 10)
- UnnamedContract (`0x3fb418...c6378b`, chain 10)
- UnnamedContract (`0x403f20...5777d1`, chain 10)
- UnnamedContract (`0x443ea0...c3c2e9`, chain 10)
- UnnamedContract (`0x4ed39c...99e13d`, chain 10)
- UnnamedContract (`0x57f5e0...af7812`, chain 10)
- UnnamedContract (`0x5a7fac...73cbff`, chain 10)
- UnnamedContract (`0x5d1738...ad4448`, chain 10)
- UnnamedContract (`0x5eba6e...c652b1`, chain 10)
- UnnamedContract (`0x68f180...0a2095`, chain 10)
- UnnamedContract (`0x699a19...bd24f5`, chain 10)
- UnnamedContract (`0x718a57...6c2a6f`, chain 10)
- UnnamedContract (`0x7e7d44...4910ee`, chain 10)
- UnnamedContract (`0x84e93e...3f2713`, chain 10)
- UnnamedContract (`0x8671d5...2d5cd7`, chain 10)
- UnnamedContract (`0x92014e...3ce8b4`, chain 10)
- UnnamedContract (`0x995e39...62b214`, chain 10)
- UnnamedContract (`0xadf7ad...e9f02e`, chain 10)
- UnnamedContract (`0xc3a73a...434daf`, chain 10)
- UnnamedContract (`0xc4aafc...552ad0`, chain 10)
- UnnamedContract (`0xcb3643...9d4ba3`, chain 10)
- UnnamedContract (`0xd187f9...23f434`, chain 10)
- UnnamedContract (`0xd62d43...cc5cf2`, chain 10)
- UnnamedContract (`0xd98be0...a57d07`, chain 10)
- UnnamedContract (`0xddc326...3cf002`, chain 10)
- UnnamedContract (`0xdfb81f...7d1585`, chain 10)
- UnnamedContract (`0xe36a30...21b6fd`, chain 10)
- UnnamedContract (`0xe6eb5b...f034d5`, chain 10)
- UnnamedContract (`0xecef79...647f5e`, chain 10)
- UnnamedContract (`0x1ad4ce...330f26`, chain 130)
- UnnamedContract (`0x1f7190...676856`, chain 130)
- UnnamedContract (`0x241609...cceea5`, chain 130)
- UnnamedContract (`0x2c7118...5f2921`, chain 130)
- UnnamedContract (`0x2e44e1...8c5bcb`, chain 130)
- UnnamedContract (`0x2f4eaf...ef4ed0`, chain 130)
- UnnamedContract (`0x3870fa...275a60`, chain 130)
- UnnamedContract (`0x3c30b5...7ed178`, chain 130)
- UnnamedContract (`0x420000...000006`, chain 130)
- UnnamedContract (`0x443ea0...c3c2e9`, chain 130)
- UnnamedContract (`0x4a900f...6df6f3`, chain 130)
- UnnamedContract (`0x4b5dee...0c8118`, chain 130)
- UnnamedContract (`0x515151...d2beb1`, chain 130)
- UnnamedContract (`0x540487...37fb93`, chain 130)
- UnnamedContract (`0x58ebb8...63b514`, chain 130)
- UnnamedContract (`0x6bad23...9edfc5`, chain 130)
- UnnamedContract (`0x6c987d...978e2a`, chain 130)
- UnnamedContract (`0x6f7d51...dee486`, chain 130)
- UnnamedContract (`0x72874c...ba5e45`, chain 130)
- UnnamedContract (`0x7dcc39...ef80f7`, chain 130)
- UnnamedContract (`0x84e93e...3f2713`, chain 130)
- UnnamedContract (`0x8d38a3...dbc991`, chain 130)
- UnnamedContract (`0x8df378...6303e9`, chain 130)
- UnnamedContract (`0x8f187a...e9ea21`, chain 130)
- UnnamedContract (`0x927b51...c4afb8`, chain 130)
- UnnamedContract (`0xaeb318...409a07`, chain 130)
- UnnamedContract (`0xc02fe7...a92001`, chain 130)
- UnnamedContract (`0xc3eacf...b09f58`, chain 130)
- UnnamedContract (`0xdb7edf...96676c`, chain 130)
- UnnamedContract (`0xdf78e4...288656`, chain 130)
- UnnamedContract (`0xfa454d...b89f45`, chain 130)
- UnnamedContract (`0x0a6513...a50545`, chain 137)
- UnnamedContract (`0x1bfd67...d9bfd6`, chain 137)
- UnnamedContract (`0x2f4eaf...ef4ed0`, chain 137)
- UnnamedContract (`0x2f9e39...29125b`, chain 137)
- UnnamedContract (`0x3a58a5...ebf3c4`, chain 137)
- UnnamedContract (`0x459396...31e581`, chain 137)
- UnnamedContract (`0x59e242...7f7cd6`, chain 137)
- UnnamedContract (`0x5d37e4...3c7403`, chain 137)
- UnnamedContract (`0x83abac...aea2d1`, chain 137)
- UnnamedContract (`0x83e0f7...26e738`, chain 137)
- UnnamedContract (`0x8505b9...7aef5c`, chain 137)
- UnnamedContract (`0x97371d...38a13f`, chain 137)
- UnnamedContract (`0x9c4ec7...ff58bf`, chain 137)
- UnnamedContract (`0xa265e6...2504e6`, chain 137)
- UnnamedContract (`0xab5946...862de0`, chain 137)
- UnnamedContract (`0xaeb318...409a07`, chain 137)
- UnnamedContract (`0xbde8f3...7b372d`, chain 137)
- UnnamedContract (`0xcc3e7c...dd4a02`, chain 137)
- UnnamedContract (`0xd712ac...b975f9`, chain 137)
- UnnamedContract (`0xde31f8...d78ae6`, chain 137)
- UnnamedContract (`0xf25212...246445`, chain 137)
- UnnamedContract (`0xf9680d...205945`, chain 137)
- UnnamedContract (`0xfa68fb...45efb6`, chain 137)
- UnnamedContract (`0xfe4a8c...81b2f7`, chain 137)
- UnnamedContract (`0x16c7b5...728107`, chain 5000)
- UnnamedContract (`0x3c851c...a3aee3`, chain 5000)
- UnnamedContract (`0x41e345...ef1168`, chain 5000)
- UnnamedContract (`0x5a1d1c...553285`, chain 5000)
- UnnamedContract (`0x602cc5...f4d155`, chain 5000)
- UnnamedContract (`0x606174...d7786e`, chain 5000)
- UnnamedContract (`0x67dfca...8b9baa`, chain 5000)
- UnnamedContract (`0x731564...367662`, chain 5000)
- UnnamedContract (`0xadd81a...c9f1b3`, chain 5000)
- UnnamedContract (`0xb77cd4...9cf7db`, chain 5000)
- UnnamedContract (`0xc91eca...f1b604`, chain 5000)
- UnnamedContract (`0xcd83cb...e225ab`, chain 5000)
- UnnamedContract (`0xcda86a...b90bb0`, chain 5000)
- UnnamedContract (`0xe268b4...17a0c7`, chain 5000)
- UnnamedContract (`0xf528b4...ba7f18`, chain 5000)
- UnnamedContract (`0x0090a5...83c8c3`, chain 8453)
- UnnamedContract (`0x07da0e...a59f9d`, chain 8453)
- UnnamedContract (`0x0e3837...0f0a7b`, chain 8453)
- UnnamedContract (`0x123964...00a6b1`, chain 8453)
- UnnamedContract (`0x1738fc...e1a7b3`, chain 8453)
- UnnamedContract (`0x220da2...f13431`, chain 8453)
- UnnamedContract (`0x2330aa...f62930`, chain 8453)
- UnnamedContract (`0x241609...cceea5`, chain 8453)
- UnnamedContract (`0x2c7760...eea518`, chain 8453)
- UnnamedContract (`0x3d0bb1...8fafe3`, chain 8453)
- UnnamedContract (`0x3dc83e...fff45d`, chain 8453)
- UnnamedContract (`0x3e6d1c...6823b4`, chain 8453)
- UnnamedContract (`0x41e345...ef1168`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x459396...31e581`, chain 8453)
- UnnamedContract (`0x468767...76752c`, chain 8453)
- UnnamedContract (`0x46e6b2...0970bf`, chain 8453)
- UnnamedContract (`0x4b5dee...0c8118`, chain 8453)
- UnnamedContract (`0x564417...742925`, chain 8453)
- UnnamedContract (`0x5875ee...75467a`, chain 8453)
- UnnamedContract (`0x59e242...7f7cd6`, chain 8453)
- UnnamedContract (`0x5d1738...ad4448`, chain 8453)
- UnnamedContract (`0x6b2f85...2011f1`, chain 8453)
- UnnamedContract (`0x6d75bf...2057bf`, chain 8453)
- UnnamedContract (`0x71041d...16bb70`, chain 8453)
- UnnamedContract (`0x72e9b6...b7fa48`, chain 8453)
- UnnamedContract (`0x784efe...bece89`, chain 8453)
- UnnamedContract (`0x78d067...212a8c`, chain 8453)
- UnnamedContract (`0x7e8600...a2bc6b`, chain 8453)
- UnnamedContract (`0x7fcd17...f58ea6`, chain 8453)
- UnnamedContract (`0x820c13...8921dc`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0x83e0f7...26e738`, chain 8453)
- UnnamedContract (`0x89e9b0...40bbf6`, chain 8453)
- UnnamedContract (`0x8c0870...acd96f`, chain 8453)
- UnnamedContract (`0x8d38a3...dbc991`, chain 8453)
- UnnamedContract (`0x8df378...6303e9`, chain 8453)
- UnnamedContract (`0x9c4ec7...ff58bf`, chain 8453)
- UnnamedContract (`0x9e1028...6840e0`, chain 8453)
- UnnamedContract (`0x9f4856...3bd1cf`, chain 8453)
- UnnamedContract (`0xaa3907...18989c`, chain 8453)
- UnnamedContract (`0xaa9527...8d3484`, chain 8453)
- UnnamedContract (`0xb125e6...15eb2f`, chain 8453)
- UnnamedContract (`0xb88e40...54498a`, chain 8453)
- UnnamedContract (`0xbd4cfc...0a2505`, chain 8453)
- UnnamedContract (`0xbde8f3...7b372d`, chain 8453)
- UnnamedContract (`0xc1cba3...0ee452`, chain 8453)
- UnnamedContract (`0xc4a9ff...330c51`, chain 8453)
- UnnamedContract (`0xc89567...619a77`, chain 8453)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 8453)
- UnnamedContract (`0xcc3e7c...dd4a02`, chain 8453)
- UnnamedContract (`0xd9aaec...10b6ca`, chain 8453)
- UnnamedContract (`0xdb7edf...96676c`, chain 8453)
- UnnamedContract (`0xdd1868...1132d9`, chain 8453)
- UnnamedContract (`0xe6eb5b...f034d5`, chain 8453)
- UnnamedContract (`0xedfa23...76bea0`, chain 8453)
- UnnamedContract (`0x0be923...50510f`, chain 42161)
- UnnamedContract (`0x15eb94...432156`, chain 42161)
- UnnamedContract (`0x241609...cceea5`, chain 42161)
- UnnamedContract (`0x250bd3...57b709`, chain 42161)
- UnnamedContract (`0x271a20...8d4680`, chain 42161)
- UnnamedContract (`0x311930...390e7a`, chain 42161)
- UnnamedContract (`0x3410f0...50d54c`, chain 42161)
- UnnamedContract (`0x354a6d...6c91de`, chain 42161)
- UnnamedContract (`0x357510...cf4dbe`, chain 42161)
- UnnamedContract (`0x3fb4d3...8cf88a`, chain 42161)
- UnnamedContract (`0x478854...cef0c6`, chain 42161)
- UnnamedContract (`0x4f1263...0070d2`, chain 42161)
- UnnamedContract (`0x50834f...434ad3`, chain 42161)
- UnnamedContract (`0x5372bc...fff881`, chain 42161)
- UnnamedContract (`0x57f5e0...af7812`, chain 42161)
- UnnamedContract (`0x5979d7...800529`, chain 42161)
- UnnamedContract (`0x5998a5...0b68d2`, chain 42161)
- UnnamedContract (`0x5d1738...ad4448`, chain 42161)
- UnnamedContract (`0x5d409e...897b56`, chain 42161)
- UnnamedContract (`0x5eba6e...c652b1`, chain 42161)
- UnnamedContract (`0x60f205...552194`, chain 42161)
- UnnamedContract (`0x639fe6...3ba612`, chain 42161)
- UnnamedContract (`0x675daf...e5a8bd`, chain 42161)
- UnnamedContract (`0x69ad47...e21941`, chain 42161)
- UnnamedContract (`0x6c84a8...d0de40`, chain 42161)
- UnnamedContract (`0x6f7d51...dee486`, chain 42161)
- UnnamedContract (`0x70175d...00eba5`, chain 42161)
- UnnamedContract (`0x7de363...c14228`, chain 42161)
- UnnamedContract (`0x8495af...614798`, chain 42161)
- UnnamedContract (`0x88730d...9f7fae`, chain 42161)
- UnnamedContract (`0x92014e...3ce8b4`, chain 42161)
- UnnamedContract (`0x95dedd...b116e7`, chain 42161)
- UnnamedContract (`0x9c4ec7...ff58bf`, chain 42161)
- UnnamedContract (`0xa26992...029acf`, chain 42161)
- UnnamedContract (`0xa4f2e9...f2f915`, chain 42161)
- UnnamedContract (`0xa5edbd...905dca`, chain 42161)
- UnnamedContract (`0xaf88d0...8e5831`, chain 42161)
- UnnamedContract (`0xb2988b...4db406`, chain 42161)
- UnnamedContract (`0xb2a824...a548d6`, chain 42161)
- UnnamedContract (`0xb3e79c...0c4129`, chain 42161)
- UnnamedContract (`0xbde8f3...7b372d`, chain 42161)
- UnnamedContract (`0xc35137...8d624a`, chain 42161)
- UnnamedContract (`0xcc392d...661013`, chain 42161)
- UnnamedContract (`0xd0c710...d46d57`, chain 42161)
- UnnamedContract (`0xd10b40...4d715e`, chain 42161)
- UnnamedContract (`0xd98be0...a57d07`, chain 42161)
- UnnamedContract (`0xdb7edf...96676c`, chain 42161)
- UnnamedContract (`0xdb9805...0df3db`, chain 42161)
- UnnamedContract (`0xe80848...abeb1c`, chain 42161)
- UnnamedContract (`0xec70dc...a5ffa8`, chain 42161)
- UnnamedContract (`0xedfb5f...3cbe62`, chain 42161)
- UnnamedContract (`0xfa454d...b89f45`, chain 42161)
- UnnamedContract (`0xfc5a1a...35ad0a`, chain 42161)
- UnnamedContract (`0xff970a...db5cc8`, chain 42161)
- UnnamedContract (`0x074692...4461a7`, chain 59144)
- UnnamedContract (`0x139338...b05e37`, chain 59144)
- UnnamedContract (`0x176211...1ee1ff`, chain 59144)
- UnnamedContract (`0x1bf74c...0b8aa6`, chain 59144)
- UnnamedContract (`0x241609...cceea5`, chain 59144)
- UnnamedContract (`0x2c7118...5f2921`, chain 59144)
- UnnamedContract (`0x3aab22...05a9b4`, chain 59144)
- UnnamedContract (`0x3c6cd9...3354da`, chain 59144)
- UnnamedContract (`0x4a900f...6df6f3`, chain 59144)
- UnnamedContract (`0x4b5dee...0c8118`, chain 59144)
- UnnamedContract (`0x60f205...552194`, chain 59144)
- UnnamedContract (`0x7a9909...28e1f9`, chain 59144)
- UnnamedContract (`0x7e0df5...87af4b`, chain 59144)
- UnnamedContract (`0x841e38...efb1d7`, chain 59144)
- UnnamedContract (`0x8d38a3...dbc991`, chain 59144)
- UnnamedContract (`0x8d50b4...b37edc`, chain 59144)
- UnnamedContract (`0x970ffd...1d5dc3`, chain 59144)
- UnnamedContract (`0x972b1b...5a671a`, chain 59144)
- UnnamedContract (`0xa26992...029acf`, chain 59144)
- UnnamedContract (`0xaadaa4...bfdcb5`, chain 59144)
- UnnamedContract (`0xaeb318...409a07`, chain 59144)
- UnnamedContract (`0xb5bedd...68fc8f`, chain 59144)
- UnnamedContract (`0xc4a9ff...330c51`, chain 59144)
- UnnamedContract (`0xc8e4c3...bba1fc`, chain 59144)
- UnnamedContract (`0xd26711...101e6c`, chain 59144)
- UnnamedContract (`0xdb7edf...96676c`, chain 59144)
- UnnamedContract (`0xe5d7c2...5cf34f`, chain 59144)
- UnnamedContract (`0xf1cee2...ad715b`, chain 59144)
- UnnamedContract (`0xfd5282...857bf2`, chain 59144)
- UnnamedContract (`0x43d12f...7b7200`, chain 534352)
- UnnamedContract (`0x4c0892...b0d623`, chain 534352)
- UnnamedContract (`0x53c6d0...7c56fa`, chain 534352)
- UnnamedContract (`0x5ec955...1a0656`, chain 534352)
- UnnamedContract (`0x6bf14c...a8774c`, chain 534352)
- UnnamedContract (`0x6f7d51...dee486`, chain 534352)
- UnnamedContract (`0x70167d...e0c5ee`, chain 534352)
- UnnamedContract (`0x709cef...e92843`, chain 534352)
- UnnamedContract (`0x77831f...771c79`, chain 534352)
- UnnamedContract (`0x87a27b...2bac50`, chain 534352)
- UnnamedContract (`0xb2f97c...77ce44`, chain 534352)
- UnnamedContract (`0xecab0b...8032d7`, chain 534352)
- UnnamedContract (`0xf6013e...0b73e4`, chain 534352)
- UnnamedContract (`0xf610a9...7cda32`, chain 534352)
- Aero (`0x940181...d98631`, chain 8453)
- ArbitrumBridgeReceiver (`0x42480c...d38068`, chain 42161)
- BaseBulker (`0x023ee7...0a5f1b`, chain 59144)
- BVM_ETH (`0xdeadde...ad1111`, chain 5000)
- ChainlinkCorrelatedAssetsPriceOracle (`0x0090a5...83c8c3`, chain 130)
- ClonableBeaconProxy (`0x2f2a25...fc5b0f`, chain 42161)
- CometExtAssetList (`0x055e53...091e1f`, chain 1)
- Comp (`0xc00e94...f26888`, chain 1)
- CompoundGovernor (`0x309a86...04c8c0`, chain 1)
- ConfiguratorProxy (`0xb21b06...ad3775`, chain 42161)
- deUSD (`0x15700b...7aa138`, chain 1)
- ERC1967Proxy (`0x57f5e0...af7812`, chain 1)
- ERC1967Proxy (`0x5c5b19...198326`, chain 1)
- ERC1967Proxy (`0xd11c45...6d5ed8`, chain 1)
- ERC1967Proxy (`0xd9a442...306a72`, chain 1)
- FBTC (`0xc96de2...d6c364`, chain 5000)
- FiatTokenProxy (`0x078d78...f57ad6`, chain 130)
- FiatTokenProxy (`0x06efdb...f663a4`, chain 534352)
- GovernanceToken (`0x420000...000042`, chain 10)
- L2StandardERC20 (`0x9bcef7...8eb81d`, chain 10)
- L2TBTC (`0x236aa5...ab794b`, chain 8453)
- LineaBridgeReceiver (`0x1f7190...676856`, chain 59144)
- MainnetBulker (`0xa397a8...4b00c7`, chain 1)
- MainnetBulkerWithWstETHSupport (`0x2c7760...eea518`, chain 1)
- MaticWETH (`0x7ceb23...b9f619`, chain 137)
- OptimismBridgeReceiver (`0x18281d...3c468a`, chain 8453)
- OptimismMintableERC20 (`0x52b7d8...a3f17f`, chain 5000)
- OssifiableProxy (`0x1f32b1...194ebb`, chain 10)
- PolygonBridgeReceiver (`0x18281d...3c468a`, chain 137)
- Proxy (`0x2ae3f1...0dec22`, chain 8453)
- RateBasedCorrelatedAssetsPriceOracle (`0x00c03a...121101`, chain 1)
- ReverseMultiplicativePriceFeed (`0x04eab6...9c2796`, chain 1)
- RocketTokenRETH (`0xae7873...fc6393`, chain 1)
- RSETH_OFT (`0x4186bf...56b41f`, chain 42161)
- RsETHCorrelatedAssetsPriceOracle (`0x0af91e...8214c2`, chain 1)
- RsETHTokenWrapper (`0x87eee9...9d61b1`, chain 10)
- SafeProxy (`0xd9496f...3183cb`, chain 1)
- SafeProxy (`0xb3e79c...0c4129`, chain 8453)
- ScalingPriceFeedWithCustomDescription (`0x0090a5...83c8c3`, chain 5000)
- ScrollBridgeReceiver (`0xc6bf5a...9b610d`, chain 534352)
- Sky (`0x56072c...ed9279`, chain 1)
- StakedFrax (`0xa663b0...c41c32`, chain 1)
- StakedTokenV1 (`0xbe9895...a49704`, chain 1)
- TAssetMultichainToken (`0xd09acb...167003`, chain 42161)
- TBTC (`0x18084f...d93a88`, chain 1)
- TransparentUpgradeableProxy (`0xa1290d...99e5a7`, chain 1)
- TransparentUpgradeableProxy (`0x85c4f8...bfe97d`, chain 130)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 8453)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0x912ce5...9e6548`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086b...9fcbb9`, chain 42161)
- TransparentUpgradeableProxy (`0x0ece76...2203f0`, chain 59144)
- UChildERC20Proxy (`0x2791bc...a84174`, chain 137)
- UChildERC20Proxy (`0xc2132d...b58e8f`, chain 137)
- Uni (`0x1f9840...01f984`, chain 1)
- USDe (`0x4c9edd...1e68b3`, chain 1)
- USDeOFT (`0x5d3a1f...52ef34`, chain 5000)
- USDT (`0x94b008...e58e58`, chain 10)
- UUPSProxy (`0xcd5fe2...59b7ee`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WETH9 (`0x420000...000006`, chain 10)
- WMATIC (`0x0d500b...df1270`, chain 137)
- WrappedEther (`0x530000...000004`, chain 534352)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)
- XERC20 (`0x241609...cceea5`, chain 10)

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 65 (65 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 418/499 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/65 (3.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 418 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 712 discovered implementations excluded (0 third-party/infra; 52 standard proxy/library)
- Proxy deployments represented within implementation groups: 116
- Deployed-live implementations: 418 of 1130 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/65
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 353
- Unique implementations: 1130
- Raw deployments: 1130
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 3.1% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 2 | 3.1% | 2022-06 |
| Trail of Bits | Tier 1 | 1 | 1.5% | 2020-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381996 | `0xc00e94...f26888` | ✅ Audited |
| WETH9 | unknown | project_anchor | own_supporting | 0 | optimism | unit-382035 | `0x420000...000006` | ✅ Audited |

### ⚠️ Verified + Unaudited (775)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00377d...5734cf` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019699...b06215` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260d...a6cd78` | ⚠️ Unaudited |
| AccessControlManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4195ed...b6bc56` | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d...afd18d` | ⚠️ Unaudited |
| ActionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94af59...c3073f` | ⚠️ Unaudited |
| AddressMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7298d8...e74de8` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20ee00...e38cc7` | ⚠️ Unaudited |
| AddressQueueStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e319...e2ebd8` | ⚠️ Unaudited |
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae25...1c6a16` | ⚠️ Unaudited |
| Aero | unknown | project_anchor | own_supporting | 0 | base | unit-382376 | `0x940181...d98631` | ⚠️ Unaudited |
| AGETHPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60ff20...95a1d2` | ⚠️ Unaudited |
| AGETHTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa88845...1f73a5` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84...eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33...6c0a67` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b075f...430184` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x627410...5ed516` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4c69a...bc382f` | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0dd2...2de79a` | ⚠️ Unaudited |
| ArbFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1efb3f...f5ded8` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382167 | `0x42480c...d38068` | ⚠️ Unaudited |
| ArbitrumExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4eee...133a7e` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c...c38ac1` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fa063...6ff61a` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe06b0e...b64e4b` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc311a2...62a145` | ⚠️ Unaudited |
| AssetListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0daf7a...f5b202` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86f...d28d5d` | ⚠️ Unaudited |
| AssetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82335...48bd80` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x85a227...612569` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4c...37b3c4` | ⚠️ Unaudited |
| AuctionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68fe80...ba5366` | ⚠️ Unaudited |
| AuraSwEthBbAWethSYV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6ea7...27b96b` | ⚠️ Unaudited |
| AvsOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8969d7...3960f5` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e6341...53b648` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae...9d9fc6` | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x362dbd...655b26` | ⚠️ Unaudited |
| BaseBulker | unknown | project_anchor | own_supporting | 0 | linea | unit-382307 | `0x023ee7...0a5f1b` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e8439...b95704` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50...f831ca` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1070f7...fe17e8` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d...6e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9c...ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fb...f07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a69...2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83...653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f...941ec0` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fe380...11000f` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf5180...f5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fe...e68ff0` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f...0f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766...4839a5` | ⚠️ Unaudited |
| BlackPearl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677365...65e8af` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70222d...1001b2` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655205...e020cd` | ⚠️ Unaudited |
| BLSPublicKeyCompendium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18dd3c...a56a72` | ⚠️ Unaudited |
| BLSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1ed35b...11dd67` | ⚠️ Unaudited |
| BNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a3938...687242` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838...22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8...35c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f4...2ede4f` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03f349...40d356` | ⚠️ Unaudited |
| BoringVaultPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x130e22...3a0729` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b67c2...7a4717` | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd87243...bbf839` | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c864...acf835` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd6...0778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16...0d3443` | ⚠️ Unaudited |
| BridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fe8a...2059c8` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f...8d80c3` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a7b23...c696a1` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07d7a9...dd4200` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c6dda...672d02` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x821646...8939db` | ⚠️ Unaudited |
| BVM_ETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-382230 | `0xdeadde...ad1111` | ⚠️ Unaudited |
| CachedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4709ab...404fc7` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x031828...1dcf87` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d04c7...f79670` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079...ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a53...8e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d...270ed5` | ⚠️ Unaudited |
| ChainlinkCorrelatedAssetsPriceOracle | unknown | project_anchor | own_supporting | 0 | unichain | unit-382065 | `0x0090a5...83c8c3` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb...0160f3` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae...4d5b57` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| CLAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2298d4...9b1fbb` | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26179a...28e759` | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382415 | `0x2f2a25...fc5b0f` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x023ee7...0a5f1b` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x052a2a...b5cd69` | ⚠️ Unaudited |
| CometExtAssetList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381918 | `0x055e53...091e1f` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x023ee7...0a5f1b` | ⚠️ Unaudited |
| CometFactoryWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0202ae...4d6155` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0e3837...0f0a7b` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x06029a...64d756` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0090a5...83c8c3` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x032b20...9ee2c1` | ⚠️ Unaudited |
| CompoundEzEthLoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd050d6...22f1bc` | ⚠️ Unaudited |
| CompoundGovernor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382403 | `0x309a86...04c8c0` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053...63df29` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x113308...68b1a3` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382195 | `0xb21b06...ad3775` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b221...8748ba` | ⚠️ Unaudited |
| Consortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8048...c5478e` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x033bf4...417c7e` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0641...febeb7` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b...2ee39b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16...f28c51` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652199...92ba62` | ⚠️ Unaudited |
| CrossChainRemoteStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f81a5...e7a92d` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9a...ed5c30` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26542f...dd0c65` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322573...db276a` | ⚠️ Unaudited |
| DaoModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de7a4...8a398a` | ⚠️ Unaudited |
| DataLayrChallenge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee53d...57c066` | ⚠️ Unaudited |
| DataLayrChallengeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcdc78c...b0f55d` | ⚠️ Unaudited |
| DataLayrServiceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5bd63a...3c14c1` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e6d5...31d59f` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac184...c04dc5` | ⚠️ Unaudited |
| DepositDataRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab6d...35223e` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effe...0faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d128...ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca506...081a56` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a41d5...92ea28` | ⚠️ Unaudited |
| DepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24aa95...7377ae` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f...372323` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f2c5...c561d6` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff...ae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635...ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83d...212517` | ⚠️ Unaudited |
| deUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382402 | `0x15700b...7aa138` | ⚠️ Unaudited |
| DForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8063...a15ba1` | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb282a...b4c1e3` | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x851de5...37904b` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242b0f...3c34d0` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b7...50e672` | ⚠️ Unaudited |
| DorMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b78c...c9da2a` | ⚠️ Unaudited |
| DorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5324e2...152a10` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164...8a16b1` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01065f...57c71e` | ⚠️ Unaudited |
| DVFInterface2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6197...b684d5` | ⚠️ Unaudited |
| DVFInterface3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa297ec...319212` | ⚠️ Unaudited |
| DVFInterface4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de1f0...645a15` | ⚠️ Unaudited |
| DWSTETHV3RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5760a...fbbf08` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0017ab...7f9cf4` | ⚠️ Unaudited |
| eBtcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81be35...31b523` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1a...c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f...c76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8...d4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263ef...46f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a...ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48...91bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9...952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91...5efb84` | ⚠️ Unaudited |
| EETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b47a6...eff72f` | ⚠️ Unaudited |
| EigenLayrDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea4f1f...af4798` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b28a6...9fb585` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b...121267` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379...f2d786` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x478bf5...dd2192` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382404 | `0x57f5e0...af7812` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5c4606...f59219` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382397 | `0x5c5b19...198326` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382406 | `0xd11c45...6d5ed8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382400 | `0xd9a442...306a72` | ⚠️ Unaudited |
| ERC20Bridged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fbcba...8e1921` | ⚠️ Unaudited |
| ERC20PaymentReceiverEzRVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c28e...5d65af` | ⚠️ Unaudited |
| ERC20RebasableBridgedPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5a007d...6bebc3` | ⚠️ Unaudited |
| ERC4626CorrelatedAssetsPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x311930...390e7a` | ⚠️ Unaudited |
| ERC4626VaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9873...a10fc7` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56f979...8758a0` | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3828f...0207ef` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4f6b...099556` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e3af...d4cd3c` | ⚠️ Unaudited |
| EthDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45fed8...19cccd` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3acdbd...7646e9` | ⚠️ Unaudited |
| EthGenesisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124c33...510928` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e842...763605` | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f325...429e71` | ⚠️ Unaudited |
| EthPrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x135f45...47a035` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db...d18295` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcd8b...d49e4e` | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3037...addb67` | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f4c...b0eee4` | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedebe7...c36ee5` | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792ff3...25e353` | ⚠️ Unaudited |
| EthRestakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59adb4...e073bb` | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026df3...d11b2c` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac9125...fafc84` | ⚠️ Unaudited |
| EthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb2cb...5cae78` | ⚠️ Unaudited |
| EthVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170618...8dfe5e` | ⚠️ Unaudited |
| ETHx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c22ff...283358` | ⚠️ Unaudited |
| EulerEzEthLoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe97c9...9b5fe6` | ⚠️ Unaudited |
| EulerSwapEzEthDelegateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0226...23dd89` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x017513...2c029e` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05b723...d17988` | ⚠️ Unaudited |
| EzAdminL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x762571...a24718` | ⚠️ Unaudited |
| EzAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ab40d...1ba29f` | ⚠️ Unaudited |
| ezETHConversionStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebb77a...bbd86a` | ⚠️ Unaudited |
| EzETHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4360...d6ec1b` | ⚠️ Unaudited |
| EzEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e756b...bbacb0` | ⚠️ Unaudited |
| ezETHValueStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b5eb...b0bd9e` | ⚠️ Unaudited |
| EzRVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04fc0e...957d73` | ⚠️ Unaudited |
| EzRVaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fbab...5158e2` | ⚠️ Unaudited |
| EzRVaultsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e976...b0727f` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f1...f2322b` | ⚠️ Unaudited |
| FactoryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c3f18...9e37c0` | ⚠️ Unaudited |
| FastlaneFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x434b68...1d6354` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b27de...d983e6` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068f28...2167c7` | ⚠️ Unaudited |
| FBTC | unknown | project_anchor | own_supporting | 0 | mantle | unit-382227 | `0xc96de2...d6c364` | ⚠️ Unaudited |
| FBTCPartnerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258...8f198c` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb25...ceeedf` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f...dcf649` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff...f94789` | ⚠️ Unaudited |
| FeeTo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819...7f0970` | ⚠️ Unaudited |
| FeeToSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433...771360` | ⚠️ Unaudited |
| Fiat24CryptoDeposit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a65c...d24df9` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | unichain | unit-382411 | `0x078d78...f57ad6` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-382234 | `0x06efdb...f663a4` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4fb9...b6e04a` | ⚠️ Unaudited |
| FixedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb64b...ba2860` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15e9dd...3b2e5d` | ⚠️ Unaudited |
| FlashAuctionBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39e2a9...e1a521` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15e627...a05dcc` | ⚠️ Unaudited |
| Franchiser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefae01...5475a2` | ⚠️ Unaudited |
| FranchiserFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002e32...cc27cf` | ⚠️ Unaudited |
| FranchiserPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219a69...2b5ceb` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef...ba3559` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09e4f6...9f7831` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97b207...948ace` | ⚠️ Unaudited |
| FunctionsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9b8fc...25b278` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c...93d063` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a34...e46ab3` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35c...5bbcb5` | ⚠️ Unaudited |
| GearboxDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879316...c22f31` | ⚠️ Unaudited |
| GearboxDepositV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4deed6...cd234f` | ⚠️ Unaudited |
| GearboxRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150d67...718ece` | ⚠️ Unaudited |
| GearboxRedeemV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a029...08257a` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| Generalized4626Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167747...98d425` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325ea0...c85fb9` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4277f8...1ac258` | ⚠️ Unaudited |
| GlpBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e0bb...a4ebce` | ⚠️ Unaudited |
| GlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x321f65...e22649` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe...9338ed` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x012341...d7c7b8` | ⚠️ Unaudited |
| GmxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34b45e...118a81` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x035e93...dcb7c5` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b681c...4f11bf` | ⚠️ Unaudited |
| Governable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8e96...9d8a47` | ⚠️ Unaudited |
| GovernanceToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-382036 | `0x420000...000042` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8...81d58f` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ff11...21a538` | ⚠️ Unaudited |
| HashStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x2a2f37...64150b` | ⚠️ Unaudited |
| IBCVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d81c...8a5b9f` | ⚠️ Unaudited |
| InstantWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddaa1...f6f8ff` | ⚠️ Unaudited |
| InternalAccountingUnit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6238...68ba92` | ⚠️ Unaudited |
| InvestmentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x237547...a7cefd` | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fecf3...edc6b9` | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310fc2...d872ee` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556202...7b57e7` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f...89a3d5` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x435192...ba3f7a` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7595...dd08c7` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f...78261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7084...fcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce...5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099597...599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b586...13fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00da...016c87` | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8efa0...459ac2` | ⚠️ Unaudited |
| L1cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7aef...8bf9f6` | ⚠️ Unaudited |
| L1cmETHAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae96df...9fac44` | ⚠️ Unaudited |
| L1Cook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bb3d7...4df4bc` | ⚠️ Unaudited |
| L1CookAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078382...348a79` | ⚠️ Unaudited |
| L1CookMessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a01c...4824be` | ⚠️ Unaudited |
| L1ERC20Q | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be0f7...8aed1b` | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332754...ef27f1` | ⚠️ Unaudited |
| L1MessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91377...84de7e` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e84af...d901e8` | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x1a513e...dee372` | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23b96a...08f4c7` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d437...b960fd` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-382052 | `0x9bcef7...8eb81d` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | base | unit-382421 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x199810...5a5521` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12364c...348eea` | ⚠️ Unaudited |
| LBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1290a6...8f44ad` | ⚠️ Unaudited |
| LEZyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00aa80...0496ac` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdf...35896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6...efa3c8` | ⚠️ Unaudited |
| LineaBridgeReceiver | unknown | project_anchor | own_supporting | 0 | linea | unit-382312 | `0x1f7190...676856` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a1...124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4...cf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b...9cfc13` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13432a...1f7abc` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66...a81fa3` | ⚠️ Unaudited |
| LiquidCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485fd9...03c12e` | ⚠️ Unaudited |
| LiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fb...039a3b` | ⚠️ Unaudited |
| LiquidityBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x006fad...dad409` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02656f...bac65b` | ⚠️ Unaudited |
| LiquidOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f26b0...8404ac` | ⚠️ Unaudited |
| LiquidVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1693b...9ffa3b` | ⚠️ Unaudited |
| Liquifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225c9...6b6ed3` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34700f...bfa726` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387e40...978653` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| LombardConsortium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1871...763565` | ⚠️ Unaudited |
| LombardTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84...e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61003b...f56095` | ⚠️ Unaudited |
| LoyaltyPointsMarketSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d716d...f2cd24` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2...9d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83...482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8...03f76d` | ⚠️ Unaudited |
| LRTSquare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d987e...9a16a2` | ⚠️ Unaudited |
| LRTSquared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138f08...ea7743` | ⚠️ Unaudited |
| LRTSquaredAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b8c7...d02ff5` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb489...1957de` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359...2f0080` | ⚠️ Unaudited |
| MainnetBulker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381986 | `0xa397a8...4b00c7` | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381936 | `0x2c7760...eea518` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01...40140f` | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfda1fb...d2bdc3` | ⚠️ Unaudited |
| MantleOFTAdapterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60af26...3f7c4f` | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x170a53...748552` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223039...ed52e1` | ⚠️ Unaudited |
| MaticWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-382139 | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1...174088` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640...107ac5` | ⚠️ Unaudited |
| MembershipManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047a77...f15889` | ⚠️ Unaudited |
| MembershipNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d98...307106` | ⚠️ Unaudited |
| MerklClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23bd2d...0f049e` | ⚠️ Unaudited |
| MerklClaimerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca648...4957db` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d46...1d256e` | ⚠️ Unaudited |
| MerkleTreeLeafChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2252...2fc5f1` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052f52...613e52` | ⚠️ Unaudited |
| METHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bd3e6...f7de46` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1f06b...3c6a2c` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7e...e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817...27d1f5` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aab73...1a7e85` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7...f15505` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d0e30...0e6a4f` | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04c059...6c150a` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310667...d42123` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x842ec2...c54eb2` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023ee7...0a5f1b` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77deaa...d64081` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9196...1e2718` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a9d21...82700d` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca...13c223` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b89d7...df635d` | ⚠️ Unaudited |
| NativeStakingChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47f92...a5a0da` | ⚠️ Unaudited |
| NavErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0a105...57af36` | ⚠️ Unaudited |
| NavErc20WithDebt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff62ad...0c48bc` | ⚠️ Unaudited |
| NavHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b238...62b6e6` | ⚠️ Unaudited |
| NavLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda0b8...09b258` | ⚠️ Unaudited |
| NavRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d604...5451e9` | ⚠️ Unaudited |
| NavUnStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c82f6...1e5e39` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e75...231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6...5d14a7` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c0...b97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fae7b...b851b7` | ⚠️ Unaudited |
| NetworkRestakeResetHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274bbd...cb2fc8` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009c9f...629655` | ⚠️ Unaudited |
| NodeELRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c927...7367af` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc00f9...9e4d75` | ⚠️ Unaudited |
| NonUnderlyingTokenTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bddb5...67f4f8` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108...1d6363` | ⚠️ Unaudited |
| OCRConfigurationStoreEVMSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe6b3...fe22c6` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b342...439989` | ⚠️ Unaudited |
| OETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c62a3...b82be9` | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02f2c6...d7f8d6` | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa50fd5...5ffad8` | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0cbeac...54c22e` | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc80da...97c75b` | ⚠️ Unaudited |
| OETHBaseVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd50f7d...70d1a7` | ⚠️ Unaudited |
| OETHBaseVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a759f...6caaab` | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x98a0cb...38cc93` | ⚠️ Unaudited |
| OETHBaseZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b56c0...4d2bc1` | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6bebe...08d9c3` | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d369...4f38e0` | ⚠️ Unaudited |
| OETHDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0030c7...e6b16a` | ⚠️ Unaudited |
| OETHHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d017a...a6785c` | ⚠️ Unaudited |
| OETHOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ccd26...b61dba` | ⚠️ Unaudited |
| OETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x392540...8bd7ab` | ⚠️ Unaudited |
| OETHVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c91b...940d74` | ⚠️ Unaudited |
| OETHVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109158...1c89f3` | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d98cf...7bcf6a` | ⚠️ Unaudited |
| OETHZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c135f...5b66b0` | ⚠️ Unaudited |
| OgvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61110...590a42` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6...a4b154` | ⚠️ Unaudited |
| OperatorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b86a...4a6eb5` | ⚠️ Unaudited |
| OperatorDelegatorLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1cf8...b03f56` | ⚠️ Unaudited |
| OperatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ae22...287606` | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccabb...dfe250` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c3702...3ebe99` | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e3759...46eacf` | ⚠️ Unaudited |
| OptimismBridgeReceiver | unknown | project_anchor | own_supporting | 0 | base | unit-382343 | `0x18281d...3c468a` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | mantle | unit-382217 | `0x52b7d8...a3f17f` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84a...546ebe` | ⚠️ Unaudited |
| OracleQuorumManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c23e...4174b4` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c7a3...cc89ff` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c167...c678d6` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f77e...8a2acb` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27c20...62bc21` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7257ac...32c3fb` | ⚠️ Unaudited |
| OssifiableProxy | unknown | project_anchor | own_supporting | 1 | optimism | unit-382409 | `0x1f32b1...194ebb` | ⚠️ Unaudited |
| OssifiableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x07d469...331b82` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475e7d...b96702` | ⚠️ Unaudited |
| OsTokenConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287d1e...66eb59` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe12d...fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a261e...000306` | ⚠️ Unaudited |
| OUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa96fd1...3820f9` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409...ec29ed` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc...f4c06f` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ab1a1...1be23d` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x29ab87...6cf1f8` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075a48...b2a86f` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9e365...1a5fce` | ⚠️ Unaudited |
| Penalty | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84645f...dc6ed6` | ⚠️ Unaudited |
| PepeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8baf44...640477` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b3a74...d9990e` | ⚠️ Unaudited |
| PermissionedNodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106c70...69b27b` | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf63398...9d4a37` | ⚠️ Unaudited |
| PermissionlessNodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f4bfa...2fdcf1` | ⚠️ Unaudited |
| PermissionlessPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c250...bbb3f0` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45...2ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef...3666c0` | ⚠️ Unaudited |
| PnlAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd317b...acaea7` | ⚠️ Unaudited |
| PnlAccountingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c23f...81437e` | ⚠️ Unaudited |
| PolygonBridgeReceiver | unknown | project_anchor | own_supporting | 0 | polygon | unit-382131 | `0x18281d...3c468a` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x420dd3...ce40da` | ⚠️ Unaudited |
| PoolSelector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x62e0b4...4603b0` | ⚠️ Unaudited |
| PoolUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f53a...9719e4` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459c...ddeafd` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a02e6...af93b2` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb7c...8cb78f` | ⚠️ Unaudited |
| PositionRouterReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a74c7...802f74` | ⚠️ Unaudited |
| PreOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7a14...97ff44` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d99...22f242` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x802351...dfe471` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffd...d43a8b` | ⚠️ Unaudited |
| PriceFeedWith4626Support | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139338...b05e37` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c0...e53ba1` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a6e7...c1f32f` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13015e...20438c` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94c012...33f410` | ⚠️ Unaudited |
| ProtocolPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03a993...3f5e61` | ⚠️ Unaudited |
| ProtocolRevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8749...e0d322` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | base | unit-382420 | `0x2ae3f1...0dec22` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81e5c1...78179f` | ⚠️ Unaudited |
| ProxyMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72233f...dee7db` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5ae...733126` | ⚠️ Unaudited |
| Puff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26a6b0...3be140` | ⚠️ Unaudited |
| PUMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed540...4b079c` | ⚠️ Unaudited |
| PumpLockMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d22a...04eaad` | ⚠️ Unaudited |
| PumpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd264...d49cfe` | ⚠️ Unaudited |
| PumpTokenOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc9c9...f4f9a8` | ⚠️ Unaudited |
| PumpTokenOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1b27...ef3a52` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753...33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d7...5239ea` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e662e...6c0b10` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc1...b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a308...cb1c63` | ⚠️ Unaudited |
| RateBasedCorrelatedAssetsPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381916 | `0x00c03a...121101` | ⚠️ Unaudited |
| RateBasedScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ad4ce...330f26` | ⚠️ Unaudited |
| RateProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b6c0...bedce7` | ⚠️ Unaudited |
| RBACTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e2fae...a3ea45` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1136b8...bac9fa` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e...a25914` | ⚠️ Unaudited |
| RedemptionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2ee4...eb2510` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aa382...76f5c8` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2249d0...923392` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x818792...9071d7` | ⚠️ Unaudited |
| RegistryPermission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab00b9...186b85` | ⚠️ Unaudited |
| RegulationsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcb83...2cd0b4` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce...17f9cc` | ⚠️ Unaudited |
| RestakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ac4d...1a042a` | ⚠️ Unaudited |
| RETHCorrelatedAssetsPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584a6b...f33b72` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1980b3...d09a27` | ⚠️ Unaudited |
| ReverseMultiplicativePriceFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381917 | `0x04eab6...9c2796` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff...2b67d5` | ⚠️ Unaudited |
| RevokableVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b31b2...1f61e5` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1de098...4f5554` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34a...3ecee0` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2d...75e7ec` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bfb8e...6d40e0` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc73d55...980fba` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa906f3...f8d8f1` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227f65...964c7d` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439b60...febcd9` | ⚠️ Unaudited |
| RewardSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256af2...6cc5f8` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a22fe...be964b` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d7...f62b30` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d45c4...04a7fc` | ⚠️ Unaudited |
| RocketTokenRETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381991 | `0xae7873...fc6393` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa40...b7666e` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795...151e7d` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x141fa0...17dde8` | ⚠️ Unaudited |
| RSETH_OFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382166 | `0x4186bf...56b41f` | ⚠️ Unaudited |
| RsETHCorrelatedAssetsPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381921 | `0x0af91e...8214c2` | ⚠️ Unaudited |
| RSETHPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x352e20...8a699c` | ⚠️ Unaudited |
| RSETHPoolNoWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9a7fa6...fbbe81` | ⚠️ Unaudited |
| RSETHRateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3222d3...dc627e` | ⚠️ Unaudited |
| RsETHScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c30b5...7ed178` | ⚠️ Unaudited |
| RsETHTokenWrapper | unknown | project_anchor | own_supporting | 1 | optimism | unit-382407 | `0x87eee9...9d61b1` | ⚠️ Unaudited |
| RswETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4796d9...4e2362` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382401 | `0xd9496f...3183cb` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-382383 | `0xb3e79c...0c4129` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00cbf7...3ebd4b` | ⚠️ Unaudited |
| ScalingPriceFeedWithCustomDescription | unknown | project_anchor | own_supporting | 0 | mantle | unit-382213 | `0x0090a5...83c8c3` | ⚠️ Unaudited |
| ScrollBridgeReceiver | unknown | project_anchor | own_supporting | 0 | scroll | unit-382291 | `0xc6bf5a...9b610d` | ⚠️ Unaudited |
| SDCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7af473...3ee91f` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f8577...dfd713` | ⚠️ Unaudited |
| SEthFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c57e...805ad8` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a98f...488a2f` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf58eec...d434da` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee...5c6c2a` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd25491...ec3527` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6...f7442f` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21...82700d` | ⚠️ Unaudited |
| SimpleStakingERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d43a...31d774` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f8605...c1a5fe` | ⚠️ Unaudited |
| Sky | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381952 | `0x56072c...ed9279` | ⚠️ Unaudited |
| SocializingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1082a4...39be6d` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba...ecbcf6` | ⚠️ Unaudited |
| StaderConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060a6a...bd2c30` | ⚠️ Unaudited |
| StaderInsuranceFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254093...ae1f3d` | ⚠️ Unaudited |
| StaderStakePoolsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dceae...0d0ff5` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9088d8...be497a` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0f...7eae88` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c...baaa75` | ⚠️ Unaudited |
| StakedFrax | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381988 | `0xa663b0...c41c32` | ⚠️ Unaudited |
| StakedGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01af26...ba1c55` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe19ab1...0b382c` | ⚠️ Unaudited |
| StakedLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072072...782bd9` | ⚠️ Unaudited |
| StakedLBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e28ef...1fdc1c` | ⚠️ Unaudited |
| StakedTokenV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382399 | `0xbe9895...a49704` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x211cc4...5fe5d2` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5...7a3497` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe547ca...d02fd2` | ⚠️ Unaudited |
| StakerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68b12...df17a0` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f4...8a0b81` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a360...7a06a2` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad639...72fa1e` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b76...069bd8` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa5...ab794b` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d8...537e1c` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d...866e4c` | ⚠️ Unaudited |
| STETHShim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86a722...6699d3` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0e4...284938` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60d2d9...2e5943` | ⚠️ Unaudited |
| StrategyExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f57d...0ef50e` | ⚠️ Unaudited |
| StrategyStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c03f...6f1f47` | ⚠️ Unaudited |
| Streamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86b6b...9ea752` | ⚠️ Unaudited |
| StreamerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04102...b70a8a` | ⚠️ Unaudited |
| SupporterVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0302f7...7b63b2` | ⚠️ Unaudited |
| SUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7991...9f61e0` | ⚠️ Unaudited |
| Swapper1InchV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0fcf...d18366` | ⚠️ Unaudited |
| Swapper1InchV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cac...52232e` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa328e9...776eb4` | ⚠️ Unaudited |
| swETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3b4b...0211a7` | ⚠️ Unaudited |
| SwETHProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6392...ed7b05` | ⚠️ Unaudited |
| SwETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa68ca...1875e8` | ⚠️ Unaudited |
| swEXIT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02454d...6c8f78` | ⚠️ Unaudited |
| SWNFTv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f6d9...9caf9b` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca047...436310` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf702...94bee5` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TAssetMultichainToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382417 | `0xd09acb...167003` | ⚠️ Unaudited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381924 | `0x18084f...d93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152...26750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66b...37cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c...1ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e...277fd4` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d9c2...bf1a5f` | ⚠️ Unaudited |
| TermsOfServiceAllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x767b63...99bbf1` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db...fdba1b` | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde706e...bd5c7d` | ⚠️ Unaudited |
| TEthExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd1ec...55fa8d` | ⚠️ Unaudited |
| TEthRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x077c21...9fdc1e` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb86284...3b4604` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09214c...9b15b8` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1237d9...9e62c0` | ⚠️ Unaudited |
| TmpStreamHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139f63...130d8d` | ⚠️ Unaudited |
| TNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c377a...f11708` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39ae10...e7751e` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ffcbe...03444e` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ef815...75ad59` | ⚠️ Unaudited |
| TokenRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x537a7f...1029af` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b...681365` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e364...4c9a27` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| Topupper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11d0cf...694285` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5...79d91a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0295e0...a5ae46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x03abee...164e1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0742bd...a65567` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08921f...cfae6d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x09134c...066572` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d4fef...ab584b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a...aa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x173601...a830a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1766be...9d3b82` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x177879...aa9de0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1e70dc...63f2e7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fcca6...404e1e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x22eec8...6fa778` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27e120...5985c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x289d60...2d2d71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b5b36...c3fd01` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2bf60d...4ac18a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33757a...f43ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x387dbc...02c84c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x38fdf7...3fdcf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3a0613...2d26ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b099b...6b7f24` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x46ddc3...1a1a1d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x582dc2...747482` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x58749c...56f064` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a1279...814042` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6f149f...94aa35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x708de6...b0a1a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x83ee10...360110` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x85e115...c4b5ee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382405 | `0xa1290d...99e5a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb08fbe...1f061e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb8df0a...38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc94cff...6d0936` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd78987...5da146` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217e...854017` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | unichain | n/a | `0x24c896...ea42cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | unichain | unit-382410 | `0x85c4f8...bfe97d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-382422 | `0x04c059...6c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x099597...599eab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xc38e04...1208a5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x096760...ef5562` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x09e922...351eee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x104177...b28ad0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x1293a5...a15458` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x15533b...5d6844` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x5288c5...84f933` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6c411a...6c623b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382416 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382418 | `0x912ce5...9e6548` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-382414 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x05f519...e8aef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-382419 | `0x0ece76...2203f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x22c498...30f5dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x823106...6d9cca` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d30b1...3f1e94` | ⚠️ Unaudited |
| TreehouseAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7ce3c...535709` | ⚠️ Unaudited |
| TreehouseFastlane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829525...06c0d6` | ⚠️ Unaudited |
| TreehouseRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618db...4ad09f` | ⚠️ Unaudited |
| TreehouseRedemptionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd63a2...aabb85` | ⚠️ Unaudited |
| TreehouseRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae023...c4d398` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d75c4...1a216f` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e37...7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e...b5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x009aed...643974` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-382413 | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-382412 | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854...0df843` | ⚠️ Unaudited |
| Uni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381929 | `0x1f9840...01f984` | ⚠️ Unaudited |
| UnichainPriceFeedEzethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3587a7...0bc2cc` | ⚠️ Unaudited |
| UnichainPriceFeedWeethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xa8a94d...74aa43` | ⚠️ Unaudited |
| UnichainPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4bad96...ea7a57` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728...63a58d` | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09af9b...1700fb` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974...3a6965` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x07507a...241c91` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18efef...ab5982` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded882...626341` | ⚠️ Unaudited |
| UsccDepositStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4564...760395` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf46bef...be97e4` | ⚠️ Unaudited |
| USDe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381946 | `0x4c9edd...1e68b3` | ⚠️ Unaudited |
| USDeOFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-382219 | `0x5d3a1f...52ef34` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40757a...db2d51` | ⚠️ Unaudited |
| Usds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x191cd4...4cad5e` | ⚠️ Unaudited |
| UsdsJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0f89...777feb` | ⚠️ Unaudited |
| USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-382050 | `0x94b008...e58e58` | ⚠️ Unaudited |
| UserWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9479...620e0c` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ef8fa...42d705` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b7a4c...736fff` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x200057...d903a2` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2093bb...a37a6a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ecd15...2fab81` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x46c4ab...cc29a8` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57aaf0...bb6a41` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x857b4f...d16f8b` | ⚠️ Unaudited |
| UUPSProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-382398 | `0xcd5fe2...59b7ee` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd0ff89...fead1a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5edf7...54e35e` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x3a1986...5a3975` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8b49c...707c34` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023824...ee7c3c` | ⚠️ Unaudited |
| ValidatorWithdrawalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3073cc...f3458f` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d2...9cfbc8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x489ee0...097c4a` | ⚠️ Unaudited |
| VaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8cc0...e8f872` | ⚠️ Unaudited |
| VaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef055...a6452b` | ⚠️ Unaudited |
| VaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d9a7...4b7a92` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56d2e...afd93a` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf457...2b5de3` | ⚠️ Unaudited |
| VaultPull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313ca6...5b3ab9` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060cbb...463cc0` | ⚠️ Unaudited |
| VaultRescuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af329...db933a` | ⚠️ Unaudited |
| VaultSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78011...45fc3a` | ⚠️ Unaudited |
| VaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a0008...4fc20e` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25041c...ad8739` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe99924...54643e` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e...47680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f98...026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2...6437e6` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f1...457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec...ff6582` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x199070...363004` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x166135...c480a5` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebf418...67e6b4` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45ca74...52b504` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326483...0e86c6` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb59...43ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d...fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8...65c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6c...d47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913...ba47bf` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381932 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319f19...7f7d96` | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ed8c...5595e4` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159c...986069` | ⚠️ Unaudited |
| WithdrawQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ac87...e2ba0b` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed97c...0a9cd4` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-382130 | `0x0d500b...df1270` | ⚠️ Unaudited |
| WOETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388782...4eb830` | ⚠️ Unaudited |
| WOETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e1826...583408` | ⚠️ Unaudited |
| WrappedEther | unknown | project_anchor | own_supporting | 0 | scroll | unit-382254 | `0x530000...000004` | ⚠️ Unaudited |
| WrappedOusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeabeb...16e632` | ⚠️ Unaudited |
| WrappedRSETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe119d2...064a6b` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e...f3690e` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381968 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7581e...9b2a0f` | ⚠️ Unaudited |
| WstETHCorrelatedAssetsPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0866fc...015b1c` | ⚠️ Unaudited |
| WstETHExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce02c...c6cd1e` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4...f48e79` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14a1a...fe6109` | ⚠️ Unaudited |
| XERC20 | unknown | project_anchor | own_supporting | 1 | optimism | unit-382408 | `0x241609...cceea5` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd9fc4...2ade0d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (353)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381919 | `0x074692...4461a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381920 | `0x0a4f4f...af887d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381922 | `0x0ca923...516f96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381923 | `0x16f353...9cf3b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381925 | `0x1933f7...14027b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381926 | `0x1b0e76...885a40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381927 | `0x1c0c89...8c82b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381928 | `0x1ec63b...2e8779` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381930 | `0x1fa408...e8c958` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381931 | `0x214ed9...c1a0d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381933 | `0x23a982...bb5549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381934 | `0x266570...ce423a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381935 | `0x2bea10...7dce14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381937 | `0x2d0914...05722d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381938 | `0x316f97...d336e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381939 | `0x31b844...23bf3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381940 | `0x351a13...ddec91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381941 | `0x3afdc9...ab0840` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381942 | `0x3d0bb1...8fafe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381943 | `0x3e7d1e...64e32d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381944 | `0x400249...b43b5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381945 | `0x40fcee...1cb1d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381947 | `0x4f1263...0070d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381948 | `0x4f4d5a...d9bdd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381949 | `0x514910...f986ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381950 | `0x553303...63220e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381951 | `0x554619...25a8f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381953 | `0x5641af...42e747` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381954 | `0x57a71a...7400d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381955 | `0x5abcfc...b7f876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381956 | `0x5acae7...3c54dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381957 | `0x5c2986...7d3212` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381958 | `0x5d409e...897b56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381959 | `0x60f205...552194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381960 | `0x687496...782f38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381961 | `0x69b50f...ac8ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381962 | `0x6d903f...c33925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381963 | `0x6f654c...1b036e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381964 | `0x72e9b6...b7fa48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381965 | `0x7783a5...da5f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381966 | `0x7b03a0...06bc37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381967 | `0x7badab...0b45b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381969 | `0x8236a8...634494` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381970 | `0x8350b7...354297` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381971 | `0x835b92...8f77e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381972 | `0x83b346...89d5a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381973 | `0x87641f...f74188` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381974 | `0x8a5c2e...ae9aaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381975 | `0x8c74b2...20ed2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381976 | `0x8fffff...6818f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381977 | `0x91359c...b94ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381978 | `0x9f4001...a1af35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381979 | `0x9feac5...ba9397` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381980 | `0xa0332a...573451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381981 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381982 | `0xa17581...93ae94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381983 | `0xa26992...029acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381984 | `0xa35b1b...00a15b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381985 | `0xa3931d...c27fbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381987 | `0xa569d9...69f961` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381989 | `0xa70a02...3aaedc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381990 | `0xaa9527...8d3484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381992 | `0xb6e043...9fca84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381993 | `0xba8f83...c33867` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381994 | `0xbf5495...8d2110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381995 | `0xc0053f...a673ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381997 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381998 | `0xc3d688...84cdc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381999 | `0xc8e4c3...bba1fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382000 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382001 | `0xcfc1fa...80df4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382002 | `0xd4ec91...3f68ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382003 | `0xd5f783...b0adfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382004 | `0xd6a48f...12cf1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382005 | `0xd72ac1...4ce0ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382006 | `0xd98be0...a57d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382007 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382008 | `0xdc035d...07384f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382009 | `0xdcee70...b78192` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382010 | `0xdf08cd...6ededc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382011 | `0xe3458a...a14dd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382012 | `0xe51a17...425282` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382013 | `0xe85dc5...6a9293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382014 | `0xef819f...935007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382015 | `0xf1c9ac...190e38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382016 | `0xf1cee2...ad715b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382017 | `0xf469fb...0a012e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382018 | `0xf5600f...9c6bf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382019 | `0xfae103...afa6c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382020 | `0xfd5282...857bf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382021 | `0xfdfd9c...2fbb23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-382022 | `0xff3058...1219b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382023 | `0x0b2c63...97ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382024 | `0x0be923...50510f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382025 | `0x0d276f...269246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382026 | `0x13e3ee...7e08c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382027 | `0x16a9fa...61e0f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382028 | `0x1f0e8f...1dc345` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382029 | `0x24d86d...f397af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382030 | `0x2e44e1...8c5bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382031 | `0x371db4...ecfe02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382032 | `0x3e6d1c...6823b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382033 | `0x3fb418...c6378b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382034 | `0x403f20...5777d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382037 | `0x443ea0...c3c2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382038 | `0x4ed39c...99e13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382039 | `0x57f5e0...af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382040 | `0x5a7fac...73cbff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382041 | `0x5d1738...ad4448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382042 | `0x5eba6e...c652b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382043 | `0x68f180...0a2095` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382044 | `0x699a19...bd24f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382045 | `0x718a57...6c2a6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382046 | `0x7e7d44...4910ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382047 | `0x84e93e...3f2713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382048 | `0x8671d5...2d5cd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382049 | `0x92014e...3ce8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382051 | `0x995e39...62b214` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382053 | `0xadf7ad...e9f02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382054 | `0xc3a73a...434daf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382055 | `0xc4aafc...552ad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382056 | `0xcb3643...9d4ba3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382057 | `0xd187f9...23f434` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382058 | `0xd62d43...cc5cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382059 | `0xd98be0...a57d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382060 | `0xddc326...3cf002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382061 | `0xdfb81f...7d1585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382062 | `0xe36a30...21b6fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382063 | `0xe6eb5b...f034d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-382064 | `0xecef79...647f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382067 | `0x1ad4ce...330f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382068 | `0x1f7190...676856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382069 | `0x241609...cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382070 | `0x2c7118...5f2921` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382072 | `0x2e44e1...8c5bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382074 | `0x2f4eaf...ef4ed0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382076 | `0x3870fa...275a60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382077 | `0x3c30b5...7ed178` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382080 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382081 | `0x443ea0...c3c2e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382082 | `0x4a900f...6df6f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382083 | `0x4b5dee...0c8118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382085 | `0x515151...d2beb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382086 | `0x540487...37fb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382087 | `0x58ebb8...63b514` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382090 | `0x6bad23...9edfc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382091 | `0x6c987d...978e2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382093 | `0x6f7d51...dee486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382095 | `0x72874c...ba5e45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382097 | `0x7dcc39...ef80f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382100 | `0x84e93e...3f2713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382106 | `0x8d38a3...dbc991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382108 | `0x8df378...6303e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382109 | `0x8f187a...e9ea21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382110 | `0x927b51...c4afb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382115 | `0xaeb318...409a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382119 | `0xc02fe7...a92001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382121 | `0xc3eacf...b09f58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382124 | `0xdb7edf...96676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382125 | `0xdf78e4...288656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-382127 | `0xfa454d...b89f45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382129 | `0x0a6513...a50545` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382132 | `0x1bfd67...d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382133 | `0x2f4eaf...ef4ed0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382134 | `0x2f9e39...29125b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382135 | `0x3a58a5...ebf3c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382136 | `0x459396...31e581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382137 | `0x59e242...7f7cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382138 | `0x5d37e4...3c7403` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382140 | `0x83abac...aea2d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382141 | `0x83e0f7...26e738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382142 | `0x8505b9...7aef5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382143 | `0x97371d...38a13f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382144 | `0x9c4ec7...ff58bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382145 | `0xa265e6...2504e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382146 | `0xab5946...862de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382147 | `0xaeb318...409a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382148 | `0xbde8f3...7b372d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382149 | `0xcc3e7c...dd4a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382150 | `0xd712ac...b975f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382151 | `0xde31f8...d78ae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382152 | `0xf25212...246445` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382153 | `0xf9680d...205945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382154 | `0xfa68fb...45efb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-382155 | `0xfe4a8c...81b2f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382214 | `0x16c7b5...728107` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382215 | `0x3c851c...a3aee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382216 | `0x41e345...ef1168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382218 | `0x5a1d1c...553285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382220 | `0x602cc5...f4d155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382221 | `0x606174...d7786e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382222 | `0x67dfca...8b9baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382223 | `0x731564...367662` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382224 | `0xadd81a...c9f1b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382225 | `0xb77cd4...9cf7db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382226 | `0xc91eca...f1b604` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382228 | `0xcd83cb...e225ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382229 | `0xcda86a...b90bb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382231 | `0xe268b4...17a0c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-382232 | `0xf528b4...ba7f18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382338 | `0x0090a5...83c8c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382339 | `0x07da0e...a59f9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382340 | `0x0e3837...0f0a7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382341 | `0x123964...00a6b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382342 | `0x1738fc...e1a7b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382344 | `0x220da2...f13431` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382345 | `0x2330aa...f62930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382346 | `0x241609...cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382347 | `0x2c7760...eea518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382348 | `0x3d0bb1...8fafe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382349 | `0x3dc83e...fff45d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382350 | `0x3e6d1c...6823b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382351 | `0x41e345...ef1168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382352 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382353 | `0x459396...31e581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382354 | `0x468767...76752c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382355 | `0x46e6b2...0970bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382356 | `0x4b5dee...0c8118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382357 | `0x564417...742925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382358 | `0x5875ee...75467a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382359 | `0x59e242...7f7cd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382360 | `0x5d1738...ad4448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382361 | `0x6b2f85...2011f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382362 | `0x6d75bf...2057bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382363 | `0x71041d...16bb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382364 | `0x72e9b6...b7fa48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382365 | `0x784efe...bece89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382366 | `0x78d067...212a8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382367 | `0x7e8600...a2bc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382368 | `0x7fcd17...f58ea6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382369 | `0x820c13...8921dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382370 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382371 | `0x83e0f7...26e738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382372 | `0x89e9b0...40bbf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382373 | `0x8c0870...acd96f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382374 | `0x8d38a3...dbc991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382375 | `0x8df378...6303e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382377 | `0x9c4ec7...ff58bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382378 | `0x9e1028...6840e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382379 | `0x9f4856...3bd1cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382380 | `0xaa3907...18989c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382381 | `0xaa9527...8d3484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382382 | `0xb125e6...15eb2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382384 | `0xb88e40...54498a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382385 | `0xbd4cfc...0a2505` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382386 | `0xbde8f3...7b372d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382387 | `0xc1cba3...0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382388 | `0xc4a9ff...330c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382389 | `0xc89567...619a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382390 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382391 | `0xcc3e7c...dd4a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382392 | `0xd9aaec...10b6ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382393 | `0xdb7edf...96676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382394 | `0xdd1868...1132d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382395 | `0xe6eb5b...f034d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-382396 | `0xedfa23...76bea0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382156 | `0x0be923...50510f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382157 | `0x15eb94...432156` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382158 | `0x241609...cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382159 | `0x250bd3...57b709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382160 | `0x271a20...8d4680` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382161 | `0x311930...390e7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382162 | `0x3410f0...50d54c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382163 | `0x354a6d...6c91de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382164 | `0x357510...cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382165 | `0x3fb4d3...8cf88a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382168 | `0x478854...cef0c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382169 | `0x4f1263...0070d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382170 | `0x50834f...434ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382171 | `0x5372bc...fff881` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382172 | `0x57f5e0...af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382173 | `0x5979d7...800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382174 | `0x5998a5...0b68d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382175 | `0x5d1738...ad4448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382176 | `0x5d409e...897b56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382177 | `0x5eba6e...c652b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382178 | `0x60f205...552194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382179 | `0x639fe6...3ba612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382180 | `0x675daf...e5a8bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382181 | `0x69ad47...e21941` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382182 | `0x6c84a8...d0de40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382183 | `0x6f7d51...dee486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382184 | `0x70175d...00eba5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382185 | `0x7de363...c14228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382186 | `0x8495af...614798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382187 | `0x88730d...9f7fae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382188 | `0x92014e...3ce8b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382189 | `0x95dedd...b116e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382190 | `0x9c4ec7...ff58bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382191 | `0xa26992...029acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382192 | `0xa4f2e9...f2f915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382193 | `0xa5edbd...905dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382194 | `0xaf88d0...8e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382196 | `0xb2988b...4db406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382197 | `0xb2a824...a548d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382198 | `0xb3e79c...0c4129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382199 | `0xbde8f3...7b372d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382200 | `0xc35137...8d624a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382201 | `0xcc392d...661013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382202 | `0xd0c710...d46d57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382203 | `0xd10b40...4d715e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382204 | `0xd98be0...a57d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382205 | `0xdb7edf...96676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382206 | `0xdb9805...0df3db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382207 | `0xe80848...abeb1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382208 | `0xec70dc...a5ffa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382209 | `0xedfb5f...3cbe62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382210 | `0xfa454d...b89f45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382211 | `0xfc5a1a...35ad0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-382212 | `0xff970a...db5cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382308 | `0x074692...4461a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382309 | `0x139338...b05e37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382310 | `0x176211...1ee1ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382311 | `0x1bf74c...0b8aa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382313 | `0x241609...cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382314 | `0x2c7118...5f2921` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382315 | `0x3aab22...05a9b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382316 | `0x3c6cd9...3354da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382317 | `0x4a900f...6df6f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382318 | `0x4b5dee...0c8118` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382319 | `0x60f205...552194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382320 | `0x7a9909...28e1f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382321 | `0x7e0df5...87af4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382322 | `0x841e38...efb1d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382323 | `0x8d38a3...dbc991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382324 | `0x8d50b4...b37edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382325 | `0x970ffd...1d5dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382326 | `0x972b1b...5a671a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382327 | `0xa26992...029acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382328 | `0xaadaa4...bfdcb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382329 | `0xaeb318...409a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382330 | `0xb5bedd...68fc8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382331 | `0xc4a9ff...330c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382332 | `0xc8e4c3...bba1fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382333 | `0xd26711...101e6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382334 | `0xdb7edf...96676c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382335 | `0xe5d7c2...5cf34f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382336 | `0xf1cee2...ad715b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-382337 | `0xfd5282...857bf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382249 | `0x43d12f...7b7200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382252 | `0x4c0892...b0d623` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382255 | `0x53c6d0...7c56fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382257 | `0x5ec955...1a0656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382262 | `0x6bf14c...a8774c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382264 | `0x6f7d51...dee486` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382265 | `0x70167d...e0c5ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382266 | `0x709cef...e92843` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382268 | `0x77831f...771c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382272 | `0x87a27b...2bac50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382286 | `0xb2f97c...77ce44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382301 | `0xecab0b...8032d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382303 | `0xf6013e...0b73e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-382304 | `0xf610a9...7cda32` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Trail of Bits - April 2019](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [OpenZeppelin - August 2019](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Trail of Bits - August 2019](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [OpenZeppelin - Timelock & Pause Guardian](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | 2019-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [OpenZeppelin - cDAI](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | 2020-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [OpenZeppelin - COMP & Governance](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | 2020-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Trail of Bits - February 2020](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [OpenZeppelin - Tether](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | 2020-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [OpenZeppelin - COMP Distribution](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Compound III Audit by OpenZeppelin](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 30 | high |
| [Compound III Security Audit by ChainSecurity](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16913] Trail of Bits - April 2019 — no match: Extracted from Compound v2 Security Assessment report by Trail of Bits, dated April 8, 2019. Scope includes all Solidity smart contracts in the money-market repository at specified commits.
- [16914] OpenZeppelin - August 2019 — no match: All contracts explicitly listed in scope section of the audit report.
- [16915] Trail of Bits - August 2019 — no match: Extracted contracts from scope and findings targets. Audit date from cover page.
- [16916] OpenZeppelin - Timelock & Pause Guardian — no match: Contracts explicitly listed in scope section of the audit report.
- [16917] OpenZeppelin - cDAI — no match: Scope explicitly mentions auditing all contracts in contracts/ directory that were added or changed between two commits, specifically naming CDaiDelegate.sol, DAIInterestRateModel.sol, and changes to JumpRateModel.sol.
- [16918] OpenZeppelin - COMP & Governance — matched: The report explicitly states the scope includes the Compound Governance Token (COMP) and Governor Alpha contracts. The audit date is given as February 25, 2020.
- [16919] Trail of Bits - February 2020 — matched: Scope explicitly includes Comp.sol and GovernorAlpha.sol. Timelock.sol is mentioned as an interaction but not in scope.
- [16920] OpenZeppelin - Tether — no match: Contracts explicitly mentioned as part of the audited patch: PriceOracleProxy, PriceOracle, SimplePriceOracle, CToken, CErc20Delegator.
- [16921] OpenZeppelin - COMP Distribution — no match: Audit report for Compound COMP distribution system. Scope includes Comptroller.sol and ComptrollerStorage.sol; Dripper.sol is mentioned in findings.
- [16922] Compound III Audit by OpenZeppelin — matched: Extracted all contracts listed in the scope section of the audit report. The audit date is the delivery date (June 14, 2022) as stated in the summary.
- [16923] Compound III Security Audit by ChainSecurity — no match: Only the protocol name 'Compound III' is mentioned; no specific contract files or names are listed in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Trail of Bits - April 2019 | CToken | unmatched — not counted | — | Target in findings 15, 18, 19, 20, 21 | no |
| Trail of Bits - April 2019 | Comptroller | unmatched — not counted | — | Target in findings 16, 22, 23 | no |
| Trail of Bits - April 2019 | Unitroller | unmatched — not counted | — | Target in finding 23 | no |
| Trail of Bits - April 2019 | MoneyMarket | unmatched — not counted | — | Target in finding 15 | no |
| Trail of Bits - April 2019 | CarefulMath | unmatched — not counted | — | Mentioned in finding 14 | no |
| Trail of Bits - April 2019 | Exponential | unmatched — not counted | — | Mentioned in Appendix B | no |
| Trail of Bits - April 2019 | ComptrollerV1Storage | unmatched — not counted | — | Mentioned in finding 23 | no |
| Trail of Bits - April 2019 | UnitrollerAdminStorage | unmatched — not counted | — | Mentioned in finding 23 | no |
| Trail of Bits - April 2019 | ReentrancyGuard | unmatched — not counted | — | Mentioned in finding 20 | no |
| OpenZeppelin - August 2019 | CarefulMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | CErc20 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | CEther | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Comptroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ComptrollerInterface | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ComptrollerV1Storage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | UnitrollerAdminStorage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | CToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | EIP20Interface | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | EIP20NonStandardInterface | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ComptrollerErrorReporter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | TokenErrorReporter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Exponential | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Maximillion | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | Unitroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - August 2019 | WhitePaperInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Trail of Bits - August 2019 | CEther | unmatched — not counted | — | Target in finding 24 | no |
| Trail of Bits - August 2019 | ErrorReporter | unmatched — not counted | — | Target in finding 25 | no |
| Trail of Bits - August 2019 | Comptroller | unmatched — not counted | — | Target in finding 26 | no |
| Trail of Bits - August 2019 | BoolComptroller | unmatched — not counted | — | Target in finding 28 | no |
| Trail of Bits - August 2019 | CToken | unmatched — not counted | — | Mentioned in findings and scope | no |
| Trail of Bits - August 2019 | Unitroller | unmatched — not counted | — | Mentioned in scope and findings | no |
| Trail of Bits - August 2019 | PriceOracle | unmatched — not counted | — | Mentioned in finding 26 | no |
| OpenZeppelin - Timelock & Pause Guardian | CErc20 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | CEther | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | CToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Comptroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | ComptrollerV2Storage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | ComptrollerV1Storage | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | ComptrollerErrorReporter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Exponential | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Timelock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - Timelock & Pause Guardian | Unitroller | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin - cDAI | CDaiDelegate | unmatched — not counted | — | newly added file mentioned in scope | no |
| OpenZeppelin - cDAI | DAIInterestRateModel | unmatched — not counted | — | newly added file mentioned in scope | no |
| OpenZeppelin - cDAI | JumpRateModel | unmatched — not counted | — | changed contract mentioned in scope | no |
| OpenZeppelin - COMP & Governance | Comp | own contract | Comp (selected) `0xc00e94...f26888` — deployed 2020-03-04 03:08:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin - COMP & Governance | GovernorAlpha | unmatched — not counted | — | mentioned as audited contract | no |
| Trail of Bits - February 2020 | Comp | own contract | Comp (selected) `0xc00e94...f26888` — deployed 2020-03-04 03:08:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits - February 2020 | GovernorAlpha | unmatched — not counted | — | listed in scope as GovernorAlpha.sol | no |
| OpenZeppelin - Tether | PriceOracleProxy | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | PriceOracle | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | SimplePriceOracle | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | CToken | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - Tether | CErc20Delegator | unmatched — not counted | — | mentioned as audited contract | no |
| OpenZeppelin - COMP Distribution | Comptroller | unmatched — not counted | — | audited commit includes changes in Comptroller.sol | no |
| OpenZeppelin - COMP Distribution | ComptrollerStorage | unmatched — not counted | — | audited commit includes storage updates in ComptrollerStorage.sol | no |
| OpenZeppelin - COMP Distribution | Dripper | unmatched — not counted | — | mentioned in finding N01 | no |
| Compound III Audit by OpenZeppelin | Comet | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Bulker | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometConfiguration | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometCore | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometExt | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometExtInterface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometFactory | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometInterface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometMainInterface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometMath | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometRewards | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | CometStorage | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Configurator | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | ConfiguratorStorage | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | ERC20 | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | IWETH9 | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | TransparentUpgradeableConfiguratorProxy | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Ownable | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | WETH9 | own contract | WETH9 (selected) `0x420000...000006` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Compound III Audit by OpenZeppelin | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | draft-IERC1822 | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x2ae3f1...0dec22` — deployed 2023-07-22 04:48:19+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound III Audit by OpenZeppelin | IBeacon | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa1290d...99e5a7` — deployed 2023-12-10 23:46:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd086b...9fcbb9` — deployed 2021-08-31 20:48:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x912ce5...9e6548` — deployed 2023-03-16 15:08:28+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x04c059...6c150a` — deployed 2024-04-23 05:18:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x82af49...3fbab1` — deployed 2021-05-30 06:51:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x85c4f8...bfe97d` — deployed 2025-04-29 12:10:36+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0ece76...2203f0` — deployed 2023-08-03 16:47:46+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound III Audit by OpenZeppelin | ERC1967Proxy | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xd9a442...306a72` — deployed 2024-01-31 20:48:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x5c5b19...198326` — deployed 2024-07-16 18:00:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd11c45...6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x57f5e0...af7812` — deployed 2023-10-06 22:57:59+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Compound III Audit by OpenZeppelin | ERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Context | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | StorageSlot | unmatched — not counted | — | listed in scope | no |
| Compound III Audit by OpenZeppelin | Address | unmatched — not counted | — | listed in scope | no |
| Compound III Security Audit by ChainSecurity | Compound III | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x940181...d98631` | Aero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x42480c...d38068` | ArbitrumBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x023ee7...0a5f1b` | BaseBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xdeadde...ad1111` | BVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a25...fc5b0f` | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x055e53...091e1f` | CometExtAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x309a86...04c8c0` | CompoundGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb21b06...ad3775` | ConfiguratorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15700b...7aa138` | deUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xc96de2...d6c364` | FBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x078d78...f57ad6` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x06efdb...f663a4` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x420000...000042` | GovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9bcef7...8eb81d` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x236aa5...ab794b` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1f7190...676856` | LineaBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa397a8...4b00c7` | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c7760...eea518` | MainnetBulkerWithWstETHSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7ceb23...b9f619` | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18281d...3c468a` | OptimismBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x52b7d8...a3f17f` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1f32b1...194ebb` | OssifiableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x18281d...3c468a` | PolygonBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00c03a...121101` | RateBasedCorrelatedAssetsPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04eab6...9c2796` | ReverseMultiplicativePriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4186bf...56b41f` | RSETH_OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0af91e...8214c2` | RsETHCorrelatedAssetsPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x87eee9...9d61b1` | RsETHTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0090a5...83c8c3` | ScalingPriceFeedWithCustomDescription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xc6bf5a...9b610d` | ScrollBridgeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa663b0...c41c32` | StakedFrax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe9895...a49704` | StakedTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd09acb...167003` | TAssetMultichainToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18084f...d93a88` | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bc...a84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc2132d...b58e8f` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9840...01f984` | Uni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c9edd...1e68b3` | USDe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x5d3a1f...52ef34` | USDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x94b008...e58e58` | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd5fe2...59b7ee` | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0d500b...df1270` | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x530000...000004` | WrappedEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c5...5e2ca0` | WstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x241609...cceea5` | XERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 694 |
| upstream | 11 |
| standard_library | 72 |
| needs_review | 353 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 85 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [16913] Trail of Bits - April 2019
- [16914] OpenZeppelin - August 2019
- [16915] Trail of Bits - August 2019
- [16916] OpenZeppelin - Timelock & Pause Guardian
- [16917] OpenZeppelin - cDAI
- [16920] OpenZeppelin - Tether
- [16921] OpenZeppelin - COMP Distribution
- [16923] Compound III Security Audit by ChainSecurity

Fork inheritance lineage and inherited audits are included when available.
